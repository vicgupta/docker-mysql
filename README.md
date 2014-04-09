docker-mysql
============

A docker build for mysql 5.5 on Ubuntu

To Download (via git):
git clone http://github.com/vicgupta/docker-mysql

To Build: <br>
docker build -t vicgupta/mysql .

To Run: <br>
docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD="GetMeGoing123" vicgupta/mysql
