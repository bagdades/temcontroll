EESchema Schematic File Version 4
LIBS:tempcontroll-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4750 2550 2    60   ~ 0
RES
Text Label 6550 3200 0    60   ~ 0
MOSI
Text Label 6550 3300 0    60   ~ 0
MISO
Text Label 6550 3400 0    60   ~ 0
SCK
$Comp
L Connector:Conn_01x06 J12
U 1 1 5A391336
P 9950 1400
F 0 "J12" H 10030 1392 50  0000 L CNN
F 1 "AVR_SPI" H 10030 1301 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 9950 1400 50  0001 C CNN
F 3 "~" H 9950 1400 50  0001 C CNN
	1    9950 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5A39143F
P 9700 1050
F 0 "#PWR020" H 9700 900 50  0001 C CNN
F 1 "+5V" H 9715 1223 50  0000 C CNN
F 2 "" H 9700 1050 50  0001 C CNN
F 3 "" H 9700 1050 50  0001 C CNN
	1    9700 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1050 9700 1300
Wire Wire Line
	9700 1300 9750 1300
$Comp
L power:GND #PWR021
U 1 1 5A3914E1
P 9700 1850
F 0 "#PWR021" H 9700 1600 50  0001 C CNN
F 1 "GND" H 9705 1677 50  0000 C CNN
F 2 "" H 9700 1850 50  0001 C CNN
F 3 "" H 9700 1850 50  0001 C CNN
	1    9700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1850 9700 1700
Wire Wire Line
	9700 1700 9750 1700
Wire Wire Line
	9750 1200 9600 1200
Wire Wire Line
	9750 1400 9600 1400
Wire Wire Line
	9750 1500 9600 1500
Wire Wire Line
	9750 1600 9600 1600
$Comp
L power:GND #PWR012
U 1 1 5A3920AD
P 5400 5600
F 0 "#PWR012" H 5400 5350 50  0001 C CNN
F 1 "GND" H 5405 5427 50  0000 C CNN
F 2 "" H 5400 5600 50  0001 C CNN
F 3 "" H 5400 5600 50  0001 C CNN
	1    5400 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5600 5400 5500
$Comp
L power:+5V #PWR09
U 1 1 5A39218F
P 5400 2500
F 0 "#PWR09" H 5400 2350 50  0001 C CNN
F 1 "+5V" H 5300 2650 50  0000 C CNN
F 2 "" H 5400 2500 50  0001 C CNN
F 3 "" H 5400 2500 50  0001 C CNN
	1    5400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2500 5400 2550
$Comp
L power:GND #PWR08
U 1 1 5A392409
P 4400 3350
F 0 "#PWR08" H 4400 3100 50  0001 C CNN
F 1 "GND" H 4405 3177 50  0000 C CNN
F 2 "" H 4400 3350 50  0001 C CNN
F 3 "" H 4400 3350 50  0001 C CNN
	1    4400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3350 4400 3300
Wire Wire Line
	4400 3300 4500 3300
Text Label 9600 1200 2    60   ~ 0
MISO
Text Label 9600 1400 2    60   ~ 0
SCK
Text Label 9600 1500 2    60   ~ 0
MOSI
Text Label 9600 1600 2    60   ~ 0
RES
$Comp
L MY:KL-4031-BSR U2
U 1 1 5A3920F6
P 7750 1500
F 0 "U2" H 8150 1900 60  0000 L CNN
F 1 "KL-4031-BSR" H 7650 2000 60  0000 L CNN
F 2 "MY:KL-4031" H 7750 1500 60  0001 C CNN
F 3 "" H 7750 1500 60  0001 C CNN
	1    7750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1900 7350 2050
Wire Wire Line
	7450 1900 7450 2050
Wire Wire Line
	7550 1900 7550 2050
Wire Wire Line
	7650 1900 7650 2050
Wire Wire Line
	7750 1900 7750 2050
Wire Wire Line
	7850 1900 7850 2050
Wire Wire Line
	7950 1900 7950 2050
Wire Wire Line
	8200 1900 8200 2050
Text Label 7350 2050 1    60   ~ 0
A
Text Label 7450 2050 1    60   ~ 0
B
Text Label 7550 2050 1    60   ~ 0
C
Text Label 7650 2050 1    60   ~ 0
D
Text Label 7750 2050 1    60   ~ 0
E
Text Label 7850 2050 1    60   ~ 0
F
Text Label 7950 2050 1    60   ~ 0
G
Text Label 8200 2050 1    60   ~ 0
DP
$Comp
L device:R R4
U 1 1 5A39381F
P 5000 2550
F 0 "R4" V 4793 2550 50  0000 C CNN
F 1 "10k" V 4884 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4930 2550 50  0001 C CNN
F 3 "" H 5000 2550 50  0001 C CNN
	1    5000 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 2550 5400 2550
Connection ~ 5400 2550
Wire Wire Line
	5400 2550 5400 2600
Wire Wire Line
	4850 2550 4400 2550
Wire Wire Line
	4400 2550 4400 2900
Wire Wire Line
	4400 2900 4500 2900
$Comp
L device:C C2
U 1 1 5A3943A0
P 4150 2900
F 0 "C2" V 3898 2900 50  0000 C CNN
F 1 "100u" V 3989 2900 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 4188 2750 50  0001 C CNN
F 3 "" H 4150 2900 50  0001 C CNN
	1    4150 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 2900 4400 2900
Connection ~ 4400 2900
$Comp
L power:GND #PWR07
U 1 1 5A394837
P 3900 2900
F 0 "#PWR07" H 3900 2650 50  0001 C CNN
F 1 "GND" H 3905 2727 50  0000 C CNN
F 2 "" H 3900 2900 50  0001 C CNN
F 3 "" H 3900 2900 50  0001 C CNN
	1    3900 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 2900 4000 2900
$Comp
L power:+5V #PWR06
U 1 1 5A3A2F3C
P 3650 2500
F 0 "#PWR06" H 3650 2350 50  0001 C CNN
F 1 "+5V" H 3550 2650 50  0000 C CNN
F 2 "" H 3650 2500 50  0001 C CNN
F 3 "" H 3650 2500 50  0001 C CNN
	1    3650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2500 3650 2600
Wire Wire Line
	3650 3100 4500 3100
$Comp
L references:TL431LP D1
U 1 1 5A3A3526
P 3300 3500
F 0 "D1" H 3300 3386 50  0000 C CNN
F 1 "TL431LP" H 3300 3295 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 3300 3350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 3300 3500 50  0001 C CIN
	1    3300 3500
	1    0    0    -1  
$EndComp
$Comp
L device:CP C1
U 1 1 5A3A3B6E
P 3300 3200
F 0 "C1" V 3045 3200 50  0000 C CNN
F 1 "47u" V 3136 3200 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Reflow" H 3338 3050 50  0001 C CNN
F 3 "" H 3300 3200 50  0001 C CNN
	1    3300 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5A3A425C
P 3050 3200
F 0 "#PWR04" H 3050 2950 50  0001 C CNN
F 1 "GND" H 3055 3027 50  0000 C CNN
F 2 "" H 3050 3200 50  0001 C CNN
F 3 "" H 3050 3200 50  0001 C CNN
	1    3050 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 3200 3150 3200
$Comp
L device:R R1
U 1 1 5A3A55DD
P 3500 2800
F 0 "R1" H 3569 2846 50  0000 L CNN
F 1 "2k" H 3569 2755 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3430 2800 50  0001 C CNN
F 3 "" H 3500 2800 50  0001 C CNN
	1    3500 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 2650 3500 2600
Wire Wire Line
	3500 2600 3650 2600
Connection ~ 3650 2600
Wire Wire Line
	3650 2600 3650 3100
Wire Wire Line
	3400 3500 3500 3500
Wire Wire Line
	3500 3500 3500 3350
Wire Wire Line
	3300 3400 3300 3350
Wire Wire Line
	3300 3350 3500 3350
$Comp
L power:GND #PWR05
U 1 1 5A3A7895
P 3050 3500
F 0 "#PWR05" H 3050 3250 50  0001 C CNN
F 1 "GND" H 3055 3327 50  0000 C CNN
F 2 "" H 3050 3500 50  0001 C CNN
F 3 "" H 3050 3500 50  0001 C CNN
	1    3050 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 3500 3200 3500
$Comp
L device:R R5
U 1 1 5A3A89AB
P 7150 2900
F 0 "R5" V 7100 2700 50  0000 C CNN
F 1 "220" V 7150 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7080 2900 50  0001 C CNN
F 3 "" H 7150 2900 50  0001 C CNN
	1    7150 2900
	0    1    1    0   
$EndComp
$Comp
L device:R R6
U 1 1 5A3A8AA9
P 7150 3000
F 0 "R6" V 7100 2800 50  0000 C CNN
F 1 "220" V 7150 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7080 3000 50  0001 C CNN
F 3 "" H 7150 3000 50  0001 C CNN
	1    7150 3000
	0    1    1    0   
$EndComp
$Comp
L device:R R7
U 1 1 5A3A8ACD
P 7150 3100
F 0 "R7" V 7100 2900 50  0000 C CNN
F 1 "220" V 7150 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7080 3100 50  0001 C CNN
F 3 "" H 7150 3100 50  0001 C CNN
	1    7150 3100
	0    1    1    0   
$EndComp
$Comp
L device:R R8
U 1 1 5A3A8AF3
P 7150 3200
F 0 "R8" V 7100 3000 50  0000 C CNN
F 1 "220" V 7150 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7080 3200 50  0001 C CNN
F 3 "" H 7150 3200 50  0001 C CNN
	1    7150 3200
	0    1    1    0   
$EndComp
$Comp
L device:R R9
U 1 1 5A3A8B1F
P 7150 3300
F 0 "R9" V 7100 3100 50  0000 C CNN
F 1 "220" V 7150 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7080 3300 50  0001 C CNN
F 3 "" H 7150 3300 50  0001 C CNN
	1    7150 3300
	0    1    1    0   
$EndComp
$Comp
L device:R R10
U 1 1 5A3A8B49
P 7150 3400
F 0 "R10" V 7100 3200 50  0000 C CNN
F 1 "220" V 7150 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7080 3400 50  0001 C CNN
F 3 "" H 7150 3400 50  0001 C CNN
	1    7150 3400
	0    1    1    0   
$EndComp
$Comp
L device:R R2
U 1 1 5A3A8BD7
P 4150 3600
F 0 "R2" V 4050 3600 50  0000 C CNN
F 1 "220" V 4150 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4080 3600 50  0001 C CNN
F 3 "" H 4150 3600 50  0001 C CNN
	1    4150 3600
	0    1    1    0   
$EndComp
$Comp
L device:R R3
U 1 1 5A3A8CD6
P 4150 3800
F 0 "R3" V 4050 3800 50  0000 C CNN
F 1 "220" V 4150 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4080 3800 50  0001 C CNN
F 3 "" H 4150 3800 50  0001 C CNN
	1    4150 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 3600 4500 3600
Wire Wire Line
	4300 3800 4500 3800
Wire Wire Line
	6400 2900 7000 2900
Wire Wire Line
	6400 3000 7000 3000
Wire Wire Line
	6400 3100 7000 3100
Wire Wire Line
	6400 3200 7000 3200
Wire Wire Line
	6400 3300 7000 3300
Wire Wire Line
	6400 3400 7000 3400
Wire Wire Line
	7300 2900 7400 2900
Wire Wire Line
	7300 3000 7400 3000
Wire Wire Line
	7300 3100 7400 3100
Wire Wire Line
	7300 3200 7400 3200
Wire Wire Line
	7300 3300 7400 3300
Wire Wire Line
	7300 3400 7400 3400
Text Label 7400 2900 0    60   ~ 0
A
Text Label 7400 3000 0    60   ~ 0
B
Text Label 7400 3100 0    60   ~ 0
C
Text Label 7400 3200 0    60   ~ 0
D
Text Label 7400 3300 0    60   ~ 0
E
Text Label 7400 3400 0    60   ~ 0
F
Wire Wire Line
	4000 3600 3900 3600
Wire Wire Line
	4000 3800 3900 3800
Text Label 3900 3600 2    60   ~ 0
G
Text Label 3900 3800 2    60   ~ 0
DP
$Comp
L Connector:Conn_01x03 J11
U 1 1 5A3B8700
P 7100 4300
F 0 "J11" H 7180 4342 50  0000 L CNN
F 1 "Conn_01x03" H 7180 4251 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7100 4300 50  0001 C CNN
F 3 "~" H 7100 4300 50  0001 C CNN
	1    7100 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5A3B8782
P 6700 4200
F 0 "#PWR013" H 6700 3950 50  0001 C CNN
F 1 "GND" H 6705 4027 50  0000 C CNN
F 2 "" H 6700 4200 50  0001 C CNN
F 3 "" H 6700 4200 50  0001 C CNN
	1    6700 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 4200 6900 4200
Text Label 6700 4300 0    60   ~ 0
RX
Text Label 6700 4400 0    60   ~ 0
TX
Wire Wire Line
	6400 4100 6600 4100
Wire Wire Line
	6400 4000 6600 4000
Wire Wire Line
	6400 3900 6600 3900
Text Label 6600 4100 0    60   ~ 0
D3
Text Label 6600 4000 0    60   ~ 0
D2
Text Label 6600 3900 0    60   ~ 0
D1
NoConn ~ 6400 3800
NoConn ~ 6400 3700
$Comp
L device:LED D2
U 1 1 5A3CC537
P 7300 4600
F 0 "D2" H 7300 4500 50  0000 C CNN
F 1 "LED" H 7291 4725 50  0001 C CNN
F 2 "LEDs:LED_D5.0mm" H 7300 4600 50  0001 C CNN
F 3 "~" H 7300 4600 50  0001 C CNN
	1    7300 4600
	1    0    0    1   
$EndComp
Wire Wire Line
	7150 4600 6400 4600
$Comp
L device:R R12
U 1 1 5A3CDC7E
P 7700 4600
F 0 "R12" V 7650 4400 50  0000 C CNN
F 1 "330" V 7700 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7630 4600 50  0001 C CNN
F 3 "" H 7700 4600 50  0001 C CNN
	1    7700 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 4600 7550 4600
$Comp
L power:+5V #PWR016
U 1 1 5A3CF3AF
P 7950 4600
F 0 "#PWR016" H 7950 4450 50  0001 C CNN
F 1 "+5V" V 7950 4800 50  0000 C CNN
F 2 "" H 7950 4600 50  0001 C CNN
F 3 "" H 7950 4600 50  0001 C CNN
	1    7950 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 4600 7950 4600
Text Label 6500 4600 0    60   ~ 0
LED
$Comp
L linear:OP07 U3
U 1 1 5A3D97F0
P 8750 3600
F 0 "U3" H 8900 3850 50  0000 L CNN
F 1 "OP07" H 8900 3750 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 8800 3650 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/OP07.pdf" H 8800 3750 50  0001 C CNN
	1    8750 3600
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 5A3D99A3
P 8850 2900
F 0 "#PWR017" H 8850 2750 50  0001 C CNN
F 1 "+5V" H 8850 3100 50  0000 C CNN
F 2 "" H 8850 2900 50  0001 C CNN
F 3 "" H 8850 2900 50  0001 C CNN
	1    8850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2900 8850 3000
$Comp
L power:-5V #PWR18
U 1 1 5A3DB1D0
P 8850 4200
F 0 "#PWR18" H 8850 4300 50  0001 C CNN
F 1 "-5V" H 8865 4373 50  0000 C CNN
F 2 "" H 8850 4200 50  0001 C CNN
F 3 "" H 8850 4200 50  0001 C CNN
	1    8850 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 4200 8850 4000
$Comp
L device:R R14
U 1 1 5A3DC983
P 8450 3200
F 0 "R14" V 8350 3200 50  0000 C CNN
F 1 "22k" V 8450 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8380 3200 50  0001 C CNN
F 3 "" H 8450 3200 50  0001 C CNN
	1    8450 3200
	0    1    1    0   
$EndComp
$Comp
L device:R R16
U 1 1 5A3DC9FB
P 9450 3200
F 0 "R16" V 9350 3200 50  0000 C CNN
F 1 "240" V 9450 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9380 3200 50  0001 C CNN
F 3 "" H 9450 3200 50  0001 C CNN
	1    9450 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 3200 9200 3200
Wire Wire Line
	8300 3200 8100 3200
Wire Wire Line
	8100 3200 8100 3600
Wire Wire Line
	8100 3600 8450 3600
$Comp
L device:R R13
U 1 1 5A3DFBF4
P 7750 3600
F 0 "R13" V 7650 3600 50  0000 C CNN
F 1 "10k" V 7750 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7680 3600 50  0001 C CNN
F 3 "" H 7750 3600 50  0001 C CNN
	1    7750 3600
	0    1    1    0   
$EndComp
$Comp
L device:R R11
U 1 1 5A3DFC64
P 7250 3600
F 0 "R11" V 7200 3400 50  0000 C CNN
F 1 "10k" V 7250 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7180 3600 50  0001 C CNN
F 3 "" H 7250 3600 50  0001 C CNN
	1    7250 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 3600 8100 3600
Connection ~ 8100 3600
Wire Wire Line
	7100 3600 6400 3600
$Comp
L device:CP C3
U 1 1 5A3E4E98
P 7500 3850
F 0 "C3" H 7618 3896 50  0000 L CNN
F 1 "1u" H 7618 3805 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-T_EIA-3528-12_Reflow" H 7538 3700 50  0001 C CNN
F 3 "" H 7500 3850 50  0001 C CNN
	1    7500 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5A3E6CCD
P 7500 4100
F 0 "#PWR015" H 7500 3850 50  0001 C CNN
F 1 "GND" H 7505 3927 50  0000 C CNN
F 2 "" H 7500 4100 50  0001 C CNN
F 3 "" H 7500 4100 50  0001 C CNN
	1    7500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4000 7500 4100
Wire Wire Line
	7400 3600 7500 3600
Wire Wire Line
	7500 3700 7500 3600
Connection ~ 7500 3600
Wire Wire Line
	7500 3600 7600 3600
$Comp
L power:GND #PWR019
U 1 1 5A3EC53F
P 9650 3200
F 0 "#PWR019" H 9650 2950 50  0001 C CNN
F 1 "GND" V 9655 3027 50  0000 C CNN
F 2 "" H 9650 3200 50  0001 C CNN
F 3 "" H 9650 3200 50  0001 C CNN
	1    9650 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 3200 9650 3200
NoConn ~ 8650 3900
NoConn ~ 8750 3900
Wire Wire Line
	9050 3700 9200 3700
Wire Wire Line
	9200 3700 9200 3200
Connection ~ 9200 3200
Wire Wire Line
	9200 3200 9300 3200
$Comp
L device:R R15
U 1 1 5A3FD779
P 9300 3000
F 0 "R15" V 9200 3000 50  0000 C CNN
F 1 "6M8" V 9300 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9230 3000 50  0001 C CNN
F 3 "" H 9300 3000 50  0001 C CNN
	1    9300 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 3000 8850 3000
Connection ~ 8850 3000
Wire Wire Line
	8850 3000 8850 3300
$Comp
L device:R R17
U 1 1 5A3FF869
P 10150 3300
F 0 "R17" V 10250 3300 50  0000 C CNN
F 1 "470" V 10150 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10080 3300 50  0001 C CNN
F 3 "" H 10150 3300 50  0001 C CNN
	1    10150 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 3000 10350 3300
Wire Wire Line
	10350 3300 10300 3300
Wire Wire Line
	9450 3000 10350 3000
$Comp
L device:D D3
U 1 1 5A4065C4
P 9400 3500
F 0 "D3" V 9300 3350 50  0000 L CNN
F 1 "D" V 9445 3579 50  0001 L CNN
F 2 "Diodes_SMD:D_MELF" H 9400 3500 50  0001 C CNN
F 3 "" H 9400 3500 50  0001 C CNN
	1    9400 3500
	0    1    1    0   
$EndComp
$Comp
L device:D D4
U 1 1 5A406694
P 9550 3500
F 0 "D4" V 9650 3600 50  0000 R CNN
F 1 "D" V 9505 3421 50  0001 R CNN
F 2 "Diodes_SMD:D_MELF" H 9550 3500 50  0001 C CNN
F 3 "" H 9550 3500 50  0001 C CNN
	1    9550 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 3700 9400 3700
Wire Wire Line
	9550 3700 9550 3650
Connection ~ 9200 3700
Wire Wire Line
	9400 3650 9400 3700
Connection ~ 9400 3700
Wire Wire Line
	9400 3700 9550 3700
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5A436041
P 1450 900
F 0 "#FLG01" H 1450 975 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 1074 50  0000 C CNN
F 2 "" H 1450 900 50  0001 C CNN
F 3 "" H 1450 900 50  0001 C CNN
	1    1450 900 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5A436143
P 3500 900
F 0 "#FLG02" H 3500 975 50  0001 C CNN
F 1 "PWR_FLAG" H 3500 1074 50  0000 C CNN
F 2 "" H 3500 900 50  0001 C CNN
F 3 "" H 3500 900 50  0001 C CNN
	1    3500 900 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5A43618A
P 3900 900
F 0 "#FLG03" H 3900 975 50  0001 C CNN
F 1 "PWR_FLAG" H 3900 1074 50  0000 C CNN
F 2 "" H 3900 900 50  0001 C CNN
F 3 "" H 3900 900 50  0001 C CNN
	1    3900 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5A4361D1
P 3900 1100
F 0 "#PWR03" H 3900 850 50  0001 C CNN
F 1 "GND" H 3905 927 50  0000 C CNN
F 2 "" H 3900 1100 50  0001 C CNN
F 3 "" H 3900 1100 50  0001 C CNN
	1    3900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1100 3900 900 
$Comp
L power:+5V #PWR01
U 1 1 5A438CD6
P 1150 900
F 0 "#PWR01" H 1150 750 50  0001 C CNN
F 1 "+5V" H 1250 1050 50  0000 C CNN
F 2 "" H 1150 900 50  0001 C CNN
F 3 "" H 1150 900 50  0001 C CNN
	1    1150 900 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 900  1150 1050
Wire Wire Line
	1150 1050 1450 1050
Wire Wire Line
	1450 1050 1450 900 
$Comp
L power:-5V #PWR2
U 1 1 5A43BADC
P 3150 900
F 0 "#PWR2" H 3150 1000 50  0001 C CNN
F 1 "-5V" H 3165 1073 50  0000 C CNN
F 2 "" H 3150 900 50  0001 C CNN
F 3 "" H 3150 900 50  0001 C CNN
	1    3150 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 900  3150 1050
Wire Wire Line
	3150 1050 3500 1050
Wire Wire Line
	3500 1050 3500 900 
$Comp
L power:GND #PWR014
U 1 1 5A44EFFC
P 6800 5000
F 0 "#PWR014" H 6800 4750 50  0001 C CNN
F 1 "GND" H 6805 4827 50  0000 C CNN
F 2 "" H 6800 5000 50  0001 C CNN
F 3 "" H 6800 5000 50  0001 C CNN
	1    6800 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 5000 7100 5000
$Comp
L Connector:Conn_01x01 J1
U 1 1 5A45AAA4
P 1350 2100
F 0 "J1" H 1430 2142 50  0000 L CNN
F 1 "REL1" H 1430 2051 50  0000 L CNN
F 2 "MY:PAD" H 1350 2100 50  0001 C CNN
F 3 "~" H 1350 2100 50  0001 C CNN
	1    1350 2100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 J2
U 1 1 5A45AC3B
P 1350 2300
F 0 "J2" H 1430 2342 50  0000 L CNN
F 1 "-5V" H 1430 2251 50  0000 L CNN
F 2 "MY:PAD" H 1350 2300 50  0001 C CNN
F 3 "~" H 1350 2300 50  0001 C CNN
	1    1350 2300
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 J3
U 1 1 5A45ADD9
P 1350 2500
F 0 "J3" H 1430 2542 50  0000 L CNN
F 1 "+24V" H 1430 2451 50  0000 L CNN
F 2 "MY:PAD" H 1350 2500 50  0001 C CNN
F 3 "~" H 1350 2500 50  0001 C CNN
	1    1350 2500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 J4
U 1 1 5A45AE37
P 1350 2700
F 0 "J4" H 1430 2742 50  0000 L CNN
F 1 "+5V" H 1430 2651 50  0000 L CNN
F 2 "MY:PAD" H 1350 2700 50  0001 C CNN
F 3 "~" H 1350 2700 50  0001 C CNN
	1    1350 2700
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 J5
U 1 1 5A45AE8F
P 1350 2900
F 0 "J5" H 1430 2942 50  0000 L CNN
F 1 "GND" H 1430 2851 50  0000 L CNN
F 2 "MY:PAD" H 1350 2900 50  0001 C CNN
F 3 "~" H 1350 2900 50  0001 C CNN
	1    1350 2900
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 J6
U 1 1 5A45AEE9
P 1350 3100
F 0 "J6" H 1430 3142 50  0000 L CNN
F 1 "+D" H 1430 3051 50  0000 L CNN
F 2 "MY:PAD" H 1350 3100 50  0001 C CNN
F 3 "~" H 1350 3100 50  0001 C CNN
	1    1350 3100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 J7
U 1 1 5A45AF45
P 1350 3300
F 0 "J7" H 1430 3342 50  0000 L CNN
F 1 "-TS" H 1430 3251 50  0000 L CNN
F 2 "MY:PAD" H 1350 3300 50  0001 C CNN
F 3 "~" H 1350 3300 50  0001 C CNN
	1    1350 3300
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 J8
U 1 1 5A45AFA7
P 1350 3500
F 0 "J8" H 1430 3542 50  0000 L CNN
F 1 "+TS" H 1430 3451 50  0000 L CNN
F 2 "MY:PAD" H 1350 3500 50  0001 C CNN
F 3 "~" H 1350 3500 50  0001 C CNN
	1    1350 3500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 J9
U 1 1 5A45B00B
P 1350 3700
F 0 "J9" H 1430 3742 50  0000 L CNN
F 1 "REL2A" H 1430 3651 50  0000 L CNN
F 2 "MY:PAD" H 1350 3700 50  0001 C CNN
F 3 "~" H 1350 3700 50  0001 C CNN
	1    1350 3700
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 J10
U 1 1 5A45B06D
P 1350 3900
F 0 "J10" H 1430 3942 50  0000 L CNN
F 1 "REL2B" H 1430 3851 50  0000 L CNN
F 2 "MY:PAD" H 1350 3900 50  0001 C CNN
F 3 "~" H 1350 3900 50  0001 C CNN
	1    1350 3900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5A45BAB1
P 1750 2900
F 0 "#PWR02" H 1750 2650 50  0001 C CNN
F 1 "GND" H 1755 2727 50  0000 C CNN
F 2 "" H 1750 2900 50  0001 C CNN
F 3 "" H 1750 2900 50  0001 C CNN
	1    1750 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 2900 1550 2900
$Comp
L power:+5V #PWR018
U 1 1 5A45F5EB
P 1750 2700
F 0 "#PWR018" H 1750 2550 50  0001 C CNN
F 1 "+5V" V 1750 2900 50  0000 C CNN
F 2 "" H 1750 2700 50  0001 C CNN
F 3 "" H 1750 2700 50  0001 C CNN
	1    1750 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 2700 1550 2700
$Comp
L power:-5V #PWR23
U 1 1 5A46AC57
P 1750 2300
F 0 "#PWR23" H 1750 2400 50  0001 C CNN
F 1 "-5V" V 1750 2450 50  0000 L CNN
F 2 "" H 1750 2300 50  0001 C CNN
F 3 "" H 1750 2300 50  0001 C CNN
	1    1750 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 2300 1550 2300
$Comp
L power:GND #PWR022
U 1 1 5A46ED03
P 1750 3300
F 0 "#PWR022" H 1750 3050 50  0001 C CNN
F 1 "GND" H 1755 3127 50  0000 C CNN
F 2 "" H 1750 3300 50  0001 C CNN
F 3 "" H 1750 3300 50  0001 C CNN
	1    1750 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 3300 1550 3300
Wire Wire Line
	1550 3500 1800 3500
Text Label 1800 3500 0    60   ~ 0
TS
Text Label 10000 3000 0    60   ~ 0
TS
$Comp
L device:C C4
U 1 1 5A477F83
P 1150 1450
F 0 "C4" H 1050 1350 50  0000 C CNN
F 1 "100u" H 1000 1550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 1188 1300 50  0001 C CNN
F 3 "" H 1150 1450 50  0001 C CNN
	1    1150 1450
	-1   0    0    1   
$EndComp
$Comp
L device:C C5
U 1 1 5A47C58B
P 1450 1450
F 0 "C5" H 1350 1350 50  0000 C CNN
F 1 "100u" H 1300 1550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 1488 1300 50  0001 C CNN
F 3 "" H 1450 1450 50  0001 C CNN
	1    1450 1450
	-1   0    0    1   
$EndComp
$Comp
L device:C C6
U 1 1 5A47C5FB
P 1750 1450
F 0 "C6" H 1650 1350 50  0000 C CNN
F 1 "100u" H 1600 1550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 1788 1300 50  0001 C CNN
F 3 "" H 1750 1450 50  0001 C CNN
	1    1750 1450
	-1   0    0    1   
$EndComp
$Comp
L device:C C7
U 1 1 5A47C66B
P 2050 1450
F 0 "C7" H 1950 1350 50  0000 C CNN
F 1 "100u" H 1900 1550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 2088 1300 50  0001 C CNN
F 3 "" H 2050 1450 50  0001 C CNN
	1    2050 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5A47C6DF
P 1150 1700
F 0 "#PWR024" H 1150 1450 50  0001 C CNN
F 1 "GND" H 1155 1527 50  0000 C CNN
F 2 "" H 1150 1700 50  0001 C CNN
F 3 "" H 1150 1700 50  0001 C CNN
	1    1150 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5A47C742
P 1450 1700
F 0 "#PWR025" H 1450 1450 50  0001 C CNN
F 1 "GND" H 1455 1527 50  0000 C CNN
F 2 "" H 1450 1700 50  0001 C CNN
F 3 "" H 1450 1700 50  0001 C CNN
	1    1450 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5A47C7A5
P 1750 1700
F 0 "#PWR026" H 1750 1450 50  0001 C CNN
F 1 "GND" H 1755 1527 50  0000 C CNN
F 2 "" H 1750 1700 50  0001 C CNN
F 3 "" H 1750 1700 50  0001 C CNN
	1    1750 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5A47C808
P 2050 1700
F 0 "#PWR027" H 2050 1450 50  0001 C CNN
F 1 "GND" H 2055 1527 50  0000 C CNN
F 2 "" H 2050 1700 50  0001 C CNN
F 3 "" H 2050 1700 50  0001 C CNN
	1    2050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1700 2050 1600
Wire Wire Line
	1750 1700 1750 1600
Wire Wire Line
	1450 1700 1450 1600
Wire Wire Line
	1150 1700 1150 1600
Wire Wire Line
	1150 1300 1150 1050
Connection ~ 1150 1050
Wire Wire Line
	1450 1300 1450 1200
Connection ~ 1450 1050
Wire Wire Line
	2050 1300 2050 1200
Wire Wire Line
	2050 1200 1750 1200
Connection ~ 1450 1200
Wire Wire Line
	1450 1200 1450 1050
Wire Wire Line
	1750 1300 1750 1200
Connection ~ 1750 1200
Wire Wire Line
	1750 1200 1450 1200
$Comp
L device:C C8
U 1 1 5A4A00DA
P 9200 4250
F 0 "C8" H 9100 4150 50  0000 C CNN
F 1 "100n" H 9050 4350 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 9238 4100 50  0001 C CNN
F 3 "" H 9200 4250 50  0001 C CNN
	1    9200 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 4100 9200 4000
Wire Wire Line
	9200 4000 8850 4000
Connection ~ 8850 4000
Wire Wire Line
	8850 4000 8850 3900
$Comp
L power:GND #PWR028
U 1 1 5A4A5460
P 9200 4500
F 0 "#PWR028" H 9200 4250 50  0001 C CNN
F 1 "GND" H 9205 4327 50  0000 C CNN
F 2 "" H 9200 4500 50  0001 C CNN
F 3 "" H 9200 4500 50  0001 C CNN
	1    9200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4500 9200 4400
$Comp
L Transistor:BC807 Q1
U 1 1 5A4AB1F5
P 5450 1250
F 0 "Q1" H 5600 1650 50  0000 L CNN
F 1 "BC807" H 5600 1550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5650 1175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC807.pdf" H 5450 1250 50  0001 L CNN
	1    5450 1250
	1    0    0    -1  
$EndComp
$Comp
L Transistor:BC807 Q2
U 1 1 5A4AB483
P 6150 1250
F 0 "Q2" H 6350 1600 50  0000 L CNN
F 1 "BC807" H 6350 1500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6350 1175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC807.pdf" H 6150 1250 50  0001 L CNN
	1    6150 1250
	1    0    0    -1  
$EndComp
$Comp
L Transistor:BC807 Q3
U 1 1 5A4AB50B
P 6850 1250
F 0 "Q3" H 7041 1296 50  0000 L CNN
F 1 "BC807" H 7041 1205 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7050 1175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC807.pdf" H 6850 1250 50  0001 L CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1050 6950 850 
Wire Wire Line
	6950 850  7350 850 
Wire Wire Line
	7350 850  7350 1000
Wire Wire Line
	6250 1050 6250 800 
Wire Wire Line
	6250 800  7450 800 
Wire Wire Line
	7450 800  7450 1000
Wire Wire Line
	5550 750  7550 750 
Wire Wire Line
	7550 750  7550 1000
$Comp
L power:+5V #PWR029
U 1 1 5A4BBFEE
P 4850 850
F 0 "#PWR029" H 4850 700 50  0001 C CNN
F 1 "+5V" H 4750 1000 50  0000 C CNN
F 2 "" H 4850 850 50  0001 C CNN
F 3 "" H 4850 850 50  0001 C CNN
	1    4850 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 850  4850 1600
Wire Wire Line
	4850 1600 5550 1600
Wire Wire Line
	6950 1600 6950 1450
Wire Wire Line
	6250 1450 6250 1600
Connection ~ 6250 1600
Wire Wire Line
	6250 1600 6950 1600
Wire Wire Line
	5550 1450 5550 1600
Connection ~ 5550 1600
Wire Wire Line
	5550 1600 6250 1600
$Comp
L device:R R18
U 1 1 5A4CEA68
P 4900 1800
F 0 "R18" V 4850 1600 50  0000 C CNN
F 1 "1k" V 4900 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4830 1800 50  0001 C CNN
F 3 "" H 4900 1800 50  0001 C CNN
	1    4900 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1800 5150 1800
Wire Wire Line
	5150 1800 5150 1250
Wire Wire Line
	5150 1250 5250 1250
$Comp
L device:R R19
U 1 1 5A4D5751
P 4900 1900
F 0 "R19" V 4850 1700 50  0000 C CNN
F 1 "1k" V 4900 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4830 1900 50  0001 C CNN
F 3 "" H 4900 1900 50  0001 C CNN
	1    4900 1900
	0    1    1    0   
$EndComp
$Comp
L device:R R20
U 1 1 5A4D57C5
P 4900 2000
F 0 "R20" V 4850 1800 50  0000 C CNN
F 1 "1k" V 4900 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4830 2000 50  0001 C CNN
F 3 "" H 4900 2000 50  0001 C CNN
	1    4900 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1900 5800 1900
Wire Wire Line
	5800 1900 5800 1250
Wire Wire Line
	5800 1250 5950 1250
Wire Wire Line
	5550 750  5550 1050
Wire Wire Line
	5050 2000 6450 2000
Wire Wire Line
	6450 2000 6450 1250
Wire Wire Line
	6450 1250 6650 1250
Wire Wire Line
	4750 1800 4450 1800
Wire Wire Line
	4750 1900 4450 1900
Wire Wire Line
	4750 2000 4450 2000
Text Label 4450 1800 0    60   ~ 0
D1
Text Label 4450 1900 0    60   ~ 0
D2
Text Label 4450 2000 0    60   ~ 0
D3
NoConn ~ 1550 3100
$Comp
L atmel:ATMEGA8-16PU U1
U 1 1 5A50A4B1
P 5400 4000
F 0 "U1" H 4750 5300 50  0000 C CNN
F 1 "ATMEGA8-16PU" H 5950 5300 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 5400 4000 50  0001 C CIN
F 3 "http://www.atmel.com/images/atmel-2486-8-bit-avr-microcontroller-atmega8_l_datasheet.pdf" H 5400 4000 50  0001 C CNN
	1    5400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4300 6900 4300
Wire Wire Line
	6400 4400 6900 4400
$Comp
L device:Rotary_Encoder SW1
U 1 1 5A3C7891
P 7400 5000
F 0 "SW1" H 7350 5250 50  0000 L CNN
F 1 "Rotary_Encoder" H 7629 4955 50  0001 L CNN
F 2 "MY:ENC1" H 7300 5160 50  0001 C CNN
F 3 "~" H 7400 5260 50  0001 C CNN
	1    7400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4900 7100 4900
Wire Wire Line
	6400 5000 6500 5000
Wire Wire Line
	6500 5000 6500 5100
Wire Wire Line
	6500 5100 7100 5100
Wire Wire Line
	6400 4700 6600 4700
Wire Wire Line
	6400 4800 6600 4800
NoConn ~ 6400 4500
Text Label 6600 4700 0    60   ~ 0
REL1_O
Text Label 6600 4800 0    60   ~ 0
REL2_O
$Comp
L device:CP C9
U 1 1 5A46C0E3
P 2400 1450
F 0 "C9" H 2300 1600 50  0000 C CNN
F 1 "47u" H 2300 1350 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Reflow" H 2438 1300 50  0001 C CNN
F 3 "" H 2400 1450 50  0001 C CNN
	1    2400 1450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5A47402F
P 2400 1700
F 0 "#PWR010" H 2400 1450 50  0001 C CNN
F 1 "GND" H 2405 1527 50  0000 C CNN
F 2 "" H 2400 1700 50  0001 C CNN
F 3 "" H 2400 1700 50  0001 C CNN
	1    2400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1700 2400 1600
Wire Wire Line
	2400 1300 2400 1200
Wire Wire Line
	2400 1200 2050 1200
Connection ~ 2050 1200
$Comp
L device:CP C10
U 1 1 5A4A2425
P 2700 1450
F 0 "C10" H 2600 1600 50  0000 C CNN
F 1 "47u" H 2600 1350 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Reflow" H 2738 1300 50  0001 C CNN
F 3 "" H 2700 1450 50  0001 C CNN
	1    2700 1450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5A4A24A7
P 2700 1700
F 0 "#PWR011" H 2700 1450 50  0001 C CNN
F 1 "GND" H 2705 1527 50  0000 C CNN
F 2 "" H 2700 1700 50  0001 C CNN
F 3 "" H 2700 1700 50  0001 C CNN
	1    2700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1700 2700 1600
Wire Wire Line
	2700 1300 2700 1200
Wire Wire Line
	2700 1200 2400 1200
Connection ~ 2400 1200
$Comp
L device:CP C11
U 1 1 5A4B21EB
P 3150 1450
F 0 "C11" H 3050 1600 50  0000 C CNN
F 1 "47u" H 3050 1350 50  0000 C CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-D_EIA-7343-31_Reflow" H 3188 1300 50  0001 C CNN
F 3 "" H 3150 1450 50  0001 C CNN
	1    3150 1450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5A4B22EB
P 3150 1700
F 0 "#PWR030" H 3150 1450 50  0001 C CNN
F 1 "GND" H 3155 1527 50  0000 C CNN
F 2 "" H 3150 1700 50  0001 C CNN
F 3 "" H 3150 1700 50  0001 C CNN
	1    3150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1700 3150 1600
Wire Wire Line
	3150 1300 3150 1050
Connection ~ 3150 1050
Wire Wire Line
	10000 3300 9550 3300
Wire Wire Line
	9100 3300 9100 3500
Wire Wire Line
	9100 3500 9050 3500
Wire Wire Line
	9400 3350 9400 3300
Connection ~ 9400 3300
Wire Wire Line
	9400 3300 9100 3300
Wire Wire Line
	9550 3350 9550 3300
Connection ~ 9550 3300
Wire Wire Line
	9550 3300 9400 3300
Text Label 9900 3300 0    60   ~ 0
IN
$Comp
L device:C C12
U 1 1 5A3E450C
P 10350 3600
F 0 "C12" H 10250 3500 50  0000 C CNN
F 1 "100n" H 10200 3700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 10388 3450 50  0001 C CNN
F 3 "" H 10350 3600 50  0001 C CNN
	1    10350 3600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5A3E45C2
P 10350 3850
F 0 "#PWR031" H 10350 3600 50  0001 C CNN
F 1 "GND" H 10355 3677 50  0000 C CNN
F 2 "" H 10350 3850 50  0001 C CNN
F 3 "" H 10350 3850 50  0001 C CNN
	1    10350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 3850 10350 3750
Wire Wire Line
	10350 3300 10350 3450
Connection ~ 10350 3300
$Comp
L device:R R21
U 1 1 5A3EE566
P 2700 2350
F 0 "R21" V 2493 2350 50  0000 C CNN
F 1 "4k7" V 2584 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2630 2350 50  0001 C CNN
F 3 "" H 2700 2350 50  0001 C CNN
	1    2700 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 2350 2950 2350
Text Label 2950 2350 0    60   ~ 0
REL1_O
NoConn ~ 1550 3700
$Comp
L device:R R22
U 1 1 5A454741
P 2400 4200
F 0 "R22" V 2300 4250 50  0000 R CNN
F 1 "4k7" V 2500 4250 50  0000 R CNN
F 2 "Resistors_SMD:R_0805" V 2330 4200 50  0001 C CNN
F 3 "" H 2400 4200 50  0001 C CNN
	1    2400 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 4200 2950 4200
Text Label 2950 4200 2    60   ~ 0
REL2_O
Text Label 3800 3200 0    50   ~ 0
AREF
Connection ~ 3500 3350
Wire Wire Line
	3500 3350 3500 3200
Wire Wire Line
	3500 3200 4500 3200
Connection ~ 3500 3200
Wire Wire Line
	3500 2950 3500 3200
Wire Wire Line
	3450 3200 3500 3200
$Comp
L device:Q_NPN_ECB Q5
U 1 1 5A409982
P 2250 2350
F 0 "Q5" H 2100 2450 50  0000 L CNN
F 1 "2SD667" H 1950 2200 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 2450 2450 50  0001 C CNN
F 3 "" H 2250 2350 50  0001 C CNN
	1    2250 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 2100 2150 2100
Wire Wire Line
	2150 2100 2150 2150
$Comp
L power:GND #PWR023
U 1 1 5A412B11
P 2150 2650
F 0 "#PWR023" H 2150 2400 50  0001 C CNN
F 1 "GND" H 2155 2477 50  0000 C CNN
F 2 "" H 2150 2650 50  0001 C CNN
F 3 "" H 2150 2650 50  0001 C CNN
	1    2150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2650 2150 2550
Wire Wire Line
	2450 2350 2550 2350
$Comp
L device:Q_NPN_ECB Q4
U 1 1 5A424860
P 1900 4200
F 0 "Q4" H 1750 4300 50  0000 L CNN
F 1 "2SD667" H 1600 4050 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 2100 4300 50  0001 C CNN
F 3 "" H 1900 4200 50  0001 C CNN
	1    1900 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1550 3900 1800 3900
Wire Wire Line
	1800 3900 1800 4000
$Comp
L power:GND #PWR032
U 1 1 5A42DD0E
P 1800 4500
F 0 "#PWR032" H 1800 4250 50  0001 C CNN
F 1 "GND" H 1805 4327 50  0000 C CNN
F 2 "" H 1800 4500 50  0001 C CNN
F 3 "" H 1800 4500 50  0001 C CNN
	1    1800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4400 1800 4500
Wire Wire Line
	2250 4200 2100 4200
$EndSCHEMATC
