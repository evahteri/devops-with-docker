FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm run build

RUN npm install -g serve

RUN npm run build

RUN useradd -m appuser

RUN chown appuser .

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]