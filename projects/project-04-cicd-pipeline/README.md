# Project 04 — CI/CD Pipeline

## Objective
Build a GitHub Actions CI pipeline for a containerized application.

## Tools Used
- GitHub
- GitHub Actions
- Docker

## Project Scope
- Trigger pipeline on push
- Check repository code
- Validate required project files
- Build Docker image
- Prepare foundation for automated delivery

## Workflow Location
- `.github/workflows/pipeline.yml`

## Project Files
- `projects/project-04-cicd-pipeline/Dockerfile`
- `projects/project-04-cicd-pipeline/README.md`
- `projects/project-04-cicd-pipeline/app/index.html`

## Current Status
- Project structure created
- GitHub Actions workflow created
- Pipeline successfully triggered on push to `main`
- Docker image successfully built in GitHub Actions

## Notes
- The workflow must live at repo root under `.github/workflows/`
- The workflow uses `working-directory: projects/project-04-cicd-pipeline`
- This is the CI foundation stage of Project 04
