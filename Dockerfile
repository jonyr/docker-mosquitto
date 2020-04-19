FROM alpine:3.11.5

LABEL Maintainer="Juan Rabadan <juan@arzion.com>" \
      Description="Ligthweight Mosquitto MQTT server based on Alpine Linux"

RUN apk update && apk upgrade && \
    apk --no-cache add mosquitto mosquitto-clients && \
    mkdir -p /mqtt/config /mqtt/data /mqtt/log

COPY config /mqtt/config

RUN chown -R mosquitto:mosquitto /mqtt

VOLUME ["/mqtt/config", "/mqtt/data", "/mqtt/log"]

# Expose MQTT port
EXPOSE 1883 9001

CMD ["/usr/sbin/mosquitto", "-c", "/mqtt/config/mosquitto.conf"]
