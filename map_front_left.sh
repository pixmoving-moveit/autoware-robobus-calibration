#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
source $SCRIPT_DIR/../install/setup.bash 

ros2 launch  multi_lidar_calibration multi_lidar_calibration_ndt_map.launch.xml \
    pcd_path:=$SCRIPT_DIR/load_pcd/scans_down.pcd \
    input/target_pointcloud:=/sensing/lidar/front_left/livox/points \
    initial_pose:='[-12.3987, -0.746467, 0.473833, 3.14, 0.0, -1.9]' \
    node_name:='rs_120'

# ros2 run tf2_ros static_transform_publisher  -12.3987 -0.746467  0.473833    1.17782   -3.06915 -0.0242277 map lidar_fl_base_link