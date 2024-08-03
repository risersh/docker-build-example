FROM golang:1.22

RUN apt-get update && apt-get install -y git

RUN go mod init gitub.com/risersh/docker-build-example
RUN go get -u github.com/golang/dep/cmd/dep

RUN git clone https://github.com/golang/dep.git

WORKDIR /dep

RUN for n in {1..15}; do echo $n; sleep 2; done