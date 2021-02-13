FROM python:3.8-slim-buster

WORKDIR /app

# Install nodejs and npm
RUN apt-get update \
    && apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g serverless

# Copy files and install python requirements
COPY ./ .

# Additional sls plugins
RUN npm install --save-dev serverless-offline
# RUN pip install --no-cache-dir -r requirements.txt
# RUN sls plugin install -n serverless-python-requirements
# RUN npm i -D serverless-dotenv-plugin

# Start function!
EXPOSE 3000
CMD ["serverless", "offline", "--host", "0.0.0.0", "--port", "3000"]
