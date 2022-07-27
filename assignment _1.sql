mysql> create database aadarsh;
ERROR 1007 (HY000): Can't create database 'aadarsh'; database exists
mysql> create database assignment;
Query OK, 1 row affected (0.00 sec)

mysql> create table mysql(sr_no int,name varchar(15),pages int,author varchar(15));
ERROR 1046 (3D000): No database selected
mysql> use assignment;
Database changed
mysql> create table mysql(sr_no int,name varchar(15),pages int,author varchar(15));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into mysql values(1,"mongo",15,"aadarsh");
Query OK, 1 row affected (0.03 sec)

mysql> insert into mysql values(2,"java",5,"nilesh");
Query OK, 1 row affected (0.00 sec)

mysql> insert into mysql values(3,"java",45,"dhanashree");
Query OK, 1 row affected (0.03 sec)

mysql> insert into mysql values(6,"python",25,"yash");
Query OK, 1 row affected (0.03 sec)

mysql> insert into mysql values(7,"datascience",99,"atharv");
Query OK, 1 row affected (0.03 sec)

mysql> insert into mysql(sr_no,name) values(9,"ml");
Query OK, 1 row affected (0.01 sec)

mysql> select*from mysql;
+-------+-------------+-------+------------+
| sr_no | name        | pages | author     |
+-------+-------------+-------+------------+
|     1 | mongo       |    15 | aadarsh    |
|     2 | java        |     5 | nilesh     |
|     3 | java        |    45 | dhanashree |
|     6 | python      |    25 | yash       |
|     7 | datascience |    99 | atharv     |
|     9 | ml          |  NULL | NULL       |
+-------+-------------+-------+------------+
6 rows in set (0.00 sec)

mysql> select*from mysql order by sr_no;
+-------+-------------+-------+------------+
| sr_no | name        | pages | author     |
+-------+-------------+-------+------------+
|     1 | mongo       |    15 | aadarsh    |
|     2 | java        |     5 | nilesh     |
|     3 | java        |    45 | dhanashree |
|     6 | python      |    25 | yash       |
|     7 | datascience |    99 | atharv     |
|     9 | ml          |  NULL | NULL       |
+-------+-------------+-------+------------+
6 rows in set (0.00 sec)

mysql> select*from mysql order by sr_no desc;
+-------+-------------+-------+------------+
| sr_no | name        | pages | author     |
+-------+-------------+-------+------------+
|     9 | ml          |  NULL | NULL       |
|     7 | datascience |    99 | atharv     |
|     6 | python      |    25 | yash       |
|     3 | java        |    45 | dhanashree |
|     2 | java        |     5 | nilesh     |
|     1 | mongo       |    15 | aadarsh    |
+-------+-------------+-------+------------+
6 rows in set (0.00 sec)

mysql> select*pages from mysql where pages>25;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'pages from mysql where pages>25' at line 1
mysql> select pages from mysql where pages>25;
+-------+
| pages |
+-------+
|    45 |
|    99 |
+-------+
2 rows in set (0.00 sec)

mysql> alter table mysql add column dob int;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table mysql drop column dob;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table mysql modify  column name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> alter table mysql rename column name to identity;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select*from mysql;
+-------+-------------+-------+------------+
| sr_no | identity    | pages | author     |
+-------+-------------+-------+------------+
|     1 | mongo       |    15 | aadarsh    |
|     2 | java        |     5 | nilesh     |
|     3 | java        |    45 | dhanashree |
|     6 | python      |    25 | yash       |
|     7 | datascience |    99 | atharv     |
|     9 | ml          |  NULL | NULL       |
+-------+-------------+-------+------------+
6 rows in set (0.00 sec)

mysql> drop table mysql;

