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


/* Keep only numeric from alphanumeric*/
data _null_;
x='ABCDEF-!1234';
string =compress(x,'','kd');
put string = ;
run;

/*Remove all punctuation from string*/
data _null_;
x='ABCDEF-!1234';
string=compress(x,'','p');
put string=;
run;

/*Keep Integer Values from String*/
data _null_;
x='ABCDEF-!1.234';
string=compress(x,'0123456789.','k');
put string=;
run;


/*LEFT Function*/
data _null_;
x=" zoya sakim";
len = length(x);
x1=left(x);
len1=length(x1);
put len=;
put len1=;
run;

/*CAT Function*/
data d;
x = "Temp";
y =22;
z = x||y;z1 = cats(x,y);z2 = catx("#",x,y);
put z = z1= z2 =;
run;

/*SCAN Function*/
data _null_;
string='Hi, How are you doing?';
last_word=scan(string, -6, ' ' );
put last_word =;
run;

/*SUBSTR Function*/
data _null_;
t="AFHood Analytics Group";
new_var=substr(t,8,11);
put new_var =;
run;

/*LOWCASE,UPCASE and PROPCASE*/
data _null_;
  name = 'Hello world';
  name_upper = upcase(name);
  name_lower = lowcase(name);
  name_proper = propcase(name);  
  put name_upper=;
  put name_lower=;
  put name_proper=;  
run;

/*Index Function*/
data _null_;
string='Hi,How are you doing?';
x = index(string, "H");
put x=;
run;


/*find Function*/
data cable;
a="my name is what? what";
op=find(a,"what");
op1=find(a,"what",op+3);
run;

/*Tranwrd Function*/
data _null_;
n="Mrs. Joan Smith";
name=tranwrd(n, "Joan", "Demo");
put name=;
run;


/*Translet Function*/
data _null_;
n="XYZWQGDEVW";
x = translate('XYZW','AB','VW');
put x= ;
run;

/*Input Function*/
data temp;
x = '12345';
new_x = input(x,5.);
run;


/*Put Function*/
data temp;
x = 12345;
new_x = put(x,5.);
run;

/*Length Function*/
data _null_;
x='ABCDEF-!1.234';
n= length(x);
put n=;
run;


/*IF THEN Function*/
data mydata;
input names $30.;
cards;
Raj Gates
Allen Lee
Dave Sandy
William Gates
Jon Jedi
;
run;
data mydata2;
set mydata;
length new_names $30.;
if find(names, "Raj")  then new_names = "Raj Kumar";
else new_names = names;
run;


/*Count Function*/
data _null_;
name = "DeepAnshu Bhalla";
x = count(name,"a");
x1 = count(name,"a","i");
put x= x1=;
run;


/*Count Function*/
data readin;
input name$15.;
cards;
Trait Jhonson
3+3=6
;
run;

data out;
set readin;
x = countw(name);
x1 = countw(name,' ');
run;



