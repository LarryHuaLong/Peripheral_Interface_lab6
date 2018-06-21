/*
 * main.c for microAptiv_UP MIPS core running on Nexys4DDR
 * Prints \n\rMIPSfpga\n\r out via UART.
 * Default baudrate 115200,8n1.
 * Also display a shifting 0xf on the LEDs
 */

#include <mips/regdef.h>
#include <mips/m32c0.h>

#include "fpga.h"

#define inline_assembly() asm("ori $0, $0, 0x1234")

#define CLK_FREQ 50000000

#define UART_BASE 0xB0401000 //With 1000 offset that axi_uart16550 has
#define rbr 0 * 4
#define ier 1 * 4
#define fcr 2 * 4
#define lcr 3 * 4
#define mcr 4 * 4
#define lsr 5 * 4
#define msr 6 * 4
#define scr 7 * 4

#define thr rbr
#define iir fcr
#define dll rbr
#define dlm ier

#define PWM_BASE 0xB0C00000
#define PS2_BASE 0xB0D00000
#define SEG_BASE 0xB0E00000

#define IS_UART_INTR (1 << 15)
#define IS_PWM_INTR (1 << 14)
#define IS_TIMER_INTR (1 << 30)

void delay();
void uart_outbyte(char c);
char uart_inbyte(void);
void uart_print(const char *ptr);

char *reverse(char *s);
char *my_itoa(int n);
char decode(int code);

volatile unsigned int rxData = 0x0;
volatile unsigned int data_received = 0x0;

unsigned char *promt = "Select a Brightness between 0 and 9\n\r";

//------------------
// main()
//------------------
int main()
{
	volatile unsigned int count = 0xF, count_div = 0;
	volatile unsigned int j = 1;
	volatile unsigned int period;
	volatile unsigned int keycode;
	volatile unsigned int lastkeycode,code;

	*WRITE_IO(UART_BASE + lcr) = 0x00000080; // LCR[7]  is 1
	delay();
	*WRITE_IO(UART_BASE + dll) = 27; // DLL msb. 115200 at 50MHz. Formula is Clk/16/baudrate. From axi_uart manual.
	delay();
	*WRITE_IO(UART_BASE + dlm) = 0x00000000; // DLL lsb.
	delay();
	*WRITE_IO(UART_BASE + lcr) = 0x00000003; // LCR register. 8n1 parity disabled
	delay();
	*WRITE_IO(UART_BASE + ier) = 0x00000000; // IER register. disable interrupts
	delay();

	*WRITE_IO(UART_BASE + ier) = 0x00000001; // IER register. Enables Receiver Line Status and Received Data Interrupts
	delay();

	/* Prompt the user to select a brightness value ranging from  0 to 9. */
	//uart_print("Select a Brightness between 0 and 9\n\r");
	uart_print(promt);

	while (1)
	{
		//循环检测键盘是否有输入
		keycode = *READ_IO(PS2_BASE);
		if(keycode &0x000000ff == 0xf0)
			continue;
		lastkeycode = *READ_IO(PS2_BASE + 4);
		if (lastkeycode != keycode)
		{
			*WRITE_IO(PS2_BASE + 4) = keycode;
			*WRITE_IO(SEG_BASE) = keycode; //在数码管上显示按键状态
			if ((keycode & 0x0000ff00) != 0X0000f000)
			{
				uart_print("\r\nkeypress:");
				uart_print(my_itoa(keycode));
			}
			else{
				uart_print("keyrelease:");
				uart_print(my_itoa(keycode));
			}
		}
		delay();
		/*设置亮度
		if (data_received)
		{
			period = rxData - 0x30;
			*WRITE_IO(PWM_BASE) = period * 110000;
			data_received = 0x0;
			uart_print(promt);
			delay();
		}
		//LED显示计数
		if (count_div >= 1000)
		{
			count_div = 0;
			count = count + 1;
			*WRITE_IO(IO_LEDR) = count;
		}
		else
			count_div = count_div + 1;
		*/
	}
	return 0;
}


void delay()
{
	volatile unsigned int j;

	for (j = 0; j < (100); j++)
		;
}

void uart_outbyte(char c)
{
	*WRITE_IO(UART_BASE + thr) = (unsigned int)c;
	delay();
}

char uart_inbyte(void)
{
	unsigned int RecievedByte;

	while (!((*READ_IO(UART_BASE + lsr) & 0x00000001) == 0x00000001))
		;

	RecievedByte = *READ_IO(UART_BASE + rbr);

	return (char)RecievedByte;
}

void uart_print(const char *ptr)
{
	while (*ptr)
	{
		uart_outbyte(*ptr);
		ptr++;
	}
}

//反转字符串
char *reverse(char *s)
{
	char temp;
	char *p = s; //p指向s的头部
	char *q = s; //q指向s的尾部
	while (*q)
		++q;
	q--;

	//交换移动指针，直到p和q交叉
	while (q > p)
	{
		temp = *p;
		*p++ = *q;
		*q-- = temp;
	}
	return s;
}

/* 
 * 功能：整数转换为字符串 
 * char s[] 的作用是存储整数的每一位 
 */
char *my_itoa(int n)
{
	int i = 0, isNegative = 0;
	static char s[100];		  //必须为static变量，或者是全局变量
	if ((isNegative = n) < 0) //如果是负数，先转为正数
	{
		n = -n;
	}
	do //从各位开始变为字符，直到最高位，最后应该反转
	{
		s[i++] = n % 10 + '0';
		n = n / 10;
	} while (n > 0);

	if (isNegative < 0) //如果是负数，补上负号
	{
		s[i++] = '-';
	}
	s[i] = '\0'; //最后加上字符串结束符

	return reverse(s);
}

void _mips_handle_irq(void *ctx, int reason)
{
	volatile unsigned int period;
	volatile unsigned int keycode;

	*WRITE_IO(IO_LEDR) = 0xF00F; // Display 0xF00F on LEDs to indicate enter the interrupt
	data_received = 0x0;
	uart_print(my_itoa(reason));
	if (reason & IS_TIMER_INTR)
	{
		// write C0_Compare = $11
		asm volatile("mtc0	$0, $11");
		asm volatile("li $9, 0x1");
		// write C0_COUNT = $9
		asm volatile("mtc0 $9, $9");
		uart_print("TIME_int!\r\n");
		return;
	}

	if (reason & IS_UART_INTR)
	{
		/* Read an input value from the console. */
		rxData = *READ_IO(UART_BASE + rbr);
		data_received = 0x1;
		uart_print("UART_int!\r\n");
		return;
	}

	if (reason & IS_PWM_INTR)
	{
		*WRITE_IO(PWM_BASE) = 0x0;
		uart_print("PWM_int!\r\n");
		return;
	}
	uart_print("other int!\r\n");
	*WRITE_IO(IO_LEDR) = 0x0FF0; // Display 0xF00F on LEDs to indicate enter the interrupt
	return;
}
