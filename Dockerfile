FROM resin/rpi-raspbian

EXPOSE 8118

RUN apt-get update && \
    apt-get install privoxy && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY config /etc/privoxy/config

CMD ["/usr/sbin/privoxy", "--no-daemon", "/etc/privoxy/config"]

