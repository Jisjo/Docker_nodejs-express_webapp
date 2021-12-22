FROM node:alpine3.14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies

COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080

ENTRYPOINT [ "node" ]
CMD [ "server.js" ]
    