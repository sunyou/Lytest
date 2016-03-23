#!/bin/bash

if [ "$MYSQL_SERVICE_DNS_NAME" ]; then
  TEMP_MYSQL=`echo $MYSQL_SERVICE_DNS_NAME |sed "s/-/_/g" |tr [a-z] [A-Z]`_SERVICE_HOST
  eval MYSQL_SERVICE_NAME=\${$TEMP_MYSQL}
fi


catalina.sh run