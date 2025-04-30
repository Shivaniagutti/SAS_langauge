/*SAS: Numeric Functions (with Examples)*/

/*character to numric & float value to numric*/
data ak;
B="12";
I=INT(B);
B1=12.5;
I1=INT(B1);
run;


/*SAS_mean_function*/
data mean_F;
X=5;
Y=10;
Z=10;
op=min(X,Y,Z);
run;


/*SAS_Sum_function*/
data sum_H;
X=20;
Y=25;
Z=30;
op=sum(x, y, z);
run;

/*Square root function*/
data SQ;
input Number;
cards;
25
16
4
85
;
run;

data square_g;
set SQ;
op= sqrt(Number);
run;

/*Mean function*/
data QA;
x=10;
Y=30;
Z=25;
var1= mean(X,Y,Z);	
run;

/*Round function*/
data SF;
X=12.999;
var1 = round(x, 1);
run;

/*CEIL function*/
data RMG;
X=84.21;
var1 = ceil(X);	
run;


/*FLOOR function*/
data CMM;
x=86.71;
var1=FLOOR(X);
run;
