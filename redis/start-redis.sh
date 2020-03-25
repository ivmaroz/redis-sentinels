#!/bin/bash

TEMPLATE=/etc/redis.conf
CONF=/etc/redis.conf

(envsubst "`printf '${%s} ' $(sh -c \"env|cut -d'=' -f1\")`" < "${TEMPLATE}" > "${CONF}")
cat "${TEMPLATE}" | envsubst "`printf '${%s} ' $(sh -c \"env|cut -d'=' -f1\")`"  > "${CONF}"

redis-server /etc/redis.conf
