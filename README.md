# theia-cv ![dockerhub](https://github.com/ghokun/theia-cv/workflows/dockerhub/badge.svg)
Theia Docker image for C++ development on the browser. Contains OpenCV, NLopt and R libraries.

[![dockeri.co](https://dockeri.co/image/ghokun/theia-cv)](https://hub.docker.com/r/ghokun/theia-cv)

This image is built for C++ development. Check Dockerfile for build settings.

## Theia IDE
- Code in your browser and visualize with X11. Image below shows Theia IDE running in Safari browser. `cv::imshow(..)` is redirected to host display from docker. Qt decorations comes from `ghokun/opencv` docker image.

![Theia ide with OpenCV in action!](https://github.com/ghokun/theia-cv/blob/master/example-cmake-project/x11.png?raw=true)

## Run locally
### Docker run
```shell
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

# change en0 with your interface name
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
 - Navigate to localhost:3000
 
### docker-compose.yml
- xquartz is still required for MacOS. See above.

```yaml
version: '3.3'
services:
  theia-cv:
    container_name: theia-cv
    environment:
      - 'DISPLAY=${DISPLAY}'
     #- 'DISPLAY=$ip:0' 
    volumes:
      - '/tmp/.X11-unix:/tmp/.X11-unix'
      - '$(pwd):/home/project:cached'
    ports:
      - '3000:3000'
    image: ghokun/theia-cv
```
```shell
docker-compose up -d
```
- Navigate to localhost:3000

## Build
```shell
git clone https://github.com/ghokun/theia-cv.git
docker build theia-cv -t <your_tag_name>
```

## TODO
- [ ] Run remotely with X11 support
- [ ] CUDA support with nvidia-docker
- [x] Example code with CMake
- [ ] Hardware acceleration for Intel iGPU
