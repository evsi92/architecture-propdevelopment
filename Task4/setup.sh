#!/bin/bash

# Start minikube
minikube start --driver=docker

# Create namespaces
kubectl create namespace owners
kubectl create namespace clients
kubectl create namespace finance

# Create service accounts
kubectl create serviceaccount anna -n owners
kubectl create serviceaccount ben -n clients
kubectl create serviceaccount chris -n finance
kubectl create serviceaccount den -n kube-system
kubectl create serviceaccount elen -n kube-system
kubectl create serviceaccount fedor -n kube-system

# Apply RBAC roles and bindings
kubectl apply -f roles.yaml
kubectl apply -f rolebindings.yaml