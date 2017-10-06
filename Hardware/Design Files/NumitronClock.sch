EESchema Schematic File Version 2
LIBS:NumitronClockParts
LIBS:switches
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 2
Title "Numitron Clock Main Control"
Date "2017-05-09"
Rev "3"
Comp "Designed by Ryan Davis"
Comment1 "Revision 1: Initial Design"
Comment2 "Revision 2: Added bypass capacitors and RST pullup resistor"
Comment3 "Revision 3: Corrected ISP header pinout and changed reference to be more consistent"
Comment4 ""
$EndDescr
$Comp
L BARREL_JACK J1
U 1 1 58F4B7BC
P 1900 1700
F 0 "J1" H 1900 1895 50  0000 C CNN
F 1 "BARREL_JACK" H 1900 1545 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 1900 1700 50  0001 C CNN
F 3 "" H 1900 1700 50  0001 C CNN
	1    1900 1700
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 58F4BD45
P 2500 1600
F 0 "D1" H 2500 1700 50  0000 C CNN
F 1 "1N4001" H 2500 1500 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-41_SOD81_P7.62mm_Horizontal" H 2500 1600 50  0001 C CNN
F 3 "" H 2500 1600 50  0001 C CNN
	1    2500 1600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 58F4C08B
P 3625 2050
F 0 "#PWR01" H 3625 1800 50  0001 C CNN
F 1 "GND" H 3625 1900 50  0000 C CNN
F 2 "" H 3625 2050 50  0001 C CNN
F 3 "" H 3625 2050 50  0001 C CNN
	1    3625 2050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 58F4C1FD
P 2775 1500
F 0 "#PWR02" H 2775 1350 50  0001 C CNN
F 1 "VCC" H 2775 1650 50  0000 C CNN
F 2 "" H 2775 1500 50  0001 C CNN
F 3 "" H 2775 1500 50  0001 C CNN
	1    2775 1500
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C3
U 1 1 58F4C3D3
P 4100 1800
F 0 "C3" H 4110 1870 50  0000 L CNN
F 1 "100uf" H 4110 1720 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D4.0mm_P1.50mm" H 4100 1800 50  0001 C CNN
F 3 "" H 4100 1800 50  0001 C CNN
	1    4100 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 58F4C25A
P 4400 1550
F 0 "#PWR03" H 4400 1400 50  0001 C CNN
F 1 "+5V" H 4400 1690 50  0000 C CNN
F 2 "" H 4400 1550 50  0001 C CNN
F 3 "" H 4400 1550 50  0001 C CNN
	1    4400 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J2
U 1 1 58F4C43A
P 2925 3300
F 0 "J2" H 2925 3500 50  0000 C CNN
F 1 "ISP" H 2925 3100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 2925 2100 50  0001 C CNN
F 3 "" H 2925 2100 50  0001 C CNN
	1    2925 3300
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 58F4C618
P 2625 3150
F 0 "#PWR04" H 2625 3000 50  0001 C CNN
F 1 "+5V" H 2625 3290 50  0000 C CNN
F 2 "" H 2625 3150 50  0001 C CNN
F 3 "" H 2625 3150 50  0001 C CNN
	1    2625 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58F4C68F
P 2625 3450
F 0 "#PWR05" H 2625 3200 50  0001 C CNN
F 1 "GND" H 2625 3300 50  0000 C CNN
F 2 "" H 2625 3450 50  0001 C CNN
F 3 "" H 2625 3450 50  0001 C CNN
	1    2625 3450
	1    0    0    -1  
$EndComp
Text Label 2450 3300 0    60   ~ 0
MOSI
Text Label 3425 3200 2    60   ~ 0
MISO
Text Label 3425 3300 2    60   ~ 0
SCK
Text Label 3775 3800 2    60   ~ 0
RST
$Comp
L +5V #PWR06
U 1 1 58F4CC88
P 3100 2725
F 0 "#PWR06" H 3100 2575 50  0001 C CNN
F 1 "+5V" H 3100 2865 50  0000 C CNN
F 2 "" H 3100 2725 50  0001 C CNN
F 3 "" H 3100 2725 50  0001 C CNN
	1    3100 2725
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 58F4CE82
P 3850 2725
F 0 "#PWR07" H 3850 2475 50  0001 C CNN
F 1 "GND" H 3850 2575 50  0000 C CNN
F 2 "" H 3850 2725 50  0001 C CNN
F 3 "" H 3850 2725 50  0001 C CNN
	1    3850 2725
	0    -1   1    0   
$EndComp
$Comp
L R R1
U 1 1 58F4CEA8
P 3300 2725
F 0 "R1" V 3380 2725 50  0000 C CNN
F 1 "1k" V 3300 2725 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3230 2725 50  0001 C CNN
F 3 "" H 3300 2725 50  0001 C CNN
	1    3300 2725
	0    1    -1   0   
$EndComp
$Comp
L LED D2
U 1 1 58F4CEFF
P 3650 2725
F 0 "D2" H 3650 2825 50  0000 C CNN
F 1 "LED" H 3650 2625 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3650 2725 50  0001 C CNN
F 3 "" H 3650 2725 50  0001 C CNN
	1    3650 2725
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 58F4DBFD
P 5675 2650
F 0 "#PWR08" H 5675 2500 50  0001 C CNN
F 1 "+5V" H 5675 2790 50  0000 C CNN
F 2 "" H 5675 2650 50  0001 C CNN
F 3 "" H 5675 2650 50  0001 C CNN
	1    5675 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 58F4DE9C
P 5675 5000
F 0 "#PWR09" H 5675 4750 50  0001 C CNN
F 1 "GND" H 5675 4850 50  0000 C CNN
F 2 "" H 5675 5000 50  0001 C CNN
F 3 "" H 5675 5000 50  0001 C CNN
	1    5675 5000
	1    0    0    -1  
$EndComp
NoConn ~ 5725 3275
Text Label 7900 3075 2    60   ~ 0
MISO
Text Label 7900 3175 2    60   ~ 0
SCK
Text Label 7900 2975 2    60   ~ 0
MOSI
Text Label 7875 4125 2    60   ~ 0
RST
$Comp
L R R2
U 1 1 58F50720
P 3625 3300
F 0 "R2" V 3705 3300 50  0000 C CNN
F 1 "1k" V 3625 3300 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3555 3300 50  0001 C CNN
F 3 "" H 3625 3300 50  0001 C CNN
	1    3625 3300
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 58F50E19
P 3975 3300
F 0 "D3" H 3975 3400 50  0000 C CNN
F 1 "LED" H 3975 3200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3975 3300 50  0001 C CNN
F 3 "" H 3975 3300 50  0001 C CNN
	1    3975 3300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 58F51007
P 4175 3300
F 0 "#PWR010" H 4175 3050 50  0001 C CNN
F 1 "GND" H 4175 3150 50  0000 C CNN
F 2 "" H 4175 3300 50  0001 C CNN
F 3 "" H 4175 3300 50  0001 C CNN
	1    4175 3300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 58F54801
P 8950 3875
F 0 "#PWR011" H 8950 3625 50  0001 C CNN
F 1 "GND" H 8950 3725 50  0000 C CNN
F 2 "" H 8950 3875 50  0001 C CNN
F 3 "" H 8950 3875 50  0001 C CNN
	1    8950 3875
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR012
U 1 1 58F549AB
P 8950 4075
F 0 "#PWR012" H 8950 3925 50  0001 C CNN
F 1 "+5V" H 8950 4215 50  0000 C CNN
F 2 "" H 8950 4075 50  0001 C CNN
F 3 "" H 8950 4075 50  0001 C CNN
	1    8950 4075
	0    1    1    0   
$EndComp
$Comp
L SW_Push_Dual SW1
U 1 1 58F4D619
P 3350 4900
F 0 "SW1" H 3400 5000 50  0000 L CNN
F 1 "TACT_BUTTON" H 3350 4630 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 3350 5100 50  0001 C CNN
F 3 "" H 3350 5100 50  0001 C CNN
	1    3350 4900
	1    0    0    -1  
$EndComp
Text Label 7875 4575 2    60   ~ 0
SET
Text Label 7875 4475 2    60   ~ 0
MODE
Text Label 2825 5000 0    60   ~ 0
MODE
$Comp
L GND #PWR013
U 1 1 58F4F95E
P 3675 5000
F 0 "#PWR013" H 3675 4750 50  0001 C CNN
F 1 "GND" H 3675 4850 50  0000 C CNN
F 2 "" H 3675 5000 50  0001 C CNN
F 3 "" H 3675 5000 50  0001 C CNN
	1    3675 5000
	0    -1   -1   0   
$EndComp
$Comp
L SW_Push_Dual SW2
U 1 1 58F4FCE2
P 3350 5450
F 0 "SW2" H 3400 5550 50  0000 L CNN
F 1 "TACT_BUTTON" H 3350 5180 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 3350 5650 50  0001 C CNN
F 3 "" H 3350 5650 50  0001 C CNN
	1    3350 5450
	1    0    0    -1  
$EndComp
Text Label 2825 5550 0    60   ~ 0
SET
$Comp
L GND #PWR014
U 1 1 58F4FCEE
P 3675 5550
F 0 "#PWR014" H 3675 5300 50  0001 C CNN
F 1 "GND" H 3675 5400 50  0000 C CNN
F 2 "" H 3675 5550 50  0001 C CNN
F 3 "" H 3675 5550 50  0001 C CNN
	1    3675 5550
	0    -1   -1   0   
$EndComp
$Sheet
S 8300 2600 525  350 
U 58F53338
F0 "Display" 60
F1 "NumClockDisplay.sch" 60
F2 "SERIN" I L 8300 2775 60 
F3 "SRCK" I L 8300 2875 60 
F4 "RCK" I L 8300 2675 60 
$EndSheet
$Comp
L CP1_Small C4
U 1 1 58F6919C
P 4400 1800
F 0 "C4" H 4410 1870 50  0000 L CNN
F 1 "10uf" H 4410 1720 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D4.0mm_P1.50mm" H 4400 1800 50  0001 C CNN
F 3 "" H 4400 1800 50  0001 C CNN
	1    4400 1800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 58F69E44
P 2775 1800
F 0 "C1" H 2785 1870 50  0000 L CNN
F 1 "0.1uf" H 2785 1720 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2775 1800 50  0001 C CNN
F 3 "" H 2775 1800 50  0001 C CNN
	1    2775 1800
	1    0    0    -1  
$EndComp
$Comp
L RTC_Breakout J3
U 1 1 58F61E56
P 8425 3975
F 0 "J3" H 8250 3775 60  0000 C CNN
F 1 "RTC_Breakout" H 8500 4200 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" V 8675 4325 60  0001 C CNN
F 3 "" V 8675 4325 60  0001 C CNN
	1    8425 3975
	1    0    0    1   
$EndComp
$Comp
L 7805 U1
U 1 1 58F6A107
P 3625 1650
F 0 "U1" H 3775 1454 50  0000 C CNN
F 1 "7805" H 3625 1850 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 3625 1650 50  0001 C CNN
F 3 "" H 3625 1650 50  0001 C CNN
	1    3625 1650
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C2
U 1 1 58F4BEFE
P 3150 1800
F 0 "C2" H 3160 1870 50  0000 L CNN
F 1 "10uf" H 3160 1720 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D4.0mm_P1.50mm" H 3150 1800 50  0001 C CNN
F 3 "" H 3150 1800 50  0001 C CNN
	1    3150 1800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 58FA520D
P 3525 3975
F 0 "C6" H 3535 4045 50  0000 L CNN
F 1 "0.01uf" H 3535 3895 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3525 3975 50  0001 C CNN
F 3 "" H 3525 3975 50  0001 C CNN
	1    3525 3975
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58FA4A03
P 3300 3800
F 0 "R3" V 3380 3800 50  0000 C CNN
F 1 "10k" V 3300 3800 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3230 3800 50  0001 C CNN
F 3 "" H 3300 3800 50  0001 C CNN
	1    3300 3800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR015
U 1 1 58FA8B3A
P 3525 4125
F 0 "#PWR015" H 3525 3875 50  0001 C CNN
F 1 "GND" H 3525 3975 50  0000 C CNN
F 2 "" H 3525 4125 50  0001 C CNN
F 3 "" H 3525 4125 50  0001 C CNN
	1    3525 4125
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 58FA8B84
P 3100 3775
F 0 "#PWR016" H 3100 3625 50  0001 C CNN
F 1 "+5V" H 3100 3915 50  0000 C CNN
F 2 "" H 3100 3775 50  0001 C CNN
F 3 "" H 3100 3775 50  0001 C CNN
	1    3100 3775
	1    0    0    -1  
$EndComp
Connection ~ 2775 1600
Wire Wire Line
	2200 1800 2325 1800
Wire Wire Line
	2200 1700 2325 1700
Connection ~ 2325 1800
Wire Wire Line
	2325 1700 2325 2000
Wire Wire Line
	2200 1600 2350 1600
Wire Wire Line
	2650 1600 3225 1600
Wire Wire Line
	4025 1600 4400 1600
Wire Wire Line
	4100 1600 4100 1700
Wire Wire Line
	4400 1550 4400 1700
Connection ~ 4100 1600
Wire Wire Line
	4100 2000 4100 1900
Wire Wire Line
	4400 2000 4400 1900
Connection ~ 4400 1600
Wire Wire Line
	2625 3150 2625 3200
Wire Wire Line
	2625 3200 2675 3200
Wire Wire Line
	2625 3450 2625 3400
Wire Wire Line
	2625 3400 2675 3400
Wire Wire Line
	2450 3300 2675 3300
Wire Wire Line
	3850 2725 3800 2725
Wire Wire Line
	3450 2725 3500 2725
Wire Wire Line
	3150 2725 3100 2725
Wire Wire Line
	2325 2000 4400 2000
Connection ~ 2775 2000
Connection ~ 3625 2000
Connection ~ 4100 2000
Wire Wire Line
	5675 2650 5675 2975
Wire Wire Line
	5350 2975 5725 2975
Wire Wire Line
	5675 2675 5725 2675
Connection ~ 5675 2675
Wire Wire Line
	5675 4875 5675 5000
Wire Wire Line
	5675 4875 5725 4875
Wire Wire Line
	5675 4975 5725 4975
Connection ~ 5675 4975
Wire Wire Line
	3175 3200 3425 3200
Wire Wire Line
	3175 3300 3475 3300
Wire Wire Line
	7625 3175 7900 3175
Wire Wire Line
	7625 3075 7900 3075
Wire Wire Line
	7625 2975 7900 2975
Wire Wire Line
	7625 4125 7875 4125
Wire Wire Line
	3775 3300 3825 3300
Wire Wire Line
	4125 3300 4175 3300
Wire Wire Line
	8900 4075 8950 4075
Wire Wire Line
	8900 3875 8950 3875
Wire Wire Line
	7625 4575 7875 4575
Wire Wire Line
	7625 4475 7875 4475
Wire Wire Line
	3150 4900 3125 4900
Wire Wire Line
	3125 4900 3125 5100
Wire Wire Line
	3125 5100 3150 5100
Wire Wire Line
	2825 5000 3125 5000
Connection ~ 3125 5000
Wire Wire Line
	3550 4900 3575 4900
Wire Wire Line
	3575 4900 3575 5100
Wire Wire Line
	3575 5100 3550 5100
Wire Wire Line
	3575 5000 3675 5000
Connection ~ 3575 5000
Wire Wire Line
	3150 5450 3125 5450
Wire Wire Line
	3125 5450 3125 5650
Wire Wire Line
	3125 5650 3150 5650
Wire Wire Line
	2825 5550 3125 5550
Connection ~ 3125 5550
Wire Wire Line
	3550 5450 3575 5450
Wire Wire Line
	3575 5450 3575 5650
Wire Wire Line
	3575 5650 3550 5650
Wire Wire Line
	3575 5550 3675 5550
Connection ~ 3575 5550
Wire Wire Line
	7625 2875 8300 2875
Wire Wire Line
	7625 2775 8300 2775
Wire Wire Line
	7625 2675 8300 2675
Wire Wire Line
	2775 1500 2775 1700
Wire Wire Line
	2775 1900 2775 2000
Wire Wire Line
	3625 1900 3625 2050
Wire Wire Line
	7625 4025 8025 4025
Wire Wire Line
	7625 3925 8025 3925
Wire Wire Line
	8875 3925 8900 3925
Wire Wire Line
	8900 3925 8900 3875
Wire Wire Line
	8875 4025 8900 4025
Wire Wire Line
	8900 4025 8900 4075
Wire Wire Line
	3150 1600 3150 1700
Connection ~ 3150 1600
Connection ~ 3150 2000
Wire Wire Line
	3150 2000 3150 1900
Wire Wire Line
	3450 3800 3775 3800
Connection ~ 3525 3800
Wire Wire Line
	3100 3800 3150 3800
Wire Wire Line
	3525 4125 3525 4075
Wire Wire Line
	3100 3800 3100 3775
Wire Wire Line
	3525 3400 3525 3875
Wire Wire Line
	3175 3400 3525 3400
$Comp
L C_Small C5
U 1 1 58FAF811
P 5350 3125
F 0 "C5" H 5360 3195 50  0000 L CNN
F 1 "0.1uf" H 5360 3045 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5350 3125 50  0001 C CNN
F 3 "" H 5350 3125 50  0001 C CNN
	1    5350 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3025 5350 2975
Connection ~ 5675 2975
$Comp
L GND #PWR017
U 1 1 58FB02B0
P 5350 3275
F 0 "#PWR017" H 5350 3025 50  0001 C CNN
F 1 "GND" H 5350 3125 50  0000 C CNN
F 2 "" H 5350 3275 50  0001 C CNN
F 3 "" H 5350 3275 50  0001 C CNN
	1    5350 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3225 5350 3275
$Comp
L ATMEGA328P-P IC?
U 1 1 59D7D437
P 6625 3775
F 0 "IC?" H 5875 5025 50  0000 L BNN
F 1 "ATMEGA328P-P" H 7025 2375 50  0000 L BNN
F 2 "DIL28" H 6625 3775 50  0000 C CIN
F 3 "" H 6625 3775 50  0000 C CNN
	1    6625 3775
	1    0    0    -1  
$EndComp
$EndSCHEMATC
