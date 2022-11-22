FROM golang:latest

RUN mkdir -p /src

WORKDIR /src

COPY main.go /src

RUN go mod init test

RUN go build -o app

CMD ["./app"]
