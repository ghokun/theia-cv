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
docker run -e DISPLAY=${DISPLAY} \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           --security-opt seccomp=unconfined \
           --init -it -p 3000:3000 \
           -v "$(pwd):/home/project:cached" \
           ghokun/theia-cv
# MacOS
docker run -e DISPLAY=$ip:0 \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           --security-opt seccomp=unconfined \
           --init -it -p 3000:3000 \
           -v "$(pwd):/home/project:cached" \
           ghokun/theia-cv
```
### Docker compose

## Run remotely
### Docker run
### Docker compose

## Build
