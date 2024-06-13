#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
source $SCRIPT_DIR/../install/setup.bash 

ros2 launch  multi_lidar_calibration multi_lidar_calibration_ndt_map.launch.xml \
    pcd_path:=$SCRIPT_DIR/load_pcd/scans_down.pcd \
    input/target_pointcloud:=/front/livox/points \
    initial_pose:='[-7.3987, 0.0, 0.473833,  0.0,   0.0, 3.14]'\
    node_name:='rs_122'


# ros2 run tf2_ros static_transform_publisher  -13.0835  0.149434 -0.451833    3.1258 0.0920048 0.0228342 map lidar_front_base_link
