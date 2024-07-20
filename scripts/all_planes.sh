gnome-terminal --tab --title="gazebo" --command="bash -c 'cd ~; roslaunch apm_sim multi_plane.launch; $SHELL'" 
# wait for gazebo to start
sleep 10
gnome-terminal --tab --title="Ardupilot 1" --command="bash -c 'cd ~; sim_vehicle.py -v ArduPlane -f gazebo-zephyr --console  --map --out=127.0.0.1:14550 -I0 --sysid=1; $SHELL'" 
sleep 5
gnome-terminal --tab --title="Ardupilot 2" --command="bash -c 'cd ~; sim_vehicle.py -v ArduPlane -f gazebo-zephyr --console  --out=127.0.0.1:14560 -I1 --sysid=2; $SHELL'"
sleep 5
gnome-terminal --tab --title="Ardupilot 3" --command="bash -c 'cd ~; sim_vehicle.py -v ArduPlane -f gazebo-zephyr --console  --out=127.0.0.1:14570 -I2 --sysid=3; $SHELL'"
# wait for ardupilot to start
sleep 5
gnome-terminal --tab --title="Mavproxy 1" --command="bash -c 'cd ~; mavproxy.py --master=udp:localhost:14550 --out=udp:localhost:14551 --out=udp:localhost:14552 --out=udp:localhost:14553 --out=udp:localhost:14554; $SHELL'"
gnome-terminal --tab --title="Mavproxy 2" --command="bash -c 'cd ~; mavproxy.py --master=udp:localhost:14560 --out=udp:localhost:14561 --out=udp:localhost:14562 --out=udp:localhost:14563 --out=udp:localhost:14564; $SHELL'"
gnome-terminal --tab --title="Mavproxy 3" --command="bash -c 'cd ~; mavproxy.py --master=udp:localhost:14570 --out=udp:localhost:14571 --out=udp:localhost:14572 --out=udp:localhost:14573 --out=udp:localhost:14574; $SHELL'"
