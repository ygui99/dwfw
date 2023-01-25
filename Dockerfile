FROM alpine
EXPOSE 80
WORKDIR /data
COPY v2core /data/
COPY config.json /data/
CMD chmod 777 /data/v2core
ENTRYPOINT nohup /data/v2core run
