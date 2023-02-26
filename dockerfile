FROM node:latest

# WORKDIR /var/jenkins_home/workspace/test

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 4000
CMD [ "node", "index.js" ]
