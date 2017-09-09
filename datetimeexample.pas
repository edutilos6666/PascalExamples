unit DateTimeExample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

  type
     DateTimeExampleClazz = class
        procedure example1();  { Date and Time simple example }
     end;

implementation

 { example1 }
 procedure DateTimeExampleClazz.example1();
 var
    year , month , day : Word;
    hour ,  minute , second , ms : Word ;
 begin
   DecodeDate(Date, year, month , day);
   DecodeTime(Time , hour , minute, second , ms);
   writeln('year = ', year);
   writeln('month = ', month);
   writeln('day = ', day);
   writeln('hour = ', hour);
   writeln('minute = ', minute);
   writeln('second = ' , second);
   writeln('ms = ' , ms);

   writeln(format('%d/%d/%d Time: %d:%d:%d.%d', [year, month , day , hour , minute, second, ms]));
   writeln('current time = ', TimeToStr(Time));
   writeln('current date = ', DateToStr(Date));
   writeln('current date & time = ', DateTimeToStr(Now));

 end;

end.

