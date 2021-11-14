@echo off
call mvn clean package
call docker build -t com.mycompany/XepGach .
call docker rm -f XepGach
call docker run -d -p 9080:9080 -p 9443:9443 --name XepGach com.mycompany/XepGach