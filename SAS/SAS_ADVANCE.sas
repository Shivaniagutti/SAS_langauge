/* SAS_Advance*/
/*(Macro defination for Local)*/
options mprint mlogic symbolgen;
%macro test (input=, ivar=,output=);
%local y1;
%let y1=5;

%put &y1;
%put &input;
%put &ivar;
%put &output;

%mend

%macro test1;
%put &y1;
%mend;

%test (input=20,ivar=55,output=70);
%test1;

/*(Macro defination for Global)*/
options mprint mlogic symbolgen;
%macro test2 (input=, ivar=,output=);
%Global y3;
%let y3=5;

%put &y3;
%put &input;
%put &ivar;
%put &output;

%mend

%macro test3;
%put &y3;
%mend;

%test2 (input=20,ivar=55,output=70);
%test3;
