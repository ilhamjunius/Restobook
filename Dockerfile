FROM golang:1.17
RUN unlink /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Singapore /etc/localtime
WORKDIR /app
COPY . ./
RUN go mod download
COPY *.go ./
RUN go build -o /project-restobook
CMD ["/project-restobook"]
