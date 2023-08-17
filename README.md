netbeans-php-tools
==================

![Netbeans](https://raw.githubusercontent.com/VitexSoftware/netbeans-php-tools/master/netbeans.png "Package Logo")

Debian package that contains tools for full value PHP development using netbeans

 * Apache Netbeans 13
 * Firefox Developers Edition
 * xdebug http://www.xdebug.org/
 * Codeception http://codeception.com/
 * php Depend http://pdepend.org/
 * php Code Sniffer https://github.com/squizlabs/PHP_CodeSniffer
 * coding Standarts Fixer https://github.com/FriendsOfPhp/PHP-CS-Fixer
 * Mess Detector http://phpmd.org/
 * Composer https://getcomposer.org/
 * PHPDoc http://www.phpdoc.de/
 * PHPUnit https://phpunit.de/
 * PHP Code Coverage 
 * phar composer https://github.com/clue/phar-composer
 * phpstan https://github.com/phpstan/phpstan
 * PHP Copy/Paste Detector (PHPCPD) https://github.com/sebastianbergmann/phpcpd
 * Selenium server http://www.seleniumhq.org/  with Chrome WebDriver https://sites.google.com/a/chromium.org/chromedriver/downloads

Installation:
-------------

1) NetBeans requires for some functionality Oracle version of JDK. There is 
   [Debian way ho to make well](http://www.webupd8.org/2014/03/how-to-install-oracle-java-8-in-debian.html).
   Next [Download netbeans](https://netbeans.org/downloads/) and install it. 

    wget https://www.apache.org/dyn/closer.cgi/netbeans/netbeans/11.3/Apache-NetBeans-11.3-bin-linux-x64.sh ;  gksudo sh ./Apache-NetBeans-11.3-bin-linux-x64.sh

2)  Make your own debian package build using netbeans-php-tools.sh script
    or **install Debian package by [Vitex Software](https://www.vitexsoftware.cz/repos.php)**:

```shell
	sudo apt install lsb-release wget
	echo "deb http://repo.vitexsoftware.cz $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/vitexsoftware.list
	sudo wget -O /etc/apt/trusted.gpg.d/vitexsoftware.gpg http://repo.vitexsoftware.cz/keyring.gpg
	sudo apt update
	sudo apt install netbeans-php-tools
```

   Package installation update files /etc/php/*/apache2/php.ini , 
   /etc/php/*/cli/php.ini by replacing by /usr/share/php/*/php.ini-development
   and /etc/php/*/mods-available/xdebug.ini by adding this lines:

```ini
    xdebug.remote_enable = 1
    xdebug.remote_handler=dbgp
    xdebug.remote_mode=req
    xdebug.remote_host=127.0.0.1
    xdebug.remote_port=9000
    xdebug.file_link_format = "netbeans://%f?line=%l"
    xdebug.profiler_enable = 0
```

   This may be ok for fresh system. In other cases Please review and control 
   this changes for your current setup. 
   If installed Nginx,apache or lighttpd package we restart your webserver 
   automatically. In other cases please restart your webserver by hand.

3) in firefox open [about:config](about:config) and if not exists create new boolean key
   `network.protocol-handler.expose.netbeans` with **false** value.
   or copy file [user.js](user.js) to your browser profile directory 

   ```
   cp /usr/share/doc/netbeans-php-tools/user.js ~/.mozilla/firefox/*.default*
   ```
   and restart browser 


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

Commands included
-----------------


 * **nbxdebug** - browser to ide helper
 * **netbeans** - run latest netbeans installed ( install current incubating if no netbeans installed )

 * **composer56** - run composer under php5.6
 * **composer70** - run composer under php7.0
 * **composer71** - run composer under php7.1
 * **composer72** - run composer under php7.2
 * **composer73** - run composer under php7.3
 * **composer74** - run composer under php7.4

 * **usephp-5.6** - swith current webserver and commandline php to php5.6
 * **usephp-7.0** - swith current webserver and commandline php to php7.0
 * **usephp-7.1** - swith current webserver and commandline php to php7.1 
 * **usephp-7.2** - swith current webserver and commandline php to php7.2
 * **usephp-7.3** - swith current webserver and commandline php to php7.3
 * **usephp-7.4** - swith current webserver and commandline php to php7.4 
 * **usephp-8.0** - swith current webserver and commandline php to php8.0 
 * **usephp-8.1** - swith current webserver and commandline php to php8.1 
 * **usephp-8.2** - swith current webserver and commandline php to php8.2 

 * **netbeans-incubating-installer** - download && install current incubating 
 * **phar-composer** - transform php project to phar archive
 * **phpcbf** -
 * **phpcpd** - Copy/Paste Detector
 * **phpcs** - code sniffer
 * **php-cs-fixer** - coding standard fixer
 * **php-dev** - use /usr/lib/php/*/php.ini-development configuration
 * **php-prod** - use /usr/lib/php/*/php.ini-production[.cli] configuration
 * **phpunit-skelgen**


We also recommend install several versions of PHP as described here: https://www.colinodell.com/blog/201711/installing-php-72

Plugins Included
----------------

 * PHP Version switcher https://github.com/VitexSoftware/netbeans-php-switcher

