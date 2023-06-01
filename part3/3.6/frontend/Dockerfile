FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN npm install &&\
    npm run build &&\
    npm install -g serve &&\
    useradd -m appuser &&\
    chown appuser .
    
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]