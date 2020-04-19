docker-mosquitto
================

## Project Status

The puprose of this Container was to provide a configurable and decent mosquitto broker container.

## Run

    docker run -ti -p 1883:1883 -p 9001:9001 jonyr/mosquitto

Exposes Port 1883 (MQTT) 9001 (Websocket MQTT)
