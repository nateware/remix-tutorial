FROM node:20-alpine

WORKDIR /app

COPY package.json /app
RUN npm install

COPY ./ /app
RUN npm run build
RUN npm run start