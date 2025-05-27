/*SAS merge using diffrent joins*/

data A;
input ID name$ hight;
cards;
1 A 1
3 B 2
5 C 2
7 D 2
9 E 2
;
run;

proc print data=A;
run;

Data B;
Input ID Name$ Weight;
cards;
2 A 2
4 B 3
5 C 4
7 D 5
;
run;

proc print data=B;
run;



proc sort data = A;
by ID;
run;

proc sort data= B;
by ID;
run;

data dummy;
merge A B;
by ID;
run;

proc print data=dummy;
run;

data dummy1;
merge A (in=a) B(in=b);
by ID;
val_a=a;
val_b=b;
if a;
run;

proc print data=dummy1;
run;

data dummy2;
merge A (in=a) B(in=b);
by ID;
if b;
run;

proc print data=dummy2;
run;



      
      