EESchema Schematic File Version 2
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
LIBS:ads825
LIBS:de0-nano_gpio
LIBS:opa690
LIBS:gpifii_j7
LIBS:gpifii_j6
LIBS:Domesday Duplicator-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "Domesday Duplicator"
Date "2017-10-31"
Rev "1.2"
Comp "http://www.domesday86.com"
Comment1 "(c)2017 Simon Inns"
Comment2 "License: Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADS825 U1
U 1 1 59D1E3B9
P 5000 4200
F 0 "U1" H 4400 3350 60  0000 C CNN
F 1 "ADS825" H 4500 4950 60  0000 C CNN
F 2 "Housings_SSOP:SSOP-28_5.3x10.2mm_Pitch0.65mm" H 5000 4200 60  0001 C CNN
F 3 "" H 5000 4200 60  0001 C CNN
	1    5000 4200
	1    0    0    -1  
$EndComp
Text HLabel 6100 3600 2    60   Output ~ 0
DATA0
Text HLabel 6100 3700 2    60   Output ~ 0
DATA1
Text HLabel 6100 3800 2    60   Output ~ 0
DATA2
Text HLabel 6100 3900 2    60   Output ~ 0
DATA3
Text HLabel 6100 4000 2    60   Output ~ 0
DATA4
Text HLabel 6100 4100 2    60   Output ~ 0
DATA5
Text HLabel 6100 4200 2    60   Output ~ 0
DATA6
Text HLabel 6100 4300 2    60   Output ~ 0
DATA7
Text HLabel 6100 4400 2    60   Output ~ 0
DATA8
Text HLabel 6100 4500 2    60   Output ~ 0
DATA9
Wire Wire Line
	5850 3600 6100 3600
Wire Wire Line
	5850 3700 6100 3700
Wire Wire Line
	5850 3800 6100 3800
Wire Wire Line
	5850 3900 6100 3900
Wire Wire Line
	5850 4000 6100 4000
Wire Wire Line
	5850 4100 6100 4100
Wire Wire Line
	5850 4200 6100 4200
Wire Wire Line
	5850 4300 6100 4300
Wire Wire Line
	5850 4400 6100 4400
Wire Wire Line
	5850 4500 6100 4500
Text HLabel 6100 4900 2    60   Input ~ 0
CLK
Text HLabel 3750 3600 0    60   Input ~ 0
IN
Text HLabel 2900 4000 0    60   Output ~ 0
REFT
Text HLabel 2900 4100 0    60   Output ~ 0
REFB
Wire Wire Line
	3750 3600 4150 3600
Wire Wire Line
	2900 4000 4150 4000
Wire Wire Line
	2900 4100 4150 4100
Wire Wire Line
	4950 3300 4950 3200
Wire Wire Line
	3900 3200 5050 3200
Connection ~ 5050 3200
$Comp
L GND #PWR012
U 1 1 59D20208
P 4900 5350
F 0 "#PWR012" H 4900 5100 50  0001 C CNN
F 1 "GND" H 4900 5200 50  0000 C CNN
F 2 "" H 4900 5350 50  0001 C CNN
F 3 "" H 4900 5350 50  0001 C CNN
	1    4900 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5200 4900 5350
Wire Wire Line
	5100 5250 5100 5200
Wire Wire Line
	1350 5250 5950 5250
Connection ~ 4900 5250
Wire Wire Line
	5000 5200 5000 5250
Connection ~ 5000 5250
Wire Wire Line
	5850 4900 6100 4900
Wire Wire Line
	5850 4700 5950 4700
Wire Wire Line
	5950 4700 5950 5250
Connection ~ 5100 5250
Wire Wire Line
	5850 4800 5950 4800
Connection ~ 5950 4800
Wire Wire Line
	4150 4600 4000 4600
Wire Wire Line
	4000 4600 4000 5250
Wire Wire Line
	4150 4700 3900 4700
Wire Wire Line
	3900 4700 3900 3200
Connection ~ 4950 3200
Wire Wire Line
	5050 3050 5050 3300
Wire Wire Line
	4800 3050 4800 3300
$Comp
L C C5
U 1 1 59D2039F
P 3100 4750
F 0 "C5" H 3125 4850 50  0000 L CNN
F 1 "100nF" H 3125 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3138 4600 50  0001 C CNN
F 3 "" H 3100 4750 50  0001 C CNN
	1    3100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3800 3100 3800
Wire Wire Line
	3100 3700 3100 4600
Wire Wire Line
	4150 3700 3100 3700
Connection ~ 3100 3800
Wire Wire Line
	3100 5250 3100 4900
Connection ~ 4000 5250
$Comp
L C C7
U 1 1 59D204A9
P 3400 4750
F 0 "C7" H 3425 4850 50  0000 L CNN
F 1 "100nF" H 3425 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3438 4600 50  0001 C CNN
F 3 "" H 3400 4750 50  0001 C CNN
	1    3400 4750
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 59D204E6
P 3700 4750
F 0 "C9" H 3725 4850 50  0000 L CNN
F 1 "100nF" H 3725 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3738 4600 50  0001 C CNN
F 3 "" H 3700 4750 50  0001 C CNN
	1    3700 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4600 3400 4000
Connection ~ 3400 4000
Wire Wire Line
	3700 4600 3700 4100
Connection ~ 3700 4100
Wire Wire Line
	3700 4900 3700 5250
Connection ~ 3700 5250
Wire Wire Line
	3400 4900 3400 5250
Connection ~ 3400 5250
$Comp
L C C1
U 1 1 59D20637
P 1350 4750
F 0 "C1" H 1375 4850 50  0000 L CNN
F 1 "100nF" H 1375 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1388 4600 50  0001 C CNN
F 3 "" H 1350 4750 50  0001 C CNN
	1    1350 4750
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59D20660
P 2250 4750
F 0 "C3" H 2275 4850 50  0000 L CNN
F 1 "100nF" H 2275 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2288 4600 50  0001 C CNN
F 3 "" H 2250 4750 50  0001 C CNN
	1    2250 4750
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 59D2068E
P 1650 4750
F 0 "C2" H 1675 4850 50  0000 L CNN
F 1 "2.2uF Tant" H 1675 4650 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 1688 4600 50  0001 C CNN
F 3 "" H 1650 4750 50  0001 C CNN
	1    1650 4750
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 59D206C2
P 2550 4750
F 0 "C4" H 2575 4850 50  0000 L CNN
F 1 "2.2uF Tant" H 2575 4650 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 2588 4600 50  0001 C CNN
F 3 "" H 2550 4750 50  0001 C CNN
	1    2550 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4300 1350 4300
Wire Wire Line
	1350 4300 1350 4600
Wire Wire Line
	4150 4400 2250 4400
Wire Wire Line
	2250 4400 2250 4600
Wire Wire Line
	1650 4600 1650 4300
Connection ~ 1650 4300
Wire Wire Line
	2550 4600 2550 4400
Connection ~ 2550 4400
Wire Wire Line
	1350 4900 1350 5250
Connection ~ 3100 5250
Wire Wire Line
	1650 4900 1650 5250
Connection ~ 1650 5250
Wire Wire Line
	2250 4900 2250 5250
Connection ~ 2250 5250
Wire Wire Line
	2550 4900 2550 5250
Connection ~ 2550 5250
$Comp
L LM1117-3.3 U2
U 1 1 59D20D80
P 9200 3950
F 0 "U2" H 9300 3700 50  0000 C CNN
F 1 "LM1117-3.3" H 9200 4200 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 9200 3950 50  0001 C CNN
F 3 "" H 9200 3950 50  0001 C CNN
	1    9200 3950
	1    0    0    -1  
$EndComp
$Comp
L CP C11
U 1 1 59D20DDA
P 8450 4200
F 0 "C11" H 8475 4300 50  0000 L CNN
F 1 "10uF" H 8475 4100 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 8488 4050 50  0001 C CNN
F 3 "" H 8450 4200 50  0001 C CNN
	1    8450 4200
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 59D20E77
P 8700 4200
F 0 "C12" H 8725 4300 50  0000 L CNN
F 1 "100nF" H 8725 4100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8738 4050 50  0001 C CNN
F 3 "" H 8700 4200 50  0001 C CNN
	1    8700 4200
	1    0    0    -1  
$EndComp
$Comp
L CP C13
U 1 1 59D21089
P 9700 4200
F 0 "C13" H 9725 4300 50  0000 L CNN
F 1 "10uF" H 9725 4100 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 9738 4050 50  0001 C CNN
F 3 "" H 9700 4200 50  0001 C CNN
	1    9700 4200
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 59D2108F
P 9950 4200
F 0 "C14" H 9975 4300 50  0000 L CNN
F 1 "100nF" H 9975 4100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9988 4050 50  0001 C CNN
F 3 "" H 9950 4200 50  0001 C CNN
	1    9950 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 59D210E5
P 9200 4550
F 0 "#PWR013" H 9200 4300 50  0001 C CNN
F 1 "GND" H 9200 4400 50  0000 C CNN
F 2 "" H 9200 4550 50  0001 C CNN
F 3 "" H 9200 4550 50  0001 C CNN
	1    9200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4350 8450 4450
Wire Wire Line
	8450 4450 9950 4450
Wire Wire Line
	9950 4450 9950 4350
Wire Wire Line
	9700 4350 9700 4450
Connection ~ 9700 4450
Wire Wire Line
	8700 4350 8700 4450
Connection ~ 8700 4450
Wire Wire Line
	9200 4250 9200 4550
Connection ~ 9200 4450
Wire Wire Line
	8450 3850 8450 4050
Wire Wire Line
	8150 3950 8900 3950
Wire Wire Line
	9500 3950 9950 3950
Wire Wire Line
	9950 3850 9950 4050
Wire Wire Line
	9700 4050 9700 3950
Connection ~ 9700 3950
Wire Wire Line
	8700 4050 8700 3950
Connection ~ 8700 3950
Connection ~ 9950 3950
Connection ~ 8450 3950
$Comp
L +5VA #PWR014
U 1 1 59D21529
P 8450 3850
F 0 "#PWR014" H 8450 3700 50  0001 C CNN
F 1 "+5VA" H 8450 3990 50  0000 C CNN
F 2 "" H 8450 3850 50  0001 C CNN
F 3 "" H 8450 3850 50  0001 C CNN
	1    8450 3850
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR015
U 1 1 59D21562
P 5050 3050
F 0 "#PWR015" H 5050 2900 50  0001 C CNN
F 1 "+5VA" H 5050 3190 50  0000 C CNN
F 2 "" H 5050 3050 50  0001 C CNN
F 3 "" H 5050 3050 50  0001 C CNN
	1    5050 3050
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 59D21589
P 8000 3950
F 0 "L1" V 7950 3950 50  0000 C CNN
F 1 "100uH" V 8075 3950 50  0000 C CNN
F 2 "Inductors_THT:L_Radial_D9.5mm_P5.00mm_Fastron_07HVP" H 8000 3950 50  0001 C CNN
F 3 "" H 8000 3950 50  0001 C CNN
	1    8000 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3950 7700 3950
Wire Wire Line
	7700 3950 7700 3850
$Comp
L +5V #PWR016
U 1 1 59D216C2
P 7700 3850
F 0 "#PWR016" H 7700 3700 50  0001 C CNN
F 1 "+5V" H 7700 3990 50  0000 C CNN
F 2 "" H 7700 3850 50  0001 C CNN
F 3 "" H 7700 3850 50  0001 C CNN
	1    7700 3850
	1    0    0    -1  
$EndComp
$Comp
L +3.3VA #PWR017
U 1 1 59D22575
P 4800 3050
F 0 "#PWR017" H 4800 2900 50  0001 C CNN
F 1 "+3.3VA" H 4800 3190 50  0000 C CNN
F 2 "" H 4800 3050 50  0001 C CNN
F 3 "" H 4800 3050 50  0001 C CNN
	1    4800 3050
	1    0    0    -1  
$EndComp
$Comp
L +3.3VA #PWR018
U 1 1 59D23B11
P 9950 3850
F 0 "#PWR018" H 9950 3700 50  0001 C CNN
F 1 "+3.3VA" H 9950 3990 50  0000 C CNN
F 2 "" H 9950 3850 50  0001 C CNN
F 3 "" H 9950 3850 50  0001 C CNN
	1    9950 3850
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 59D254D7
P 3300 6650
F 0 "C6" H 3325 6750 50  0000 L CNN
F 1 "100nF" H 3325 6550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3338 6500 50  0001 C CNN
F 3 "" H 3300 6650 50  0001 C CNN
	1    3300 6650
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 59D2553A
P 3600 6650
F 0 "C8" H 3625 6750 50  0000 L CNN
F 1 "100nF" H 3625 6550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3638 6500 50  0001 C CNN
F 3 "" H 3600 6650 50  0001 C CNN
	1    3600 6650
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 59D25584
P 3900 6650
F 0 "C10" H 3925 6750 50  0000 L CNN
F 1 "100nF" H 3925 6550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3938 6500 50  0001 C CNN
F 3 "" H 3900 6650 50  0001 C CNN
	1    3900 6650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 59D255CD
P 3300 7000
F 0 "#PWR019" H 3300 6750 50  0001 C CNN
F 1 "GND" H 3300 6850 50  0000 C CNN
F 2 "" H 3300 7000 50  0001 C CNN
F 3 "" H 3300 7000 50  0001 C CNN
	1    3300 7000
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR020
U 1 1 59D2560B
P 3300 6300
F 0 "#PWR020" H 3300 6150 50  0001 C CNN
F 1 "+5VA" H 3300 6440 50  0000 C CNN
F 2 "" H 3300 6300 50  0001 C CNN
F 3 "" H 3300 6300 50  0001 C CNN
	1    3300 6300
	1    0    0    -1  
$EndComp
$Comp
L +3.3VA #PWR021
U 1 1 59D25649
P 3900 6300
F 0 "#PWR021" H 3900 6150 50  0001 C CNN
F 1 "+3.3VA" H 3900 6440 50  0000 C CNN
F 2 "" H 3900 6300 50  0001 C CNN
F 3 "" H 3900 6300 50  0001 C CNN
	1    3900 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6500 3300 6300
Wire Wire Line
	3300 6800 3300 7000
Wire Wire Line
	3900 6800 3900 6900
Wire Wire Line
	3900 6900 3300 6900
Connection ~ 3300 6900
Wire Wire Line
	3600 6500 3600 6400
Wire Wire Line
	3600 6400 3300 6400
Connection ~ 3300 6400
Wire Wire Line
	3900 6500 3900 6300
Wire Wire Line
	3600 6800 3600 6900
Connection ~ 3600 6900
$EndSCHEMATC
