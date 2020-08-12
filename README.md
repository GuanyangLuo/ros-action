Need to enable "Actions" for the fork first.

[![Runs on GitHub Action](https://github.com/race-on/ros-action/workflows/Runs%20on%20GitHub%20Action/badge.svg)](https://github.com/race-on/ros-action/actions)

# ROS Actions
Run ROS code with GitHub Actions triggered by each commit. The code runs inside a Ubuntu 18.04 Docker container that has ROS Melodic, Gazebo 9, Python 2.7, and the Race On code ready to start a simulation. Using Docker containers instead of VM allows us to exactly replicate the same environment both locally and on GitHub where the evaluations will happen. 


## To Do:
1. *(Priority: High)* Create two Docker images, `simulation` and `development`. The `simulation` image will contain the minimum necessary tools to run the Gazebo simulator and will be used in the GitHub Actions. The `development` image will extend the `simulation` one with development tools that teams will use to write their code such as Jupyter Notebook/Lab and a local Webviz server.
1. *(Priority: High)* Clean the current code to have only one packeage `race-on-sim` that will contain all the necessary code to simulate the car using Gazebo and return a lap time.
1. *(Priority: High)* Starter code that completes a lap wich teams will work to extend.
1. *(Priority: Medium)* Add visual clues to the track such that Labs 5 to 8 can be implemented
1. *(Priority: Medium)* Adjust [f1tenth](https://f1tenth-coursekit.readthedocs.io/en/stable/introduction/syllabus.html) labs for Race On.
1. *(Priority: Low)* Setup script based on the Docker file that will install all the dependencies on a fresh Ubuntu 18.04


## Labs:
1. Setup ROS and check the simulator, record data
1. Dynamic speed control
1. Follow the line
1. Track placement
1. Localization
1. SLAM
1. Planing
1. Sensor fusion (camera, odometry, accelerometer)


## Questions:
  - What is a reasonable time limit for GitHub to execute the code and at the same time prevent an infinite loop for stalling all the resources?
