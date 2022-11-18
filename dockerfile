FROM node:16.15.0

# Create App Directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied

COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Copy app source code
COPY --chown=node:node . .

# Container PORT
EXPOSE 3000

RUN chown -R node:node /usr/src/app

USER node

## Launch the wait tool and then your application
CMD ["npm","start"]