# learn-ros

Dev environment for ROS 2 Jazzy (https://docs.ros.org/en/jazzy/index.html).

## Installation

1. Install XQuartz via brew

    `$ brew install --cask xquartz`

2. Logout and login of your Mac to activate XQuartz as default X11 server

3. Start XQuartz

    `$ open -a XQuartz`

4. Go to Security Settings and ensure that "Allow connections from network clients" is on

5. Restart your Mac and start XQuartz again`

    `$ open -a XQuartz`

6. Check if XQuartz is setup and running correctly

    `$ ps aux | grep Xquartz`

7. Ensure that XQuartz is running similar to this: `/opt/X11/bin/Xquartz :0 -listen tcp`

    :0 means the display is running on display port 0.
    Important is that its not saying `–nolisten tcp` which would block any X11 forwarding to the X11 display.

8. Set the DISPLAY environment variable

    `$ export DISPLAY=:0`

    This tells the container to use the X11 display on port 0. If you have a different port, adjust accordingly.

    You can also add this to your `~/.bash_profile` or `~/.zshrc` to make it persistent across terminal sessions.

9. Allow X11 forwarding via xhost

    `$ xhost +`

    This allows any client to connect. If you have security concerns you can append an IP address for a whitelist mechanism.

	Alternatively, if you want to limit X11 forwarding to local containers, you can limit clients to localhost only via

	`$ xhost +localhost`

	Be ware: You will always have to run `xhost +` after a restart of X11 as this is not a persistent setting.


## Development

Open dev container in VSCode or run `docker compose up` manually.
