FROM docker.io/jlesage/firefox:v26.09.1

RUN apk add --no-cache netbird

COPY 30-netbird /etc/cont-init.d/30-netbird
ENV NETBIRD_SETUP_KEY=
ENV NETBIRD_MANAGEMENT_URL=
