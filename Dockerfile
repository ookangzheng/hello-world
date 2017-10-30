FROM nimmis/golang:latest
ADD . /go/src/github.com/ookangzheng/hello-world
RUN apt-get update && apt-get install -y git
RUN go get -u github.com/labstack/echo/...
RUN go install github.com/ookangzheng/hello-world
CMD ["/go/bin/hello-world"]
EXPOSE 3000