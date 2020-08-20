FROM python:3.8-slim-buster

WORKDIR /app

# Install nodejs and npm
RUN apt-get update \
    && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs

# Install serverless and plugins
RUN npm install -g serverless
RUN npm install serverless-offline-python

# Additional sls plugins
# RUN sls plugin install -n serverless-python-requirements
# RUN npm i -D serverless-dotenv-plugin

# Copy files and install python requirements
COPY ./ .
# RUN pip install --no-cache-dir -r requirements.txt

# Start function!
EXPOSE 3000
CMD ["serverless", "offline", "--host", "0.0.0.0", "--port", "3000"]
