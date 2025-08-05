# Start from the alpine image that is smaller but no fancy tools
FROM ubuntu:24.04 

# Update the package list and upgrade installed packages
RUN apt-get update && apt-get upgrade -y

# Install the curl package
RUN apt-get install curl -y

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the script.sh file and set execute permissions
COPY script.sh .

RUN chmod +x script.sh

# When running docker run the command will be ./script.sh
ENTRYPOINT [ "./script.sh" ]

# Define a default argument
CMD [ "helsinki.fi" ]