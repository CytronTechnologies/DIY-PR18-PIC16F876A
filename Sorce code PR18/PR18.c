//==========================================================================
//	Author				: Cytron Technologies	
//	Project				: PR18
//	Project description	: Walking with Cytron servo
//==========================================================================

//	include
//==========================================================================
#include <pic.h>

//	configuration
//==========================================================================
__CONFIG ( 0x3F32 );				//configuration for the  microcontroller

//	define
//==========================================================================
#define	rs			RC3				//RS pin of the LCD display
#define	rw			RC4				//R/W pin of the LCD display	
#define	e			RC5				//E pin of the LCD display
#define brightness	CCPR2L			//brightness of the LCD backlight
#define	contrast	CCPR1L			//contrast of the LCD character
#define	lcd_data	PORTB			//LCD 8-bit data PORT

#define	button1		RA0				//button (active low)
#define	button2		RA1				//button (active low)
#define	button3		RA2				//button (active low)

#define mid_L1		732				//mid position of L1
#define mid_L2		732				//mid position of L2
#define mid_L3		732				//mid position of L3
#define mid_R1		732				//mid position of R1
#define mid_R2		732				//mid position of R2
#define mid_R3		732				//mid position of R3

#define L1			0x4A			//servo S10
#define L2			0x4B			//servo S11
#define L3			0x4C			//servo S12
#define R1			0x47			//servo S7
#define R2			0x48			//servo S8
#define R3			0x49			//servo S9

//	function prototype				(every function must have a function prototype)
//==========================================================================
void mode1(void);
void mode2(void);

void delay(unsigned long data);			

void send_config(unsigned char data);
void send_char(unsigned char data);
void lcd_goto(unsigned char data);
void lcd_clr(void);
void send_string(const char *s);

void uart_send(unsigned char data);

void send_cmd(unsigned char num, unsigned int data, unsigned int ramp);

//	global variable
//==========================================================================
unsigned char mode;

//	main function					(main fucntion of the program)
//==========================================================================
void main()
{
	//set I/O input output
	TRISB = 0b00000000;					//configure PORTB I/O direction
	TRISC = 0b10000000;					//configure PORTC I/O direction
	TRISA = 0b00000111;					//configure PORTA I/O direction
	
	//setup USART
	SPBRG = 31;							//set baud rate to 9600 for 20MHz
	BRGH = 0;							//baud rate low speed option
	TXEN = 1;							//enable transmission
	CREN = 1;							//enable reception
	SPEN = 1;							//enable serial port
	
	//setup ADC
	ADCON1 = 0b00000110;				//set ADx pin digital I/O
	
	//configure lcd
	send_config(0b00000001);			//clear display at lcd
	send_config(0b00000010);			//lcd return to home 
	send_config(0b00000110);			//entry mode-cursor increase 1
	send_config(0b00001100);			//display on, cursor off and cursor blink off
	send_config(0b00111000);			//function set

	//setup PWM for brightness & contrast adjustment
	CCP1CON = 0b00001100;				//PWM Mode
	CCP2CON = 0b00001100;				//PWM Mode
	PR2 = 0xFF;							//PWM Period Setting (4.88KHz)
	T2CON = 0b00000101;					//Timer2 On, prescale 4
	contrast = 50;						//lower is darker (character) (0 - 254)
	brightness = 50;					//higher is brighter (back_light) (0 - 254)

	//display startup message	
	lcd_clr();							//clear lcd
	lcd_goto(0);						//set the lcd cursor to location 0
	send_string("Cytron Tech.");		//display "Cytron Tech."
	lcd_goto(20);						//set the lcd cursor to location 20
	send_string("PR18");				//display "PR18"

	//send command to SC16 (send_cmd)
	//1st byte is channel
	//2nd byte is position from 0-1463
	//3rd byte is speed for servo	

	send_cmd(L1, mid_L1, 0);			//set left leg to mid position
	send_cmd(L2, mid_L2, 0);
	send_cmd(L3, mid_L3, 0);

	send_cmd(R1, mid_R1, 0);			//set right leg to mid position
	send_cmd(R2, mid_R2, 0);
	send_cmd(R3, mid_R3, 0);

	delay(200000);						//delay for certain period

	mode = 1;

	while(1)							//infinite loop
	{	
		lcd_clr();						//clear lcd
		lcd_goto(20);					//set the lcd cursor to location 20
		send_string("OK");				//display "OK"

		while(button3)					//while button3 (ok) is released
		{
			if(!button1)				//if button1 (decrease) is pressed
			{
				//prevent the program to decrease the mode to lower than 1
				if(mode > 1)			
					mode--;
			}
			else if(!button2)			//else if button2 (increase) is pressed
			{
				//prevent the program to increase the mode to higher than 2
				if(mode < 2)
					mode++;
			}

			//display mode on LCD
			lcd_goto(0);				//set the lcd cursor to location 0
			switch(mode)
			{
				case 1	:	send_string("Biped Walking?");	//display "Biped Walking?"
							break;

				case 2	:	send_string("Calibration?  ");	//display "Calibratoin?  "
							break;
			}

			delay(30000);				//delay for certain period so user can increase/decrease
										//the mode continuously by pressing the button
		}

		delay(10000);					//delay for certain period to debounce
		while(!button3);				//hold program until button3 (ok) is released
		delay(10000);					//delay for certain period to debounce

		switch(mode)
		{
			case 1	:	mode1();		//mode 1 is selected (Biped Walking)
						break;

			case 2	:	mode2();		//mode 2 is selected (Calibration)
						break;								
		}
	}
}

//	functions
//==========================================================================
void mode1(void)
{
	lcd_goto(13);						//set the lcd cursor to location 13
	send_char(' ');						//clear the '?'
	lcd_goto(20);						//set the lcd cursor to location 20
	send_string("  ");					//clear the "OK"
	delay(100000);						//delay for certain period


	//shift body weight to left leg
	send_cmd(L1, mid_L1+300, 30);		//move L1 to mid_L1+300 position with speed of 30
	send_cmd(R1, mid_R1-300, 30);		//move R1 to mid_R1-300 position with speed of 30
	send_cmd(L2, mid_L2+300, 30);		//move L2 to mid_L2+300 position with speed of 30
	send_cmd(R2, mid_R2-300, 30);		//move R2 to mid_R2-300 position with speed of 30
	delay(200000);						//delay for certain period
	send_cmd(L3, mid_L3-200, 20);		//move L3 to mid_L3-200 position with speed of 20
	send_cmd(R1, mid_R1, 30);			//move R1 to mid_R1 position with speed of 30
	send_cmd(R2, mid_R2, 30);			//move R2 to mid_R2 position with speed of 30
	send_cmd(R3, mid_R3-200, 20);		//move R3 to mid_R3-200 position with speed of 20
	delay(300000);						//delay for certain period

	while(1)
	{
		//right leg moved forward
		send_cmd(L3, mid_L3-60, 20);	//move L3 to mid_L3-60 position with speed of 20
		send_cmd(R3, mid_R3-60, 20);	//move R3 to mid_R3-60 position with speed of 20
		delay(200000);					//delay for certain period
	
		send_cmd(L1, mid_L1-375, 40);	//move L1 to mid_L1-375 position with speed of 40
		send_cmd(L2, mid_L2, 20);		//move L2 to mid_L2 position with speed of 20
		send_cmd(R1, mid_R1+675, 40);	//move R1 to mid_R1+675 position with speed of 40
		send_cmd(R2, mid_R2+300, 15);	//move R2 to mid_R2+300 position with speed of 15
		send_cmd(L3, mid_L3+60, 10);	//move L3 to mid_L3+60 position with speed of 10
		send_cmd(R3, mid_R3+60, 10);	//move R3 to mid_R3+60 position with speed of 10
		delay(450000);					//delay for certain period
	
		send_cmd(L3, mid_L3, 20);		//move L3 to mid_L3 position with speed of 20
		send_cmd(R3, mid_R3+200, 20);	//move R3 to mid_R3+200 position with speed of 20
		delay(200000);					//delay for certain period
	
		send_cmd(R1, mid_R1-300, 60);	//move R1 to mid_R1-300 position with speed of 60
		send_cmd(R2, mid_R2-300, 30);	//move R2 to mid_R2-300 position with speed of 30
		send_cmd(L1, mid_L1, 30);		//move L1 to mid_L1 position with speed of 30
		send_cmd(L3, mid_L3+200, 30);	//move L3 to mid_L3+200 position with speed of 30
		delay(300000);					//delay for certain period

		//left leg moved forward
		send_cmd(R3, mid_R3+60, 20);	//move R3 to mid_R3+60 position with speed of 20
		send_cmd(L3, mid_L3+60, 20);	//move L3 to mid_L3+60 position with speed of 20
		delay(200000);					//delay for certain period
	
		send_cmd(R1, mid_R1+375, 40);	//move R1 to mid_R1+375 position with speed of 40
		send_cmd(R2, mid_R2, 20);		//move R2 to mid_R2 position with speed of 20
		send_cmd(L1, mid_L1-675, 40);	//move L1 to mid_L1-675 position with speed of 40
		send_cmd(L2, mid_L2-300, 15);	//move L2 to mid_L2-300 position with speed of 15
		send_cmd(R3, mid_R3-60, 10);	//move R3 to mid_R3-60 position with speed of 10
		send_cmd(L3, mid_L3-60, 10);	//move L3 to mid_L3-60 position with speed of 10
		delay(450000);					//delay for certain period
	
		send_cmd(R3, mid_R3, 20);		//move R3 to mid_R3 position with speed of 20
		send_cmd(L3, mid_L3-200, 20);	//move L3 to mid_L3-200 position with speed of 20
		delay(200000);					//delay for certain period
	
		send_cmd(L1, mid_L1+300, 60);	//move L1 to mid_L1+300 position with speed of 60
		send_cmd(L2, mid_L2+300, 30);	//move L2 to mid_L2+300 position with speed of 30
		send_cmd(R1, mid_R1, 30);		//move R1 to mid_R1 position with speed of 30
		send_cmd(R3, mid_R3-200, 30);	//move R3 to mid_R3-200 position with speed of 30
		delay(300000);					//delay for certain period
	}		
}

void mode2(void)
{
	char channel = 1;
	int value, value_temp;

	while(1)
	{
		value_temp = 732;				//set default value to 732
		value = 0;

		lcd_clr();						//clear lcd
		lcd_goto(0);					//set the lcd cursor to location 0
		send_string("Channel:");		//display "Channel:"
		lcd_goto(20);					//set the lcd cursor to location 20
		send_string("OK");				//display "OK"

		while(button3)					//while button3 (ok) is released
		{
			if(!button1)				//if button1 (decrease) is pressed
			{
				//prevent the program to decrease the channel to lower than 1
				if(channel > 1)
					channel--;
			}
			else if(!button2)			//else if button2 (increase) is pressed
			{
				//prevent the program to increase the channel to higher than 32
				if(channel < 32)		
					channel++;
			}

			//display channel on LCD
			lcd_goto(9);				//set the lcd cursor to location 9
			if(channel < 10)
			{
				//display channel (<10)
				send_char(channel + '0');
				send_char(' ');
			}
			else
			{
				//display channel (>=10)
				send_char(channel/10 + '0');
				send_char(channel%10 + '0');
			}

			delay(30000);				//delay for certain period so user can increase/decrease
										//the channel continuously by pressing the button
		}

		delay(10000);					//delay for certain period to debounce
		while(!button3);				//hold program until button3 (ok) is released
		delay(10000);					//delay for certain period to debounce

		lcd_clr();						//clear LCD
		lcd_goto(0);					//set LCD cursor to location 0
		send_string("Value: ");			//display "Value: "

		while(button3)					//while button3 (ok) is released
		{
			if(!button1)				//if button1 (decrease) is pressed
			{
				//prevent the program to decrease the value to lower than 1
				if(value_temp > 0)
					value_temp--;
			}
			else if(!button2)			//else if button2 (increase) is pressed
			{
				//prevent the program to increase the value to higher than 1454
				if(value_temp < 1454)	
					value_temp++;
			}

			if(value_temp != value)		//if previous value does not equal to value enter
			{			
				send_cmd(0x40|channel,value_temp,0);	//send present value to servo channel X
				value = value_temp;		//update value with present value
						
				//display value on LCD
				lcd_goto(7);
				send_char('0' + (value / 1000));
				send_char('0' + (value % 1000) / 100);
				send_char('0' + (value % 100) / 10);
				send_char('0' + (value % 10));
			}

			delay(15000);				//delay for certain period so user can increase/decrease
										//the value continuously by pressing the button
		}

		delay(10000);					//delay for certain period to debounce
		while(!button3);				//hold program until button3 (ok) is released
		delay(10000);					//delay for certain period to debounce
	}
}

void delay(unsigned long data)			//delay function, the delay time
{										//depend on the given value
	for( ;data>0;data--);
}

void send_config(unsigned char data)	//send lcd configuration 
{
	rw=0;								//set lcd to write mode
	rs=0;								//set lcd to configuration mode
	lcd_data=data;						//lcd data port = data
	e=1;								//pulse e to confirm the data
	delay(50);
	e=0;
	delay(50);
}

void send_char(unsigned char data)		//send lcd character
{
 	rw=0;								//set lcd to write mode
	rs=1;								//set lcd to display mode
	lcd_data=data;						//lcd data port = data
	e=1;								//pulse e to confirm the data
	delay(10);
	e=0;
	delay(10);
}

void lcd_goto(unsigned char data)		//set the location of the lcd cursor
{										//if the given value is (0-15) the 
 	if(data<16)							//cursor will be at the upper line
	{									//if the given value is (20-35) the 
	 	send_config(0x80+data);			//cursor will be at the lower line
	}									//location of the lcd cursor(2X16):
	else								// -----------------------------------------------------
	{									// | |00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15| |
	 	data=data-20;					// | |20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35| |
		send_config(0xc0+data);			// -----------------------------------------------------	
	}
}

void lcd_clr(void)						//clear the lcd
{
 	send_config(0x01);
	delay(600);	
}

void send_string(const char *s)			//send a string to display in the lcd
{          
  	while (s && *s)send_char (*s++);
}

void uart_send(unsigned char data)
{	
	while(TXIF==0);						//only send the new data after 
	TXREG=data;							//the previous data finish sent
}

void send_cmd(unsigned char num, unsigned int data, unsigned int ramp)
{
	unsigned char higher_byte=0, lower_byte=0;
	
	//position value from 0-1463 are greater than a byte
	//so needs two bytes to send
	higher_byte=(data>>6)&0x003f;		//higher byte = 0b00xxxxxx
	lower_byte=data&0x003f;				//lower byte  = 0b00xxxxxx

	uart_send(num);
	uart_send(higher_byte);
	uart_send(lower_byte);
	uart_send(ramp);
}
