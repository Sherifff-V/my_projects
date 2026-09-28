##
var x := readreal('Введите x:');
var eps := readreal('Введите esp:');
assert(eps in 0..1);
var sum := 1.0;
var el := 1.0;
var zn := 1;
var i := 1;
 
while abs(el / zn) >= eps do
begin
  el *= -x * x;
  zn *= i * (i + 1);
  sum += el / zn;
  i += 2
  end;
  
assert(abs(sum - cos(x)) < eps, 'Недостаточно точно!');
print($'Приближенное значение {sum}, точное значение {cos(x)}')

{
Введите x: 0.5
Введите esp: 0.0001
Приближенное значение 0.877582465277778, точное значение 0.877582561890373 

}