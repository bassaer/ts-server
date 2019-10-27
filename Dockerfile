FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./
COPY yarn.lock ./

RUN apt-get update && apt-get install -y yarn
RUN yarn install && yarn build

COPY . .

EXPOSE 8080

CMD [ "node", "dist/index.js"]