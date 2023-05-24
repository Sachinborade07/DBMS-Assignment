/*We make this cursor for incresing the customer salary by 10 %
/* update  set salary = s where i > 100; */ 
delimiter //
create procedure Customer_Sal()
begin 
	declare vfinished int default 0;
	declare i int;
	declare n varchar(30);
	declare c int;
	declare s float(244,3);
	declare d date;
	declare a int;
	declare Cust_cursor cursor for select * from customer;
	declare continue handler for not found  set vfinished = 1;
	
open Cust_cursor;
update_salary: loop 
	fetch Cust_cursor into i,n,c,s,d,a;
	if vfinished = 1 then 
	leave update_salary;
	end if;
	set a = year(curdate()) - year(d);
	insert into cust_update values(i,n,c,s,d,a); 
	end loop update_salary;
	close Cust_cursor;
	end;
	//
	
	/*
	mysql> source /home/student/SMS(Cursor).sql
Query OK, 0 rows affected, 1 warning (0.11 sec)

mysql> call Customer_Sal;
    -> //
Query OK, 0 rows affected (0.44 sec)

mysql> select * from cust_update;
    -> //
+------+--------+--------+-----------+------------+------+
| i    | n      | c      | s         | d          | a    |
+------+--------+--------+-----------+------------+------+
|  101 | OM     | 989898 | 20000.000 | 2003-01-01 |   20 |
|  102 | Sachin | 988898 | 30000.000 | 2003-01-01 |   20 |
|  103 | Ketan  | 998898 | 40000.000 | 2003-01-01 |   20 |
|  104 | Rohit  | 990008 | 60000.000 | 2003-01-01 |   20 |
+------+--------+--------+-----------+------------+------+
4 rows in set (0.00 sec)


	
	*/
