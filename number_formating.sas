data emp;
input eid salary : comma9.  pf : dollar9.;
format eid salary  comma9. pf  dollar9.;
cards;
123 1,00,000 $2,23,000
124 1,00,000 $3,00,000
;
run;

proc print data = emp;
run;

data missing;
infile cards missover;
input X Y Z;
cards;
11 1 78
12 2 89
13 3 56
14 2 .
15 2 79
16 3 .
run;

proc print data = missing;
run;

data clin;
input pid name$ age gender$;
cards;
123 kiran 24 male
145 kunal 25 male
134 ramya 25 female
;
proc print data = clin;
run;