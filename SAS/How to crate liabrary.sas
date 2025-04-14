/* How to create library*/
libname Ashiv "sample path";

data Ashiv.navin;
input name$ id age;
cards;
sharvani 151 25
chaitra 256 30
namrata 101 45
;
run;

proc print data = ashiv.navin;
run;

/* HOw to check proc contents*/

proc contents data = ashiv.navin;
run;
