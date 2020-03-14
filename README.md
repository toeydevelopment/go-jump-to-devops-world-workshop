# Go Api HealthCheck Workshop


Jump into DevOps World 5th
---

## Workshop Guide
- build an image
- push image to your dockerhub
- using rancher deploy your image

## How developer run it

```golang 
PORT USAGE 8080 
```

1. go mod download
2. go build -o ./main ./main.go
3. ./main 



## Artifact
1. Base Image golang:1.13.3-alpine
2. apk update
3. apk add alpine-sdk git
4. rm -rf /var/cache/apk/*