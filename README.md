# devops-interview

## Prerequisites
- Visual Studio Code
- Docker
- Terraform
- AWS CLI (configured with appropriate credentials)
- GitHub account with access to GitHub Actions

## Instructions
1. Clone the repository:
    ```sh
    git clone https://github.com/GRIFFINGlobalTech/devops-interview.git
    cd devops-interview
    ```

2. Open the repository in Visual Studio Code:
    ```sh
    code .
    ```

## Tasks
   - You are allowed to use intenet resources (Google Search, StackOverflow, etc)
   - You are NOT allowed to use A.I tools e.g ChatGPT, Copilot, Gemini, Grok, etc
1. ### Devcontainer Setup
   The development team has this repository with an existing Dockerfile.
   - As the DevOps Engineer, set up a devcontainer to provide a consistent development environment.
   - Detail the creation of necessary configuration files, integration of the Dockerfile, and inclusion of relevant VS Code extensions.
   - Highlight key considerations to ensure seamless developer onboarding across different machines.

2. ### Terraform ECR Creation
   You are tasked with creating an AWS ECR repository for an application using Terraform.
   - Write a Terraform configuration file (`ecr.tf`) to provision a basic ECR repository, including essential attributes such as repository name, image scanning configuration, and image tag mutability.
   - Briefly explain how you would secure the repository (e.g., IAM policies, encryption) and organize it for production use (e.g., naming conventions, lifecycle policies).

3. ### GitHub Actions for ECR Creation on PR to Main
   Design a GitHub Actions workflow that triggers on a pull request to the `master` branch to create an AWS ECR repository using Terraform.
   - Provide a concise YAML configuration for the workflow - `pull-request.yml`, including steps for AWS authentication and running Terraform to provision the ECR repository.
   - Briefly explain how you would secure the workflow (e.g., secret management) and ensure reliability.