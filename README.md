# python_base
Python projects base, to be packaged and deployed with ease.

To know more about getting Docker, Docker Compose and Cuda working altogether, 
see [https://github.com/paulasquin/documentation](github.com/paulasquin/documentation).
You can follow all the steps from the beginning up to the jupyter password setting.

# Docker
## Docker image building
```bash
sudo docker build -t python_base:latest -f Dockerfile .
```
For GPU
```bash
sudo docker build -t python_base:latest-gpu -f Dockerfile.gpu .
```
As a Docker GPU base, you can use the project [paulasquin/docker_ubuntu_gpu_cuda_opencv](https://github.com/paulasquin/docker_ubuntu_gpu_cuda_opencv)
also available in [DockerHub](https://hub.docker.com/repository/docker/paulasquin/ubuntu_gpu_cuda_opencv/) which provides a Docker image with cuda, cudnn and a GPU ready OpenCV build

## Usage
In order to run a service, as defined in docker-compose
```bash
sudo docker-compose run service_name
```

For lab or api, you may need to specify service ports argument with the command
```bash
sudo docker-compose run --service-ports service_name
```

## Testing
Perform unitary testing on project, as defined with pytest files in the tests folder
```bash
sudo docker-compose up test
```

# Release
## Compile python package
```bash
rm -rf _skbuild build dist
python3 setup.py sdist bdist_wheel
```

