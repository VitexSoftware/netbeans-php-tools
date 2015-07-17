#
# Regular cron jobs for the netbeans-php-support package
#
0 4	* * *	root	[ -x /usr/bin/netbeans-php-support_maintenance ] && /usr/bin/netbeans-php-support_maintenance
