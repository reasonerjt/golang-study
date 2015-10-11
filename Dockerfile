FROM golang:1.4
COPY . /go/src/github.com/reasonerjt/golang-study
WORKDIR /go/src/github.com/reasonerjt/golang-study

ENV GOPATH /go/src/github.com/reasonerjt/golang-study/Godeps/_workspace:$GOPATH
RUN CGO_ENABLED=0 go install -v -a -tags netgo 

EXPOSE 8080
CMD ["golang-study"]

