#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
source $SCRIPT_DIR/../install/setup.bash 
source $HOME/pix/robobus/autoware-robobus/install/setup.bash 

ros2 launch robobus_sensor_kit_calibration tag_based_pnp_calibrator.launch.xml  camera_name:=camera0
