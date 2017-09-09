unit AbstractClassExample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

   type
     CustomFileBase2 = class abstract
          public
             procedure write(); virtual; abstract;
             procedure read(); virtual; abstract;
             procedure execute(); virtual; abstract;

             function isWritable():boolean; virtual; abstract;
             function isReadable():boolean; virtual;abstract;
             function isExecutable():boolean; virtual;abstract;

     end;


     CustomFile2 = class(CustomFileBase2)
             private
                     fileName:string;
             public
                     constructor create(_fileName:string);
                     {fileName}
                     procedure setFileName(_fileName:string);
                     function getFileName():string;

                     procedure write(); override;
                     function isWritable():boolean;override;
                     procedure read();override;
                     function isReadable():boolean;override;
                     procedure execute();override;
                     function isExecutable():boolean;override;


     end;


     AbstractClassExampleClazz = class
             public
                     procedure example1();
     end;



implementation
{constructor }
constructor CustomFile2.create(_fileName:string);
begin
  fileName := _fileName;
end;

{fileName}
procedure CustomFile2.setFileName(_fileName:string);
begin
  fileName := _fileName;
end;

function CustomFile2.getFileName():string;
begin
   getFileName := fileName;
end;


{write}
procedure CustomFile2.write();
begin
    if isWritable() then
       writeln(fileName, ' was written.')
    else
       writeln(fileName, ' is not writable.');
end;

{isWritable}
function CustomFile2.isWritable():boolean;
begin
    if fileName.contains('.write') then
       isWritable := true
    else
       isWritable := false;
end;

procedure CustomFile2.read();
begin
    if isReadable() then
       writeln(fileName, ' was read.')
    else
       writeln(fileName, ' is not readable.');
end;

function CustomFile2.isReadable():boolean;
begin
   if fileName.contains('.read') then
      isReadable := true
   else
      isReadable := false;
end;

procedure CustomFile2.execute();
begin
   if isExecutable() then
      writeln(fileName , ' was executed.')
   else
     writeln(fileName, ' is not executable.');

end;

function CustomFile2.isExecutable():boolean;
begin
   if fileName.contains('.exe') then
      isExecutable := true
   else
      isExecutable := false;
end;


{ example1 }
procedure AbstractClassExampleClazz.example1();
var
   cf1 , cf2 , cf3, cf4: CustomFile2;
begin
     cf1 := CustomFile2.create('example.write');
  cf2 := CustomFile2.create('example.read');
  cf3 := CustomFile2.create('example.exe');
  cf4 := CustomFile2.create('example.write.read.exe');
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

