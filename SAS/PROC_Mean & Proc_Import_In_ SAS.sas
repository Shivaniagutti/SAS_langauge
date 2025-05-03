/*Proc Mean & Proc IMPORT*/
PROC IMPORT DATAFILE= "/home/u64067583/sasuser.v94/Akashivani learning/Test_t.xls" 
OUT= WORK.age
DBMS=XLS
REPLACE;
SHEET="Sheet1"; 
GETNAMES=YES;
RUN;

/*Simple Example of PROC MEANS*/
Proc Means Data = age;
Var q1 - q5;
Run;

/*How to See Specific Statistics*/
proc means data = age N Nmiss;
var q1 - q5;
run;

/*NOLABELS option*/
proc means data = age N Nmiss NOLABLES;
var q1 - q5;
run;

/*Group Analysis using PROC MEANS*/
PROC MEANS DATA = age N NMISS NONOBS NOLABLES print;
class Age;
var q1 - q5;
run;

/*How to use Format in Proc Means*/
Proc Format;
Value Age
1 = 'Less than 25'
2 = '25-34'
3 = '35-43'
4 = '44-50'
5 = '51-59'
6 = '60 or more';
Run;

Proc Means data = age N MEAN;
Class Age;
Format Age Age.;
Var q1 - q5;
Run;

/*How to change Sorting Order*/
PROC MEANs DATA = age;
Class age/Descending;
var q1- q5;
run;
