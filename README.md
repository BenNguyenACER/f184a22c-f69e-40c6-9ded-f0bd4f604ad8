
A basic LAMP stack environment built using Docker Compose. It consists of the following:

* PHP
* Apache
* MySQL
* Redis
php version as needed:
* 7.4.x

Run Instruction:

#Please ensure docker is running - confirm docker is currently running
#from command line: docker run hello-world

git clone https://github.com/BenNguyenACER/f184a22c-f69e-40c6-9ded-f0bd4f604ad8.git
cd f184a22c-f69e-40c6-9ded-f0bd4f604ad8
./server.sh help ==> to check the usage.
./server.sh build ==> Build or rebuild services for the very first time
./server.sh start ==> start up Lamp Stack
./server.sh status
./server.sh iamges

LAMP stack is now ready!! You can access it via `http://localhost`.
##  Configuration and Usage
### General Information
This Docker Stack is build for local development.

Please open any Internet browser and paste the following:
http://localhost/

to test the simple apps
http://localhost/acer_app/

./server.sh stop ==> shut down Lamp Stack
./server.sh status
./server.sh iamges

To see docker-compose version
./server.sh version


### Configuration
This package comes with default configuration options. You can modify them by creating `.env` file in your root directory.
---
#### PHP
---
_**PHPVERSION**_
Is used to specify which PHP Version you want to use. Defaults always to latest PHP Version.

_**PHP_INI**_
Define your custom `php.ini` modification to meet your requirments.
---
#### Apache
---
_**DOCUMENT_ROOT**_

It is a document root for Apache server. The default value for this is `./src`. All your sites will go here and will be synced automatically.
_**VHOSTS_DIR**_
This is for virtual hosts. The default value for this is `./src/config/vhosts`. You can place your virtual hosts conf files here.
> Make sure you add an entry to your system's `hosts` file for each virtual host.
_**APACHE_LOG_DIR**_

This will be used to store Apache logs. The default value for this is `/src/logs/apache2`.
---
#### Database
---
_**DATABASE**_
Define which MySQL or MariaDB Version you would like to use.
_**MYSQL_DATA_DIR**_
This is MySQL data directory. The default value for this is `./src/data/mysql`. All your MySQL data files will be stored here.
_**MYSQL_LOG_DIR**_

This will be used to store Apache logs. The default value for this is `./src/logs/mysql`.
## Web Server
Apache is configured to run on port 80. So, you can access it via `http://localhost`.

#### Apache Modules
By default following modules are enabled.
* rewrite
* headers
> If you want to enable more modules, just update `./src/bin/webserver/Dockerfile`. You can also generate a PR and we will merge if seems good for general purpose.
> You have to rebuild the docker image by running `docker-compose build` and restart the docker containers.

## PHP
The installed version of depends on your `.env`file.

## Redis
It comes with Redis. It runs on default port `6379`.




PS.
Please see another file for Question and Answer. Thanks
