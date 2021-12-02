FROM golang:1.16
RUN mkdir -p /go/src/app
WORKDIR /go/src/app
COPY . /go/src/app
EXPOSE 10000
# RUN go mod init
RUN go build -o ricksrestapp
CMD ["./ricksrestapp"]
# buildah build -t ricksrestapp:1.0
# podman run -p 10000:10000 localhost/ricksrestapp:1.0
