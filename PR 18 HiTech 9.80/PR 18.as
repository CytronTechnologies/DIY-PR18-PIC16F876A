opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F876A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 13 "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	psect config,class=CONFIG,delta=2 ;#
# 13 "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	dw 0x3F32 ;#
	FNCALL	_main,_send_config
	FNCALL	_main,_lcd_clr
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_send_string
	FNCALL	_main,_send_cmd
	FNCALL	_main,_delay
	FNCALL	_main,_mode1
	FNCALL	_main,_mode2
	FNCALL	_mode2,_lcd_clr
	FNCALL	_mode2,_lcd_goto
	FNCALL	_mode2,_send_string
	FNCALL	_mode2,_send_char
	FNCALL	_mode2,___awdiv
	FNCALL	_mode2,___awmod
	FNCALL	_mode2,_delay
	FNCALL	_mode2,_send_cmd
	FNCALL	_mode1,_lcd_goto
	FNCALL	_mode1,_send_char
	FNCALL	_mode1,_send_string
	FNCALL	_mode1,_delay
	FNCALL	_mode1,_send_cmd
	FNCALL	_send_string,_send_char
	FNCALL	_lcd_goto,_send_config
	FNCALL	_lcd_clr,_send_config
	FNCALL	_lcd_clr,_delay
	FNCALL	_send_char,_delay
	FNCALL	_send_cmd,_uart_send
	FNCALL	_send_config,_delay
	FNROOT	_main
	global	_mode
	global	_CCP1CON
psect	text262,local,class=CODE,delta=2
global __ptext262
__ptext262:
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_PORTB
_PORTB	set	6
	global	_T2CON
_T2CON	set	18
	global	_TXREG
_TXREG	set	25
	global	_CREN
_CREN	set	196
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_SPEN
_SPEN	set	199
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_BRGH
_BRGH	set	1218
	global	_TXEN
_TXEN	set	1221
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_5:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	98	;'b'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	63	;'?'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	66	;'B'
	retlw	105	;'i'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	107	;'k'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	63	;'?'
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	121	;'y'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_7:	
	retlw	67	;'C'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_9:	
	retlw	86	;'V'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	49	;'1'
	retlw	56	;'8'
	retlw	0
psect	strings
	
STR_3:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	0
psect	strings
STR_8	equ	STR_3+0
STR_6	equ	STR_5+12
	file	"PR 18.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_mode:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_send_config
?_send_config:	; 0 bytes @ 0x0
	global	?_lcd_clr
?_lcd_clr:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_mode1
?_mode1:	; 0 bytes @ 0x0
	global	?_mode2
?_mode2:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_uart_send
?_uart_send:	; 0 bytes @ 0x0
	global	??_uart_send
??_uart_send:	; 0 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	uart_send@data
uart_send@data:	; 1 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	ds	1
	global	?_send_cmd
?_send_cmd:	; 0 bytes @ 0x1
	global	send_cmd@data
send_cmd@data:	; 2 bytes @ 0x1
	ds	1
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	send_cmd@ramp
send_cmd@ramp:	; 2 bytes @ 0x3
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	??_send_cmd
??_send_cmd:	; 0 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
	global	??_send_config
??_send_config:	; 0 bytes @ 0x8
	global	??_send_char
??_send_char:	; 0 bytes @ 0x8
	global	send_config@data
send_config@data:	; 1 bytes @ 0x8
	global	send_char@data
send_char@data:	; 1 bytes @ 0x8
	global	send_cmd@num
send_cmd@num:	; 1 bytes @ 0x8
	ds	1
	global	??_lcd_clr
??_lcd_clr:	; 0 bytes @ 0x9
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x9
	global	??_send_string
??_send_string:	; 0 bytes @ 0x9
	global	send_cmd@higher_byte
send_cmd@higher_byte:	; 1 bytes @ 0x9
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	ds	1
	global	lcd_goto@data
lcd_goto@data:	; 1 bytes @ 0xA
	global	send_string@s
send_string@s:	; 1 bytes @ 0xA
	global	send_cmd@lower_byte
send_cmd@lower_byte:	; 1 bytes @ 0xA
	ds	1
	global	??_mode1
??_mode1:	; 0 bytes @ 0xB
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xB
	ds	1
	global	??_mode2
??_mode2:	; 0 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	2
	global	mode2@value
mode2@value:	; 2 bytes @ 0x4
	ds	2
	global	mode2@value_temp
mode2@value_temp:	; 2 bytes @ 0x6
	ds	2
	global	mode2@channel
mode2@channel:	; 1 bytes @ 0x8
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	1
;;Data sizes: Strings 68, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     10      11
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_9(CODE[8]), STR_8(CODE[3]), STR_7(CODE[9]), STR_6(CODE[3]), 
;;		 -> STR_5(CODE[15]), STR_4(CODE[15]), STR_3(CODE[3]), STR_2(CODE[5]), 
;;		 -> STR_1(CODE[13]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_mode2
;;   _mode2->___awdiv
;;   _mode1->_lcd_goto
;;   _mode1->_send_string
;;   _mode1->_send_cmd
;;   _send_string->_send_char
;;   _lcd_goto->_send_config
;;   _lcd_clr->_send_config
;;   _send_char->_delay
;;   _send_cmd->_uart_send
;;   _send_config->_delay
;;   ___awdiv->___awmod
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_mode2
;;   _mode2->___awdiv
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0    2882
;;                                              9 BANK0      1     1      0
;;                        _send_config
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                           _send_cmd
;;                              _delay
;;                              _mode1
;;                              _mode2
;; ---------------------------------------------------------------------------------
;; (1) _mode2                                                7     7      0    1650
;;                                             12 COMMON     2     2      0
;;                                              4 BANK0      5     5      0
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                          _send_char
;;                            ___awdiv
;;                            ___awmod
;;                              _delay
;;                           _send_cmd
;; ---------------------------------------------------------------------------------
;; (1) _mode1                                                0     0      0     560
;;                           _lcd_goto
;;                          _send_char
;;                        _send_string
;;                              _delay
;;                           _send_cmd
;; ---------------------------------------------------------------------------------
;; (2) _send_string                                          2     2      0     134
;;                                              9 COMMON     2     2      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (2) _lcd_goto                                             2     2      0     156
;;                                              9 COMMON     2     2      0
;;                        _send_config
;; ---------------------------------------------------------------------------------
;; (2) _lcd_clr                                              0     0      0     112
;;                        _send_config
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_cmd                                            10     6      4     158
;;                                              1 COMMON    10     6      4
;;                          _uart_send
;; ---------------------------------------------------------------------------------
;; (3) _send_config                                          1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              7 COMMON     5     1      4
;;                                              0 BANK0      4     4      0
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _uart_send                                            1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                8     4      4      45
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _send_config
;;     _delay
;;   _lcd_clr
;;     _send_config
;;       _delay
;;     _delay
;;   _lcd_goto
;;     _send_config
;;       _delay
;;   _send_string
;;     _send_char
;;       _delay
;;   _send_cmd
;;     _uart_send
;;   _delay
;;   _mode1
;;     _lcd_goto
;;       _send_config
;;         _delay
;;     _send_char
;;       _delay
;;     _send_string
;;       _send_char
;;         _delay
;;     _delay
;;     _send_cmd
;;       _uart_send
;;   _mode2
;;     _lcd_clr
;;       _send_config
;;         _delay
;;       _delay
;;     _lcd_goto
;;       _send_config
;;         _delay
;;     _send_string
;;       _send_char
;;         _delay
;;     _send_char
;;       _delay
;;     ___awdiv
;;       ___awmod (ARG)
;;     ___awmod
;;     _delay
;;     _send_cmd
;;       _uart_send
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      19       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      A       B       5       13.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1D      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 66 in file "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_send_config
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_send_cmd
;;		_delay
;;		_mode1
;;		_mode2
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	line	66
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	68
	
l2549:	
;PR18.c: 68: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	69
	
l2551:	
;PR18.c: 69: TRISC = 0b10000000;
	movlw	(080h)
	movwf	(135)^080h	;volatile
	line	70
	
l2553:	
;PR18.c: 70: TRISA = 0b00000111;
	movlw	(07h)
	movwf	(133)^080h	;volatile
	line	73
	
l2555:	
;PR18.c: 73: SPBRG = 31;
	movlw	(01Fh)
	movwf	(153)^080h	;volatile
	line	74
	
l2557:	
;PR18.c: 74: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	75
	
l2559:	
;PR18.c: 75: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	76
	
l2561:	
;PR18.c: 76: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	77
	
l2563:	
;PR18.c: 77: SPEN = 1;
	bsf	(199/8),(199)&7
	line	80
	
l2565:	
;PR18.c: 80: ADCON1 = 0b00000110;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	83
	
l2567:	
;PR18.c: 83: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	84
	
l2569:	
;PR18.c: 84: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	85
	
l2571:	
;PR18.c: 85: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	86
	
l2573:	
;PR18.c: 86: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	87
	
l2575:	
;PR18.c: 87: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	90
	
l2577:	
;PR18.c: 90: CCP1CON = 0b00001100;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	91
	
l2579:	
;PR18.c: 91: CCP2CON = 0b00001100;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	92
	
l2581:	
;PR18.c: 92: PR2 = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	93
	
l2583:	
;PR18.c: 93: T2CON = 0b00000101;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	94
	
l2585:	
;PR18.c: 94: CCPR1L = 50;
	movlw	(032h)
	movwf	(21)	;volatile
	line	95
	
l2587:	
;PR18.c: 95: CCPR2L = 50;
	movlw	(032h)
	movwf	(27)	;volatile
	line	98
	
l2589:	
;PR18.c: 98: lcd_clr();
	fcall	_lcd_clr
	line	99
	
l2591:	
;PR18.c: 99: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	100
	
l2593:	
;PR18.c: 100: send_string("Cytron Tech.");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	101
	
l2595:	
;PR18.c: 101: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	102
	
l2597:	
;PR18.c: 102: send_string("PR18");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	109
	
l2599:	
;PR18.c: 109: send_cmd(0x4A, 732, 0);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(0)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ah)
	fcall	_send_cmd
	line	110
	
l2601:	
;PR18.c: 110: send_cmd(0x4B, 732, 0);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(0)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Bh)
	fcall	_send_cmd
	line	111
	
l2603:	
;PR18.c: 111: send_cmd(0x4C, 732, 0);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(0)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ch)
	fcall	_send_cmd
	line	113
	
l2605:	
;PR18.c: 113: send_cmd(0x47, 732, 0);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(0)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(047h)
	fcall	_send_cmd
	line	114
	
l2607:	
;PR18.c: 114: send_cmd(0x48, 732, 0);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(0)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(048h)
	fcall	_send_cmd
	line	115
	
l2609:	
;PR18.c: 115: send_cmd(0x49, 732, 0);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(0)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(049h)
	fcall	_send_cmd
	line	117
	
l2611:	
;PR18.c: 117: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	119
	
l2613:	
;PR18.c: 119: mode = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_mode)
	bsf	status,0
	rlf	(_mode),f
	goto	l2615
	line	121
;PR18.c: 121: while(1)
	
l515:	
	line	123
	
l2615:	
;PR18.c: 122: {
;PR18.c: 123: lcd_clr();
	fcall	_lcd_clr
	line	124
	
l2617:	
;PR18.c: 124: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	125
	
l2619:	
;PR18.c: 125: send_string("OK");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_send_string
	line	127
;PR18.c: 127: while(RA2)
	goto	l2641
	
l517:	
	line	129
;PR18.c: 128: {
;PR18.c: 129: if(!RA0)
	btfsc	(40/8),(40)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l518
u2830:
	line	132
	
l2621:	
;PR18.c: 130: {
;PR18.c: 132: if(mode > 1)
	movlw	(02h)
	subwf	(_mode),w
	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l2629
u2840:
	line	133
	
l2623:	
;PR18.c: 133: mode--;
	movlw	low(01h)
	subwf	(_mode),f
	goto	l2629
	
l519:	
	line	134
;PR18.c: 134: }
	goto	l2629
	line	135
	
l518:	
;PR18.c: 135: else if(!RA1)
	btfsc	(41/8),(41)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l2629
u2850:
	line	138
	
l2625:	
;PR18.c: 136: {
;PR18.c: 138: if(mode < 2)
	movlw	(02h)
	subwf	(_mode),w
	skipnc
	goto	u2861
	goto	u2860
u2861:
	goto	l2629
u2860:
	line	139
	
l2627:	
;PR18.c: 139: mode++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_mode),f
	goto	l2629
	
l522:	
	goto	l2629
	line	140
	
l521:	
	goto	l2629
	line	143
	
l520:	
	
l2629:	
;PR18.c: 140: }
;PR18.c: 143: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	144
;PR18.c: 144: switch(mode)
	goto	l2637
	line	146
;PR18.c: 145: {
;PR18.c: 146: case 1 : send_string("Biped Walking?");
	
l524:	
	
l2631:	
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_send_string
	line	147
;PR18.c: 147: break;
	goto	l2639
	line	149
;PR18.c: 149: case 2 : send_string("Calibration?  ");
	
l526:	
	
l2633:	
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_send_string
	line	150
;PR18.c: 150: break;
	goto	l2639
	line	151
	
l2635:	
;PR18.c: 151: }
	goto	l2639
	line	144
	
l523:	
	
l2637:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Bytes Cycles
; simple_byte     7     4 (average)
; direct_byte    28    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l2631
	xorlw	2^1	; case 2
	skipnz
	goto	l2633
	goto	l2639

	line	151
	
l525:	
	line	153
	
l2639:	
;PR18.c: 153: delay(30000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	075h
	movwf	(?_delay+1)
	movlw	030h
	movwf	(?_delay)

	fcall	_delay
	goto	l2641
	line	155
	
l516:	
	line	127
	
l2641:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l517
u2870:
	goto	l2643
	
l527:	
	line	157
	
l2643:	
;PR18.c: 155: }
;PR18.c: 157: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	158
;PR18.c: 158: while(!RA2);
	goto	l528
	
l529:	
	
l528:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l528
u2880:
	goto	l2645
	
l530:	
	line	159
	
l2645:	
;PR18.c: 159: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	161
;PR18.c: 161: switch(mode)
	goto	l2653
	line	163
;PR18.c: 162: {
;PR18.c: 163: case 1 : mode1();
	
l532:	
	
l2647:	
	fcall	_mode1
	line	164
;PR18.c: 164: break;
	goto	l2615
	line	166
;PR18.c: 166: case 2 : mode2();
	
l534:	
	
l2649:	
	fcall	_mode2
	line	167
;PR18.c: 167: break;
	goto	l2615
	line	168
	
l2651:	
;PR18.c: 168: }
	goto	l2615
	line	161
	
l531:	
	
l2653:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Bytes Cycles
; simple_byte     7     4 (average)
; direct_byte    28    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l2647
	xorlw	2^1	; case 2
	skipnz
	goto	l2649
	goto	l2615

	line	168
	
l533:	
	goto	l2615
	line	169
	
l535:	
	line	121
	goto	l2615
	
l536:	
	line	170
	
l537:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_mode2
psect	text263,local,class=CODE,delta=2
global __ptext263
__ptext263:

;; *************** function _mode2 *****************
;; Defined at:
;;		line 246 in file "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  value_temp      2    6[BANK0 ] int 
;;  value           2    4[BANK0 ] int 
;;  channel         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       5       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_send_char
;;		___awdiv
;;		___awmod
;;		_delay
;;		_send_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text263
	file	"C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	line	246
	global	__size_of_mode2
	__size_of_mode2	equ	__end_of_mode2-_mode2
	
_mode2:	
	opt	stack 4
; Regs used in _mode2: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	247
	
l2479:	
;PR18.c: 247: char channel = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(mode2@channel)
	bsf	status,0
	rlf	(mode2@channel),f
	goto	l2481
	line	250
;PR18.c: 248: int value, value_temp;
;PR18.c: 250: while(1)
	
l546:	
	line	252
	
l2481:	
;PR18.c: 251: {
;PR18.c: 252: value_temp = 732;
	movlw	low(02DCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(mode2@value_temp)
	movlw	high(02DCh)
	movwf	((mode2@value_temp))+1
	line	253
	
l2483:	
;PR18.c: 253: value = 0;
	movlw	low(0)
	movwf	(mode2@value)
	movlw	high(0)
	movwf	((mode2@value))+1
	line	255
	
l2485:	
;PR18.c: 255: lcd_clr();
	fcall	_lcd_clr
	line	256
	
l2487:	
;PR18.c: 256: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	257
	
l2489:	
;PR18.c: 257: send_string("Channel:");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_send_string
	line	258
	
l2491:	
;PR18.c: 258: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	259
	
l2493:	
;PR18.c: 259: send_string("OK");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_send_string
	line	261
;PR18.c: 261: while(RA2)
	goto	l2511
	
l548:	
	line	263
;PR18.c: 262: {
;PR18.c: 263: if(!RA0)
	btfsc	(40/8),(40)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l549
u2690:
	line	266
	
l2495:	
;PR18.c: 264: {
;PR18.c: 266: if(channel > 1)
	movlw	(02h)
	subwf	(mode2@channel),w
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l2503
u2700:
	line	267
	
l2497:	
;PR18.c: 267: channel--;
	movlw	low(01h)
	subwf	(mode2@channel),f
	goto	l2503
	
l550:	
	line	268
;PR18.c: 268: }
	goto	l2503
	line	269
	
l549:	
;PR18.c: 269: else if(!RA1)
	btfsc	(41/8),(41)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l2503
u2710:
	line	272
	
l2499:	
;PR18.c: 270: {
;PR18.c: 272: if(channel < 32)
	movlw	(020h)
	subwf	(mode2@channel),w
	skipnc
	goto	u2721
	goto	u2720
u2721:
	goto	l2503
u2720:
	line	273
	
l2501:	
;PR18.c: 273: channel++;
	movlw	(01h)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	addwf	(mode2@channel),f
	goto	l2503
	
l553:	
	goto	l2503
	line	274
	
l552:	
	goto	l2503
	line	277
	
l551:	
	
l2503:	
;PR18.c: 274: }
;PR18.c: 277: lcd_goto(9);
	movlw	(09h)
	fcall	_lcd_goto
	line	278
	
l2505:	
;PR18.c: 278: if(channel < 10)
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(mode2@channel),w
	skipnc
	goto	u2731
	goto	u2730
u2731:
	goto	l2509
u2730:
	line	281
	
l2507:	
;PR18.c: 279: {
;PR18.c: 281: send_char(channel + '0');
	movf	(mode2@channel),w
	addlw	030h
	fcall	_send_char
	line	282
;PR18.c: 282: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	283
;PR18.c: 283: }
	goto	l555
	line	284
	
l554:	
	line	287
	
l2509:	
;PR18.c: 284: else
;PR18.c: 285: {
;PR18.c: 287: send_char(channel/10 + '0');
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@channel),w
	movwf	(??_mode2+0)+0
	clrf	(??_mode2+0)+0+1
	movf	0+(??_mode2+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_mode2+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_send_char
	line	288
;PR18.c: 288: send_char(channel%10 + '0');
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@channel),w
	movwf	(??_mode2+0)+0
	clrf	(??_mode2+0)+0+1
	movf	0+(??_mode2+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_mode2+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_send_char
	line	289
	
l555:	
	line	291
;PR18.c: 289: }
;PR18.c: 291: delay(30000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	075h
	movwf	(?_delay+1)
	movlw	030h
	movwf	(?_delay)

	fcall	_delay
	goto	l2511
	line	293
	
l547:	
	line	261
	
l2511:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l548
u2740:
	goto	l2513
	
l556:	
	line	295
	
l2513:	
;PR18.c: 293: }
;PR18.c: 295: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	296
;PR18.c: 296: while(!RA2);
	goto	l557
	
l558:	
	
l557:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l557
u2750:
	goto	l2515
	
l559:	
	line	297
	
l2515:	
;PR18.c: 297: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	299
;PR18.c: 299: lcd_clr();
	fcall	_lcd_clr
	line	300
;PR18.c: 300: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	301
	
l2517:	
;PR18.c: 301: send_string("Value: ");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_send_string
	line	303
;PR18.c: 303: while(RA2)
	goto	l2543
	
l561:	
	line	305
;PR18.c: 304: {
;PR18.c: 305: if(!RA0)
	btfsc	(40/8),(40)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l562
u2760:
	line	308
	
l2519:	
;PR18.c: 306: {
;PR18.c: 308: if(value_temp > 0)
	movf	(mode2@value_temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2775
	movlw	low(01h)
	subwf	(mode2@value_temp),w
u2775:

	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l564
u2770:
	line	309
	
l2521:	
;PR18.c: 309: value_temp--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(mode2@value_temp),f
	skipnc
	incf	(mode2@value_temp+1),f
	movlw	high(-1)
	addwf	(mode2@value_temp+1),f
	goto	l564
	
l563:	
	line	310
;PR18.c: 310: }
	goto	l564
	line	311
	
l562:	
;PR18.c: 311: else if(!RA1)
	btfsc	(41/8),(41)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l564
u2780:
	line	314
	
l2523:	
;PR18.c: 312: {
;PR18.c: 314: if(value_temp < 1454)
	movf	(mode2@value_temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05AEh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2795
	movlw	low(05AEh)
	subwf	(mode2@value_temp),w
u2795:

	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l564
u2790:
	line	315
	
l2525:	
;PR18.c: 315: value_temp++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(mode2@value_temp),f
	skipnc
	incf	(mode2@value_temp+1),f
	movlw	high(01h)
	addwf	(mode2@value_temp+1),f
	goto	l564
	
l566:	
	goto	l564
	line	316
	
l565:	
	line	318
	
l564:	
;PR18.c: 316: }
;PR18.c: 318: if(value_temp != value)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@value+1),w
	xorwf	(mode2@value_temp+1),w
	skipz
	goto	u2805
	movf	(mode2@value),w
	xorwf	(mode2@value_temp),w
u2805:

	skipnz
	goto	u2801
	goto	u2800
u2801:
	goto	l2541
u2800:
	line	320
	
l2527:	
;PR18.c: 319: {
;PR18.c: 320: send_cmd(0x40|channel,value_temp,0);
	movf	(mode2@value_temp+1),w
	clrf	(?_send_cmd+1)
	addwf	(?_send_cmd+1)
	movf	(mode2@value_temp),w
	clrf	(?_send_cmd)
	addwf	(?_send_cmd)

	movlw	low(0)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_send_cmd)+02h)+1
	movf	(mode2@channel),w
	iorlw	040h
	fcall	_send_cmd
	line	321
	
l2529:	
;PR18.c: 321: value = value_temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@value_temp+1),w
	clrf	(mode2@value+1)
	addwf	(mode2@value+1)
	movf	(mode2@value_temp),w
	clrf	(mode2@value)
	addwf	(mode2@value)

	line	324
	
l2531:	
;PR18.c: 324: lcd_goto(7);
	movlw	(07h)
	fcall	_lcd_goto
	line	325
	
l2533:	
;PR18.c: 325: send_char('0' + (value / 1000));
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@value+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(mode2@value),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_send_char
	line	326
	
l2535:	
;PR18.c: 326: send_char('0' + (value % 1000) / 100);
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@value+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(mode2@value),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_send_char
	line	327
	
l2537:	
;PR18.c: 327: send_char('0' + (value % 100) / 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@value+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(mode2@value),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_send_char
	line	328
	
l2539:	
;PR18.c: 328: send_char('0' + (value % 10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@value+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(mode2@value),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_send_char
	goto	l2541
	line	329
	
l567:	
	line	331
	
l2541:	
;PR18.c: 329: }
;PR18.c: 331: delay(15000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	03Ah
	movwf	(?_delay+1)
	movlw	098h
	movwf	(?_delay)

	fcall	_delay
	goto	l2543
	line	333
	
l560:	
	line	303
	
l2543:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l561
u2810:
	goto	l2545
	
l568:	
	line	335
	
l2545:	
;PR18.c: 333: }
;PR18.c: 335: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	336
;PR18.c: 336: while(!RA2);
	goto	l569
	
l570:	
	
l569:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l569
u2820:
	goto	l2547
	
l571:	
	line	337
	
l2547:	
;PR18.c: 337: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l2481
	line	338
	
l572:	
	line	250
	goto	l2481
	
l573:	
	line	339
	
l574:	
	return
	opt stack 0
GLOBAL	__end_of_mode2
	__end_of_mode2:
;; =============== function _mode2 ends ============

	signat	_mode2,88
	global	_mode1
psect	text264,local,class=CODE,delta=2
global __ptext264
__ptext264:

;; *************** function _mode1 *****************
;; Defined at:
;;		line 175 in file "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_goto
;;		_send_char
;;		_send_string
;;		_delay
;;		_send_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text264
	file	"C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	line	175
	global	__size_of_mode1
	__size_of_mode1	equ	__end_of_mode1-_mode1
	
_mode1:	
	opt	stack 4
; Regs used in _mode1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	176
	
l2381:	
;PR18.c: 176: lcd_goto(13);
	movlw	(0Dh)
	fcall	_lcd_goto
	line	177
;PR18.c: 177: send_char(' ');
	movlw	(020h)
	fcall	_send_char
	line	178
;PR18.c: 178: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	179
	
l2383:	
;PR18.c: 179: send_string("  ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_send_string
	line	180
	
l2385:	
;PR18.c: 180: delay(100000);
	movlw	0
	movwf	(?_delay+3)
	movlw	01h
	movwf	(?_delay+2)
	movlw	086h
	movwf	(?_delay+1)
	movlw	0A0h
	movwf	(?_delay)

	fcall	_delay
	line	184
	
l2387:	
;PR18.c: 184: send_cmd(0x4A, 732+300, 30);
	movlw	low(0408h)
	movwf	(?_send_cmd)
	movlw	high(0408h)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ah)
	fcall	_send_cmd
	line	185
	
l2389:	
;PR18.c: 185: send_cmd(0x47, 732-300, 30);
	movlw	low(01B0h)
	movwf	(?_send_cmd)
	movlw	high(01B0h)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(047h)
	fcall	_send_cmd
	line	186
	
l2391:	
;PR18.c: 186: send_cmd(0x4B, 732+300, 30);
	movlw	low(0408h)
	movwf	(?_send_cmd)
	movlw	high(0408h)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Bh)
	fcall	_send_cmd
	line	187
	
l2393:	
;PR18.c: 187: send_cmd(0x48, 732-300, 30);
	movlw	low(01B0h)
	movwf	(?_send_cmd)
	movlw	high(01B0h)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(048h)
	fcall	_send_cmd
	line	188
	
l2395:	
;PR18.c: 188: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	189
	
l2397:	
;PR18.c: 189: send_cmd(0x4C, 732-200, 20);
	movlw	low(0214h)
	movwf	(?_send_cmd)
	movlw	high(0214h)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ch)
	fcall	_send_cmd
	line	190
	
l2399:	
;PR18.c: 190: send_cmd(0x47, 732, 30);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(047h)
	fcall	_send_cmd
	line	191
	
l2401:	
;PR18.c: 191: send_cmd(0x48, 732, 30);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(048h)
	fcall	_send_cmd
	line	192
	
l2403:	
;PR18.c: 192: send_cmd(0x49, 732-200, 20);
	movlw	low(0214h)
	movwf	(?_send_cmd)
	movlw	high(0214h)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(049h)
	fcall	_send_cmd
	line	193
	
l2405:	
;PR18.c: 193: delay(300000);
	movlw	0
	movwf	(?_delay+3)
	movlw	04h
	movwf	(?_delay+2)
	movlw	093h
	movwf	(?_delay+1)
	movlw	0E0h
	movwf	(?_delay)

	fcall	_delay
	goto	l2407
	line	195
;PR18.c: 195: while(1)
	
l540:	
	line	198
	
l2407:	
;PR18.c: 196: {
;PR18.c: 198: send_cmd(0x4C, 732-60, 20);
	movlw	low(02A0h)
	movwf	(?_send_cmd)
	movlw	high(02A0h)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ch)
	fcall	_send_cmd
	line	199
	
l2409:	
;PR18.c: 199: send_cmd(0x49, 732-60, 20);
	movlw	low(02A0h)
	movwf	(?_send_cmd)
	movlw	high(02A0h)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(049h)
	fcall	_send_cmd
	line	200
	
l2411:	
;PR18.c: 200: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	202
	
l2413:	
;PR18.c: 202: send_cmd(0x4A, 732-375, 40);
	movlw	low(0165h)
	movwf	(?_send_cmd)
	movlw	high(0165h)
	movwf	((?_send_cmd))+1
	movlw	low(028h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(028h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ah)
	fcall	_send_cmd
	line	203
	
l2415:	
;PR18.c: 203: send_cmd(0x4B, 732, 20);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Bh)
	fcall	_send_cmd
	line	204
	
l2417:	
;PR18.c: 204: send_cmd(0x47, 732+675, 40);
	movlw	low(057Fh)
	movwf	(?_send_cmd)
	movlw	high(057Fh)
	movwf	((?_send_cmd))+1
	movlw	low(028h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(028h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(047h)
	fcall	_send_cmd
	line	205
	
l2419:	
;PR18.c: 205: send_cmd(0x48, 732+300, 15);
	movlw	low(0408h)
	movwf	(?_send_cmd)
	movlw	high(0408h)
	movwf	((?_send_cmd))+1
	movlw	low(0Fh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0Fh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(048h)
	fcall	_send_cmd
	line	206
	
l2421:	
;PR18.c: 206: send_cmd(0x4C, 732+60, 10);
	movlw	low(0318h)
	movwf	(?_send_cmd)
	movlw	high(0318h)
	movwf	((?_send_cmd))+1
	movlw	low(0Ah)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0Ah)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ch)
	fcall	_send_cmd
	line	207
	
l2423:	
;PR18.c: 207: send_cmd(0x49, 732+60, 10);
	movlw	low(0318h)
	movwf	(?_send_cmd)
	movlw	high(0318h)
	movwf	((?_send_cmd))+1
	movlw	low(0Ah)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0Ah)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(049h)
	fcall	_send_cmd
	line	208
	
l2425:	
;PR18.c: 208: delay(450000);
	movlw	0
	movwf	(?_delay+3)
	movlw	06h
	movwf	(?_delay+2)
	movlw	0DDh
	movwf	(?_delay+1)
	movlw	0D0h
	movwf	(?_delay)

	fcall	_delay
	line	210
	
l2427:	
;PR18.c: 210: send_cmd(0x4C, 732, 20);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ch)
	fcall	_send_cmd
	line	211
	
l2429:	
;PR18.c: 211: send_cmd(0x49, 732+200, 20);
	movlw	low(03A4h)
	movwf	(?_send_cmd)
	movlw	high(03A4h)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(049h)
	fcall	_send_cmd
	line	212
	
l2431:	
;PR18.c: 212: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	214
	
l2433:	
;PR18.c: 214: send_cmd(0x47, 732-300, 60);
	movlw	low(01B0h)
	movwf	(?_send_cmd)
	movlw	high(01B0h)
	movwf	((?_send_cmd))+1
	movlw	low(03Ch)
	movwf	0+(?_send_cmd)+02h
	movlw	high(03Ch)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(047h)
	fcall	_send_cmd
	line	215
	
l2435:	
;PR18.c: 215: send_cmd(0x48, 732-300, 30);
	movlw	low(01B0h)
	movwf	(?_send_cmd)
	movlw	high(01B0h)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(048h)
	fcall	_send_cmd
	line	216
	
l2437:	
;PR18.c: 216: send_cmd(0x4A, 732, 30);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ah)
	fcall	_send_cmd
	line	217
	
l2439:	
;PR18.c: 217: send_cmd(0x4C, 732+200, 30);
	movlw	low(03A4h)
	movwf	(?_send_cmd)
	movlw	high(03A4h)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ch)
	fcall	_send_cmd
	line	218
	
l2441:	
;PR18.c: 218: delay(300000);
	movlw	0
	movwf	(?_delay+3)
	movlw	04h
	movwf	(?_delay+2)
	movlw	093h
	movwf	(?_delay+1)
	movlw	0E0h
	movwf	(?_delay)

	fcall	_delay
	line	221
	
l2443:	
;PR18.c: 221: send_cmd(0x49, 732+60, 20);
	movlw	low(0318h)
	movwf	(?_send_cmd)
	movlw	high(0318h)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(049h)
	fcall	_send_cmd
	line	222
	
l2445:	
;PR18.c: 222: send_cmd(0x4C, 732+60, 20);
	movlw	low(0318h)
	movwf	(?_send_cmd)
	movlw	high(0318h)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ch)
	fcall	_send_cmd
	line	223
	
l2447:	
;PR18.c: 223: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	225
	
l2449:	
;PR18.c: 225: send_cmd(0x47, 732+375, 40);
	movlw	low(0453h)
	movwf	(?_send_cmd)
	movlw	high(0453h)
	movwf	((?_send_cmd))+1
	movlw	low(028h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(028h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(047h)
	fcall	_send_cmd
	line	226
	
l2451:	
;PR18.c: 226: send_cmd(0x48, 732, 20);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(048h)
	fcall	_send_cmd
	line	227
	
l2453:	
;PR18.c: 227: send_cmd(0x4A, 732-675, 40);
	movlw	low(039h)
	movwf	(?_send_cmd)
	movlw	high(039h)
	movwf	((?_send_cmd))+1
	movlw	low(028h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(028h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ah)
	fcall	_send_cmd
	line	228
	
l2455:	
;PR18.c: 228: send_cmd(0x4B, 732-300, 15);
	movlw	low(01B0h)
	movwf	(?_send_cmd)
	movlw	high(01B0h)
	movwf	((?_send_cmd))+1
	movlw	low(0Fh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0Fh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Bh)
	fcall	_send_cmd
	line	229
	
l2457:	
;PR18.c: 229: send_cmd(0x49, 732-60, 10);
	movlw	low(02A0h)
	movwf	(?_send_cmd)
	movlw	high(02A0h)
	movwf	((?_send_cmd))+1
	movlw	low(0Ah)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0Ah)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(049h)
	fcall	_send_cmd
	line	230
	
l2459:	
;PR18.c: 230: send_cmd(0x4C, 732-60, 10);
	movlw	low(02A0h)
	movwf	(?_send_cmd)
	movlw	high(02A0h)
	movwf	((?_send_cmd))+1
	movlw	low(0Ah)
	movwf	0+(?_send_cmd)+02h
	movlw	high(0Ah)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ch)
	fcall	_send_cmd
	line	231
	
l2461:	
;PR18.c: 231: delay(450000);
	movlw	0
	movwf	(?_delay+3)
	movlw	06h
	movwf	(?_delay+2)
	movlw	0DDh
	movwf	(?_delay+1)
	movlw	0D0h
	movwf	(?_delay)

	fcall	_delay
	line	233
	
l2463:	
;PR18.c: 233: send_cmd(0x49, 732, 20);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(049h)
	fcall	_send_cmd
	line	234
	
l2465:	
;PR18.c: 234: send_cmd(0x4C, 732-200, 20);
	movlw	low(0214h)
	movwf	(?_send_cmd)
	movlw	high(0214h)
	movwf	((?_send_cmd))+1
	movlw	low(014h)
	movwf	0+(?_send_cmd)+02h
	movlw	high(014h)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ch)
	fcall	_send_cmd
	line	235
	
l2467:	
;PR18.c: 235: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	237
	
l2469:	
;PR18.c: 237: send_cmd(0x4A, 732+300, 60);
	movlw	low(0408h)
	movwf	(?_send_cmd)
	movlw	high(0408h)
	movwf	((?_send_cmd))+1
	movlw	low(03Ch)
	movwf	0+(?_send_cmd)+02h
	movlw	high(03Ch)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Ah)
	fcall	_send_cmd
	line	238
	
l2471:	
;PR18.c: 238: send_cmd(0x4B, 732+300, 30);
	movlw	low(0408h)
	movwf	(?_send_cmd)
	movlw	high(0408h)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(04Bh)
	fcall	_send_cmd
	line	239
	
l2473:	
;PR18.c: 239: send_cmd(0x47, 732, 30);
	movlw	low(02DCh)
	movwf	(?_send_cmd)
	movlw	high(02DCh)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(047h)
	fcall	_send_cmd
	line	240
	
l2475:	
;PR18.c: 240: send_cmd(0x49, 732-200, 30);
	movlw	low(0214h)
	movwf	(?_send_cmd)
	movlw	high(0214h)
	movwf	((?_send_cmd))+1
	movlw	low(01Eh)
	movwf	0+(?_send_cmd)+02h
	movlw	high(01Eh)
	movwf	(0+(?_send_cmd)+02h)+1
	movlw	(049h)
	fcall	_send_cmd
	line	241
	
l2477:	
;PR18.c: 241: delay(300000);
	movlw	0
	movwf	(?_delay+3)
	movlw	04h
	movwf	(?_delay+2)
	movlw	093h
	movwf	(?_delay+1)
	movlw	0E0h
	movwf	(?_delay)

	fcall	_delay
	goto	l2407
	line	242
	
l541:	
	line	195
	goto	l2407
	
l542:	
	line	243
	
l543:	
	return
	opt stack 0
GLOBAL	__end_of_mode1
	__end_of_mode1:
;; =============== function _mode1 ends ============

	signat	_mode1,88
	global	_send_string
psect	text265,local,class=CODE,delta=2
global __ptext265
__ptext265:

;; *************** function _send_string *****************
;; Defined at:
;;		line 388 in file "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_9(8), STR_8(3), STR_7(9), STR_6(3), 
;;		 -> STR_5(15), STR_4(15), STR_3(3), STR_2(5), 
;;		 -> STR_1(13), 
;; Auto vars:     Size  Location     Type
;;  s               1   10[COMMON] PTR const unsigned char 
;;		 -> STR_9(8), STR_8(3), STR_7(9), STR_6(3), 
;;		 -> STR_5(15), STR_4(15), STR_3(3), STR_2(5), 
;;		 -> STR_1(13), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;;		_mode1
;;		_mode2
;; This function uses a non-reentrant model
;;
psect	text265
	file	"C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	line	388
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 4
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	389
	
l2371:	
;PR18.c: 389: while (s && *s)send_char (*s++);
	goto	l2377
	
l597:	
	
l2373:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l2375:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l2377
	
l596:	
	
l2377:	
	movf	(send_string@s),w
	skipz
	goto	u2670
	goto	l601
u2670:
	
l2379:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l2373
u2680:
	goto	l601
	
l599:	
	goto	l601
	
l600:	
	line	390
	
l601:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_goto
psect	text266,local,class=CODE,delta=2
global __ptext266
__ptext266:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 369 in file "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;; This function is called by:
;;		_main
;;		_mode1
;;		_mode2
;; This function uses a non-reentrant model
;;
psect	text266
	file	"C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	line	369
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	370
	
l2363:	
;PR18.c: 370: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u2661
	goto	u2660
u2661:
	goto	l2367
u2660:
	line	372
	
l2365:	
;PR18.c: 371: {
;PR18.c: 372: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	373
;PR18.c: 373: }
	goto	l590
	line	374
	
l588:	
	line	376
	
l2367:	
;PR18.c: 374: else
;PR18.c: 375: {
;PR18.c: 376: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	377
	
l2369:	
;PR18.c: 377: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l590
	line	378
	
l589:	
	line	379
	
l590:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clr
psect	text267,local,class=CODE,delta=2
global __ptext267
__ptext267:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 382 in file "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;;		_delay
;; This function is called by:
;;		_main
;;		_mode2
;; This function uses a non-reentrant model
;;
psect	text267
	file	"C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	line	382
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 4
; Regs used in _lcd_clr: [wreg+status,2+status,0+pclath+cstack]
	line	383
	
l2361:	
;PR18.c: 383: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	line	384
;PR18.c: 384: delay(600);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	02h
	movwf	(?_delay+1)
	movlw	058h
	movwf	(?_delay)

	fcall	_delay
	line	385
	
l593:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_send_char
psect	text268,local,class=CODE,delta=2
global __ptext268
__ptext268:

;; *************** function _send_char *****************
;; Defined at:
;;		line 358 in file "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_mode1
;;		_mode2
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text268
	file	"C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	line	358
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 5
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	359
	
l2349:	
;PR18.c: 359: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	360
;PR18.c: 360: RC3=1;
	bsf	(59/8),(59)&7
	line	361
	
l2351:	
;PR18.c: 361: PORTB=data;
	movf	(send_char@data),w
	movwf	(6)	;volatile
	line	362
	
l2353:	
;PR18.c: 362: RC5=1;
	bsf	(61/8),(61)&7
	line	363
	
l2355:	
;PR18.c: 363: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	364
	
l2357:	
;PR18.c: 364: RC5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	365
	
l2359:	
;PR18.c: 365: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	366
	
l585:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_send_cmd
psect	text269,local,class=CODE,delta=2
global __ptext269
__ptext269:

;; *************** function _send_cmd *****************
;; Defined at:
;;		line 399 in file "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
;; Parameters:    Size  Location     Type
;;  num             1    wreg     unsigned char 
;;  data            2    1[COMMON] unsigned int 
;;  ramp            2    3[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  num             1    8[COMMON] unsigned char 
;;  lower_byte      1   10[COMMON] unsigned char 
;;  higher_byte     1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uart_send
;; This function is called by:
;;		_main
;;		_mode1
;;		_mode2
;; This function uses a non-reentrant model
;;
psect	text269
	file	"C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	line	399
	global	__size_of_send_cmd
	__size_of_send_cmd	equ	__end_of_send_cmd-_send_cmd
	
_send_cmd:	
	opt	stack 5
; Regs used in _send_cmd: [wreg+status,2+status,0+pclath+cstack]
;send_cmd@num stored from wreg
	movwf	(send_cmd@num)
	line	400
	
l2337:	
;PR18.c: 400: unsigned char higher_byte=0, lower_byte=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(send_cmd@higher_byte)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(send_cmd@lower_byte)
	line	404
;PR18.c: 404: higher_byte=(data>>6)&0x003f;
	movf	(send_cmd@data+1),w
	movwf	(??_send_cmd+0)+0+1
	movf	(send_cmd@data),w
	movwf	(??_send_cmd+0)+0
	movlw	06h
u2655:
	clrc
	rrf	(??_send_cmd+0)+1,f
	rrf	(??_send_cmd+0)+0,f
	addlw	-1
	skipz
	goto	u2655
	movf	0+(??_send_cmd+0)+0,w
	andlw	03Fh
	movwf	(??_send_cmd+2)+0
	movf	(??_send_cmd+2)+0,w
	movwf	(send_cmd@higher_byte)
	line	405
	
l2339:	
;PR18.c: 405: lower_byte=data&0x003f;
	movf	(send_cmd@data),w
	andlw	03Fh
	movwf	(??_send_cmd+0)+0
	movf	(??_send_cmd+0)+0,w
	movwf	(send_cmd@lower_byte)
	line	407
	
l2341:	
;PR18.c: 407: uart_send(num);
	movf	(send_cmd@num),w
	fcall	_uart_send
	line	408
	
l2343:	
;PR18.c: 408: uart_send(higher_byte);
	movf	(send_cmd@higher_byte),w
	fcall	_uart_send
	line	409
	
l2345:	
;PR18.c: 409: uart_send(lower_byte);
	movf	(send_cmd@lower_byte),w
	fcall	_uart_send
	line	410
	
l2347:	
;PR18.c: 410: uart_send(ramp);
	movf	(send_cmd@ramp),w
	fcall	_uart_send
	line	411
	
l610:	
	return
	opt stack 0
GLOBAL	__end_of_send_cmd
	__end_of_send_cmd:
;; =============== function _send_cmd ends ============

	signat	_send_cmd,12408
	global	_send_config
psect	text270,local,class=CODE,delta=2
global __ptext270
__ptext270:

;; *************** function _send_config *****************
;; Defined at:
;;		line 347 in file "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_lcd_goto
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text270
	file	"C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	line	347
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 4
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	348
	
l2325:	
;PR18.c: 348: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	349
;PR18.c: 349: RC3=0;
	bcf	(59/8),(59)&7
	line	350
	
l2327:	
;PR18.c: 350: PORTB=data;
	movf	(send_config@data),w
	movwf	(6)	;volatile
	line	351
	
l2329:	
;PR18.c: 351: RC5=1;
	bsf	(61/8),(61)&7
	line	352
	
l2331:	
;PR18.c: 352: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	353
	
l2333:	
;PR18.c: 353: RC5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	354
	
l2335:	
;PR18.c: 354: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	355
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	___awmod
psect	text271,local,class=CODE,delta=2
global __ptext271
__ptext271:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_mode2
;; This function uses a non-reentrant model
;;
psect	text271
	file	"C:\Program Files\HI-TECH Software\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2289:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2291:	
	btfss	(___awmod@dividend+1),7
	goto	u2561
	goto	u2560
u2561:
	goto	l2295
u2560:
	line	10
	
l2293:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2295
	line	12
	
l827:	
	line	13
	
l2295:	
	btfss	(___awmod@divisor+1),7
	goto	u2571
	goto	u2570
u2571:
	goto	l2299
u2570:
	line	14
	
l2297:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2299
	
l828:	
	line	15
	
l2299:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2581
	goto	u2580
u2581:
	goto	l2317
u2580:
	line	16
	
l2301:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2307
	
l831:	
	line	18
	
l2303:	
	movlw	01h
	
u2595:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2595
	line	19
	
l2305:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2307
	line	20
	
l830:	
	line	17
	
l2307:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l2303
u2600:
	goto	l2309
	
l832:	
	goto	l2309
	line	21
	
l833:	
	line	22
	
l2309:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2615
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2615:
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2313
u2610:
	line	23
	
l2311:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2313
	
l834:	
	line	24
	
l2313:	
	movlw	01h
	
u2625:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2625
	line	25
	
l2315:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l2309
u2630:
	goto	l2317
	
l835:	
	goto	l2317
	line	26
	
l829:	
	line	27
	
l2317:	
	movf	(___awmod@sign),w
	skipz
	goto	u2640
	goto	l2321
u2640:
	line	28
	
l2319:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2321
	
l836:	
	line	29
	
l2321:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l837
	
l2323:	
	line	30
	
l837:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text272,local,class=CODE,delta=2
global __ptext272
__ptext272:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] int 
;;  dividend        2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_mode2
;; This function uses a non-reentrant model
;;
psect	text272
	file	"C:\Program Files\HI-TECH Software\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2251:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	line	10
	
l2253:	
	btfss	(___awdiv@divisor+1),7
	goto	u2461
	goto	u2460
u2461:
	goto	l2257
u2460:
	line	11
	
l2255:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2257
	line	13
	
l759:	
	line	14
	
l2257:	
	btfss	(___awdiv@dividend+1),7
	goto	u2471
	goto	u2470
u2471:
	goto	l760
u2470:
	line	15
	
l2259:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2261:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l760:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2481
	goto	u2480
u2481:
	goto	l2281
u2480:
	line	20
	
l2263:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2269
	
l763:	
	line	22
	
l2265:	
	movlw	01h
	
u2495:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2495
	line	23
	
l2267:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2269
	line	24
	
l762:	
	line	21
	
l2269:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l2265
u2500:
	goto	l2271
	
l764:	
	goto	l2271
	line	25
	
l765:	
	line	26
	
l2271:	
	movlw	01h
	
u2515:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2515
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2525
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2525:
	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l2277
u2520:
	line	28
	
l2273:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2275:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2277
	line	30
	
l766:	
	line	31
	
l2277:	
	movlw	01h
	
u2535:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2535
	line	32
	
l2279:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l2271
u2540:
	goto	l2281
	
l767:	
	goto	l2281
	line	33
	
l761:	
	line	34
	
l2281:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2550
	goto	l2285
u2550:
	line	35
	
l2283:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2285
	
l768:	
	line	36
	
l2285:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l769
	
l2287:	
	line	37
	
l769:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_uart_send
psect	text273,local,class=CODE,delta=2
global __ptext273
__ptext273:

;; *************** function _uart_send *****************
;; Defined at:
;;		line 393 in file "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_cmd
;; This function uses a non-reentrant model
;;
psect	text273
	file	"C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	line	393
	global	__size_of_uart_send
	__size_of_uart_send	equ	__end_of_uart_send-_uart_send
	
_uart_send:	
	opt	stack 5
; Regs used in _uart_send: [wreg]
;uart_send@data stored from wreg
	movwf	(uart_send@data)
	line	394
	
l2247:	
;PR18.c: 394: while(TXIF==0);
	goto	l604
	
l605:	
	
l604:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l604
u2450:
	goto	l2249
	
l606:	
	line	395
	
l2249:	
;PR18.c: 395: TXREG=data;
	movf	(uart_send@data),w
	movwf	(25)	;volatile
	line	396
	
l607:	
	return
	opt stack 0
GLOBAL	__end_of_uart_send
	__end_of_uart_send:
;; =============== function _uart_send ends ============

	signat	_uart_send,4216
	global	_delay
psect	text274,local,class=CODE,delta=2
global __ptext274
__ptext274:

;; *************** function _delay *****************
;; Defined at:
;;		line 342 in file "C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_mode1
;;		_mode2
;;		_send_config
;;		_send_char
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text274
	file	"C:\Users\Phang\Desktop\9.80\PR 18\PR18.c"
	line	342
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	343
	
l2241:	
;PR18.c: 343: for( ;data>0;data--);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l2245
u2420:
	goto	l579
	
l2243:	
	goto	l579
	
l577:	
	
l2245:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@data),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u2435
	goto	u2436
u2435:
	subwf	(delay@data+1),f
u2436:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u2437
	goto	u2438
u2437:
	subwf	(delay@data+2),f
u2438:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u2439
	goto	u2430
u2439:
	subwf	(delay@data+3),f
u2430:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2245
u2440:
	goto	l579
	
l578:	
	line	344
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text275,local,class=CODE,delta=2
global __ptext275
__ptext275:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
