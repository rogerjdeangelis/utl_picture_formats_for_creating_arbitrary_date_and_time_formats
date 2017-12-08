Picture formats for arbitrary date and time formats

Reminds me of R, Python and Perl formatting?

PROBLEM
=======

   I need to display month and day format like MONDD for example DEC25
   for Christmass

SOLUTION
========

by Joe Matise <snoopy369@GMAIL.COM>

proc format;
  picture mondd
  low-high = '%b%0d' (datatype=date);
run;quit;

data _null_;
d = today();
put d= mondd5.;
run;

D=DEC08

see
https://goo.gl/ePbQda
http://support.sas.com/documentation/cdl/en/proc/61895/HTML/default/viewer.htm#a002473467.htm

DOCUMENTATION
=============

Any directive that generates numbers can produce a leading zero,
if desired, by adding a 0 before the directive. Adding a leading
zero applies to %d, %H, %I, %j, %m, %M, %S, %U, and %y. For example,
if you specify %y in the picture, then 2001 would be formatted as '1',
but if you specify %0y, then 2001 would be formatted as '01'.


Directives are special characters that you can use in the picture to format date,
time, or datetime values.

Restriction:      You can use only directives when you specify the DATATYPE=
option in the PICTURE statement.
The permitted directives are as follows:

%a
abbreviated weekday name, for example, Wed.

%A
full weekday name, for example, Wednesday.

%b
abbreviated month name, for example, Jan.

%B
full month name, for example, January.

%C
long month name with blank padding (January through December), for example, December.

%d
day of the month as a two-digit decimal number (01-31), for example, 02.

%e
day of the month as a two-character decimal number with leading spaces (" 1"- "31"), for example, " 2".

%F
full weekday name with blank padding.

%g
year as a two-digit decimal number (00 - 99), for example, 02. If the week that contains January
1 has four or more days in the new year, then it is considered week 1 in the new year. Otherwise,
it is the last week of the previous year and the year is considered the previouse year.

%G
year as a four-digit decimal number, for example, 2008. If the week that contains January 1 has
four or more days in the new year, then it is considered week 1 in the new year. Otherwise,
it is the last week of the previous year and the year is considered the previouse year.

%H
hour (24-hour clock) as a two-digit decimal number (00-23), for example, 19.

%I
hour (12-hour clock) as a two-digit decimal number (01-12), for example, 05.

%j
day of the year as a decimal number (1-366), with leading zero.

%m
month as a two-digit decimal number (01-12), for example, 01.

%M
minute as a two-digit decimal number (00-59), for example, 45.

%o
month (1-12) with blank padding, for example, " 2".

%p
equivalent to either a.m. or p.m.

%q
abbreviated quarter of the year string such as Qtr1, Qtr2, Qtr3, or Qtr4.

%Q
quarter of the year string, such as Quarter1, Quarter2, Quarter3, or Quarter4.

%S
second as a two-digit decimal number (00-61) and allowing for possible leap seconds, for example, 58.

%u
weekday as a one-digit decimal number (1-7 (Monday - Sunday)), for example, Sunday=7.

%U
week number of the year as a decimal number (0,53) with leading 0. Sunday is considered the first day of the week.

%V
week number (01-53) with the first Monday as the start day of the first week. Minimum days of the first week is 4.

%w
weekday as a one-digit decimal number (0-6 (Sunday through Saturday)), for example Sunday=0.

%W
week number (00-53) with the first Monday as the start day of the first week.

%y
year without century as a two-digit decimal number (00-99), for example, 93.

%Y
year with century as a four-digit decimal number (1970-2069), for example, 1994.

%%
the % character.

