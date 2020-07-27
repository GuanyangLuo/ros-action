source /opt/ros/melodic/setup.bash

catkin_make

source devel/setup.bash

timeout 10s roslaunch beginner_tutorials main.launch || exit 0
