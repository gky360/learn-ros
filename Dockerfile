FROM osrf/ros:jazzy-desktop

USER ubuntu
WORKDIR /workspaces/learn-ros

RUN echo "source /opt/ros/jazzy/setup.bash" >> /home/ubuntu/.bashrc
