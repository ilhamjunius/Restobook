FROM golang:latest
WORKDIR /go
COPY app.go .
RUN go build -o /project-restobook
 
FROM alpine:latest
WORKDIR /app
COPY --from=build /go/project-restobook .
CMD ["./project-restobook"]