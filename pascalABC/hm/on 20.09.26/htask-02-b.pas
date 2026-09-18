##
var num := readinteger('Введите число:');
assert(num in 100..999);
var elem_1 := num div 100;
var elem_2 := (num div 10) mod 10;
var elem_3 := num mod 10;

if (elem_1 <> elem_2) and (elem_2 <> elem_3) then
  println('True')
else println('False')


{
Введите число: 345
True
Введите число: 333
False
}