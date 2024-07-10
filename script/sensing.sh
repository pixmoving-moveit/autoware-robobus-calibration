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
  echo "    - camera_index : /dev/video0 = camera0"
  echo "    - robot_state : 启动传感器是否发布tf树 true | false"
  echo "    - verify : 标定完成后验证tf"
  echo ""
}

robot_state="${1:-false}"

ros2 launch robobus_sensor_kit_calibration sensing_all.launch.xml robot_state:=$robot_state