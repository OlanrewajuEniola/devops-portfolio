# Project 03 — Kubernetes Deployment on EC2

## Objective
Deploy a simple Nginx application to a Kubernetes cluster running on AWS EC2 using k3s, expose it with a Kubernetes Service, and replace the default Nginx page with custom HTML using a ConfigMap.

## Environment
- AWS EC2 (Ubuntu)
- k3s (lightweight Kubernetes)
- kubectl
- Nginx container image

## Project Structure
- `manifests/configmap.yaml` — stores the custom `index.html` content in Kubernetes
- `manifests/deployment.yaml` — defines the Nginx Deployment and mounts the ConfigMap into the container
- `manifests/service.yaml` — defines the ClusterIP Service that exposes the application internally

## Kubernetes Concepts Covered
- Cluster
- Node
- Pod
- Deployment
- Service
- ConfigMap
- Port-forwarding

## What I Built
I created a single-node Kubernetes environment on an Ubuntu EC2 instance using k3s.  
I then deployed an Nginx application, exposed it with a ClusterIP Service, and verified access through `kubectl port-forward`.

After that, I created a ConfigMap containing a custom `index.html` file and mounted it into the Nginx container so the application served my own page instead of the default Nginx welcome page.

## Manifest Flow
The application works through the following Kubernetes object flow:

`ConfigMap -> Deployment -> Pod -> Service -> Port-forward access`

## Key Commands Practised
```bash
sudo kubectl get nodes
sudo kubectl get pods -A
sudo kubectl create deployment hello-nginx --image=nginx
sudo kubectl get deployments
sudo kubectl get replicasets
sudo kubectl get pods
sudo kubectl expose deployment hello-nginx --name=hello-nginx --port=80 --target-port=80
sudo kubectl get services
sudo kubectl describe service hello-nginx
sudo kubectl port-forward service/hello-nginx 8080:80
curl http://localhost:8080
sudo kubectl create configmap hello-nginx-html --from-file=index.html
sudo kubectl apply -f manifests/configmap.yaml
sudo kubectl apply -f manifests/deployment.yaml
sudo kubectl apply -f manifests/service.yaml
