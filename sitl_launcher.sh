#!/bin/bash

# Start Plane 1
sim_vehicle.py -v ArduPlane -f gazebo-zephyr --console -I0 - &

# Start Plane 2
sim_vehicle.py -v ArduPlane -f gazebo-zephyr --console -I1 &

# Start Plane 3
sim_vehicle.py -v ArduPlane -f gazebo-zephyr --console -I2  &
