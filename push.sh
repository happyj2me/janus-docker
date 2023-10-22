#!/bin/bash

#version=`date +%Y%m%d`

version='20231018'

echo "push time $version , push version $version"
docker login -u happyj2me@aliyun.com -p lih191017 registry.cn-hangzhou.aliyuncs.com
docker tag zll-rtc/janus:$version  registry.cn-hangzhou.aliyuncs.com/zll-rtc/janus:$version
docker push registry.cn-hangzhou.aliyuncs.com/zll-rtc/janus:$version
docker logout
