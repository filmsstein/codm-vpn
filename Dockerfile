FROM ubuntu:22.04
RUN apt-get update && apt-get install -y wireguard iptables
COPY wg0.conf /etc/wireguard/
CMD ["wg-quick", "up", "wg0"]
