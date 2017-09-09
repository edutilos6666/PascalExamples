unit StringExample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

  type
     StringExampleClazz = class
        constructor create();
        procedure example1();
     end;


implementation


constructor StringExampleClazz.create();
begin
end;


procedure StringExampleClazz.example1();
var
   str1, str2: string ;
   compRes :integer;
   lastChar :PChar;
   strUpper:string ;
   strLower:string ;
   strConst:string ;
   strRes :string ;
   pcharSrc :PChar;
   pchar1, pchar2: PChar;
   maxLength:Cardinal;
   pcharUpper , pcharLower: PChar;
   strHeap:PString;

begin
    str1 := 'foo';
    str2 := 'bar';
    compRes := AnsiCompareStr(str1, str2);
    compRes := AnsiCompareText(str1, str2);

    writeln('AnsiCompareStr = ', compRes);
    writeln('AnsiCompareText = ', compRes);
    lastChar := AnsiLastChar(str1);
    writeln('last char str1 = ', lastChar);
    lastChar := AnsiLastChar(str2);
    writeln('last char str2 = ', lastChar);
    strUpper := AnsiUpperCase(str1);
    strLower := AnsiLowerCase(strUpper);
    writeln('upper str1 = ', strUpper);
    writeln('lower str1 = ', strLower);
    strConst := 'edutilos';
    strRes := AnsiQuotedStr(strConst ,'!' );
    writeln('quoted str = ', strRes);
    pcharSrc := '!pako!';
    strRes := AnsiExtractQuotedStr(pcharSrc, '!');
    writeln('unquoted pchar = ', strRes);
    pchar1 := 'foo';
    pchar2 := 'Bar';
    compRes := AnsiStrComp(pchar1, pchar2);
    writeln('case sensitive compare = ', compRes);
    compRes := AnsiStrIComp(pchar1, pchar2);
    writeln('case insensitive compare = ', compRes);
    maxLength := 2;
    compRes := AnsiStrLComp(pchar1, pchar2, maxLength);
    writeln('case sensitive compare with first 2 chars = ', compRes);
    compRes := AnsiStrLIComp(pchar1, pchar2, maxLength);
    writeln('case insensitive compare with first 2 chars = ', compRes);
    lastChar := AnsiStrLastChar(pchar1);
    writeln('pchar1 last char = ', lastChar);
    lastChar := AnsiStrLastChar(pchar2);
    writeln('pchar1 last char = ', lastChar);

    {
     (*Access Violation -> does not work *)
    pchar1 := 'foo';
    pcharUpper:= AnsiStrUpper(pchar1);
    pcharLower := AnsiStrLower(pcharUpper);
    writeln('pcharUpper = ', pcharUpper);
    writeln('pcharLower = ', pcharLower);    }

    strRes := '';
    AppendStr(strRes, str1);
    AppendStr(strRes, str2);
    writeln('append str = ', strRes);

    strRes := '';
    strRes := strRes + str2 ;
    strRes := strRes + str1;
    writeln('append str = ', strRes);
    writeln('length strRes = ' , strRes.Length);

    str1 := 'foobar';
    writeln('str contains foo = ', str1.Contains('foo'));
    writeln('str contains edu = ', str1.contains('edu'));
    str1 := str1.UpperCase(str1);
    writeln('str1 uppercase = ' , str1);
    str1 := str1.LowerCase(str1);
    writeln('str1 lowercase = ', str1);
    writeln('str1 startswith foo = ', str1.StartsWith('foo'));
    writeln('str1 endswith bar = ', str1.EndsWith('bar'));

end;

end.

