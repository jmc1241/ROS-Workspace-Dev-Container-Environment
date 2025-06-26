#!/bin/bash

"""
This prebuild script allows for the developer to run dependency based installs before
building their ROS packages.
"""

#######################
# ROS CONTAINER SETUP #
#######################

#################################################
# ! Please do not change this section (start) ! #
#################################################

if [ $(id -u -n) -neq 1000 ]; then
    echo "You need to be the robot user in order to build this package"
    exit 1
fi

# Fix missing packages
sudo apt update
sudo apt install -y --fix-missing
sudo apt upgrade -y
sudo apt install nano # install nano

# ROS 2 fix executable location
echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> $HOME/.bashrc # To ensure that the ros2 command is always going to be available
source /opt/ros/$ROS_DISTRO/setup.bash # Have ros2 command be available

#################################################
# ! Please do not change this section (stop) ! #
#################################################

#####################################################
# Template ROS library package install dependencies #
#####################################################
"""
This section is an example of installing dependencies
"""

# # Install libboost & protobuf compiler
# sudo apt-get install -y libboost-all-dev
# sudo apt-get install -y --fix-missing # Just in case
# sudo apt-get install -y protobuf-compiler
# sudo apt-get install -y --fix-missing # Just in case

#####################
# Clean Exit status #
#####################
""" Please do not touch this """
exit 0