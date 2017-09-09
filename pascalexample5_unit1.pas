unit PascalExample5_unit1;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;

type
    SimpleMath = class
      private
          x, y: real ;

      public
          constructor create(_x, _y:real);
          function add():real;
          function subtract():real;
          function multiply():real;
          function divide():real;
    end;

    procedure sayHello();

implementation
constructor SimpleMath.create(_x, _y:real);
begin
   x := _x;
   y := _y;
end;

function SimpleMath.add():real;
begin
    add := (x + y);
end;
function SimpleMath.subtract():real;
begin
    subtract := (x-y);
end;


function SimpleMath.multiply():real;
begin
    multiply := (x*y);
end;


function SimpleMath.divide():real;
begin
    divide := (x/y);
end;

 procedure sayHello();
 begin
     writeln('Hello world from PascalExample5_unit1');
 end;

end.

