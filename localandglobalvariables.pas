unit LocalAndGlobalVariables;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
   type
      LocalAndGlobal = class
         constructor create();
         procedure withLocalVariables();
         procedure withoutLocalVariables();
      end;



implementation

var
  a:integer = 101 ;
  b:integer = 201 ;
  c : integer = 301;


constructor LocalAndGlobal.create();
begin

end;

procedure LocalAndGlobal.withLocalVariables();
var
   a, b , c: integer ;
   delim :string ;
begin
   a := 10 ;
   b := 20 ;
   c := 30 ;
   delim := ' ; ';
   writeln(a, delim , b, delim , c, delim);
end;


procedure LocalAndGlobal.withoutLocalVariables();
var
   delim :string;
begin
  delim := ' ; ';
  writeln(a, delim , b, delim , c, delim);
end;


end.

