#!/bin/bash
docker build -t jenkins .
docker run --rm -i -P -t jenkins /sbin/my_init -- bash -l
