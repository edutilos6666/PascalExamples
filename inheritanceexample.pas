unit InheritanceExample;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

  type
    Book = class
      protected
        title: string;
        price:real;

      public
        constructor create(_title:string ; _price:real);
        {title}
        procedure setTitle(_title:string);
        function getTitle():string;
        {price}
        procedure setPrice(_price:real);
        function getPrice():real;
        {display}
        procedure display(); virtual;
    end;

    Novel = class(Book)
       protected
         author:string;

       public
         constructor create(_title:string);overload;
         constructor create(_title:string ; _price:real; _author:string);overload;
         {author}
         procedure setAuthor(_author:string);
         function getAuthor():string;
         {display}
         procedure display();override;
    end;


    InheritanceExampleClazz = class
       public
         procedure example1();
    end;


implementation

(*  Book *)
constructor Book.create(_title:string ; _price:real);
begin
   title := _title;
   price := _price;
end;

{title}
procedure Book.setTitle(_title:string);
begin
   title := _title;
end;

function Book.getTitle():string;
begin
   getTitle := title;
end;

{price}
procedure Book.setPrice(_price:real);
begin
   price := _price;
end;

function Book.getPrice():real;
begin
   getPrice := price;
end;

{display}
procedure Book.display();
begin
   writeln('<<Book Infos>>');
   writeln('title = ', title);
   writeln('price = ', price);
end;

(* Book *)


(* Novel *)
constructor Novel.create(_title:string);
begin
   inherited create(_title, 0.0);
   author := '';
end;

constructor Novel.create(_title:string ; _price:real; _author:string);
begin
  inherited create(_title, _price);
  author := _author;
end;

{author}
procedure Novel.setAuthor(_author:string);
begin
  author := _author;
end;

function Novel.getAuthor():string;
begin
   getAuthor := author;
end;

{display}
procedure Novel.display();
begin
   writeln('<<Novel Infos>>');
   inherited display();
   writeln('author = ', author);
end;

(* Novel *)


(* InheritanceExampleClazz *)
procedure InheritanceExampleClazz.example1();
var
  b:Book ;
  n:Novel;
begin
   b := Book.create('title1', 100.0);
   n := Novel.create('title2', 200.0, 'author2');
   b.display();
   writeln();
   n.display();
end;

end.

