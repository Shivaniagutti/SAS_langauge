/*SAS_Macro_functions*/
/*1. %EVAL Function*/
%let x=10;
%let Y=20;
%let Z=&x * &Y;

%put Z=&Z;

%let Z2= %eval(&x*&Y);
%put O=&z2;

/*Note :%let last = %eval (4.5+3.2); returns error as it cannot perform 
arithmetic calculations with operands that have the floating point values. 
It is when the %SYSEVALF function comes into picture.*/

%let last2 = %sysevalf(4.5+3.2);
%put Q=&last2;
