# Serverless Docker Python

## Contents
* [About](#about)
* [Usage Instructions](#usage-instructions)
  * [Set up a project](#set-up-a-project)
  * [Run with Docker](#run-with-docker)
  * [Run with docker-compose](#run-with-docker-compose)
* [Built With](#built-with)

## About
This project is a docker template to locally run and test functions created using the
serverless framework. The purpose of this template is to allow for an easy
local testing of aws lambda functions before deployment, and as such it should
be used only *LOCALLY*.

## Usage Instructions

### Set up a Project
To use this template, do the following:
- Clone or download the repository
- Copy all python files and any other files you may need into this directory.
- Update the `serverless.yml` file with your settings.
- If necessary, add commands to install sls plugins and python packages to the
`Dockerfile`.
Now you should be ready to run with `Docker` or `docker-compose`!

### Run with Docker
Once your local directory is all setup you must first create your docker
image with a name and tag of your choice using:
```bash
docker build -t image-name:tag .
```
And then run the image with:
```bash
docker run -p 3000:3000 image-name:tag
```
Now you should be all set up with your function listening on `0.0.0.0:3000`.

### Run with docker-compose
You can also run the function with `docker-compose` with a single command:
```bash
docker-compose up
```

## Built With
- [Docker](https://www.docker.com/)
- [Serverless Framework](https://www.serverless.com/)
- [Python](https://www.python.org/)

[Back to top](#serverless-docker-python)
