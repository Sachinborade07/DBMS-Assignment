############ Using insert command to insert the data into customer  table ###########

mysql> desc customers;
+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| customer_id       | int         | NO   | PRI | NULL    |       |
| customer_name     | varchar(30) | NO   |     | NULL    |       |
| customer_email    | varchar(30) | NO   | UNI | NULL    |       |
| customer_phone_no | int         | NO   |     | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into customers values(1,'sachin','sachin@g.com',9349384);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customers values(2,'omkar','omkar@g.com',94534834);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customers values(3,'ketan','keatan@g.com',93343834);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customers values(4,'rohan','rohan@g.com',7563834);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customers values(5,'rohit','rohit@g.com',7878564);
Query OK, 1 row affected (0.01 sec)

mysql> select  *from customers;
******************This is output of insert command **********************************

+-------------+---------------+----------------+-------------------+
| customer_id | customer_name | customer_email | customer_phone_no |
+-------------+---------------+----------------+-------------------+
|           1 | sachin        | sachin@g.com   |           9349384 |
|           2 | omkar         | omkar@g.com    |          94534834 |
|           3 | ketan         | keatan@g.com   |          93343834 |
|           4 | rohan         | rohan@g.com    |           7563834 |
|           5 | rohit         | rohit@g.com    |           7878564 |
+-------------+---------------+----------------+-------------------+
5 rows in set (0.00 sec)



################### Using insert command to insert the data into staff table #########

mysql> desc staff;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| staff_id       | int         | NO   | PRI | NULL    |       |
| staff_name     | varchar(30) | NO   |     | NULL    |       |
| staff_email    | varchar(30) | NO   |     | NULL    |       |
| staff_phone_no | int         | YES  |     | NULL    |       |
| staff_salary   | float(30,3) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into staff values(101,'aniket','aniket@g.com',343434,20000.00);
Query OK, 1 row affected (0.00 sec)

mysql> insert into staff values(102,'pranit','pranit@g.com',5454554,30000.00);
Query OK, 1 row affected (0.03 sec)

mysql> insert into staff values(103,'rushikesh','rushikesh@g.com',777554,25000.00);
Query OK, 1 row affected (0.02 sec)

mysql> insert into staff values(104,'shubham','shubham@g.com',565774,22000.00);
Query OK, 1 row affected (0.00 sec)

mysql> insert into staff values(105,'dewang','dewang@g.com',5343474,27000.00);
Query OK, 1 row affected (0.01 sec)

***************This is output of insert command  **************************************

mysql> select * from staff;
+----------+------------+-----------------+----------------+--------------+
| staff_id | staff_name | staff_email     | staff_phone_no | staff_salary |
+----------+------------+-----------------+----------------+--------------+
|      101 | aniket     | aniket@g.com    |         343434 |    20000.000 |
|      102 | pranit     | pranit@g.com    |        5454554 |    30000.000 |
|      103 | rushikesh  | rushikesh@g.com |         777554 |    25000.000 |
|      104 | shubham    | shubham@g.com   |         565774 |    22000.000 |
|      105 | dewang     | dewang@g.com    |        5343474 |    27000.000 |
+----------+------------+-----------------+----------------+--------------+
5 rows in set (0.00 sec)

################### Using alter add column command to add table into product table #####
mysql> alter table product add column product_name varchar(10) not null AFTER product_id;
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc product;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| product_id   | int         | NO   | PRI | NULL    |       |
| product_name | varchar(10) | NO   |     | NULL    |       |
| customer_id  | int         | NO   | MUL | NULL    |       |
| staff_id     | int         | NO   | MUL | NULL    |       |
| total_amount | float(10,2) | YES  |     | NULL    |       |
| date         | datetime    | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.03 sec)

*********************** Using insert command to insert the data into product table *****

mysql> desc product;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| product_id   | int         | NO   | PRI | NULL    |       |
| product_name | varchar(10) | NO   |     | NULL    |       |
| customer_id  | int         | NO   | MUL | NULL    |       |
| staff_id     | int         | NO   | MUL | NULL    |       |
| total_amount | float(10,2) | YES  |     | NULL    |       |
| date         | date        | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into product values(1001,'soap',1,101,30,'2023-02-03');
Query OK, 1 row affected (0.00 sec)

mysql> insert into product values(1002,'pen',2,103,45,'2023-02-04');
Query OK, 1 row affected (0.00 sec)

mysql> insert into product values(1003,'shirt',5,103,700,'2023-02-02');
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values(1004,'keyboard',3,105,3000,'2023-04-10');
Query OK, 1 row affected (0.01 sec)

mysql> select * from product;
+------------+--------------+-------------+----------+--------------+------------+
| product_id | product_name | customer_id | staff_id | total_amount | date       |
+------------+--------------+-------------+----------+--------------+------------+
|       1001 | soap         |           1 |      101 |        30.00 | 2023-02-03 |
|       1002 | pen          |           2 |      103 |        45.00 | 2023-02-04 |
|       1003 | shirt        |           5 |      103 |       700.00 | 2023-02-02 |
|       1004 | keyboard     |           3 |      105 |      3000.00 | 2023-04-10 |
+------------+--------------+-------------+----------+--------------+------------+
4 rows in set (0.00 sec)

************************ Here we have created the table recipt *****************************

mysql> desc recipt
    -> ;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| recipt_id    | int         | NO   | PRI | NULL    |       |
| customer_id  | int         | NO   | MUL | NULL    |       |
| staff_id     | int         | NO   | MUL | NULL    |       |
| total_amount | float(10,2) | NO   |     | NULL    |       |
| date         | datetime    | NO   |     | NULL    |       |
| product_id   | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> insert into recipt  values(01,1,101,30,'2023-02-03 20:00',1001);
Query OK, 1 row affected (0.02 sec)

mysql> insert into recipt  values(02,2,102,45,'2023-02-04 21:00',1002);
Query OK, 1 row affected (0.01 sec)

mysql> insert into recipt  values(03,3,105,3000,'2023-04-10 19:00',1004);
Query OK, 1 row affected (0.00 sec)

mysql> insert into recipt  values(04,5,103,700,'2023-02-02 10:00',1003);
Query OK, 1 row affected (0.01 sec)

mysql> select * from recipt;

+-----------+-------------+----------+--------------+---------------------+------------+
| recipt_id | customer_id | staff_id | total_amount | date                | product_id |
+-----------+-------------+----------+--------------+---------------------+------------+
|         1 |           1 |      101 |        30.00 | 2023-02-03 20:00:00 |       1001 |
|         2 |           2 |      102 |        45.00 | 2023-02-04 21:00:00 |       1002 |
|         3 |           3 |      105 |      3000.00 | 2023-04-10 19:00:00 |       1004 |
|         4 |           5 |      103 |       700.00 | 2023-02-02 10:00:00 |       1003 |
+-----------+-------------+----------+--------------+---------------------+------------+

4 rows in set (0.00 sec)










