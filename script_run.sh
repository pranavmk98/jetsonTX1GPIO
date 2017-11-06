#!/bin/bash
cd ~/RoboBuggy/RoboBuggy/Software/real_time/ROS_RoboBuggy
roscore &
roslaunch robobuggy transistor.launch &