FROM golang:alpine AS builder-stage

EXPOSE 8080

WORKDIR /usr/src/app

COPY ./material-applications/example-backend .

RUN go build -o /bin

FROM scratch

COPY --from=builder-stage /bin /bin

EXPOSE 8080

ENTRYPOINT ["./bin/server"]