FROM debian:sid
WORKDIR /data
COPY v2core /data/
COPY config.json /data/
RUN chmod 777 /data/v2core \
&& apt update -y \
&& apt install -y nginx
COPY nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT systemctl start nginx \
&& /data/v2core run
