unit InterfaceExample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

  type
     Writable = interface
          function isWritable():boolean;
          procedure write();
     end;

     Readable = interface
          function isReadable(): boolean;
          procedure read();
     end;

     Executable = interface
          function isExecutable(): boolean;
          procedure execute();
     end;


     CustomFile = class (TInterfacedObject, Writable, Readable)
           private
             fileName:string;
           public
             constructor create(_fileName:string);
             {fileName}
             procedure setFileName(_fileName:string);
             function getFileName():string;
             { implement Writable interface }
             function isWritable():boolean;
             procedure write();
             { implement Readable interface }
             function isReadable():boolean;
             procedure read();
             { implement Executable interface }
             function isExecutable():boolean;
             procedure execute();
     end;

     InterfaceExampleClazz = class
         public
            procedure example1();
     end;


implementation
{constructor }
constructor CustomFile.create(_fileName:string);
begin
     fileName := _fileName;
end;

{fileName}
procedure CustomFile.setFileName(_fileName:string);
begin
  fileName := _fileName;
end;


function CustomFile.getFileName():string;
begin
   getFileName := fileName;
end;


{implement Writable Interface }
function CustomFile.isWritable(): boolean;
begin
   if fileName.Contains('.write') then
      isWritable := true
   else
      isWritable := false;
end;

procedure CustomFile.Write();
begin
    if isWritable() then
       writeln(fileName , ' was written.')
    else
       writeln(filename, ' is not writable.');

end;


{implement Readable Interface }
function CustomFile.isReadable():boolean;
begin
   if fileName.Contains('.read') then
      isReadable := true
   else
      isReadable := false;
end;

procedure CustomFile.read();
begin
   if isReadable() then
     writeln(filename , ' was read.')
   else
      writeln(filename, ' is not readable.');
end;



{ implement Executable Interface }
function CustomFile.isExecutable():boolean;
begin
    if fileName.Contains('.exe') then
       isExecutable := true
    else
       isExecutable := false ;
end;

procedure CustomFile.execute();
begin
   if isExecutable() then
     writeln(filename, ' was executed.')
   else
      writeln(filename, ' is not executable.');
end;



{ example1 }
procedure InterfaceExampleClazz.example1();
var
  cf1, cf2, cf3, cf4 : CustomFile;
begin
  cf1 := CustomFile.create('example.write');
  cf2 := CustomFile.create('example.read');
  cf3 := CustomFile.create('example.exe');
  cf4 := CustomFile.create('example.write.read.exe');
  writeln('<<infos about ', cf1.getFileName() , '>>');
  writeln('writable = ', cf1.isWritable());
  writeln('readable = ', cf1.isReadable());
  writeln('executable = ', cf1.isExecutable());
  cf1.write();
  cf1.read();
  cf1.execute();
  writeln();

  writeln('<<infos about ', cf2.getFileName() , '>>');
  writeln('writable = ', cf2.isWritable());
  writeln('readable = ', cf2.isReadable());
  writeln('executable = ', cf2.isExecutable());
  cf2.write();
  cf2.read();
  cf2.execute();
  writeln();

  writeln('<<infos about ', cf3.getFileName() , '>>');
  writeln('writable = ', cf3.isWritable());
  writeln('readable = ', cf3.isReadable());
  writeln('executable = ', cf3.isExecutable());
  cf3.write();
  cf3.read();
  cf3.execute();
  writeln();


  writeln('<<infos about ', cf4.getFileName() , '>>');
  writeln('writable = ', cf4.isWritable());
  writeln('readable = ', cf4.isReadable());
  writeln('executable = ', cf4.isExecutable());
  cf4.write();
  cf4.read();
  cf4.execute();
  writeln();

end;

end.

