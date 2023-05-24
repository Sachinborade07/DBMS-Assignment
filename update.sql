Delimiter $$
create procedure Staff_dept(IN e int, IN s varchar(30))
Begin 
Declare T varchar(30);
select s_dept into T from Staff where s_id = e;
set T = s;
Update Staff set s_dept = T where s_id = e;
End $$
Delimiter ;
