##
var x := readreal('Введите x:');
var eps := readreal('Введите esp:');
assert(eps in 0..1);
assert(x > 0);
var first := x;
var second := 1/2 / first + x/first;
while abs(first-second) >= eps do
begin
  first := second;
  second := 1/2 * (first + x / first)
end;


assert(abs(second - sqrt(x)) < eps * 10, 'Недостаточно точно!');
print($'Приближенное: {second}, точное: {sqrt(x)}')



{
Введите x: 2
Введите esp: 0.2
Приближенное: 1.425, точное: 1.4142135623731 
Введите x: 1
Введите esp: 0.001
Приближенное: 1.00000000001311, точное: 1 