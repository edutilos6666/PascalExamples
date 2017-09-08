{$mode objfpc}  (* directive to be used for defining a class*)
{$m+}   (* directive to be used for using constructor *) 


program example5; 
type 
   Person = class 
   private 
      name:string; 

   public
      constructor create(n:string); 
      
      procedure setName(n:string); 
      function getName(): string;
end;

type 

   Worker = class 
    private
      name:string;

   public
      constructor create(n:string);

      procedure setName(n:string);
      function getName(): string;
 
end; 

var 
    p1:Person;
    w1:Worker; 


constructor Person.create(n:string); 
begin 
   name := n; 
end; 

procedure Person.setName(n:string); 
begin
    name := n; 
end; 

function Person.getName():string; 
begin 
   getName := name; 
end; 



constructor Worker.create(n:string);
begin
   name := n;
end;

procedure Worker.setName(n:string);
begin
    name := n;
end;

function Worker.getName():string;
begin
   getName := name;
end;



begin 
   p1 := Person.create('foobar'); 
   writeln('name = ', p1.getName()); 
   w1 := Worker.create('edutilos'); 
   writeln('name = ', w1.getName());
end.
