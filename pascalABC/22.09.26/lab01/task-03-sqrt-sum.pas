##
var x := readreal('Введите x:');
var eps := readreal('Введите esp:');
assert(eps in 0..1);
var chisl := x / 2;
var sum := 1.0 + chisl;
var i := 1;
var zn := 1;

while abs(chisl / zn) >= eps do
  begin
  chisl *= -i * x;
  zn *= i + 3;
  i += 2;
  sum += chisl / zn
  end;
  
assert(abs(sum - sqrt(1 + x)) < eps, 'Недостаточно точно!');
print($'Приближенное значение {sum}, точное значение {sqrt(1 + x)}')

{
Введите x: 0.2
Введите esp: 0.000001
Приближенное значение 1.09544514375, точное значение 1.09544511501033 

}