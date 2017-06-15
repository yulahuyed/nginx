#!/bin/sh

# setup directory for data
mkdir -p /data
chown -R nginx:0 /data
chmod g+w -R /data
chown -R nginx:0 /usr
chown -R nginx:0 /var

chgrp -R 0 /usr
chmod -R g+rw /usr
find /usr -type d -exec chmod g+x {} +

chgrp -R 0 /var
chmod -R g+rw /var
find /var -type d -exec chmod g+x {} +

chmod -R g+rw /run
chmod -R g+rw /etc/nginx/conf.d/
