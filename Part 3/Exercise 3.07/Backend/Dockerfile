FROM golang:alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY ./material-applications/example-backend .

RUN go build && \
    chmod +x ./server && \
    adduser -D appuser && \
    chown appuser . && \
    rm -rf /go/pkg /root/.cache /usr/src/app/*.go /usr/src/app/go.* 

USER appuser

CMD ["./server"]