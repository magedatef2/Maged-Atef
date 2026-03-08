FROM alpine:latest
RUN RUN apk add --no-cache v2ray
COPY config.json /etc/v2ray/config.json
CMD ["v2ray", "-config", "/etc/v2ray/config.json"]
