/*
 * main.c for microAptiv_UP MIPS core running on Nexys4DDR
 * Prints \n\rMIPSfpga\n\r out via UART.
 * Default baudrate 115200,8n1.
 * Also display a shifting 0xf on the LEDs
 */

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

void delay();
void uart_outbyte(char c);
char uart_inbyte(void);
void uart_print(const char *ptr);

extern char *reverse(char *s);
extern char *my_itoa(int n);
char decode(int code);

extern void delay_ms(unsigned int ms_count);

// The following is for ADT7420
#include "i2c.h"
#include "ADT7420.h"

/*****************************************************************************/
/********************** Variable Definitions *********************************/
/*****************************************************************************/
volatile int rxData = 0;

//------------------
// main()
//------------------
int main()
{
	volatile unsigned int pushbutton, count = 0xF;
	volatile unsigned int j = 1;
	volatile unsigned int period;
	volatile unsigned int keycode, lastkeycode;
	volatile unsigned int code = 0, display = 0;
	volatile unsigned int key_release = 0;

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

	code = 0, display = 0;
	lastkeycode = *READ_IO(PS2_BASE);
	while (1)
	{
		//循环检测键盘是否有输入
		keycode = *READ_IO(PS2_BASE);
		if (lastkeycode != keycode)
		{
			key_release = (keycode & 0x0000ff00) == 0X0000f000;
			if (key_release)
			{
				code = keycode & 0xff;
				display = (display << 8) | (keycode & 0xff);
				;
				uart_outbyte(decode(code));
			}
			lastkeycode = keycode;
		}
		*WRITE_IO(SEG_BASE) = display;
		delay();
	}
	return 0;
}

void delay()
{
	volatile unsigned int j;

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

void _mips_handle_irq(void *ctx, int reason)
{
	*WRITE_IO(IO_LEDR) = 0xF00F; // Display 0xFFFF on LEDs to indicate receive data from uart

	if ((*READ_IO(UART_BASE + lsr) & 0x00000001) == 0x00000001)
		rxData = *READ_IO(UART_BASE + rbr);

	*WRITE_IO(IO_LEDR) = 0;

	return;
}

char decode(int code)
{

	switch (code)
	{
	case 0x45:
		return '0';
	case 0x16:
		return '1';
	case 0x1e:
		return '2';
	case 0x26:
		return '3';
	case 0x25:
		return '4';
	case 0x2e:
		return '5';
	case 0x36:
		return '6';
	case 0x3d:
		return '7';
	case 0x3e:
		return '8';
	case 0x46:
		return '9';
	case 0x29:
		return ' ';
	case 0x5a:
		return '\r';
	case 0x1c:
		return 'a';
	case 0x32:
		return 'b';
	case 0x21:
		return 'c';
	case 0x23:
		return 'd';
	case 0x24:
		return 'e';
	case 0x2b:
		return 'f';
	case 0x34:
		return 'g';
	case 0x33:
		return 'h';
	case 0x43:
		return 'i';
	case 0x3b:
		return 'j';
	case 0x42:
		return 'k';
	case 0x4b:
		return 'l';
	case 0x3a:
		return 'm';
	case 0x31:
		return 'n';
	case 0x44:
		return 'o';
	case 0x4d:
		return 'p';
	case 0x15:
		return 'q';
	case 0x2d:
		return 'r';
	case 0x1b:
		return 's';
	case 0x2c:
		return 't';
	case 0x3c:
		return 'u';
	case 0x2a:
		return 'v';
	case 0x1d:
		return 'w';
	case 0x22:
		return 'x';
	case 0x35:
		return 'y';
	case 0x1a:
		return 'z';
	default:
		return '\0';
	}
}