FROM node:latest

# System deps
RUN apt-get update && apt-get install -y \
	curl \
	apt-transport-https

# Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update \
 && apt-get install -y yarn

# Webpack globally
RUN npm install -g webpack
