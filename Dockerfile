FROM golang:1.18 as base

WORKDIR /usr/src/app

COPY . .
RUN go mod tidy