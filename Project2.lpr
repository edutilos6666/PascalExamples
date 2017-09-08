program Project2;

type
    Worker = class
     private
        id:integer;
        name:string;
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

        procedure printProps();
        function toString():string;

 end;

        constructor Worker.create(_id:integer; _name:string ; _age:integer; _wage:real; _active:boolean);
        begin
          id := _id;
          name := _name;
          age := _age;
          wage := _wage;
          active := _active;
        end;

        {id}
        procedure Worker.setId(_id:integer);
        begin
          id := _id;
        end;

        function Worker.getId():integer;
        begin
           getId := id;
        end;

        {name}
        procedure Worker.setName(_name:string);
        begin
           name := _name;
        end;

        function Worker.getName():string;
        begin
           getName := name;
        end;

        {age}
        procedure Worker.setAge(_age:integer);
        begin
           age := _age;
        end;

        function Worker.getAge():integer;
        begin
           getAge := age;
        end;

        {wage}
        procedure Worker.setWage(_wage:real);
        begin
           wage := _wage;
        end;

        function Worker.getWage():real;
        begin
           getWage := wage;
        end;

        {active}
        procedure Worker.setActive(_active:boolean);
        begin
           active := _active;
        end;

        function Worker.isActive():boolean;
        begin
           isActive := active;
        end;

        procedure Worker.printProps();
        begin
           writeln('id = ', id);
           writeln('name = ', name);
           writeln('age = ', age);
           writeln('wage = ', wage);
           writeln('active = ', active);
        end;

       function Worker.toString():string;
       begin
          toString :=  name ;
       end;

var
   w1, w2: Worker;

begin
  w1 := Worker.create(1, 'foo', 10, 100.0, true);
  w1.printProps();
  writeln(w1.toString());
end.

