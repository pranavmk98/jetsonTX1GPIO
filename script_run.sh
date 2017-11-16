#!/bin/bash
source /opt/ros/kinetic/setup.bash
cd ~/RoboBuggy/Software/logs/$1
source devel/setup.bash
ls
cd ../../
roslaunch robobuggy transistor.launch &
rosbag record -a -O $2_fr$3 &
