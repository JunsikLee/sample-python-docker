#!/bin/bash

echo '도커 컨테이너 종료'
docker stop $(docker ps -a -q -f name=py-test)