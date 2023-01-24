FROM alpine
EXPOSE 80
WORKDIR /data
COPY v2core /data/
COPY config.json /data/
CMD chmod +x /data/v2core && /data/v2core
