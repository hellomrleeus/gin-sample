#! /bin/bash

log_dir="./logs"
if [ ! -d "$log_dir" ]; then
	mkdir logs
fi

export MYSQL_HOST=my-pxc
export MYSQL_PORT=3306
export MYSQL_DATABASE=demo
export MYSQL_USER=root
export MYSQL_PASSWORD=li123456

exec ./gin-sample -logtostderr -v 2