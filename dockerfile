#  Dockerfile for Frontend

FROM node:14-slim

# Create App Directory
WORKDIR /usr/src/app

# Install Dependencies
COPY ./package.json ./

RUN npm install --silent

# Copy app source code
COPY . .

# Exports
EXPOSE 3000

CMD ["npm","start"]