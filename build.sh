#! /bin/bash

if [ -d "./out/" ]
then
	rm -r out/
fi
docker build -t build-jar-inside-docker-image .
docker create -it --name build-jar-inside-docker build-jar-inside-docker-image bash
docker cp build-jar-inside-docker:/target ./out
docker rm -f build-jar-inside-docker