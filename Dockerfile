FROM nginx:stable

COPY ./sources_aliyun.list /etc/apt/sources.list
# COPY ./sources.list /etc/apt/sources.list

RUN apt update && \
    apt install -y certbot python-certbot-nginx -t stretch-backports && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*