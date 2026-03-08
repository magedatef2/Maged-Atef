FROM alpine:latest
RUN apk add --no-cache v2ray
# إضافة إعدادات لتحسين أداء الشبكة داخل الحاوية
ENV V2RAY_VMESS_AEAD_FORCED=false
COPY config.json /etc/v2ray/config.json
CMD ["v2ray", "-config", "/etc/v2ray/config.json"]
