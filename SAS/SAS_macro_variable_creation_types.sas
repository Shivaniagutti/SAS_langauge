/*Sas_macro_variables*/

/*How_to create variable using %let*/
%let karan2=30;

%put karan2=&karan2;


/*proc sql into method*/

data army;
input salary;
cards;
500
15000
30000
86000
;
run;

proc sql;
select sum(salary) into :total from army;
quit;

%put &total;

/*call_SYMPUT*/
data _null_;

call symput ('var2',&total);
run;
%put &var2;
