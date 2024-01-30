@echo off
set DOCKER_CMD=docker run -it --rm -p 8888:8888 -v %CD%:/app anaconda-docker jupyter notebook --ip=0.0.0.0 --no-browser --allow-root
%DOCKER_CMD%
