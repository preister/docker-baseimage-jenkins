# docker-jenkins

Sets up a baseimage (https://github.com/phusion/baseimage-docker) container with jenkins installed listening on port 8080.

## Usage

Currently in pre-alpha, if you know how to use it feel free to give it a try - if you don't you should better wait until later on.

Some initial notes unitl I get around to write a proper ReadMe:
  * Running this on a VirtualBox, Vagrant and boot2docker stack on both Mac OSx and Mint
  * Contolled via a local install of docker-client and DOCKER_HOST, which as well works for fig.

## Building

To build the image, simply invoke

    docker build github.com/preister/docker-baseimage-jenkins.git

## Next Development Goals

  * Integrate the Docker Slave Plugin

## Author

  * Patrick Maximilian Reister (<patrickreister@googlemail.com>)
  * Credit to the maintainers of docker-jenkins: Allan Espinosa (<allan.espinosa@outlook.com>), Gwenn Etourneau

## LICENSE

Copyright 2014 Patrick Maximilian Reister

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
