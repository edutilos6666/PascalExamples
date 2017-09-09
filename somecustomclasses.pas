unit SomeCustomClasses;

{$mode objfpc}{$H+}

interface
    uses
  Classes, SysUtils;

     type
        Person = class
          private
             id:integer ;
             name: string ;
             age:integer;
             wage:real;
             active:boolean;

          public
              constructor create(_id:integer; _name:string ; _age:integer; _wage:real; _active:boolean);
              {id}
              procedure setId(_id:integer);
              function getId():integer;
              {name}
              procedure setName(_name:string);
              function getName():string;
              {age}
              procedure setAge(_age:integer);
              function getAge():integer;
              {wage}
              procedure setWage(_wage:real);
              function getWage():real;
              {active}
              procedure setActive(_active:boolean);
              function isActive():boolean;

        end;

       type
          Point = class
             private
                x, y:real;

             public
                constructor create(_x, _y:real);
                {x}
                procedure setX(_x:real);
                function getX():real;
                {y}
                procedure setY(_y:real);
                function getY():real;

          end;

      type
         Rectangle = class
            private
               upperLeft, lowerRight:Point;

            public
               constructor create(_upperLeft , _lowerRight:Point);
               {upperLeft}
               procedure setUpperLeft(_upperLeft:Point);
               function getUpperLeft():Point;
               {lowerRight}
               procedure setLowerRight(_lowerRight:Point);
               function getLowerRight():Point;
               {others}
               function calculateArea():real;
               function isInside(p:Point):boolean;


         end;





implementation
var
     width , height :real;
     checkX , checkY :boolean;

constructor Person.create(_id:integer; _name:string ; _age:integer; _wage:real; _active:boolean);
begin
    id := _id ;
    name := _name;
    age := _age;
    wage := _wage;
    active := _active;
end;
{id}
procedure Person.setId(_id:integer);
begin
    id := _id;
end;

function Person.getId():integer;
begin
   getId := id ;
end;

{name}
procedure Person.setName(_name:string);
begin
   name := _name;
end;

function Person.getName():string;
begin
   getName := name;
end;

{age}
procedure Person.setAge(_age:integer);
begin
   age := _age;
end;

function Person.getAge():integer;
begin
   getAge := age;
end;

{wage}
procedure Person.setWage(_wage:real);
begin
    wage := _wage;
end;

function Person.getWage():real;
begin
   getWage := wage;
end;

{active}
procedure Person.setActive(_active:boolean);
begin
   active := _active;
end;

function Person.isActive():boolean;
begin
  isActive := active;
end;


(* POINT *)
constructor Point.create(_x, _y:real);
begin
   x := _x;
   y := _y;
end;

{x}
procedure Point.setX(_x:real);
begin
   x := _x;
end;

function Point.getX():real;
begin
   getX := x;
end;

{y}
procedure Point.setY(_y:real);
begin
   y := _y;
end;

function Point.getY():real;
begin
   getY := y;
end;

(* END POINT *)



(* RECTANGLE *)
constructor Rectangle.create(_upperLeft , _lowerRight:Point);
begin
    upperLeft := _upperLeft;
    lowerRight := _lowerRight;
end;

{upperLeft}
procedure Rectangle.setUpperLeft(_upperLeft:Point);
begin
   upperLeft := _upperLeft;
end;

function Rectangle.getUpperLeft():Point;
begin
   getUpperLeft := upperLeft;
end;

{lowerRight}
procedure Rectangle.setLowerRight(_lowerRight:Point);
begin
   lowerRight := _lowerRight;
end;

function Rectangle.getLowerRight():Point;
begin
    getLowerRight := lowerRight;
end;

{others}
function Rectangle.calculateArea():real;
begin
    width := lowerRight.getX() - upperLeft.getX();
    height := lowerRight.getY() -upperLeft.getY() ;
    calculateArea := width*height ;
end;

function Rectangle.isInside(p:Point):boolean;
begin
    checkX :=  (p.getX() >= upperLeft.getX()) and (p.getX() <= lowerRight.getX());
    checkY := (p.getY() >= upperLeft.getY()) and (p.getY() <= lowerRight.getY());
    isInside := checkX and checkY;
end;

(* END RECTANGLE *)

end.

