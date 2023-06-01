FROM node:16-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm install &&\
    npm run build
    
    
FROM node:16-alpine

WORKDIR /usr/src/app

RUN adduser -D appuser && \
    chown appuser . &&\
    npm install -g serve
    
USER appuser

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

CMD ["serve", "-s", "-l", "5000", "build"]