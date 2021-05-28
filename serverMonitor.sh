#!/bin/bash
#Elasticsearch
STATUS="$(systemctl is-active elasticsearch.service)"
if [ "${STATUS}" != "active" ]; then
    echo $(date +'[%F %r]')" Elasticsearch was deaded." >> serverMonitor.log
    systemctl restart elasticsearch.service
    echo $(date +'[%F %r]')" Elasticsearch Status: ""$(systemctl is-active elasticsearch.service)" >> serverMonitor.log
fi

#Nginx
NSTATUS="$(systemctl is-active nginx.service)"
if [ "${NSTATUS}" != "active" ]; then
    echo $(date +'[%F %r]')" Nginx was deaded." >> serverMonitor.log
    systemctl restart nginx.service
    echo $(date +'[%F %r]')" Nginx Status: ""$(systemctl is-active nginx.service)" >> serverMonitor.log
fi

#PHP-fpm
PSTATUS="$(systemctl is-active php-fpm.service)"
if [ "${PSTATUS}" != "active" ]; then
    echo $(date +'[%F %r]')" PHP-fpm was deaded." >> serverMonitor.log
    systemctl restart php-fpm.service
    echo $(date +'[%F %r]')" PHP-fpm Status: ""$(systemctl is-active php-fpm.service)" >> serverMonitor.log
fi

#MariaDB
MSTATUS="$(systemctl is-active mariadb.service)"
if [ "${MSTATUS}" != "active" ]; then
    echo $(date +'[%F %r]')" MariaDB was deaded." >> serverMonitor.log
    systemctl restart mariadb.service
    echo $(date +'[%F %r]')" MariaDB Status: ""$(systemctl is-active mariadb.service)" >> serverMonitor.log
fi

#Redis
MSTATUS="$(systemctl is-active redis.service)"
if [ "${MSTATUS}" != "active" ]; then
    echo $(date +'[%F %r]')" Redis was deaded." >> serverMonitor.log
    systemctl restart redis.service
    echo $(date +'[%F %r]')" Redis Status: ""$(systemctl is-active redis.service)" >> serverMonitor.log
fi

