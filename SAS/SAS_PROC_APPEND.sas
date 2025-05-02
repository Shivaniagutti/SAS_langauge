/*Proc_Append_procedure*/
data mydata1;
input Product $ Sales Profit;
datalines;
A 110 23
B 147 31
C 238 51
D 207 42
;
run;

data mydata2;
input Product $ Sales Profit;
datalines;
E 811 13
F 871 17
G 629 10
;
run;

PROC APPEND BASE=mydata1 DATA=mydata2;
RUN;

/*How to Store Appended Data in a New Dataset*/
PROC APPEND BASE=final_data DATA=mydata1;
RUN;

PROC APPEND BASE=final_data DATA=mydata2;
RUN;

/*Appending Datasets with Different Variable Length*/
 data mydata3;
input Product $ Sales Profit;
datalines;
A 110 23
B 147 31
C 238 51
D 207 42
;
run;

data mydata4;
length Product $10.;
input Product $ Sales Profit;
datalines;
E 81 13
F 87 17
G 69 10
;
run;

PROC APPEND BASE=mydata3 DATA=mydata4;
RUN;

PROC APPEND BASE=mydata3 DATA=mydata4 force;
RUN;

/*Appending Datasets with Different Variable Names*/
data team1;
input Names $ Scores Matches;
datalines;
A 110 23
B 147 31
C 238 51
D 207 42
;
run;

data team2;
input Players $ Goals Matches;
datalines;
E 81 13
F 87 17
G 69 10
;
run;

/*PROC APPEND BASE=team1 DATA=team2 force;
RUN;*/

PROC APPEND BASE=team1 DATA=team2 (rename=(players=names goals=scores));
RUN;

/*Filtering Data While Appending Datasets*/
PROC APPEND BASE=team1 DATA=team2 (rename=(players=names goals=scores) where=(scores>80));
RUN;
