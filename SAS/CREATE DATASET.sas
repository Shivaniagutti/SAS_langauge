/* How to create dataset & new datset*/
libname ad "sample path";
data ad.akash;
input age name$ id;
cards;
51 shivanjali 151
38 chaitra 528
29 vaishnavi 382
;
run;

proc contents data = ad.akash out = WORK;