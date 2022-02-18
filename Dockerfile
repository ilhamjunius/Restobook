FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY *.go ./
RUN go build -o /project-restobook

FROM alpine:latest
WORKDIR /final
COPY --from=build /go/project-restobook .
CMD ["./project-restobook"]