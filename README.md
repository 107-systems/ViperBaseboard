# viper-baseboard
Baseboard requirements and hardware design for Viper quadcopter.

The **Viper Baseboard** serves as an adapter board between an Arduino MKR Vidor 4000 and various sensors and actuators in order to implement a flight controller for a quadcopter UAV.

![Block Diagramm](viper-baseboard-block-diagram.png)

## Requirements
### Automonous Landing
The quadcopter should be able to land without user control. Therefore one or more suitable sensors shall be used to determine the distance between quadcopter and ground. One suitable sensor would be the VL53L0X ToF Sensor allows a measurement range of up to 2 m with a resolution of 1 mm.
