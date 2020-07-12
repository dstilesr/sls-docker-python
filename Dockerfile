FROM python:3.8-slim-buster

WORKDIR /app

# Install nodejs and npm
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

# Install serverless and plugins
RUN npm install -g serverless
RUN npm install serverless-offline-python

# Copy files and python requirements
COPY ./ .

# RUN pip install --no-cache-dir -r requirements.txt

# Start function!
EXPOSE 3000
CMD ["serverless", "offline", "--host", "0.0.0.0"]
