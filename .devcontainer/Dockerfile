# Use an official Ruby runtime as a parent image
FROM ruby:3.1

# Install Node.js and Yarn for JavaScript dependencies
RUN apt-get update && apt-get install -y curl gnupg2 build-essential && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g yarn

# Install other common dependencies
RUN apt-get install -y libpq-dev

# Create app directory
WORKDIR /workspace

# Install Ruby on Rails dependencies
RUN gem install rails bundler

# Install Neo4j
# RUN gem 'neo4j', '~> 10.0'

# Expose the ports for Rails
EXPOSE 3000

# Start Neo4j when the container starts
CMD /bin/bash
