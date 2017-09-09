unit PascalExample4_unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
procedure sayHello();

implementation
  procedure sayHello();
  begin
     writeln('Hello World');
  end;

end.

