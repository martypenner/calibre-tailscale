# syntax=docker/dockerfile:1.4

FROM lscr.io/linuxserver/calibre

ENV DEBIAN_FRONTEND=noninteractive
RUN curl -fsSL https://tailscale.com/install.sh | sh
RUN apt-get update && apt-get install -y rsync

COPY --link /custom-services.d /custom-services.d

EXPOSE 8080
EXPOSE 8081

ENV ALL_PROXY=socks5://localhost:1055/
ENV HTTP_PROXY=http://localhost:1055/
ENV http_proxy=http://localhost:1055/
