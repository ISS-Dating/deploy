#! /bin/bash

minikube start --driver=docker
minikube delete --all
minikube start --driver=docker
minikube addons enable ingress
minikube kubectl -- apply -f service.yml
sleep 3
minikube kubectl -- apply -f ingress.yml
sleep 3
IP=$(minikube ip)

echo "service-main listening on qdate.main:80 and qdate.main:80/match"
echo "service-chat is listening on ${IP}:5566 and ${IP}:5567"