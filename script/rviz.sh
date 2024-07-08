#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
source $SCRIPT_DIR/../install/setup.bash 
source $HOME/pix/robobus/autoware-robobus/install/setup.bash 

rviz2 -d $SCRIPT_DIR/rviz/map_calirabtion.rviz