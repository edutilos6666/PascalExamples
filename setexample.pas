unit SetExample;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;


  type
     rangeNumbers = set of 1..100;

     colors = (red , green , blue, yellow, magenta , white  , black );
     ColorSet = set of colors;

     SetExampleClazz = class
        public
          procedure example1();
          procedure displaySetNumbers(nums: rangeNumbers);
          procedure example2();
          procedure printColorSet(cs:ColorSet);
     end;

implementation

{example1}
 procedure SetExampleClazz.example1();
 var
    nums1 , nums2: rangeNumbers ;
    nums_union : set of 1..100;
    nums_diff1 , nums_diff2 , nums_intersect ,nums_symmetric_diff : rangeNumbers;
    nums_eq , nums_ne , is_subset1, is_subset2 : boolean ;

 begin
    nums1 := [1, 2, 3, 4, 5];
    nums2 := [3,4,5,6,7];
    nums_union := nums1 + nums2 ;
    nums_diff1 := nums1 - nums2 ;
    nums_diff2 := nums2 - nums1 ;
    nums_intersect := nums1 * nums2;
    nums_symmetric_diff := nums1 >< nums2 ;
    nums_eq := nums1 = nums2 ;
    nums_ne := nums1 <> nums2 ;
    is_subset1 := nums1 <= nums2;
    is_subset2 := nums2 <= nums1;
    writeln('<<union>>');
    displaySetNumbers(nums_union);
    writeln('<<nums_diff1>>');
    displaySetNumbers(nums_diff1);
    writeln('<<nums_diff2>>');
    displaySetNumbers(nums_diff2);
    writeln('<<nums_intersect>>');
    displaySetNumbers(nums_intersect);
    writeln('<<nums_symmetric_diff>>');
    displaySetNumbers(nums_symmetric_diff);
    writeln('nums_eq = ', nums_eq);
    writeln('nums_ne = ', nums_ne);
    writeln('is_subset1 = ', is_subset1);
    writeln('is_subset2 = ', is_subset2);
 end;

 {displaySetNumbes }
 procedure SetExampleClazz.displaySetNumbers(nums: rangeNumbers);
 var
    n :integer ;
 begin
    for n := 1 to 100 do
    begin
        if n in nums then
           write(n , ' ; ');
    end;
    writeln();

 end;


 { example2 }
 procedure SetExampleClazz.example2();
 var
    cs1 , cs2 : ColorSet;
 begin
    {     colors = (red , green , blue, yellow, magenta , white  , black );  }
    cs1 := [red, green , blue ];
    cs2 := [green , blue , yellow];
     printColorSet(cs1);
     writeln();
     printColorSet(cs2);
 end;

 { printColorSet }
 procedure SetExampleClazz.printColorSet(cs:ColorSet);
 var
    colorNames: array[0..6] of string = ('red' ,'green' , 'blue', 'yellow', 'magenta' , 'white'  , 'black');
    i :integer ;
    cl : colors;
    colorName:string ;
 begin
    i := 0 ;
    for cl := red to black do
    begin
       colorName := colorNames[i];
       i := i +1 ;
       if cl in cs then
          write(colorName, ' ; ');
    end;
    writeln();
 end;


end.

