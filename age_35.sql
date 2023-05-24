delimiter //
create procedure emp_age()
begin
	declare vfinished int default 0;
	declare r int;
	declare n varchar(23);
	declare f decimal(7,2);
	declare d date;
	declare a int;

declare emp_cursor cursor for select * from emp;
declare continue handler for not found set vfinished=1;

open emp_cursor;
getdata:loop
     fetch  emp_cursor into r,n,f,d,a;
     if vfinished=1 then
     leave getdata;
     end if;
    set a =year(curdate())-year(d);
     
    insert into age values(r,n,f,d,a);
    end loop getdata;
    close emp_cursor;
    end;
    //
    
    
    
/*show databases;
use xyz;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+---------------+
| Tables_in_xyz |
+---------------+
| emp           |
+---------------+
1 row in set (0.00 sec)

mysql> select * from emp;
+-----+--------+----------+------------+------+
| eid | name   | sal      | Dob        | age  |
+-----+--------+----------+------------+------+
|   1 | sai    | 23241.34 | 2003-09-03 | NULL |
|   2 | sairam | 25241.34 | 2003-07-23 | NULL |
|   3 | ram    | 25541.54 | 2013-06-02 | NULL |
|   4 | ramraj | 45541.54 | 2013-05-02 | NULL |
|   5 | raj    | 45641.54 | 2003-05-02 | NULL |
|   6 | rakraj | 44641.54 | 2003-02-12 | NULL |
|   7 | rakra  | 44681.54 | 2015-02-12 | NULL |
+-----+--------+----------+------------+------+
7 rows in set (0.00 sec)

 mysql>desc emp;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| eid   | int          | NO   | PRI | NULL    |       |
| name  | varchar(23)  | YES  |     | NULL    |       |
| sal   | decimal(7,2) | YES  |     | NULL    |       |
| Dob   | date         | YES  |     | NULL    |       |
| age   | int          | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
 create table age(eid int primary key, name varchar(23),sal decimal(7,2),
Dob date,age int);
Query OK, 0 rows affected (0.63 sec)

mysql> select * from age;
Empty set (0.00 sec)

mysql> source /home/student/age_35.sql;
Query OK, 0 rows affected (0.12 sec)


*/


