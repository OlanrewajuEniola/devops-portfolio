# Project 04 — CI/CD Pipeline

## Objective
Build and improve a GitHub Actions CI/CD pipeline for a containerised application, including automated image delivery to Docker Hub.

## Tools Used
- GitHub
- GitHub Actions
- Docker
- Docker Hub
- Nginx

## Project Scope
- Trigger pipeline on push and pull request
- Validate required project files
- Build Docker image automatically
- Improve pipeline readability and validation output
- Authenticate securely with Docker Hub using GitHub Secrets
- Push Docker image to Docker Hub
- Prepare foundation for later deployment automation

## Workflow Location
- `.github/workflows/pipeline.yml`

## Project Files
- `projects/project-04-cicd-pipeline/Dockerfile`
- `projects/project-04-cicd-pipeline/README.md`
- `projects/project-04-cicd-pipeline/app/index.html`

## GitHub Secrets Used
- `DOCKERHUB_USERNAME`
- `DOCKERHUB_TOKEN`

## What the Pipeline Does
1. Checks out the repository
2. Enters the Project 04 working directory
3. Shows project and app files
4. Verifies required files exist
5. Checks Docker availability
6. Logs in to Docker Hub securely
7. Builds the Docker image as `cocomiyati/project-04-cicd-pipeline:v1`
8. Pushes the image to Docker Hub

## Outcomes Achieved
- Created a working GitHub Actions workflow at repo root
- Configured the workflow to target the Project 04 directory correctly
- Validated required files in CI
- Built a Docker image automatically in GitHub Actions
- Improved the workflow with clearer output and Docker version checks
- Added secure Docker Hub authentication with GitHub Secrets
- Successfully pushed the Docker image to Docker Hub
- Confirmed the published image and `v1` tag in Docker Hub

## Published Image
- `cocomiyati/project-04-cicd-pipeline:v1`

## Notes
- GitHub Actions workflows must live under `.github/workflows/` at repo root
- The workflow uses `working-directory: projects/project-04-cicd-pipeline`
- Docker Hub credentials were stored securely as GitHub repository secrets
- This project now covers CI validation, image build, and image delivery
