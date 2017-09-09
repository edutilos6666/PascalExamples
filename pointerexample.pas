unit PointerExample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

  type
      PointerExampleClazz = class
         public
           constructor create();
           procedure example1();
           procedure example2();  {nil pointer }
      end;


implementation


constructor PointerExampleClazz.create();
begin

end;


procedure PointerExampleClazz.example1();
var
  n:integer ;
  nptr:^integer;
  nptr_ptr:^word;
  nptr_ptr2:^word;
begin
  n:= 100 ;
  nptr:= @n;
  nptr_ptr := @nptr;
  nptr_ptr2 := addr(nptr);

  writeln('n = ', n);
  writeln('nptr = ',nptr^);
  writeln('nptr_ptr = ', nptr_ptr^);
  writeln('nptr_ptr2 = ', nptr_ptr2^);

  nptr^ := 200;
  writeln('');
  writeln('n = ', n);
  writeln('nptr = ',nptr^);
  writeln('nptr_ptr = ', nptr_ptr^);
  writeln('nptr_ptr2 = ', nptr_ptr2^)

end;


procedure PointerExampleClazz.example2();
var
   ptr:^integer;
   ptr_ptr:^word;
begin

  ptr := nil ;
  ptr_ptr := @ptr ;

  {writeln('ptr^ = ' , ptr^);   Access Violation -> NullPointerException(in java) }
  writeln('ptr_ptr^ = ', ptr_ptr^);
end;


end.

