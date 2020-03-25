########################################################################################################################

FROM redis:5


RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gettext-base \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

COPY redis.conf /etc/redis.conf

USER root

COPY start-redis.sh    /start-redis.sh
COPY start-sentinel.sh /start-sentinel.sh

########################################################################################################################
