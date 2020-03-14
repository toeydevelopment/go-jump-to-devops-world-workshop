FROM golang:1.13.3-alpine AS myBuilder

RUN apk update \ 
    && apk add alpine-sdk git \
    && rm -rf /var/cache/apk/*

RUN mkdir -p /api

WORKDIR /api

COPY go.mod .

COPY go.sum .

RUN go mod download

COPY . .

RUN go build -o ./main ./main.go

EXPOSE 8080

CMD ["./main"]

# best practice
# FROM alpine:latest

# RUN mkdir -p /api

# WORKDIR /api

# COPY --from=myBuilder /api/main .