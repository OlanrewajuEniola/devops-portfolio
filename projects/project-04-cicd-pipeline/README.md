# Project 04 — CI/CD Pipeline

## Objective
Build and improve a GitHub Actions CI pipeline for a containerised application.

## Tools Used
- GitHub
- GitHub Actions
- Docker
- Nginx

## Project Scope
- Trigger pipeline on push and pull request
- Validate required project files
- Build Docker image automatically
- Improve pipeline readability and validation output
- Prepare foundation for automated delivery

## Workflow Location
- `.github/workflows/pipeline.yml`

## Project Files
- `projects/project-04-cicd-pipeline/Dockerfile`
- `projects/project-04-cicd-pipeline/README.md`
- `projects/project-04-cicd-pipeline/app/index.html`

## What the Pipeline Does
1. Checks out the repository
2. Enters the Project 04 working directory
3. Shows project and app files
4. Verifies required files exist
5. Checks Docker availability
6. Builds the Docker image with tag `project-04-cicd-pipeline:v1`

## Outcomes Achieved
- Created a working GitHub Actions workflow at repo root
- Configured the workflow to target the Project 04 directory correctly
- Validated required files in CI
- Built a Docker image automatically in GitHub Actions
- Improved the workflow with clearer output and Docker version checks
- Confirmed successful pipeline runs after both the initial and improved workflow versions

## Notes
- GitHub Actions workflows must live under `.github/workflows/` at repo root
- The workflow uses `working-directory: projects/project-04-cicd-pipeline`
- This project currently represents the CI stage of the broader CI/CD flow
