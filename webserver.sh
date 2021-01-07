#!/bin/bash
#
# Simple script to control webServer
#
# Syntax: sudo ./webServer.sh [start|restart|stop]
#
# Original from Boubakr NOUR <n.boubakr@gmail.com>
# Distributed under the GPL version 3 license

case "$1" in
	"start")
		echo "Starting Web Server"
		sudo systemctl start nginx && sudo systemctl start mariadb && sudo systemctl start php-fpm
		;;
	"restart")
		echo "Restarting Web Server"
		sudo systemctl restart nginx && sudo systemctl restart mariadb && sudo systemctl restart php-fpm
		;;
	"stop")
		echo "Stopping Web Server"
		sudo systemctl stop nginx && sudo systemctl stop mariadb && sudo systemctl stop php-fpm
		;;
	* )
		echo "Usage: $0 [start|restart|stop]"
	;;
esac
