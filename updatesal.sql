Delimiter $$
create procedure updsal(IN e int, IN s varchar(30))
Begin 
Declare T varchar(30);
select e_salary into T from emp where e_id = e;

set T=s+s*0.2;
Update emp set s_salary = T where e_id = e;
End $$
Delimiter ;
