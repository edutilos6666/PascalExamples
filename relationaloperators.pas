unit RelationalOperators;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;

   type
      RelationalOperatorChecker = class
         private
            x, y:integer;

         public
            constructor create(_x, _y:integer);
            {x}
            procedure setX(_x:integer);
            function getX():integer;
            {y}
            procedure setY(_y:integer);
            function getY():integer;
            {other functions }
            function eq():boolean;
            function ne():boolean;
            function lt():boolean;
            function le():boolean;
            function gt():boolean;
            function ge():boolean;
      end;


implementation
(*RelationalOperatorChecker *)
constructor RelationalOperatorChecker.create(_x, _y:integer);
begin
    x := _x;
    y := _y;
end;
{x}
procedure RelationalOperatorChecker.setX(_x:integer);
begin
    x := _x;
end;
function RelationalOperatorChecker.getX():integer;
begin
    getX := x;
end;

{y}
procedure RelationalOperatorChecker.setY(_y:integer);
begin
   y := _y;
end;
function RelationalOperatorChecker.getY():integer;
begin
  getY := y;
end;

{other functions }
function RelationalOperatorChecker.eq():boolean;
begin
  eq := (x = y);
end;

function RelationalOperatorChecker.ne():boolean;
begin
  ne := (x <> y);
end;

function RelationalOperatorChecker.lt():boolean;
begin
   lt := (x<y);
end;

function RelationalOperatorChecker.le():boolean;
begin
   le := (x<=y);
end;

function RelationalOperatorChecker.gt():boolean;
begin
   gt := (x>y);
end;

function RelationalOperatorChecker.ge():boolean;
begin
   ge := (x>=y);
end;

(*END RelationalOperatorChecker *)

end.

