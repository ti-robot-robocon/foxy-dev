FROM foxy_pre:latest

# Arguments
ARG USER="developer"
ARG GROUP="developer"
ARG UID=1000
ARG GID=1000
ARG SHELL=/bin/bash
ARG ROS_DISTRO="foxy"

USER root
WORKDIR /

# # please use this section for apt install 
# RUN apt-get update -y \
#     && apt-get install -y --no-install-recommends \
#       < app name you want > \
#   && apt-get clean \
#   && rm -rf /var/lib/apt/lists/*

# please use this section for ROS-pakages install



# make directory for file mount 
WORKDIR /home/${USER}/ros2_ws/src/tirobot

# custom prompt for display git-branch
RUN echo "export PS1='\[\033[01;36m\]\u@\h\[\033[01;34m\] \w \[\033[01;31m\]$(__git_ps1 "(%s)") \n\[\033[01;30m\]\$\[\033[00m\] '" >> /home/${USER}/.bashrc

# enable auto completion in docker container.
RUN rm /etc/apt/apt.conf.d/docker-clean

# Switch user to ${USER}
USER ${USER}
WORKDIR /home/${USER}/ros2_ws

# CMD ["terminator"]
CMD ["tail", "-f", "/dev/null"]
