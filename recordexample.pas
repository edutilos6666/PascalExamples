unit RecordExample;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;
    type

     ProgrammerPtr = ^ Programmer ;

      Programmer = record
        id:integer;
        name:string;
        age:integer;
        wage:real;
        active:boolean;
      end;

       RecordExampleClazz = class
         public
           procedure printProgrammer(prog:Programmer);
           function initProgrammer(prog:Programmer; id:integer; name:string ; age:integer; wage:real; active:boolean):Programmer;

           procedure example1();


           procedure printProgrammerPtr(progPtr:ProgrammerPtr);
           procedure initProgrammerPtr(progPtr:ProgrammerPtr ; id:integer; name:string ; age:integer; wage:real; active:boolean);
           procedure example2();

           procedure example3(); {with keyword}


       end;




implementation
 {printProgrammer }
procedure RecordExampleClazz.printProgrammer(prog:Programmer);
begin
   writeln('<<Programmer details>>');
   writeln('id = ', prog.id);
   writeln('name = ', prog.name);
   writeln('age = ', prog.age);
   writeln('wage = ', prog.wage);
   writeln('active = ', prog.active);
   writeln();
end;
 {initProgrammer}
function RecordExampleClazz.initProgrammer(prog:Programmer; id:integer; name:string ; age:integer; wage:real; active:boolean):Programmer;
begin
   prog.id := id;
   prog.name := name;
   prog.age := age;
   prog.wage := wage;
   prog.active := active;
   initProgrammer := prog;
end;



 { example1 }
 procedure RecordExampleClazz.example1();
 var
    p1, p2:Programmer ;
 begin
    p1 := initProgrammer(p1, 1, 'foo', 10 , 100.0, true);
    printProgrammer(p1);
    p2 := initProgrammer(p2, 2, 'edu', 20 , 200.0, false);
    printProgrammer(p2);

 end;


 { printProgrammerPtr }
 procedure RecordExampleClazz.printProgrammerPtr(progPtr:ProgrammerPtr);
 begin
    writeln('<<Programmer details>>');
    writeln('id = ', progPtr^.id);
    writeln('name = ', progPtr^.name);
    writeln('age = ', progPtr^.age);
    writeln('wage = ', progPtr^.wage);
    writeln('active = ', progPtr^.active);
    writeln();
 end;

 { initProgrammerPtr }
 procedure RecordExampleClazz.initProgrammerPtr(progPtr:ProgrammerPtr ; id:integer; name:string ; age:integer; wage:real; active:boolean);
 begin
    progPtr^.id := id ;
    progPtr^.name := name;
    progPtr^.age := age;
    progPtr^.wage := wage;
    progPtr^.active := active;
 end;


 { example2 }
 procedure RecordExampleClazz.example2();
 var
    prog1Ptr , prog2Ptr: ProgrammerPtr ;
 begin
    New(prog1Ptr);
    New(prog2Ptr);
    {prog1Ptr}
    initProgrammerPtr(prog1Ptr, 1, 'foo', 10 ,100.0, true);
    printProgrammerPtr(prog1Ptr);

    initProgrammerPtr(prog2Ptr, 2, 'bar', 20, 200.0, false);
    printProgrammerPtr(prog2Ptr);

    Dispose(prog1Ptr);
    Dispose(prog2Ptr);
 end;


 { example3 }
 procedure RecordExampleClazz.example3();
 var
    prog1:Programmer;
 begin
    with prog1 do
     begin
         id := 3;
         name := 'edutilos';
         age := 30;
         wage := 300.0;
         active := true;
     end;

    printProgrammerPtr(@prog1);

 end;

end.

