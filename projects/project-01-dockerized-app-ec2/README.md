# Project 1A — Dockerized App on EC2

## Overview
This project demonstrates how to containerize a simple static web application with Docker and deploy it to an AWS EC2 Ubuntu instance.

## Tools Used
- AWS EC2
- Ubuntu
- Docker
- Nginx
- GitHub
- SSH

## Project Structure
```text
project-01-dockerized-app-ec2/
├── app/
│   └── index.html
├── Dockerfile
├── README.md
├── .dockerignore
└── .gitignore

## Deployment Workflow
1. Created a fresh Ubuntu EC2 instance in AWS.
2. Connected to the server using SSH and a .pem key.
3. Installed Docker on the EC2 instance.
4. Cloned the GitHub repository onto the server.
5. Built the Docker image from the project Dockerfile.
6. Ran the container and mapped port 80 on the host to port 80 in the container.
7. Updated the EC2 security group to allow inbound HTTP traffic on port 80 after the application was not initially reachable.
8. Accessed the application in the browser using the EC2 public IP.

## Docker Commands Used
docker build -t project-1a-static-site .
docker run -d -p 80:80 --name project-1a-container project-1a-static-site
docker ps

## Outcome
The application was successfully deployed in a Docker container on an AWS EC2 Ubuntu instance and was accessible publicly through the instance public IP.

## Troubleshooting
The application did not load in the browser at first because inbound HTTP traffic on port 80 was not yet allowed in the EC2 security group. After adding the port 80 rule, the application became publicly accessible.

## Key Learning Points
How to create and connect to an EC2 instance using SSH
How to install and manage Docker on Ubuntu
How to build a Docker image from a Dockerfile
How to run a container and expose it with port mapping
How Docker port mapping and AWS security groups work together to make an application reachable

## Part 1B — Update, Rebuild, and Re-Deploy

As a follow-up exercise, the application content was updated locally on the Mac, pushed to GitHub, pulled onto the EC2 instance, rebuilt into a new Docker image, and redeployed by replacing the old running container.

### What this reinforced
- Source code changes do not automatically update a running container
- The EC2 server must pull the latest code
- The Docker image must be rebuilt after application changes
- The old container must be replaced with a new one based on the rebuilt image
- Verification in the browser confirms the redeployment was successful

## Part 1C — Inspect and Manage Container Lifecycle

This exercise focused on understanding the difference between Docker images and containers, and how containers behave across running, stopped, and removed states.

### Commands Practised
```bash
docker ps
docker ps -a
docker logs project-1a-container
docker exec -it project-1a-container sh
docker stop project-1a-container
docker start project-1a-container
docker rm project-1a-container
docker images
docker run -d -p 80:80 --name project-1a-container project-1a-static-site


## Status
Completed
