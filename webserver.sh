#!/bin/bash
#
# Simple script to control webServer
#
# Syntax: sudo ./webServer.sh [start|restart|stop]
#
# Boubakr NOUR <n.boubakr@gmail.com>
# Distributed under the GPL version 3 license

case "$1" in
	"start")
		#echo "Starting Web Server"
		sudo apachectl start && sudo /usr/local/mysql/support-files/mysql.server start && open -a "Google Chrome" 'http://localhost/'
		;;
	"restart")
		#echo "Restarting Web Server"
		sudo apachectl restart && sudo /usr/local/mysql/support-files/mysql.server restart
		;;
	"stop")
		#echo "Stopping Web Server"
		sudo apachectl stop && sudo /usr/local/mysql/support-files/mysql.server stop
		;;
	* )
		#echo "Usage: $0 [start|restart|stop]"
	;;
esac
