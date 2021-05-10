# Docker building instructions
FROM ubuntu:18.04

# Basic dependencies
RUN apt-get update && \
    apt-get install -y cmake build-essential git python3 python3-distutils python3-pip python3-venv

RUN pip3 install --upgrade pip

# Install project requirements
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

# Define workdir
WORKDIR /app

# Copy python files prior to building
COPY . .

# Install package
RUN pip install .

# Run commands, or bash
CMD /bin/bash
