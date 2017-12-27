#!/bin/sh

echo resolver $(awk 'BEGIN{ORS=" "} $1=="nameserver" {print $2}' /etc/resolv.conf) ";" > /etc/nginx/conf/resolvers.conf

hostname=$(hostname)
sed -i -- "s/server_name localhost;/server_name $hostname;/g" /etc/nginx/conf.d/default.conf
sed -i -- "s/listen 1080/listen $PORT/g" /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
