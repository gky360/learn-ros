FROM osrf/ros:jazzy-desktop

WORKDIR /workspaces/learn-ros

RUN echo "source /opt/ros/jazzy/setup.bash" >> /root/.bashrc
