unit BooleanOperators;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;

    type
        BooleanOpChecker = class
          private
             x, y:boolean;

          public
             constructor create(_x:boolean ; _y:boolean);
             {x, y}
             procedure setXAndY(_x, _y:boolean);
             function getX():boolean;
             function getY():boolean;
             {other functions}
             function _and():boolean;
             function _andThen():boolean;
             function _or():boolean;
             function _orThen():boolean;
             function _notX():boolean;
             function _notY():boolean;
        end;


implementation
(*BooleanOpChecker *)
constructor BooleanOpChecker.create(_x:boolean ; _y:boolean);
begin
    x := _x;
    y := _y;
end;

{x, y}
procedure BooleanOpChecker.setXAndY(_x, _y:boolean);
begin
   x := _x ;
   y := _y;
end;

function BooleanOpChecker.getX():boolean;
begin
  getX := x;
end;

function BooleanOpChecker.getY():boolean;
begin
  getY := y;
end;

{other functions}
function BooleanOpChecker._and():boolean;
begin
  _and := (x and y);
end;

function BooleanOpChecker._andThen():boolean;
begin
   (* and then doesn't work *)
   _andThen := false;
end;

function BooleanOpChecker._or():boolean;
begin
   _or := (x or y);
end;

function BooleanOpChecker._orThen():boolean;
begin
   (* or then doesn't work *)
   _orThen := false;
end;

function BooleanOpChecker._notX():boolean;
begin
    _notX := not(x);
end;

function BooleanOpChecker._notY():boolean;
begin
    _notY := not(y);
end;

(*END BooleanOpChecker*)



end.

