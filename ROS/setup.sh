##### ROS aliases
# image viewer
alias imw='rosrun rqt_image_view rqt_image_view'
# ROS masters
alias master-psa='export ROS_MASTER_URI=http://192.168.1.12:11311 && export ROS_HOSTNAME=`hostname -I`'
alias master-local='export ROS_MASTER_URI=http://localhost:11311 && export ROS_HOSTNAME=127.0.0.1'
alias master-lab='export ROS_MASTER_URI=http://192.168.1.2:11311 && export ROS_HOSTNAME=`hostname -I`'
# SSH aliases
alias ssh-lh='ssh lh@192.168.0.9'
alias ssh-stamina='ssh mrath@192.168.1.2'
# other useful stuff
alias resource='source ~/ros/bonn_ws/devel/setup.bash'
skiros-search()
{
  grep -rn "$1" ~/ros/bonn_ws/src/skiros/
}


#### ROS MASTER
#master-psa
master-local

##### ROS VERSION
# for INDIGO
source /opt/ros/indigo/setup.bash

##### PATH
# use rosbuild workspace
#export ROS_PACKAGE_PATH=~/ros/rosbuild_ws:$ROS_PACKAGE_PATH
#source ~/ros/rosbuild_ws/setup.bash

# UBO stuff
#export ROS_PACKAGE_PATH=~/ros/bonn_ws:$ROS_PACKAGE_PATH
source ~/ros/bonn_ws/devel/setup.bash 
# testing WS
#export ROS_PACKAGE_PATH=~/ros/test_ws:$ROS_PACKAGE_PATH
#source ~/ros/test_ws/devel/setup.bash 
# Little Helper stuff
source ~/ros/little_helper_ws/devel/setup.bash 

## UEDIN PLANNER
PATH=$PATH:~/ros/UEDIN/planner

# always use Nano...
export EDITOR=nano


export ROBOT=lh-cph

# no catkin
#export ROS_PACKAGE_PATH=~/ROS/ros_repos:$ROS_PACKAGE_PATH

echo 'ROS MASTER:' $ROS_MASTER_URI '| MY IP: ' `hostname -I`

