#!/usr/bin/env bash

# Add the source for ROS packages
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Add keys to access the package server
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# Get the updated list of packages
sudo apt update

# Install the ROS
sudo apt install --yes ros-melodic-ros-base

# Dependencies for building ROS packages
sudo apt install --yes python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

sudo rosdep init
rosdep update

# Make ROS binaries available
source /opt/ros/melodic/setup.bash

