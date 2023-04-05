# Descriptions #

This is document for setup Docker for PHP dev(Laravel performance)

# Structure #
###  ###
* PHP 8.1 default
* PHP 8.1 for localhost
* PHP 8.0 for test
* PHP 7.4 for test
* MYSQL 8.0
* Nodejs 16.x
* NGINX latest version

# PHP #
###  ###
* XDEBUG PORT 9002
* DOCUMENT ROOT:  /var/www/html
* WORKING DIR:  /var/www/html
* CODE COMPUTER DIR:  ./www
* PHP default: [https://localhost/](https://localhost/)
* PHP 7.4: [https://p0704.php-dev.com/](https://p0704.php-dev.com/)
* PHP 8.0: [https://p0800.php-dev.com/](https://p0800.php-dev.com/)

# MYSQL #
###  ###
* MYSQL_HOST: php-dev-mysql
* MYSQL_PORT: 3306
* MYSQL_USER: root
* MYSQL_PASSWORD: 1234567
* MYSQL COMPUTER DIR: ./localsql
* MYSQL URL: [https://pma.php-dev.com/](https://pma.php-dev.com/)

# SETUP/DOC #
[https://docs.docker.com/get-started/](https://docs.docker.com/get-started/)
###  ###
* Edit file hosts: 127.0.0.1 php-dev.com
* Edit file hosts: 127.0.0.1 pma.php-dev.com
* Edit file hosts: 127.0.0.1 p0704.php-dev.com
* Edit file hosts: 127.0.0.1 p0800.php-dev.com
* Create network: docker network create php_dev_network
* Create/update docker: docker-compose up -d --force-recreate --build --remove-orphans --always-recreate-deps
* SSH to php localhost: docker exec -it php-dev-main /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"
* SSH to php dev: docker exec -it php-dev /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"
* SSH to php p0704: docker exec -it p0704 /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"
* SSH to php p0800: docker exec -it p0800 /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"
* SSH to php extra: docker exec -it [REPLACE WITH NAME OF CONTAINER] /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"
