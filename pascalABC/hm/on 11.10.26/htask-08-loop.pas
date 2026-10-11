##
var a := readinteger('Введите a:');
var b := readinteger('Введите b:');
assert((a < b) and (a > 0) and (b > 0));

for var i := a to b do
    begin
      print(#10);
      loop i do print(i)
    end;

{
Введите a: 3
Введите b: 7

 3 3 3 
 4 4 4 4 
 5 5 5 5 5 
 6 6 6 6 6 6 
 7 7 7 7 7 7 7
 
Введите a: 1
Введите b: 6

 1 
 2 2 
 3 3 3 
 4 4 4 4 
 5 5 5 5 5 
 6 6 6 6 6 6 

Введите a: 7
Введите b: 9

 7 7 7 7 7 7 7 
 8 8 8 8 8 8 8 8 
 9 9 9 9 9 9 9 9 9 
}