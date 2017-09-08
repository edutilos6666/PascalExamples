{$mode objfpc}
{$m+}

program example6; 
type 
    Person = class 
    private 
        id:integer; 
       name: string; 
       age:integer; 
       wage:real; 
       active:boolean; 

    public 
       constructor create(_id:integer ; _name:string ; _age:integer; _wage:real; _active:boolean); 
       
       procedure setId(_id:integer);
       function getId():integer; 

       procedure setName(_name:string);
       function getName():string;
    
       procedure setAge(_age:integer);
       function getAge():integer;
  
       procedure setWage(_wage:real);
       function getWage():real; 

       procedure setActive(_active:boolean);
       function isActive():boolean; 

       procedure printPerson(); 
end;

var 
  p1, p2: Person;  


constructor Person.create(_id:integer; _name:string ; _age:integer; _wage:real; _active:boolean);
begin 
   id := _id; 
   name := _name;
   age := _age; 
   wage := _wage; 
   active := _active; 
end; 

procedure Person.setId(_id:integer);
begin 
    id := _id; 
end; 

function Person.getId():integer;
begin 
   getId := id; 
end; 


procedure Person.setName(_name:string);
begin 
   name := _name; 
end; 

function Person.getName():string; 
begin 
  getName := name; 
end; 


procedure Person.setAge(_age:integer);
begin 
  age := _age; 
end; 

function Person.getAge():integer; 
begin
   getAge := age; 
end; 



procedure Person.setWage(_wage:real);
begin 
   wage := _wage ; 
end; 

function Person.getWage():real;
begin 
   getWage := wage; 
end; 


procedure Person.setActive(_active:boolean);
begin 
   active := active; 
end; 


function Person.isActive():boolean ;
begin
  isActive := active; 
end; 


procedure Person.printPerson();
begin
  writeln('[', id , ',',name , ',', age, ',', wage, ',', active,']'); 
end; 


begin 
   p1 := Person.create(1, 'foo', 10, 100.0, true); 
   writeln('id = ', p1.getId()); 
   writeln('name = ', p1.getName()); 
   writeln('age = ', p1.getAge()); 
   writeln('wage = ', p1.getWage()); 
   writeln('active = ', p1.isActive());
  
   p1.setId(2);
  p1.setName('bar');
  p1.setAge(20);
  p1.setWage(200.0); 
  p1.setActive(false);
  p1.printPerson();
 
end.


