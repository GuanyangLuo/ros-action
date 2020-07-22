![Runs on GitHub Action](https://github.com/race-on/ros-action/workflows/Runs%20on%20GitHub%20Action/badge.svg)

# ROS Actions

Run ROS code with GitHub Actions triggered by each commit. 

- Tools:
  - ROS Melodic
  - Python 2.7
  - Ubuntu 18.04
  - Multipass (headless experience similar to GitHub Actions and Raspberry Pi)
  
- Items:
  - Setup script to install all the dependencies on Ubuntu
  - Starter code for the car algorithm that completes a lap in gazebo
  - Port the labs from f1tenth
  
- Labs: (similar to [f1tenth](https://f1tenth-coursekit.readthedocs.io/en/stable/introduction/syllabus.html))
  1. Setup ROS and check the simulator, record data
  1. Dynamic speed control
  1. Follow the line
  1. Track placement
  1. Localization
  1. SLAM
  1. Planing
  1. Sensors (Visual Odometry)
  
- Questions:
  - Is GitHub actions with Docker faster than installing from scratch?
  - Limit execution on GitHub actions to 10 minutes?
  
