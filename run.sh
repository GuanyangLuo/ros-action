source /opt/ros/melodic/setup.bash
source /race-on-ws/devel/setup.bash

catkin_make

source devel/setup.bash

timeout 20s roslaunch raceon_simulation raceon_simulation.launch || exit 0
