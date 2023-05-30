#!/bin/sh

## USAGE:

# The script takes two arguments: 
# - Git repository in the form of <username>/<repository>
# - Dockerhub repository in the form of <username>/<repository>

# Run in Linux environment: bash builder.sh <git-username>/<git-repository> <dockerhub-username>/<dockerhub-repository>

# Notice: You have to be logged in to Dockerhub for this to work. You might need sudo with the command.

git clone https://github.com/$1

git_repository=$(basename "$1")

cd $git_repository

docker build . -t $2

docker push $2