#!/bin/bash
USER=developer
docker container run -it --name foxy \
--gpus all \
--net host \
--privileged \
-e DISPLAY=${DISPLAY} \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e PULSE_COOKIE=/tmp/pulse/cookie \
-e PULSE_SERVER=unix:/tmp/pulse/native \
-v /run/user/1000/pulse/native:/tmp/pulse/native \
-v ~/.config/pulse/cookie:/tmp/pulse/cookie:ro \
-v "$(pwd)"/../ros2_ws/src/tirobot:/home/${USER}/ros2_ws/src/tirobot \
-v "$(pwd)"/../ros2_ws/.vscode:/home/${USER}/ros2_ws/.vscode \
--shm-size=512m \
foxy_dev:latest
