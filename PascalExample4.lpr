program PascalExample4;

uses PascalExample4_unit1;

 const
    WELCOME_MSG = 'Welcome to the PascalExample4';

 type
    months = (JAN , FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV, DEC);

var
   id : integer ;
   fname, lname : string ;
   age :integer;
   wage: real = 100.0;
   active :boolean;
   yourMonth : months;
   marks: 1 .. 100;
   grade : 'A' .. 'E';

begin
   writeln('insert your id: ');
   readln(id);
   writeln('insert your fname: ');
   readln(fname);
   writeln('insert your lname:');
   readln(lname);
   writeln('insert your age: ');
   readln(age);
   writeln('insert your wage: ');
   readln(wage);
   {
   writeln('insert if you are active: ');
   readln(active); }
   active := true ;
   yourMonth := months.JAN;
   yourMonth := FEB;
   marks := 66 ;
   grade := 'C';

   writeln(WELCOME_MSG);
   writeln('<<your answers>>');
   writeln('id = ', id);
   writeln('fname and lname = ', fname , ' ', lname);
   writeln('age = ', age);
   writeln('wage = ', wage);
   writeln('active = ', active);
   writeln('your month = ', yourMonth);
   writeln('mark = ', marks);
   writeln('grade = ', grade);
   sayHello();
end.

