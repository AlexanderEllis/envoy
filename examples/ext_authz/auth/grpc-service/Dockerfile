FROM golang:alpine@sha256:af22f4a8328063faee4b28da1b1bbccccb6f3ccaa0a07006f9d3aa2da43d18c2 AS builder

RUN apk --no-cache add make
COPY . /app
RUN make -C /app/grpc-service

FROM alpine@sha256:bc41182d7ef5ffc53a40b044e725193bc10142a1243f395ee852a8d9730fc2ad

COPY --from=builder /app/grpc-service/server /app/server
CMD ["/app/server", "-users", "/etc/users.json"]
