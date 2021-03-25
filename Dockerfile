################################################################################
##    Dockerfile to build minimal Matplotlib image with Python3 and Numpy     ##
################################################################################
FROM python:3.9-slim

LABEL MAINTAINER="enra64 <enra64@users.noreply.github.com>"

# Build dependencies
RUN pip install --no-cache-dir numpy pandas matplotlib
