netbeans-php-tools
==================

![Netbeans](https://raw.githubusercontent.com/VitexSoftware/netbeans-php-tools/master/netbeans.png "Package Logo")

Debian package that contains tools for full value PHP development using netbeans

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

Installation
------------

Grab and install Current NetBeans https://netbeans.apache.org/front/main/download/

```shell
sudo apt install lsb-release wget
echo "deb http://repo.vitexsoftware.com $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/vitexsoftware.list
sudo wget -O /etc/apt/trusted.gpg.d/vitexsoftware.gpg http://repo.vitexsoftware.com/keyring.gpg
sudo apt update
sudo apt install netbeans-php-tools
```

   Package installation update files /etc/php/*/apache2/php.ini , 
   /etc/php/*/cli/php.ini by replacing by /usr/share/php/*/php.ini-development
   and /etc/php/*/mods-available/xdebug.ini by adding this lines:

```ini
zend_extension=xdebug.so
xdebug.mode = debug,develop,coverage
xdebug.client_host=localhost
xdebug.client_port=9003
xdebug.idekey="netbeans-xdebug"
xdebug.file_link_format = "netbeans://%f?line=%l"
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
   and restart browser.


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



xdg-mime install /usr/share/mime/application/x-netbeans.xml
xdg-mime default nbxdebug.desktop x-scheme-handler/netbeans
