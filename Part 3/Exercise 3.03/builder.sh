#!/bin/bash

# Exit immediately if a command fails
set -e

# Check that two arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <github-repo> <dockerhub-repo>"
  echo "Example: $0 mluukkai/express_app mluukkai/testing"
  exit 1
fi

# Assign arguments to variables
GITHUB_REPO=$1
DOCKERHUB_REPO=$2

# Extract repo name (e.g., express_app from mluukkai/express_app)
REPO_NAME=$(basename "$GITHUB_REPO")

# Clone the GitHub repo
echo "🚀 Cloning repository https://github.com/$GITHUB_REPO ..."
git clone "https://github.com/$GITHUB_REPO.git"

# Navigate into the repo folder
cd "$REPO_NAME"

# Build the Docker image
echo "🐳 Building Docker image for $DOCKERHUB_REPO ..."
docker build -t "$DOCKERHUB_REPO" .

# Push to Docker Hub
echo "📤 Pushing image to Docker Hub ..."
docker push "$DOCKERHUB_REPO"

echo "✅ Done! Image successfully pushed to Docker Hub: $DOCKERHUB_REPO"
