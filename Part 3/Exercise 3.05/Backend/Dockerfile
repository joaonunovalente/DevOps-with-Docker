FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY ./material-applications/example-backend .

RUN go build

RUN chmod +x ./server

RUN adduser appuser

USER appuser

CMD ["./server"]