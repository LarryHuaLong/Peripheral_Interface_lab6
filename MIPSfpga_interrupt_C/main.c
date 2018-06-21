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
#define IS_PS2_INTR (1 << 13)
#define IS_TIMER_INTR (1 << 30)

void delay();
void uart_outbyte(char c);
char uart_inbyte(void);
void uart_print(const char *ptr);

char *reverse(char *s);
char *my_itoa(int n);

volatile unsigned int rxData = 0x0;
volatile unsigned int data_received = 0x0;

unsigned char *promt = "Select a Brightness between 0 and 9\n\r";

//------------------
// main()
//------------------
int main()
{
	volatile unsigned int count = 0xF;
	volatile unsigned int j = 1;
	volatile unsigned int period;

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
		// LEDs display
		*WRITE_IO(IO_LEDR) = count;

		count = count + 1;

		for (j = 0; j < 1000; j++)
			delay();

		if (data_received)
		{
			period = rxData - 0x30;
			*WRITE_IO(PWM_BASE) = period * 110000;
			data_received = 0x0;

			uart_print(promt);
			delay();
		}
	}

	return 0;
}

void delay()
{
	volatile unsigned int j;

	//for (j = 0; j < (10000); j++) ;	// delay
	for (j = 0; j < (100); j++)
		; // delay
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
	volatile unsigned int rxData;
	volatile unsigned int keycode;

	*WRITE_IO(IO_LEDR) = 0xF00F; // Display 0xF00F on LEDs to indicate enter the interrupt
	data_received = 0x0;

	if (reason & IS_PS2_INTR)
	{
		keycode = *READ_IO(PS2_BASE);
		*WRITE_IO(SEG_BASE) = keycode;

		switch (keycode & 0x000000FF)
		{
		case 0x45:
		case 0x70:
			rxData = '0';
			break;
		case 0x16:
		case 0x69:
			rxData = '1';
			break;
		case 0x1E:
		case 0x72:
			rxData = '2';
			break;
		case 0x26:
		case 0x7A:
			rxData = '3';
			break;
		case 0x25:
		case 0x6B:
			rxData = '4';
			break;
		case 0x2E:
		case 0x73:
			rxData = '5';
			break;
		case 0x36:
		case 0x74:
			rxData = '6';
			break;
		case 0x3D:
		case 0x6C:
			rxData = '7';
			break;
		case 0x3E:
		case 0x75:
			rxData = '8';
			break;
		case 0x46:
		case 0x7D:
			rxData = '9';
			break;

		default:
			rxData = '0';
			break;
		}
		data_received = 0x1;
		uart_print("PS2_INTR occurred!:");
		uart_print(my_itoa(reason));
		uart_print("\n\rgot num :");
		uart_print(my_itoa(rxData);
		uart_print("\n\r");
		return;
	}
	if (reason & IS_TIMER_INTR)
	{
		// write C0_Compare = $11
		asm volatile("mtc0	$0, $11");

		asm volatile("li $9, 0x1");
		// write C0_COUNT = $9
		asm volatile("mtc0 $9, $9");
		return;
	}

	if (reason & IS_UART_INTR)
	{
		/* Read an input value from the console. */
		rxData = *READ_IO(UART_BASE + rbr);
		data_received = 0x1;
		uart_print("UART_INTR occurred!\n\r");
		uart_print(my_itoa(reason));
		return;
	}

	if (reason & IS_PWM_INTR)
	{
		*WRITE_IO(PWM_BASE) = 0x0;
		uart_print("PWM_INTR occurred!\n\r");
		uart_print(my_itoa(reason));
		return;
	}

	*WRITE_IO(IO_LEDR) = 0x0FF0;
	uart_print("Other interrupts occurred!\n\r");
	uart_print(my_itoa(reason));

	return;
}