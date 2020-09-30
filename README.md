# ros-melodic-installation-hwr
One single line to install ROS Melodic
```
wget -c https://raw.githubusercontent.com/HelloWorldRobotics/ros-melodic-installation-hwr/master/ros-melodic-installation-hwr.sh && chmod +x ./ros-melodic-installation-hwr.sh && ./ros-melodic-installation-hwr.sh
```
Once you finished the installation, go to catkin_ws folder to build:
```
cd ~/catkin_ws
catkin_make
```
Run roscore command to make sure you have ROS Melodic installed correctly
```
roscore
```
