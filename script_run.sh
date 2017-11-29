#!/bin/bash
source /opt/ros/kinetic/setup.bash
cd ~/RoboBuggy/Software/logs/$1
source devel/setup.bash
ls
cd ../../
roslaunch robobuggy transistor.launch &


i=0
arr1=($(for f in *.bag; do n=${f%.*}; num=${n: -1}; array[$i]=$num; i=$((i+1)); echo $num; done | sort))
echo $((${arr1[-1]}+1))

rosbag record -a -O $2_fr$((${arr1[-1]}+1)) &
