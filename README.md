# Firefox Netbird container

[![Build](https://github.com/manics/firefox-netbird/actions/workflows/build.yml/badge.svg)](https://github.com/manics/firefox-netbird/actions/workflows/build.yml)

A Firefox container: https://hub.docker.com/r/jlesage/firefox (https://github.com/jlesage/docker-firefox) with the [Netbird](https://netbird.io/) client.

Use this to connect to a website over Netbird without having to install Netbird on your own computer.

## Usage

```sh
podman run --name firefox-netbird -it --rm -p127.0.0.1:5800:5800 \
  --device /dev/net/tun:/dev/net/tun --cap-add=NET_ADMIN --cap-add=NET_RAW \
  -e NETBIRD_SETUP_KEY=<netbird-setup-key> \
  ghcr.io/manics/firefox-netbird
```

and open http://127.0.0.1:5800 in your web browser.

Pass `-e NETBIRD_MANAGEMENT_URL=<https://netbird-host.example.org>` if you are self-hosting Netbird.
