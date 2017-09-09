unit ArithmeticOperators;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

  type
      SimpleMathInteger = class
       private
          n1 , n2:integer;

       public
          constructor create(_n1, _n2:integer);
          {functions}
          function add():integer;
          function subtract():integer;
          function multiply():integer;
          function divide():integer;
          function modulo():integer;
  end;

   type SimpleMathReal = class
      private
         n1, n2:real;

      public
          constructor create(_n1, _n2:real);
          {functions}
          function add():real;
          function subtract():real;
          function multiply():real;
          function divide():real;
          function modulo():real;

   end;


implementation
(* SimpleMathInteger *)
constructor SimpleMathInteger.create(_n1, _n2:integer);
begin
    n1 := _n1;
    n2 := _n2;
end;
{functions}
function SimpleMathInteger.add():integer;
begin
    add := (n1 + n2);
end;

function SimpleMathInteger.subtract():integer;
begin
   subtract := (n1- n2);
end;

function SimpleMathInteger.multiply():integer;
begin
  multiply := (n1*n2);
end;

function SimpleMathInteger.divide():integer;
begin
     divide := trunc(n1/n2);
end;

function SimpleMathInteger.modulo():integer;
begin
   modulo := trunc(n1 mod n2);
end;


(* END SimpleMathInteger *)


(* SimpleMathReal *)
constructor SimpleMathReal.create(_n1, _n2:real);
begin
   n1 := _n1;
   n2 := _n2;
end;

{functions}
function SimpleMathReal.add():real;
begin
  add := (n1 + n2);
end;

function SimpleMathReal.subtract():real;
begin
   subtract := (n1 -n2);
end;

function SimpleMathReal.multiply():real;
begin
   multiply := (n1 * n2);
end;

function SimpleMathReal.divide():real;
begin
   divide := (n1/n2);
end;

function SimpleMathReal.modulo():real;
begin
   modulo := (round(n1) mod round(n2));
end;


(* END SimpleMathReal *)


end.

