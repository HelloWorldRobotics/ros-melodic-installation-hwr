#!/bin/sh
# update & upgrade #
sudo apt-get update
sudo apt-get upgrade
# add custom sources and PPA's #
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
# ubuntuzilla
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# update
sudo apt update
# Desktop-Full Install: (Recommended)
sudo apt install ros-melodic-desktop-full
# Environment Setup
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
# Dependencies for building packages
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
#initialize rosdep
sudo apt install python-rosdep
sudo rosdep init
rosdep update
sudo reboot
# Create a ROS Workspace
#mkdir -p ~/catkin_ws/src
#cd ~/catkin_ws/
#catkin_make
# source new setup file
#source ~/catkin_ws/devel/setup.bash
#echo $ROS_PACKAGE_PATH
#echo "source $HOME/catkin_ws/devel/setup.bash" >> ~/.bashrc
