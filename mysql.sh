# change root password
[mysqld]
skip-grant-tables

service mysqld restart
mysql -uroot
mysql> use mysql;
mysql> update user set Password = password('root') where User = 'root';
flush privileges;


# exe sql file
mysql> source /path/to/db.sql;

