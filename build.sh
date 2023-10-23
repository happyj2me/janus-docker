#!/bin/bash

version=`date +%Y%m%d`

echo "build time $version , build version $version"
docker rmi zll-rtc/janus:$version
docker build -t zll-rtc/janus:$version .
