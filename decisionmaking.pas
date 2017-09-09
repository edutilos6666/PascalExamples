unit DecisionMaking;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
   type
       DecisionMakingRunner = class
          public
            constructor create();
            procedure example1();
            procedure example2();
            procedure example3();
            procedure example4();
       end;





implementation


var
  id : integer ;
  name : string;
  age : integer;
  wage: real;
  active :boolean;
  grade:char;


constructor DecisionMakingRunner.create();
begin

end;

procedure DecisionMakingRunner.example1();
begin
   id  := 1 ;
   name := 'foobar';
   age := 10;
   wage := 100.0;
   active := true ;


   if id = 1 then
       writeln('id is 1');

   if name = 'foobar' then
       writeln('name is foobar');

   if (age >= 10) and (age <= 100) then
       writeln('age is correct.');

   if (wage >= 100.0) and (wage <= 1000.0) then
       writeln('wage is correct.');

   if active then
       writeln('you are active.');


end;


procedure DecisionMakingRunner.example2();
begin
   id  := 1 ;
   name := 'foobar';
   age := 10;
   wage := 100.0;
   active := false ;


   if id = 1 then
        writeln('id is correct.')
   else
       writeln('id is not correct.');

   if name = 'edutilos' then
        writeln('name is correct.')
   else
       writeln('name is not correct.');

   if (age > 10) and (age < 100) then
        writeln('age is correct.')
   else
       writeln('age is not correct.');

   if (wage > 100.0) and (wage < 1000.0) then
        writeln('wage is correct.')
   else
       writeln('wage is not correct.');

   if active then
       writeln('you are active.')
   else
       writeln('you are not active.');


end;




procedure DecisionMakingRunner.example3();
begin
      id  := 2 ;
   name := 'foobar';
   age := 20;
   wage := 100.0;
   active := true ;


   if id = 1 then
       begin
      if name = 'foobar' then
          begin
         if age = 10 then
             begin
            if wage = 100.0 then
                begin
               if active then
                  writeln('everything was correct.');

                end;

             end;

          end;
       end
   else
       writeln('something was wrong.');

end;



procedure DecisionMakingRunner.example4();
begin
   grade := 'G';
   case(grade) of
    'A': writeln('excellent.');
    'B': writeln('very good.');
    'C', 'D': writeln('good.');
    'E': writeln('sufficient.');
   else
     writeln('You really did not study!');
   end;
end;

end.

