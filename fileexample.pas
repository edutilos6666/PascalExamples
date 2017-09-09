unit FileExample;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;

   type
       StudentRecord = record
          id:integer ;
          name:ShortString;
          age:integer;
          wage:real;
          active:boolean;
       end;


      { StudentFile = file of StudentRecord ;}
      StudentRecordPtr = ^StudentRecord ;
        FileExampleClazz = class
          public
            procedure example1(); { reading and writing record from and into file }
            procedure initStudentRecordPtr(recordPtr:StudentRecordPtr; id:integer; name:shortstring; age:integer; wage:real; active:boolean);
            procedure printStudentRecord(stRecord:StudentRecord);

            procedure example2();  { text file : read and write }
            procedure example3();  { file for integer : read and write }
            procedure example4();  { file for real : read and write }
            procedure example5();  { appending into text file }
        end;


implementation

 { example1 }
procedure FileExampleClazz.example1();
var
  s1, s2 , s3: StudentRecord ;
  f_out: file of StudentRecord;
  f_in : file of StudentRecord ;
  fileName:string;
  s_temp : StudentRecord;
begin
    fileName := 'students.dat';
    initStudentRecordPtr(@s1 , 1, 'foo', 10, 100.0, true);
    initStudentRecordPtr(@s2 , 2, 'bar', 20, 200.0, false);
    initStudentRecordPtr(@s3, 3, 'edu', 30, 300.0, true);
    {printStudentRecord(s1);}
    assign(f_out , fileName);
    rewrite(f_out);
    write(f_out , s1);
    write(f_out, s2);
    write(f_out , s3);
    close(f_out);


    assign(f_in, fileName);
    reset(f_in);

    while not eof(f_in) do
    begin
      read(f_in, s_temp);
      printStudentRecord(s_temp);
    end;

    close(f_in);
end;

{ initStudentRecordPtr }
procedure FileExampleClazz.initStudentRecordPtr(recordPtr:StudentRecordPtr; id:integer; name:shortstring; age:integer; wage:real; active:boolean);
begin
   recordPtr^.id := id;
   recordPtr^.name := name;
   recordPtr^.age := age ;
   recordPtr^.wage := wage;
   recordPtr^.active := active;
  end;



{ printStudentRecord }
procedure FileExampleClazz.printStudentRecord(stRecord:StudentRecord);
const
  delim = ' ; ';
var
   id:integer;
   name:shortstring;
   age:integer;
   wage:real;
   active:boolean;
begin
   id := stRecord.id;
   name := stRecord.name;
   age := stRecord.age;
   wage := stRecord.wage;
   active := stRecord.active;
   writeln(id , delim, name , delim, age, delim, wage, delim, active);
end;



{ example2 }
procedure FileExampleClazz.example2();
var
    str:string;
    f_out:text;
    fileName:string;
    f_in:text ;
begin
     fileName := 'data.txt';
     assign(f_out , fileName);
     rewrite(f_out);
     writeln(f_out , '<heading1>')  ;
     writeln(f_out , '<heading2>');
     writeln(f_out , '<heading3>');
     writeln(f_out , '<heading4>');

     close(f_out);

     writeln('<<file content>>');
     assign(f_in , filename);
     reset(f_in);
     while not eof(f_in) do
     begin
       ReadLn(f_in, str);
        writeln(str);
     end;
     close(f_in);

end;


{ example3 }
procedure FileExampleClazz.example3();
var
    num: integer;
    f_out: file of integer ;
    f_in : file of integer ;
    fileName: string;
begin
   fileName := 'integers.dat';
   assign(f_out , fileName);
   rewrite(f_out);
   write(f_out, 10);
   write(f_out, 20);
   write(f_out, 30);
   write(f_out, 40);
   close(f_out);


   assign(f_in , fileName);
   reset(f_in);
   while not eof(f_in) do
   begin
      read(f_in, num);
      writeln('number = ', num);
   end;
   close(f_in);

end;


{ example4 }
procedure FileExampleClazz.example4();
var
    num:real ;
    f_out, f_in : file of real;
    fileName: string;
begin
   fileName := 'reals.dat';
   assign(f_out, fileName);
   rewrite(f_out);
   write(f_out, 100.0);
   write(f_out, 200.0);
   write(f_out, 300.0);
   write(f_out, 1234.56);
   close(f_out);


   assign(f_in , fileName);
   reset(f_in);
   while not eof(f_in) do
   begin
      read(f_in , num);
      writeln('number = ', num);
   end;
   close(f_in);


end;


{ example5 }
procedure FileExampleClazz.example5();
var
    str:string;
    f_out , f_in : text;
    fileName:string;
begin
    fileName := 'strings.txt';
    assign(f_out , fileName);
    rewrite(f_out);
    writeln(f_out, '<heading1>');
    writeln(f_out, '<heading2>');
    close(f_out);


    assign(f_out, fileName);
    append(f_out);
    writeln(f_out, '<heading3>');
    writeln(f_out, '<heading4>');
    writeln(f_out, '<heading5>');
    close(f_out);


    assign(f_in , fileName);
    reset(f_in);
    while not eof(f_in) do
    begin
       readln(f_in, str);
       writeln(str);
    end;
    close(f_in);

end;

end.

