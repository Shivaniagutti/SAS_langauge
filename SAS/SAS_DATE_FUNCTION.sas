/*Date function in SAS*/

data dt;
date_='11MAY2025'd;
date_1 =day(date_);
mnth = month(date_);
yr= year(date_);
week_day = weekday(date_);
run;

data dt;
input transaction_date date9.;
format transaction_date date9.;
cards;
11MAY2025
12MAY2025
12APR2025
11JUN2025
;
run;

data dt1;
set dt;
DAY = day(transaction_date);
month=month(transaction_date);
year=year(transaction_date);
run;


data intck_intnx;
birthdt = '22APR2000'd;

date55 = intck('year',birthdt, date());
run;

/*date() format*/
data _null_;
a=date();
b=today();
c="&sysdate"d;
put 'Without Format: ' a = b = c =;
run;

/*How_to_format_date_values*/
data _null_;
a=date();
b=today();
c="&sysdate"d;
format a b c ddmmyy10.;
put 'Without Format: ' a = b = c =;
run;

/*SAS Date Formats*/
data dates;
date1 = put(date(),mmddyy8.);
date2 = put(date(),WORDDATE.);
run;

/*Date Functions*/
data _NULL_;
birthdate='04Aug1996'd;
date1=day(birthdate);
date2=month(birthdate);
date3=year(birthdate);
date4=qtr(birthdate);
date5=weekday(birthdate);
put date1 date2 date3 date4 date5;
run;
