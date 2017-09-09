unit Looping;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

   type
      LoopRunnner =  class
        constructor create();
        procedure example1();
        procedure example2();
        procedure example3();
        procedure example4();
        procedure example5();
      end;

implementation


var
   n:integer ;
   i, j , prod:integer;

constructor LoopRunnner.create();
begin
end;

procedure LoopRunnner.example1();
begin;
    n := 0;
    while n < 10 do
    begin
      writeln('n = ', n);
      n := n +1;
    end;
end;


procedure LoopRunnner.example2();
begin
     for n:= 0 to 10 do
     begin
        writeln('n = ', n);
     end;
end;


procedure LoopRunnner.example3();
begin
    n := 10 ;
    repeat
       writeln('n = ', n);
       n := n -1;
    until n < 0 ;
end;



procedure LoopRunnner.example4();
begin
    for i := 0 to 10 do
    begin
       for j := 0 to 10 do
       begin
          prod := i*j;
          write(prod , ' ; ');
       end;
       writeln('');
    end;



  writeln('');
  writeln('');

  i := 0 ;
  j := 0;
  while i <= 10 do
  begin
     while j <= 10 do
     begin
        prod := i*j;
        write(prod, ' ; ');
        j := j +1;
     end;
     j := 0;
     i := i +1;
     writeln('');
  end;


end;


procedure LoopRunnner.example5();
begin
   n := 0;
   while n < 10 do
   begin
     writeln('n = ', n);
      n := n +1;
     if n = 5 then
        break;


   end;

   writeln('');
   n := 0;
   while n < 10 do
   begin
     writeln('n = ', n);
     n := n +1 ;
     if n = 5 then
        continue;

   end;

end;


end.

