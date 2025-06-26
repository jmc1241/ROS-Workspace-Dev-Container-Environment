#!/bin/bash

"""
This script cleans the workspace for whatever reason
"""

##############################################
# Clean up the ROS build dependencies & logs #
##############################################

rm -Rf build install log
rmdir build install log