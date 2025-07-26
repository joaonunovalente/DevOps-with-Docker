# Start from the alpine image that is smaller but no fancy tools
FROM ubuntu:24.04 

# Update the package list and upgrade installed packages
RUN apt-get update && apt-get upgrade -y

# Install the curl package
RUN apt-get install curl -y

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the script.sh file from this directory to /usr/src/app/ creating /usr/src/app/script.sh
COPY script.sh .

# When running docker run the command will be ./script.sh
CMD ./script.sh