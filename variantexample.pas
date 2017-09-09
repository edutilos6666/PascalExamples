unit VariantExample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

  type
    VariantExampleClazz = class
       public
         {constructor is supplied by deafult -> with Create() name}
         procedure example1();
         procedure example2();
    end;

     PropertiesRecord = record
       prop1:variant;
       prop2: variant;
       prop3: variant;
     end;


implementation
 {example1 }
procedure VariantExampleClazz.example1();
type
   colors = (blue , red, green);
var
  x:variant;
begin
   x := 10 ;
   writeln('x as integer = ' , x);
   x := 100.0;
   writeln('x as real = ', x);
   x := true;
   writeln('x as boolean = ', x);
   x := colors.green;
   writeln('x as enum = ', x);
end;


{example2 }
procedure VariantExampleClazz.example2();
type
   colors = (blue , red, green);
var
  p1 :PropertiesRecord;
begin
   p1.prop1 := 10 ;
   p1.prop1 := 'foo';
   p1.prop2 := 'bar';
   p1.prop2 := 20 ;
   p1.prop3 := true;
   p1.prop3 := 100.0;
   p1.prop3 := colors.red;

   writeln('prop1 = ', p1.prop1);
   writeln('prop2 = ', p1.prop2);
   writeln('prop3 = ', p1.prop3);

end;



end.

