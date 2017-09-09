unit ArrayExample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

    type

        ArrayExampleClazz = class
          type
    DynamicMultiArr = array of array of integer ;
         public
           constructor create();
           procedure example1();
           procedure example2();
           procedure example3();   { multi-dimensional static array , 1-based indexing , from user dependent array[0..10] of integer-> 0-based  can also be}
           procedure example4();   { dynamic array  , 0-based indexing}
           procedure example5(); {packed  static array }
           procedure printArrays(numbers: array of integer; names: array of string ; matrix: DynamicMultiArr);  { passing array as function param}
           procedure example6(); {testing printArrays() procedure }   {static arrays are shift one position left when passed as function argument }
    end;


implementation


constructor ArrayExampleClazz.create();
begin

end;


procedure ArrayExampleClazz.example1();
var
   numbers: array[1..10] of integer ;
   i:integer;
begin
   {add values into numbers }
   for i := 1 to 10 do
   begin
      numbers[i] := 10 + i;
   end;
   {print values of numbers }
   for i :=1 to 10 do
   begin
      writeln('numbers[', i , ']=', numbers[i]);
   end;
end;


procedure ArrayExampleClazz.example2();
var
  intNumbers: array[1..10] of integer;
  realNumbers: array[1..10] of real;
  names: array[1..5] of string;
  i:integer ;
  randomNumbers: array[1..5] of integer = (59, 22, 35, 41,52);
begin
  for i := 1 to 10 do
  begin
     intNumbers[i] := 100 + i ;
  end;

  for i := 1 to 10 do
  begin
     realNumbers[i] := 100.0 + i;
  end;

  names[1] := 'foo';
  names[2] := 'bar';
  names[3] := 'bim';
  names[4] := 'edu';
  names[5] := 'tilos';

  writeln('<<printing intNumbers>>');
  for i := 1 to 10 do
  begin
     writeln('intNumbers[' , i, '] = ', intNumbers[i]);
  end;
  writeln();
  writeln('<<printing realNumbers>>');
  for i := 1 to 10 do
  begin
    writeln('realNumbers[', i, '] = ', realNumbers[i]);
  end;
  writeln();

  writeln('<<printing names>>');
  for i:=1 to 5 do
  begin
    writeln('names[', i , '] = ', names[i]);
  end;
  writeln();
  writeln('<<printing randomNumbers>>');
  for i := 1 to 5 do
  begin
    writeln('randomNumbers[', i, '] = ', randomNumbers[i]);
  end;
  writeln();

end;


{ exmaple3() }
procedure ArrayExampleClazz.example3();
var
  matrix:array[1..10, 1..10] of integer;
  i, j :integer;
  prod : integer ;
begin
   { initializing matrix }
    for i := 1 to 10 do
    begin
      for j := 1 to 10 do
      begin
          prod := i*j;
          matrix[i,j] := prod;
      end;
    end;

    { printing matrix }
    writeln('<<printing matrix>>');
    for i :=1 to 10 do
    begin
      for j := 1 to 10 do
      begin
        write(matrix[i,j], ' ; ');
      end;
      writeln();
    end;


end;


{ example4() }
procedure ArrayExampleClazz.example4();
var
   matrixDynamic : array of array of integer ;
   i , j , prod : integer;
begin
    {initializing matrixDynamic }
    SetLength(matrixDynamic, 10 , 10);
    for i := 0 to 9 do
    begin
      for j := 0 to 9 do
      begin
         prod := i*j;
         matrixDynamic[i,j] := prod;
      end;
    end;

     {printing matrixDynamic }
     writeln('<<printing matrixDynamic>>');
     for i := 0 to 9 do
     begin
        for j := 0 to 9 do
        begin
           write(matrixDynamic[i,j], ' ; ');
        end;
        writeln();
     end;
end;


{ example5() }
procedure ArrayExampleClazz.example5();
var
    matrixPacked: packed array[0..9, 0..9] of integer ;
    i , j , prod : integer;
begin

    {initialize matrixPacked }
     for i := 0 to 9 do
     begin
       for j := 0 to 9 do
       begin
          prod := i*j;
          matrixPacked[i,j] := prod;
       end;
     end;

     {print matrixPacked }
     writeln('<<printing matrixPacked>>');
     for i := 0 to 9 do
     begin
       for j := 0 to 9 do
       begin
          write(matrixPacked[i,j], ' ; ');
       end;
       writeln();
     end;

end;



{ printArrays }
procedure ArrayExampleClazz.printArrays(numbers: array of integer; names: array of string ; matrix: DynamicMultiArr) ;
var
    sizeNumbers : integer ;
    sizeNames: integer;
    size1Matrix, size2Matrix:integer;
    i , j :integer;
begin
  writeln('<<printing numbers>>');
  sizeNumbers := Length(numbers);
  for i := 0 to (sizeNumbers-1) do
  begin
    writeln('numbers[', i, '] = ', numbers[i]);
  end;
  writeln();

  writeln('<<printing names>>');
  sizeNames := Length(names);
  for i := 0 to (sizeNames-1 ) do
  begin
    writeln('names[', i, '] = ', names[i]);
  end;
  writeln();

  writeln('<<printing matrix>>');
  size1Matrix := Length(matrix);
  size2Matrix := Length(matrix[1]);
  {size2Matrix := size1Matrix;}
  for i :=0 to (size1Matrix-1 )do
  begin
    for j := 0 to (size2Matrix-1) do
    begin
      write(matrix[i,j], '; ');
    end;
    writeln();
  end;




end;


{ example6 }
procedure ArrayExampleClazz.example6();
var
  numbers: array[1..10] of integer ;
  names: array[1..5] of string;
  matrix: DynamicMultiArr;
  i, j , prod : integer;
begin
   {numbers }
   for i := 1 to 10 do
   begin
      numbers[i] := 100 +i;
   end;

   {names }
   names[1] := 'edu';
   names[2] := 'pako';
   names[3] := 'foobar';
   names[4] := 'messi';
   names[5] := 'ronaldo';
   writeln(names[1]);

   {matrix}
   SetLength(matrix, 10 , 10);
   for i:= 0 to 9 do
   begin
     for j := 0 to 9 do
     begin
        prod := (i+1)*(j+1);
        matrix[i,j] := prod;
     end;
   end;

   printArrays(numbers, names, matrix);

end;



end.

