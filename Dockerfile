FROM golang:1.11

# install dep
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

# set working directory
RUN mkdir -p /go/src/project
WORKDIR /go/src/project

# add deps
ADD Gopkg.toml Gopkg.toml
ADD Gopkg.lock Gopkg.lock

# install packages, cached by docker
RUN dep ensure --vendor-only -v

# build binary and run bunary
CMD ["./scripts/go-build-run.sh"]

