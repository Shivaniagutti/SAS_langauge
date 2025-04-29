/*SAS : Character Functions*/

/*COMPBL Function*/
Data char;
Input Name $ 1-50 ;
Cards;
   Sandy        David  
Annie Watson
Hello ladies and gentlemen
Hi, I am good
;
Run;

Data char1;
Set char;
char1 = compbl(Name);
run;

/*STRIP Function*/
Data char1;
Set char;
char1 = strip(Name);
run;

/*COMPRESS Function*/
Data char1;
Set char;
char1 = compress(Name);
run;

/*_null_ it is used for data execution*/
data _null_;
x="ABCDEF-!1234fdff";
string=compress(x,'','ak');
put string=;
run;

/*LEFT Function*/
Data char1;
Set char;
char1 = left(Name);
run;

/*TRIM Function*/
Data char1;
Set char;
char1 = trim(Name);
run;

/*CAT Function*/
data _null_;
a = 'abc';
b = 'xyz';
c= a || b;
d= cat(a,b);
put c= d =;
run;

/*SCAN Function*/
data _null_;
string='Hi, How are you doing?';
first_word=scan(string, 1, ' ' );
put first_word =;
run;

/* Remove specific Character*/
data _null_;
x='ABCDEF-!1234';
string =compress(x,'!4');
put string = ;
run;