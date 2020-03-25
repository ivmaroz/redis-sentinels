#!/bin/bash

echo "" > /etc/sentinel.conf

for MASTER in $MASTERS
do
    echo "sentinel monitor ${MASTER} ${HOST_IP} ${REDIS_PORT} 1" >> /etc/sentinel.conf
    echo "sentinel down-after-milliseconds ${MASTER} 3000" >> /etc/sentinel.conf
    echo "sentinel failover-timeout ${MASTER} 10000" >> /etc/sentinel.conf
    echo "sentinel parallel-syncs ${MASTER} 1" >> /etc/sentinel.conf
    echo "" >> /etc/sentinel.conf
done

chmod a+w /etc/sentinel.conf

redis-server /etc/sentinel.conf --sentinel
