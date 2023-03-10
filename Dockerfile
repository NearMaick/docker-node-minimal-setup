FROM node:lts-alpine

WORKDIR /usr/app

COPY package.json ./

RUN npm install -g node-dev

COPY . .

EXPOSE 3333

CMD ["npm", "run", "dev"]