##
var n := readinteger('Введите n:');
var x := readreal('Введите x:');
assert(n > 0);

var sum := x;
var chislo := x;    

for var a := 1 to n do
    begin
    chislo := chislo * (-x * x) / ((2 * a) * (2 * a + 1));
    sum += chislo;
    end;

print($'Сумма: {sum}, Синус: {sin(x)}')

{
Введите n: 10
Введите x: 4
Сумма: -0.756802492656909, Синус: -0.756802495307928 
Введите n: 7
Введите x: 1
Сумма: 0.841470984807894, Синус: 0.841470984807897 
}