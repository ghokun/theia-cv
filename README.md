# theia-cv ![dockerhub](https://github.com/ghokun/theia-cv/workflows/dockerhub/badge.svg)
Theia Docker image for C++ development on the browser. Contains OpenCV and NLopt libraries.

[![dockeri.co](https://dockeri.co/image/ghokun/theia-cv)](https://hub.docker.com/r/ghokun/theia-cv)

This image is built for C++ development. Check Dockerfile for build settings.

## Run locally
### Docker run
```bash
git clone <your_project>
cd <your_project_dir>

# Linux
docker run --name theia-cv \
           -e DISPLAY=${DISPLAY} \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           --security-opt seccomp=unconfined \
           --init -it -p 3000:3000 \
           -v "$(pwd):/home/project:cached" \
           ghokun/theia-cv
# MacOS
# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# install xquartz
brew cask install xquartz
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip
docker run --name theia-cv \
           -e DISPLAY=$ip:0 \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           --security-opt seccomp=unconfined \
           --init -it -p 3000:3000 \
           -v "$(pwd):/home/project:cached" \
           ghokun/theia-cv:latest
```
### Docker compose
```yaml
version: '3'

services:
  theia-cv:
    image: ghokun/theia-cv:latest
    environment:
     - DISPLAY=${DISPLAY}
    #- DISPLAY=<ip_address>:0
    volumes:
      - /tmp/.X11-unix:/tmp/.X11-unix
      - ./.CLion:/home/developer/.CLion
      - ./.CLionjava:/home/developer/.java
      - ./.Jetbrains:/home/developer/.local/share/Jetbrains
      - ./Projects:/home/developer/CLionProjects
```


## Run remotely
### Docker run
### Docker compose

## Build
