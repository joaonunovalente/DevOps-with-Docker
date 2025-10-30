FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY ./material-applications/example-backend .

RUN go build && \
    chmod +x ./server && \
    adduser appuser && \
    rm -rf /go/pkg /root/.cache /usr/src/app/*.go /usr/src/app/go.* 

USER appuser

CMD ["./server"]