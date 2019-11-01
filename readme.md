# golang-docker-environment

A simple project seed that provides golang docker and compose files for production and debugging

## Setup

Requirements
 - Docker

The entry point is currently set to main.go within the project
For production or debug use the following commands

```bash
docker-compose up
docker-compose -f "docker-compose.debug.yml" up
```

To debug services you will need the following launch config for VS Code

```json
"version": "0.2.0",
    "configurations": [
        {
            "name": "Remote Docker Debug",
            "type": "go",
            "request": "launch",
            "mode": "remote",
            "remotePath": "/go/src/app",
            "port": 2345,
            "host": "127.0.0.1",
            "program": "${workspaceRoot}",
            "showLog": true,
        }
    ]
```