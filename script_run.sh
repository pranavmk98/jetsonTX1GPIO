#!/bin/bash
source /opt/ros/kinetic/setup.bash
#cd ~/RoboBuggy/RoboBuggy/Software/real_time/ROS_RoboBuggy/
roscd robobuggy
cd ..
cd ..
ls
roslaunch robobuggy transistor.launch &
