#!/bin/bash
source ../install/setup.bash 
source ~/pix/robobus/autoware-robobus/install/setup.bash 
ros2 service call /calibrate_camera_lidar tier4_calibration_msgs/srv/ExtrinsicCalibrator {}\ 