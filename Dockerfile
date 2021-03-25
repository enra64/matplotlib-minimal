################################################################################
##    Dockerfile to build minimal Matplotlib image with Python3 and Numpy     ##
################################################################################
FROM python:3.9-slim

LABEL MAINTAINER="enra64 <enra64@users.noreply.github.com>"

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin
RUN apt-get update && apt-get install -y \
    python3-tk \
 && rm -rf /var/lib/apt/lists/*

# Add python scientific computing basics
RUN pip install --no-cache-dir numpy pandas matplotlib scipy
