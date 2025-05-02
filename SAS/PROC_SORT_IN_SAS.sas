/*PROC SORT IN SAS*/
data mydata;
input product $ transactions sale;
datalines;
A 84 158
A 75 118
A 64 421
A 12 592
B 75 206
B 17 855
B 46 360
C 87 650
C 96 922
C 40 860
;
run;

/*Sort Data in Ascending Order*/
proc sort data=mydata out=newdata;
by transactions;
run;

/*Sort Data in Descending Order*/
proc sort data=mydata out=newdata;
by  descending transactions;
run;

/*Filter and Sort Data*/
proc sort data = mydata (where =(product= 'A')) out= newdata;
by transactions;
run;

/*FIRSTOBS= AND OBS= Options in PROC SORT*/
proc sort data = mydata (firstobs=5 obs=8) out=newdata;
by transactions;
run;

/*Format in PROC SORT*/
proc format;
value $PRODUCT 'A'= 'product A' 'B'='product B' 'C'='product C';
run;

proc sort data = mydata out=newdata;
format  product $PRODUCT.;
by transactions;
run;

/*Sort Data by multiple columns*/
proc sort data= mydata out= newdata;
by transactions product;
run;

/*NODUP AND NODUPKEY in PROC SORT*/

/*A) NODUPKEY*/
proc sort data = mydata nodupkey out=newdata;
by product;
run;


/*B) NODUP*/
proc sort data=mydata nodup out=newdata1;
by product;
run;
