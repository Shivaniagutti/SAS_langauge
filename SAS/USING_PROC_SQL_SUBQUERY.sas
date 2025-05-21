/*SUB_Query_using_Proc_SQL*/
data employee;
input E_ID E_name$ Department$ Salary;
cards;
1 Ram HR 1000
2 Siya MRKT 2000
3 bala IT 3000
4 ravi HR 4000
5 Shri IT 5000
;
run;

proc print data=employee;
run;

proc sql;
select E_name from employee where salary =
(select max(salary)from employee);
quit;

proc sql;
select E_name from employee where salary = 
(select max (salary) from employee where salary<>(select max(salary)from employee));
quit;

proc sql;
select department ,count(*) from employee group by department;
quit;

proc sql;
select E_name from employee where department IN 
(select department from employee group by department having count(*)<2);
quit;