program example4; 
   var 
     id:integer;  name:string; age:integer; wage:real; active:boolean; 
      a:integer; b:integer; c:integer;  min:integer; 
  
 procedure  printProps(id:integer; name:string; age:integer; wage:real; active:boolean); 
 begin 
    writeln('id = ', id); 
    writeln('name = ', name); 
    writeln('age = ', age); 
    writeln('wage = ', wage); 
    writeln('active = ', active); 
 end; 


procedure findMax(a:integer; b:integer; c:integer); 
  var
      max:integer ; 
begin 
   if a > b then 
     max := a 
   else 
     max := b ;

   if c > max then 
     max := c; 

   writeln('max = ', max); 
end; 

procedure findMin(a:integer; b:integer; c:integer; var m:integer); 
begin
   if a < b then 
      m := a 
   else 
      m := b; 

   if c < m then 
     m := c; 
end; 


begin 

    id := 1 ; 
    name := 'foo'; 
    age := 10; 
    wage := 100.0; 
   active := false; 
   printProps(id, name, age, wage, active); 
   writeln('');
  printProps(1, 'foo', 10, 100.0, false);
   writeln('Enter 3 numbers: ');
   readln (a, b, c); 
  findMax(a, b , c); 
   writeln('Enter 3 numbers: '); 
    readln(a,b,c); 
    findMin(a,b,c,min); 
    writeln('min number = ', min);
end. 


