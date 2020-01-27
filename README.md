# viper-baseboard
Baseboard requirements and hardware design for Viper quadcopter.

The **Viper Baseboard** serves as an adapter board between an Arduino MKR Vidor 4000 and various sensors and actuators in order to implement a flight controller for a quadcopter UAV.

![Block Diagramm](viper-baseboard-block-diagram.png)

## Requirements
### Functional
#### Rotational/Translational Stabilisation
The quadcopter should be able to stabilise itself against external disturbances concerning its orientation and position with respect to a given setpoint. For determining the current orientation of the quadcopter a suitable Inertial Measurement Unit (IMU) with a suitable sensor fusion algorithm shall be used. For determining translational stabilisation a optical flow sensor consisting of a downward facing camera in combination with a suitable optical flow sensor algorithm shall be used.

#### Vertical (Height) Stabilisation
The quadcopter should be able to hold a set distance over ground. In close proximity to the ground VL53L0X ToF sensors are used to  determine the distance between ground and quadcopter and prevent an accidential crash. When the distance between quadcopter and ground exceeds the maximum measurement range of the ground sensors the height will be controlled using a digital altimeter such as the BMP388.

#### WiFi based Control/Configuration
The quadcopter shall provide a WiFi access point to which a WiFi capable device can connect. Once a WiFi connection is established the quadcopter can be controlled via commands exchanged between quadcopter and device via a network socket. A webserver will run on the quadcopter which allows the user to configure and tweak certain aspects of the quadcopter configuration (e.g. control parameters) or read out quadcopter status.

#### Automonous Landing
The quadcopter should be able to land without user control. Three VL53L0X ToF sensors arranged in a triangle are used to determine the distance between ground and quadcopter and also perform an estimation of the grounds surface.

#### FPV (First-Person-View) Control
The image stream of a forward facing camera (a MIPI connector intented for use with the Omnivision OV5647 camera is available on the MKR VIDOR 4000 board) should be suitably encoded (in the FPGA) and transmitted via WiFi module in such way that a user can be view the image stream e.g. on a mobile phone which allows a FPV control of the quadcopter.\\
It should be posible to switch the FPV from forward facing camera to ground facing camera and back. Then the user can choose which camera fits best his needs.

### Sensors
#### VL53L0X
The VL53L0X ToF Sensor allows a measurement range of up to 2 m with a resolution of 1 mm.
#### BMP388
The BMP388 is a precision barometric pressure sensor wich relative accuracy of 8 Pascals, which translates to about ± 0.5 meter of altitude.
#### BNO085
The BNO085 contains 3 axis accelerometers, gyroscopes and magnetometers incl. onboard-algorithms for sensor fusion.

### Actuators
#### Zubax Orel 20 ESCs
[Zubax Orel 20](https://kb.zubax.com/display/MAINKB/Zubax+Orel+20) are used as ESC (Electronic Speed Controllers) and controlled via [UAVCAN](https://uavcan.org).

### Electrical
#### Input voltage
9 - 18.5 V like Zubax Orel 20.

#### protection
Input voltage should be protected by a TVS diode against voltage spikes from the motors.
There is no fuse because the motor drivers can draw excessive currents. Then a fuse is useless because it should have a very high current rating and then it can'tprotect very much. Additionally the fuse would add additional weight and empose a risk of failure during flight.

#### Power planes and distribution
##### Input voltage
to motor drivers and input for voltage regulators.
Current: 20 to 30 A

##### 5V
Input for Arduino because the Arduino doesn't like to be directly fed with 3.3V.
generated on by a switching regulator.
Current: 500 mA + Current for 3.3V devices

##### 3.3V
for sensors and camera module
generated by the onboard regulator of the Arduino
Current: up to 100 mA, should be OK for the onboard regulator

#### Connectors (mechanical and pinout)
##### battery / input
##### CAN
##### I2C

#### connections of Arduino MKR Vidor 4000
##### MKR connector
2.54 mm pinheader, 28 pins
* I2C
* CAN over SPI
* 5V input, 3.3V output
* RC_IN (for additional remote control receiver)
* OV2640 camera, if enough pins available?

##### USB
programming and debugging

##### I2C
not used, redundant to MKR connector

##### LiPo
not used, not suitable

##### MicroHDMI
not used

##### MiPi camera connector
reserved for front facing camera

##### MiniPCI Express connector
additional GPIOs?

### Mechanical
#### enclosure
no enclosure planed.

#### mounting
There should be mounting holes to mount the baseboard on the Armattan F1-4B 3MM frame https://www.armattanquads.com/f1-4b-3mm/

#### weight
The weight should be as low as possible to get better flight performance

#### cameras
One camera is mounted on the botom and is facing to the ground. There is an option for a second camera facing forward.

### environmental
#### temperature
commercial temperature range should be OK. But parts with industrial range are preferred because of higher reliability.

#### shock/vibration
care should be taken because of higher vibration on copter. so no high parts like electrolytic capacitors

