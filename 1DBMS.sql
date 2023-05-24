************************** I have the database of Supermarket Management System ************

mysql> use Supermarket_MS;
Database changed
mysql> show tables;
Empty set (0.01 sec)

***************************Customer table created ******************************************

mysql> create table customers (
	customer_id int primary key,
	customer_name varchar(30) not null,
	customer_email varchar(30) unique not null,
	customer_phone_no int not null
);

Query OK, 0 rows affected (0.04 sec)

mysql> desc customers;
+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| customer_id       | int         | NO   | PRI | NULL    |       |
| customer_name     | varchar(30) | NO   |     | NULL    |       |
| customer_email    | varchar(30) | NO   | UNI | NULL    |       |
| customer_phone_no | int         | NO   |     | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

*******************  Here we have created table Staff **************************************

mysql> create table staff(
	staff_id int primary key,
	staff_name varchar(30) not null,
	staff_email varchar(30) not null,
	staff_phone_no int
);
Query OK, 0 rows affected (0.03 sec)

mysql> desc staff;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| staff_id       | int         | NO   | PRI | NULL    |       |
| staff_name     | varchar(30) | NO   |     | NULL    |       |
| staff_email    | varchar(30) | NO   |     | NULL    |       |
| staff_phone_no | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)


*********************** Here we have added the column using alter add table method *********

mysql> alter table staff add column staff_salary float(30,3) not null;

Query OK, 0 rows affected, 1 warning (0.06 sec)

Records: 0  Duplicates: 0  Warnings: 1

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
5 rows in set (0.01 sec)


************************ Here we have created the table product ****************************

mysql> create table product(
	product_id int primary key,
	customer_id int not null,
	staff_id int not null,
	total_amount float(10,2),
	date datetime not null,
	foreign key (customer_id) references customers (customer_id),
	foreign key (staff_id) references staff (staff_id) 
);

Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql> desc product;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| product_id   | int         | NO   | PRI | NULL    |       |
| customer_id  | int         | NO   | MUL | NULL    |       |
| staff_id     | int         | NO   | MUL | NULL    |       |
| total_amount | float(10,2) | YES  |     | NULL    |       |
| date         | datetime    | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

********************* Here we created the table recipt *************************************
mysql> create table recipt(
	recipt_id int primary key,
	customer_id int not null,
	staff_id int not null,
	total_amount float(10,2) not null,
	date datetime not null,
	 foreign key (customer_id) references customers (customer_id), 
	 foreign key (staff_id) references staff (staff_id) 
);

Query OK, 0 rows affected, 1 warning (0.05 sec)

mysql> desc recipt;

+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| recipt_id    | int         | NO   | PRI | NULL    |       |
| customer_id  | int         | NO   | MUL | NULL    |       |
| staff_id     | int         | NO   | MUL | NULL    |       |
| total_amount | float(10,2) | NO   |     | NULL    |       |
| date         | datetime    | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+

5 rows in set (0.00 sec)



























