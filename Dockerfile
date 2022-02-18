FROM golang:1.17 AS build
WORKDIR /go
COPY *.go ./
RUN go build -o /project-restobook
 
FROM alpine:latest
WORKDIR /app
COPY --from=build /app .
CMD ["./project-restobook"]