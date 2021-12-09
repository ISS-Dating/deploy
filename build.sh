#! /bin/bash

git submodule update --init --recursive --remote

# cd service-main
# docker build -t aoyako/service-main --no-cache . --build-arg LOCAL_REPO="off"
# docker push aoyako/service-main
# cd ..

# cd service-analyzer
# docker build -t aoyako/service-analyzer --no-cache . --build-arg LOCAL_REPO="off"
# docker push aoyako/service-analyzer
# cd ..

cd chat-service
docker build -t aoyako/service-chat --no-cache .
docker push aoyako/service-chat
cd ..