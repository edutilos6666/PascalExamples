program PascalExample5;

uses PascalExample5_unit1, SomeCustomClasses, ArithmeticOperators,
RelationalOperators, BooleanOperators, DecisionMaking, Looping,
LocalAndGlobalVariables, StringExample, ArrayExample, PointerExample,
RecordExample, VariantExample, SetExample, FileExample, DateTimeExample,
InterfaceExample, AbstractClassExample, InheritanceExample;

var
    sm:SimpleMath;
    x, y :real;
    resAdd , resSubtract , resMultiply , resDivide :real;
    p:Person ;
    id:integer;
    name:string;
    age:integer ;
    wage:real;
    active:boolean;
    rect:Rectangle;
    pointTest:Point;
    n1_integer , n2_integer:integer;
    n1_real , n2_real:real;
    sm_integer :SimpleMathInteger;
    sm_real :SimpleMathReal;
    (* RelationalOperators *)
    relChecker:RelationalOperatorChecker;
    relX, relY:integer;
    (* BooleanOperators *)
    boolChecker:BooleanOpChecker;
    (* DecisionMaking *)
    decisionMaker:DecisionMakingRunner;
    (* Looping *)
    looper:LoopRunnner;
    (* LocalAndGlobalVariables *)
    localAndGlobalClazz :LocalAndGlobal;
    (* StringExample *)
    strExampleInstance: StringExampleClazz;

    (* ArrayExample *)
    arrayExampleInstance: ArrayExampleClazz;

    (* PointerExample *)
    pointerExampleInstance: PointerExampleClazz;


    (* RecordExample *)
    recordExampleInstance: RecordExampleClazz;

    (* VariantExample *)
    variantExampleInstance:VariantExampleClazz;


    (* SetExample *)
    setExampleInstance: SetExampleClazz;


    (* FileExample *)
    fileExampleInstance : FileExampleClazz;

    (* DateTimeExample *)
    dateTimeExampleInstance : DateTimeExampleClazz;

    (* InterfaceExample *)
    interfaceExampleInstance :InterfaceExampleClazz;

    (* AbstractClassExample *)
    abstractClassExampleInstance :AbstractClassExampleClazz;

    (* InheritanceExample *)
    inheritanceExampleInstance :InheritanceExampleClazz;



begin
    x := 10.0 ;
    y := 3.0;
    sm := SimpleMath.create(x,y);
    resAdd := sm.add();
    resSubtract := sm.subtract();
    resMultiply := sm.multiply();
    resDivide := sm.divide();
    writeln('add = ', resAdd);
    writeln('subtract = ', resSubtract);
    writeln('multiply = ', resMultiply);
    writeln('divide = ', resDivide);
    sayHello();


    writeln('');
    id := 1;
    name := 'foobar';
    age := 10;
    wage := 100.0;
    active := true;
    p := Person.create(id , name, age, wage, active);
    writeln('id = ', p.getId());
    writeln('name = ', p.getName());
    writeln('age = ', p.getAge());
    writeln('wage = ', p.getWage());
    writeln('active = ', p.isActive());


    writeln('');
    rect := Rectangle.create(Point.create(10.0, 10.0), Point.create(50.0, 50.0));
    pointTest := Point.create(25.0, 25.0);
    writeln('upperLeft x = ', rect.getUpperLeft().getX());
    writeln('upperLeft y = ', rect.getUpperLeft().getY());
    writeln('lowerRight x = ', rect.getLowerRight().getX());
    writeln('lowerRight y = ', rect.getLowerRight().getY());
    writeln('area of rect = ', rect.calculateArea());
    writeln('is pointTest inside rect = ', rect.isInside(pointTest));


    { ArithmeticOperators }
    writeln('');
    n1_integer := 10 ;
    n2_integer := 3;
    sm_integer := SimpleMathInteger.create(n1_integer, n2_integer);
    writeln('<<SimpleMathInteger>>');
    writeln('add = ', sm_integer.add());
    writeln('subtract = ', sm_integer.subtract());
    writeln('multiply = ', sm_integer.multiply());
    writeln('divide = ', sm_integer.divide());
    writeln('modulo = ', sm_integer.modulo());

    n1_real := 10.0;
    n2_real := 3.0;
    sm_real := SimpleMathReal.create(n1_real, n2_real);
    writeln('<<SimpleMathReal>>');
    writeln('add = ', sm_real.add());
    writeln('subtract = ', sm_real.subtract());
    writeln('multiply = ' , sm_real.multiply());
    writeln('divide = ', sm_real.divide());
    writeln('modulo = ', sm_real.modulo());


    (* RelationalOperators *)
    writeln('');
    relX := 10 ;
    relY := 3;
    relChecker := RelationalOperatorChecker.create(relX, relY);
    writeln('eq = ', relChecker.eq());
    writeln('ne = ', relChecker.ne());
    writeln('lt = ' , relChecker.lt());
    writeln('le = ', relChecker.le());
    writeln('gt = ' , relChecker.gt());
    writeln('ge = ', relChecker.ge());



    (* BooleanOperators *)
    writeln('');
    boolChecker := BooleanOpChecker.create(true, false);
    writeln('true and false = ', boolChecker._and());
    writeln('true or false = ', boolChecker._or());
    writeln('not(true) = ', boolChecker._notX());
    writeln('not(false) = ', boolChecker._notY());


    (* DecisionMaking *)
    writeln('');
    decisionMaker := DecisionMakingRunner.create();
    decisionMaker.example1();
    writeln('');
    decisionMaker.example2();
    writeln('');
    decisionMaker.example3();
    writeln('');
    decisionMaker.example4();
    (* Looping *)
    writeln('');
    looper := LoopRunnner.create();
    looper.example1();
    writeln('');
    looper.example2();
    writeln('');
    looper.example3();
    writeln('');
    looper.example4();
    writeln('');
    looper.example5();

    (* LocalAndGlobalVariables *)
    writeln('');
    localAndGlobalClazz := LocalAndGlobal.create();
    localAndGlobalClazz.withLocalVariables();
    localAndGlobalClazz.withoutLocalVariables();


    (* StringExample *)
    writeln('');
    strExampleInstance := StringExampleClazz.create();
    strExampleInstance.example1();

    (* ArrayExample *)
    writeln('');
    arrayExampleInstance := ArrayExampleClazz.create();
    arrayExampleInstance.example1();
    writeln();
    arrayExampleInstance.example2();
    writeln();
    arrayExampleInstance.example3();
    writeln();
    arrayExampleInstance.example4();
    writeln();
    arrayExampleInstance.example5();
    writeln();
    arrayExampleInstance.example6();


    (* PointerExample *)
    pointerExampleInstance := PointerExampleClazz.create();
    pointerExampleInstance.example1();
    writeln();
    pointerExampleInstance.example2();



    (* RecordExample *)
    writeln();
    recordExampleInstance := RecordExampleClazz.create();
    recordExampleInstance.example1();
    writeln();
    recordExampleInstance.example2();
    writeln();
    recordExampleInstance.example3();


     (* VariantExample *)
     writeln();
     variantExampleInstance := VariantExampleClazz.create();
     variantExampleInstance.example1();
     writeln();
     variantExampleInstance.example2();


    (* SetExample *)
    writeln();
    setExampleInstance := SetExampleClazz.create();
    setExampleInstance.example1();
    writeln();
    setExampleInstance.example2();



    (* FileExample *)
    fileExampleInstance := FileExampleClazz.create();
    fileExampleInstance.example1();
    writeln();
    fileExampleInstance.example2();
    writeln();
    fileExampleInstance.example3();
    writeln();
    fileExampleInstance.example4();
    writeln();
    fileExampleInstance.example5();


    (* DateTimeExample *)
    dateTimeExampleInstance := DateTimeExampleClazz.create();
    dateTimeExampleInstance.example1();

    (* InterfaceExample *)
    writeln();
    interfaceExampleInstance := interfaceExampleClazz.create();
    interfaceExampleInstance.example1();


    (* AbstractClassExample *)
    writeln();
    writeln();
    writeln();
    abstractClassExampleInstance := AbstractClassExampleClazz.create();
    abstractClassExampleInstance.example1();


    (* InheritanceExample *)
    inheritanceExampleInstance := InheritanceExampleClazz.create();
    inheritanceExampleInstance.example1();
end.

