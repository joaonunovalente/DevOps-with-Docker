#!/bin/bash
# Exit immediately if a command fails
set -e

# --- Check that two arguments are provided ---
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <github-repo> <dockerhub-repo>"
  echo "Example: $0 mluukkai/express_app mluukkai/testing"
  exit 1
fi

# --- Assign arguments to variables ---
GITHUB_REPO=$1
DOCKERHUB_REPO=$2
REPO_NAME=$(basename "$GITHUB_REPO")

# --- Login to Docker Hub ---
if [ -z "$DOCKER_USER" ] || [ -z "$DOCKER_PWD" ]; then
  echo "❌ DOCKER_USER and DOCKER_PWD environment variables must be set."
  exit 1
fi

echo "🔐 Logging in to Docker Hub as $DOCKER_USER ..."
echo "$DOCKER_PWD" | docker login -u "$DOCKER_USER" --password-stdin

# --- Clone the GitHub repo ---
echo "🚀 Cloning repository https://github.com/$GITHUB_REPO.git ..."
git clone "https://github.com/$GITHUB_REPO.git"

# --- Navigate into the repo folder ---
cd "$REPO_NAME"

# --- Build the Docker image ---
echo "🐳 Building Docker image for $DOCKERHUB_REPO ..."
docker build -t "$DOCKERHUB_REPO" .

# --- Push to Docker Hub ---
echo "📤 Pushing image to Docker Hub ..."
docker push "$DOCKERHUB_REPO"

echo "✅ Done! Image successfully pushed to Docker Hub: $DOCKERHUB_REPO"
