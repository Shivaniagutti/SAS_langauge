/* WHAT IS LABLE*/
data bank;
label did = "Deposite ID";
input did age sex$;
cards;
1000 85 male
2000 46 male
3000 50 female
;
run;

proc print data = bank;
run;
