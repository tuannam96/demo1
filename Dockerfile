FROM hub.paas.vn/public/golang:1.18.3
WORKDIR /app

EXPOSE 6969
COPY . .
COPY go.mod .
COPY go.sum .
RUN go mod download
RUN go mod vendor
RUN CGO_ENABLED=1 GOOS=linux GOARCH=amd64 go build -gcflags="-N -l" -o /bin/go-getting-started ./*.go
CMD [ "/bin/go-getting-started" ]
