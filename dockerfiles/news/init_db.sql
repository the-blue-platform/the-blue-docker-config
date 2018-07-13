GRANT ALL PRIVILEGES ON *.* TO developer@'%' IDENTIFIED BY 'developer' WITH GRANT OPTION;
set password for developer@'%'=password('developer');

create database news character set utf8;