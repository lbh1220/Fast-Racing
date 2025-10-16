# ensure a single ROS master without races
rosparam get /rosdistro >/dev/null 2>&1 || (roscore & sleep 2);

roslaunch --wait plan_manage zhangjiajie.launch     & sleep 1;
roslaunch --wait traj_server traj_server.launch & sleep 1;
roslaunch --wait Ctrl ctrl_md.launch  & sleep 1;
roslaunch --wait plan_manage visualize.launch;