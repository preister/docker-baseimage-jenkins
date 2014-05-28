# docker-jenkins

Sets up a baseimage (https://github.com/phusion/baseimage-docker) container with jenkins installed listening on port 8080.

Goals:
  * Jenkins and all supporting processes run as a services.
  * Standardized logging with a standard interface to pull logs by external log handlers like LogStash 
  * Let's imagine if Jenkins builds Jenkins? I've worked on enough build and continouse integration systems throughout my years to have encountered the chicken and egg problem more than ones - can docker be the solution? 

Small disclaimer, baseimage-docker seems to be a bit on the heavy side when it comes to requirements ... going to look into that as soon as I have some spare time.

## ToDo

Initially I want to get this project to a state were I'm able to itterate on it easily.

  * Redirect the Jenkins log output to svlogd.
  * Research svlogd log forwarding, aka. how do I get the logs of the machine if I want to (logging is in my experience the first big issue to solve in any automation system - especially system logs are usually rather overlooked)?
  * Add git support to the container.
  * Add git plugin to Jenkins.
  * Add docker plugin to Jenkins.
  * Create Job to build the docker-baseimage-jenkins image and submit it to the official docker registry.
  * Create instructions how to change the docker-baseimage-jenkins job to work against a local source control and registry.   

## Usage

Currently in pre-alpha, if you know how to use it feel free to give it a try - if you don't you should better wait until later on.

Some initial notes unitl I get around to write a proper ReadMe:
  * Running this on a VirtualBox, Vagrant and boot2docker stack on both Mac OSx and Mint
  * Contolled via a local install of docker-client and DOCKER_HOST, which as well works for fig.

## Building

To build the image, simply invoke

    docker build github.com/preister/docker-baseimage-jenkins.git

Currently there are no prebuild containers available - as well as no additional functionality added ;) 

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
