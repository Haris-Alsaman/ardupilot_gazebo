# Ardupilot Gazebo plugin

This plug-in to operate multiple fixed-wing aircraft using ROS in a virtual world that supports barcodes and cameras.

## Requirements

- **Ubuntu 20.04**
- **Gazebo Classic 11**
- **ROS-Noetic**


## Setup：

### Gazebo and Plugin Installation

```bash
sudo apt-get install libgazebo11-dev	
git clone https://github.com/Haris-Alsaman/ardupilot_gazebo.git
cd ardupilot_gazebo
mkdir build
cd build
cmake ..
make -j4
sudo make install
```

### Configure Environment Variables

Open the .bashrc file:
```
sudo vim ~/.bashrc
```

Add the following lines to the end of the file:

```
source /usr/share/gazebo/setup.sh
export GAZEBO_MODEL_PATH=~/ardupilot_gazebo/models:${GAZEBO_MODEL_PATH}
export GAZEBO_MODEL_PATH=~/ardupilot_gazebo/models_gazebo:${GAZEBO_MODEL_PATH}
export GAZEBO_RESOURCE_PATH=~/ardupilot_gazebo/worlds:${GAZEBO_RESOURCE_PATH}
export GAZEBO_PLUGIN_PATH=~/ardupilot_gazebo/build:${GAZEBO_PLUGIN_PATH}
```

Reload the .bashrc file to apply the changes:

```
source ~/.bashrc
```


### install MAVROS

```bash
sudo apt install ros-noetic-mavros* -y 
cd /opt/ros/noetic/lib/mavros
sudo chmod +x install_geographiclib_datasets.sh
sudo ./install_geographiclib_datasets.sh
```




### Build ROS Workspace 

1. Build the ROS workspace:
```bash
cd ardupilot_gazebo/ros/
catkin_make  #First Time
source devel/setup.bash  
```
2. Before running Gazebo, obtain the necessary files from PX4:

-   Copy 'libgazebo_camera_manager_plugin.so' and 'libgazebo_gst_camera_plugin.so' From PX4 to the build folder.
-   Copy the gazebo-zephyr.parm file from this folder to ardupilot/Tools/autotest/default_params.



#### Run Sim With out gazebo for test
```bash
sim_vehicle.py -v ArduPlane -f gazebo-zephyr --console  --out=127.0.0.1:14550 -I0 --sysid=1  
```



## Simplify Your Workflow

### source Ros and Scripts

Open the .bashrc file:
```
sudo vim ~/.bashrc
```

Add the following lines to the end of the file:

```

source ~/ardupilot_gazebo/ros/devel/setup.bash
export PATH=$PATH:~/ardupilot_gazebo/scripts

```


Reload the .bashrc file to apply the changes:

```
source ~/.bashrc
```



### Run Simulations with There Commands
You can start the Gazebo simulation and planes from anywhere with these commands:


1. Start Gazebo and Multiple Planes.

```
start_gazebo_multi_plane.sh
```


2. Start Planes Individually:

```
start_1_plane.sh
start_2_plane.sh
start_3_plane.sh
```



### Run Gazebo And 3 Planes With One Command

```
all_planes.sh
```









