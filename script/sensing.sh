#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
source $SCRIPT_DIR/../install/setup.bash 
source $HOME/pix/robobus/autoware-robobus/install/setup.bash 

function print_help() {
  echo "启动传感器"
  echo ""
  echo "Usage:"
  echo "  ./sensing.sh [-robot_state] [-camera_index] [-verify]"
  echo ""
  echo "    - camera_index : /dev/video0"
  echo "    - robot_state : 启动传感器是否发布tf树"
  echo "    - verify : 标定完成后验证tf"
  echo ""
}

camera_index="${2:-/dev/video0}"
robot_state="${1:-true}"

ros2 launch robobus_sensor_kit_calibration sensing_all.launch.xml camera_index:=$camera_index robot_state:=$robot_state