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

/*DAY 2 (NOT IN / IN )using proc SUB_Query_using_Proc_SQL*/

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

proc sql;
select E_name from employee where salary IN 
((select  max(salary) from employee group by department));
quit;

data employee2;
input E_Id E_name$ Adress$;
cards;
1 ravi chd
2 varun delhi
3 nitin pune
4 robbin bangalore
5 ammy chd
;
run;

data project;
input E_Id P_Id$ P_name$ Location$;
cards;
1 P1 IOT Bangalore
5 P2 BIG Data Delhi
3 P3 Retail Mumbai
4 P4 Android Hydrabad
;
run;

proc print data=project;
run;


proc print data=employee2;
run;

proc sql;
select * from employee2 where Adress IN ('chd','delhi','pune');
quit;


proc sql;
select * from employee2 where Adress NOT IN ('chd','delhi','pune');
quit;

proc sql;
select E_name from employee2 where E_Id In (select distinct (E_Id) from project);
quit;

proc sql;
select E_name from employee2 where E_Id not In (select distinct (E_Id) from project);
quit;
