#!/bin/bash

sim_vehicle.py -v ArduPlane -f gazebo-zephyr --console  --map --out=127.0.0.1:14550 -I0 --sysid=1 
# sim_vehicle.py -v ArduPlane -f gazebo-zephyr --console  --out=127.0.0.1:14560 -I1 --sysid=2 
# sim_vehicle.py -v ArduPlane -f gazebo-zephyr --console  --out=127.0.0.1:14570 -I2 --sysid=3 
# wait