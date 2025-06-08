# learn-ros

## Installation

```shell
$ brew install --cask xquartz
$ open -a XQuartz
# Go to Security Settings and ensure that "Allow connections from network clients" is on
```

## Development

```shell
$ open -a XQuartz
$ export DISPLAY=localhost:0.0
$ xhost +localhost
```

See also:

- https://wiki.ros.org/docker/Tutorials/GUI
