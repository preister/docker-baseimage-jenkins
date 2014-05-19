#!/bin/bash
docker build -t jenkins .
docker run -P jenkins
