program example3;
var 
   a,b, ret : integer ; 
function max(num1, num2:integer):integer; 
var
   result:integer; 
begin 
   if (num1 > num2) then 
      result := num1 
   else 
      result := num2;

   max := result 

end; 


function min(num1:integer;  num2:integer):integer; 
var 
  result:integer; 
begin 
   if (num1 < num2) then 
      result := num1 
   else 
      result := num2; 

   min := result 
end; 



function printProps(id:integer; name:string; age:integer; wage:real; active:boolean): integer; 
begin 
   writeln('id = ', id);
   writeln('name = ', name); 
   writeln('age = ', age); 
   writeln('wage = ', wage); 
   writeln('active = ', active);  
   printProps := 0 ; 
end; 



begin
   a := 100; 
   b := 200; 
   ret := max(a,b); 
   writeln('Max value is: ', ret);
   ret := min(a,b); 
   writeln('Min value is: ', ret);
   ret := printProps(1, 'foo', 10, 100.0, true);
end. 
