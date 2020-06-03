EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2750 1600 0    50   Input ~ 0
SER_TX
Text GLabel 2750 1700 0    50   Output ~ 0
SER_RX
$Comp
L RF_GPS:ublox_SAM-M8Q U5
U 1 1 5E859CAB
P 4300 3050
F 0 "U5" H 4450 2550 50  0000 C CNN
F 1 "ublox_SAM-M8Q" H 4650 2450 50  0000 C CNN
F 2 "RF_GPS:ublox_SAM-M8Q" H 4800 2600 50  0001 C CNN
F 3 "https://www.u-blox.com/sites/default/files/SAM-M8Q_DataSheet_%28UBX-16012619%29.pdf" H 4300 3050 50  0001 C CNN
	1    4300 3050
	1    0    0    -1  
$EndComp
$Comp
L power-supply:GND #PWR012
U 1 1 5E85A853
P 4300 3650
F 0 "#PWR012" H 4300 3400 50  0001 C CNN
F 1 "GND" H 4305 3477 50  0000 C CNN
F 2 "" H 4300 3650 50  0000 C CNN
F 3 "" H 4300 3650 50  0000 C CNN
	1    4300 3650
	1    0    0    -1  
$EndComp
$Comp
L power-supply:+3.3V #PWR011
U 1 1 5E85AA62
P 4200 2400
F 0 "#PWR011" H 4200 2250 50  0001 C CNN
F 1 "+3.3V" H 4215 2573 50  0000 C CNN
F 2 "" H 4200 2400 50  0000 C CNN
F 3 "" H 4200 2400 50  0000 C CNN
	1    4200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1600 5150 1600
Wire Wire Line
	5150 1600 5150 2850
Wire Wire Line
	5150 2850 4800 2850
Wire Wire Line
	2750 1700 5050 1700
Wire Wire Line
	5050 1700 5050 2950
Wire Wire Line
	5050 2950 4800 2950
Wire Wire Line
	4300 3550 4300 3650
Wire Wire Line
	4200 2550 4200 2450
Wire Wire Line
	4300 2550 4300 2450
Wire Wire Line
	4300 2450 4200 2450
Connection ~ 4200 2450
Wire Wire Line
	4200 2450 4200 2400
$EndSCHEMATC
