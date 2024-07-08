
```shell
cd ~/pix/robobus/autoware-robobus-calibration
vcs import src < calibration_robobus.repos --recursive
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
```