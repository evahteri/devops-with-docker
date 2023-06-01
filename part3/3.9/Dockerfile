FROM golang:1.16-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy && \
    CGO_ENABLED=0 GOOS=linux go build -o server .

RUN adduser -D appuser

FROM scratch

COPY --from=build-stage /etc/passwd /etc/passwd

USER appuser

COPY --from=build-stage /usr/src/app/server /server

ENTRYPOINT ["/server"]