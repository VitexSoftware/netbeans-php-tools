# netbeans-php-tools
Debian package that contains tools for full value PHP development using netbeans

 * xdebug http://www.xdebug.org/
 * php Depend http://pdepend.org/
 * php Code Sniffer https://github.com/squizlabs/PHP_CodeSniffer
 * coding Standarts Fixer https://github.com/FriendsOfPhp/PHP-CS-Fixer
 * Mess Detector http://phpmd.org/
 * ApiGen https://github.com/apigen/apigen
 * Composer https://getcomposer.org/
 * PHPDoc http://www.phpdoc.de/
 * PHPUnit https://phpunit.de/
 * PHP Code Coverage 
 * PHP Copy/Paste Detector (PHPCPD) https://github.com/sebastianbergmann/phpcpd

#Installation:

1) NetBeans requires for some functionality Oracle version of JDK. There is 
   [Debian way ho to make well](http://www.webupd8.org/2014/03/how-to-install-oracle-java-8-in-debian.html).
   Next [Download netbeans](https://netbeans.org/downloads/) and install it. 

    gksudo sh ./netbeans-8.2-linux.sh

2)  Make your own debian package build using netbeans-php-tools.sh script
    or **install Debian package by [Vitex Software](https://www.vitexsoftware.cz/repos.php)**:

        wget -O - http://v.s.cz/info@vitexsoftware.cz.gpg.key|sudo apt-key add -
        echo deb http://v.s.cz/ stable main > /etc/apt/sources.list.d/ease.list
        aptitude update
        aptitude install netbeans-php-tools

   Package installation update files /etc/php5/apache2/php.ini , 
   /etc/php5/cli/php.ini by replacing by /usr/share/php5/php.ini-development
   and /etc/php5/mods-available/xdebug.ini by adding this lines:

    xdebug.remote_enable = 1
    xdebug.remote_handler=dbgp
    xdebug.remote_mode=req
    xdebug.remote_host=127.0.0.1
    xdebug.remote_port=9000
    xdebug.file_link_format = "netbeans://%f?line=%l"
    xdebug.profiler_enable = 0

   This may be ok for fresh system. In other cases Please review and control 
   this changes for your current setup. 
   If installed Nginx,apache or lighttpd package we restart your webserver 
   automatically. In other cases please restart your webserver by hand.

3) in firefox open [about:config](about:config) and if not exists create new boolean key
   network.protocol-handler.expose.netbeans with false value.
   Then if you first time click on netbeans:// link in xdebug error message
   browser ask you for program for opening this type of adresses. Please choose
   **/usr/bin/nbxdebug**

4) In first time setup use Menu/Tools/Options/Import to get options from 
   file /usr/share/doc/netbeans-php-tools/netbeans-php-config.zip 
   This set up PHP and Color schemes.

   In allready configured netbeans (with PHP support module installed) open 
   Tools/Options/PHP menu and try to click on all [SEARCH] buttons to locate 
   tools on filesystem. If there is no search button installed tool is always 
   located in /usr/bin.

6) Happy coding, debugging a documenting!
 

![Tools in action](https://raw.githubusercontent.com/Vitexus/netbeans-php-tools/master/netbeans-php-tools.png)

