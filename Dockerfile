##
## Build
##
FROM golang:1.17 AS build
WORKDIR /app
COPY . ./
RUN go mod download
COPY *.go ./
RUN go build -o /project-restobook

##
## Deploy
##
FROM nginx
RUN unlink /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Singapore /etc/localtime
WORKDIR /app
COPY --from=build /project-restobook /project-restobook
EXPOSE 8000
ENTRYPOINT ["/project-restobook"]