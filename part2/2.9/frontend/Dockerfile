FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm run build

RUN npm install -g serve

RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]