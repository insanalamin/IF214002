# Simple Web Service, Visualization, and CRUD GUI Using PHP MySQL Javascript

## Requirements

### MySQL
- [Windows Installer](https://dev.mysql.com/downloads/installer/) 
- [Linux Installer](https://dev.mysql.com/doc/refman/8.0/en/linux-installation.html) 
- [Docker Installer](https://hub.docker.com/_/mysql)
  ```sh
  docker run --name mysql-penduduk -p 3366:3306 -e MYSQL_ROOT_PASSWORD=iguana -d mysql:latest
  ```
- [Bundle PHP interpreter, MySQL database, Apache web server, PHPMyAdmin web app, dkk.](https://www.apachefriends.org/download.html)
- [Dbeaver untuk eksplorasi database](https://dbeaver.io/)

### PHP
- [Windows Installer](https://windows.php.net/downloads/releases/php-8.1.7-Win32-vs16-x64.zip)
- [Bundle PHP interpreter, MySQL database, Apache web server, PHPMyAdmin web app, dkk.](https://www.apachefriends.org/download.html)


## Run

1. go to src folder
2. php -S localhost:8000
3. access web service from browser http://localhost:8000/api
4. access web app (visualization & CRUD GUI) from browser http://localhost:8000/webapp

## HTTP Test

[hoppscotch.io](https://hoppscotch.io/)
