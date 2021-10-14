FROM golang

LABEL MAINTAINER="tamaldatta@outlook.de"

ADD . /go/src/github.com/TamalTanuDatta/netflowGenerator

RUN go get github.com/Sirupsen/logrus \
    && go get github.com/jessevdk/go-flags \
    && go install github.com/TamalTanuDatta/netflowGenerator

ENTRYPOINT ["/go/bin/nflow-generator"]
