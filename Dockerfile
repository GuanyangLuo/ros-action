FROM ros:melodic-ros-base-bionic

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY . /race-on/

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["bash", "/race-on/run.sh"]
