FROM ubuntu:20.04

# Update and install dependencies
RUN apt update && apt-get install -y python3 python3-pip python3-venv

WORKDIR /app
COPY . .

# Create and activate virtual environment, then install pygbag
RUN python3 -m venv venv && . venv/bin/activate && pip install pygbag

EXPOSE 8000

CMD ["python3", "-m", "http.server", "8000", "--directory", "build/web"]
