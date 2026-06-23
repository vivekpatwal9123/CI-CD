# CI/CD Pipeline with Jenkins, SonarQube, Docker & Trivy

## Project Overview

This project demonstrates a complete CI/CD pipeline using Jenkins. The pipeline automates source code checkout, static code analysis, Docker image creation, container vulnerability scanning, and application deployment.

## Technologies Used

* Jenkins
* Git & GitHub
* Docker
* SonarQube
* SonarScanner
* Trivy
* Nginx
* HTML

## Pipeline Workflow

```
GitHub Repository
        │
        ▼
Checkout Source Code
        │
        ▼
SonarQube Static Code Analysis
        │
        ▼
Build Docker Image
        │
        ▼
Trivy Image Vulnerability Scan
        │
        ▼
Deploy Docker Container
```

## Project Structure

```
.
├── Jenkinsfile
├── Dockerfile
├── sonar-project.properties
├── index.html
├── luffy.jpg
└── README.md
```

## Jenkins Pipeline Stages

### 1. Checkout

* Pulls the latest source code from the GitHub repository.

### 2. SonarQube Scan

* Performs static code analysis using SonarScanner.
* Sends the analysis report to the SonarQube server.

### 3. Build Docker Image

* Builds a Docker image using the provided Dockerfile.

### 4. Trivy Image Scan

* Scans the Docker image for known vulnerabilities.
* Displays detected vulnerabilities in the Jenkins console.

### 5. Deploy Container

* Removes any existing container.
* Deploys a new Docker container using the latest image.

## Prerequisites

Before running the pipeline, ensure the following are installed and configured:

* Jenkins
* Docker
* SonarQube Server
* SonarScanner (configured in Jenkins)
* Trivy
* Git

## Jenkins Configuration

### Tools

* SonarScanner

### Plugins

* Git
* Docker Pipeline
* SonarQube Scanner for Jenkins

### Credentials

* SonarQube Token
* Git Credentials (if using a private repository)

## Running the Pipeline

1. Create a Pipeline Job in Jenkins.
2. Connect the GitHub repository.
3. Configure SonarQube in Jenkins.
4. Ensure Docker and Trivy are installed on the Jenkins agent.
5. Run the pipeline.

## Security Scanning

Trivy scans the generated Docker image for vulnerabilities before deployment.

Example command:

```bash
trivy image nginx:latest
```

For production environments, you can fail the build when HIGH or CRITICAL vulnerabilities are detected:

```bash
trivy image --severity HIGH,CRITICAL --exit-code 1 nginx:latest
```

## Future Improvements

* Push Docker images to Docker Hub or Amazon ECR.
* Add OWASP Dependency-Check.
* Integrate Kubernetes deployment.
* Implement GitHub Webhooks.
* Send build notifications using Slack or Email.
* Archive Trivy scan reports as Jenkins artifacts.

## Author

**Vivek Patwal**

This project was created to demonstrate a DevOps CI/CD pipeline using Jenkins, SonarQube, Docker, and Trivy.
