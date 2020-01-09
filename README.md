# viper-baseboard
Baseboard requirements and hardware design for Viper quadcopter.

The **Viper Baseboard** serves as an adapter board between an Arduino MKR Vidor 4000 and various sensors and actuators in order to implement a flight controller for a quadcopter UAV.

![Block Diagramm](viper-baseboard-block-diagram.png)

## Requirements
### Functional
#### Automonous Landing
The quadcopter should be able to land without user control. Therefore one or more suitable sensors shall be used to determine the distance between quadcopter and ground. One suitable sensor would be the VL53L0X ToF Sensor allows a measurement range of up to 2 m with a resolution of 1 mm.

### Electrical
#### Input voltage
9 - 18.5 V like Zubax Orel 20.

#### Connectors
##### battery / input
##### CAN
##### I2C

### Mechanical
#### enclosure
no enclosure planed.

#### mounting
There should be mounting holes to mount the baseboard on the Armattan F1-4B 3MM frame https://www.armattanquads.com/f1-4b-3mm/

### environmental
#### temperature
commercial temperature range should be OK. But parts with industrial range are preferred because of higher reliability.

#### shock/vibration
care should be taken because of higher vibration on copter. so no high parts like electrolytic capacitors

