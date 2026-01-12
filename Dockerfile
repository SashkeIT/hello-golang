FROM golang:1.22

WORKDIR /hello-golang

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /main main.go

CMD ["/main"]