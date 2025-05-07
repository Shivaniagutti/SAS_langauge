/*First . & Last . in SAS */

data shivansh;
input ID Name$;
cards;
2 gita
2 fizza
1 akash
1 pranav
2 asha
8 ag
3 kajal
8 namrata
5 AS
;
run;

proc sort data=shivansh;
by ID;
run;


/*To print variable first. & last . status*/
data ss;
set shivansh;
by ID;
first_var=first.ID;
last_var=last.ID;
run;

/*
data unique_;
set shivansh;
by ID;
if first.ID and last.ID then output;
run;


/*by using IF & else condition*/
data uniq dubp;
set shivansh;
by ID;
if first.ID and last.ID then output uniq;
else output dubp;
run;

/*If we required only first . */
data jk;
set shivansh;
by ID;
if first.ID then output jk;
run;


/*If we required only first . & last . only firat & last records*/
data abp;
set shivansh;
by ID;
if first.ID OR last.ID then output abp;
run;
