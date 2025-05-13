@echo off

docker build -t my-ubuntu-image .

docker run -it --rm my-ubuntu-image