# Docker Gui GPT4All

## Features

- Easy deployment of GPT-4 All application GUI in a Docker container.
- Use this with [Dogma GitHub Repository](https://github.com/williamblair333/dogma) for convenience

## Prerequisites

- Docker
- Docker Compose
- X11 Server for GUI

## Directory Structure

docker-gui-gpt4all/  
├── Dockerfile: Defines the Docker container including the necessary dependencies.  
├── docker-compose.yml: Docker Compose configuration file.  
├── gpt4all-installer-linux.run: GPT-4 All installer for Linux.  
└── docs/: LocalDocs for training go here  
└── models/: Model files , set this in the GUI  


## Getting Started

1. **Clone this repository to your local machine**:
    ```bash
    git clone https://github.com/yourusername/docker-gui-gpt4all.git
    cd docker-gui-gpt4all
    wget https://gpt4all.io/installers/gpt4all-installer-linux.run
    ```
2. **Build and start the Docker container**:
    ```bash
    docker-compose up --build
    ```

## Notes, Security

- Make sure to handle X11 permissions carefully when granting and revoking access.

## Notes, General

- For better performance, configure your GPU settings appropriately.

