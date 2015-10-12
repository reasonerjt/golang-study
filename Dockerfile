FROM golang:1.5
COPY . /go/src/github.com/reasonerjt/golang-study
WORKDIR /go/src/github.com/reasonerjt/golang-study

ENV GOPATH /go/src/github.com/reasonerjt/golang-study/Godeps/_workspace:$GOPATH
RUN CGO_ENABLED=0 go install -v -a -tags netgo 

EXPOSE 8111
EXPOSE 8080
EXPOSE 8110
CMD ["golang-study"]

