FROM node:16-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm install &&\
    npm run build &&\
    npm install -g serve &&\
    adduser -D appuser &&\
    chown appuser .
    
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]