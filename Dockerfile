FROM node:lts-alpine3.10

WORKDIR /usr/src/app

COPY package.json ./
COPY src ./src

RUN yarn install

EXPOSE 3000
CMD ["node", "./src/server.js"]