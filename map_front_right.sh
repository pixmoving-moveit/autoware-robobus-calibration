#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
source $SCRIPT_DIR/../install/setup.bash 

ros2 launch  multi_lidar_calibration multi_lidar_calibration_ndt_map.launch.xml \
    pcd_path:=$SCRIPT_DIR/load_pcd/scans_down.pcd \
    input/target_pointcloud:=/front_right/livox/points \
    initial_pose:='[-7.3987, 1.246467, 0.473833,  3.14, 0.0, -1.8]'\
    node_name:='rs_121'

# ros2 run tf2_ros static_transform_publisher  -12.362   1.0741 0.467042    1.88665 -0.0506584   -3.10655 map lidar_fr_base_link
