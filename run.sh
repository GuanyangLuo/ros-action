apt-get update
apt-get install -y ros-melodic-robot-state-publisher

sudo rosdep init
rosdep update

source /opt/ros/melodic/setup.bash
source /race-on-ws/devel/setup.bash

catkin_make

source devel/setup.bash

timeout 3m roslaunch raceon_simulation raceon_simulation.launch || exit 0
# python /race-on-ws/src/raceon_simulation/scripts/launch_environment.py 
