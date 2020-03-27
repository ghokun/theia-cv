# theia-cv ![dockerhub](https://github.com/ghokun/theia-cv/workflows/dockerhub/badge.svg)
Theia Docker image for C++ development on the browser. Contains OpenCV, NLopt and R libraries.

[![dockeri.co](https://dockeri.co/image/ghokun/theia-cv)](https://hub.docker.com/r/ghokun/theia-cv)

This image is built for C++ development. Check Dockerfile for build settings.

## Quickstart
```shell
git clone https://github.com/ghokun/theia-cv.git
cd theia-cv/docker-compose
./novnc.sh ../example-cmake-project
```
- Navigate to localhost:3000 or server_ip:3000
- Cmd/Ctrl + Shift + P -> >Open URL -> localhost:8080 or server_ip:8080 -> Click vnc.html and Connect to noVNC
- Run your code
![Theia ide with OpenCV in action!](https://raw.githubusercontent.com/ghokun/theia-cv/master/novnc.gif)

## Build
```shell
git clone https://github.com/ghokun/theia-cv.git
docker build theia-cv -t <your_tag_name>
```
