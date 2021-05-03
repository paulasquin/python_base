# Docker building instructions
FROM ubuntu:18.04

# Basic dependencies
RUN apt-get update && \
    apt-get install -y cmake build-essential git python3 python3-distutils python3-pip

RUN pip3 install --upgrade pip

# Define workdir
WORKDIR /app

# Copy python files prior to building
COPY . .

# Install package
RUN pip3 install .

# Run commands, or bash
CMD /bin/bash