
#build stage
FROM base:latest AS builder
RUN go build -o /service_production ./...

#final stage
FROM alpine:latest
RUN apk --no-cache add ca-certificates
COPY --from=builder /service_production /
CMD ["/service_production"]
LABEL Name=go Version=0.0.1
