FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY ./material-applications/example-backend .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

RUN chmod +x ./server

CMD ["./server"]