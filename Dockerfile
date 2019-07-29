FROM node:12.6.0-alpine

# create destination directory
RUN mkdir -p /usr/src/app/node_modules
WORKDIR /usr/src/app

# get node packages
COPY package*.json ./
RUN npm install

# copy the app, note .dockerignore
COPY . .

# expose 3000 on container
EXPOSE 3000

# start the app
CMD [ "npm", "start" ]