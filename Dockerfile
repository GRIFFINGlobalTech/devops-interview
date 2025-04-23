# Use Python slim-buster as the base image
FROM python:3.10-slim-bullseye

# Set non-interactive mode for installation
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies, Terraform, and clean up
# RUN apt-get update && apt-get install -y \
#     bash \
#     curl \
#     gnupg \
#     software-properties-common \
#     unzip \
#     && curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg \
#     && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com focal main" | tee /etc/apt/sources.list.d/hashicorp.list \
#     && apt-get update && apt-get install -y terraform \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*

# Get latest version of pip
RUN pip install --upgrade pip

# copy requirements.txt to working directory, install & upgrade dependencies
COPY requirements.txt .
RUN --mount=type=cache,target=/root/.cache/pip pip install --upgrade -r requirements.txt

# The entry point for running the app
ENTRYPOINT ["python", "app.py"]
