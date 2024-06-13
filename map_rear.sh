#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
source $SCRIPT_DIR/../install/setup.bash 

ros2 launch  multi_lidar_calibration multi_lidar_calibration_ndt_map.launch.xml \
    pcd_path:=$SCRIPT_DIR/load_pcd/scans_down.pcd \
    input/target_pointcloud:=/rear/livox/points \
    initial_pose:='[-4.3987, 0.0, 0.473833, 0.0, 0.2, 0.0]'\
    node_name:='rear_right'

# ros2 run tf2_ros static_transform_publisher  -9.42011  0.129669 -0.462444   1.5514 -3.13952 -3.13518 map lidar_rear_base_link
