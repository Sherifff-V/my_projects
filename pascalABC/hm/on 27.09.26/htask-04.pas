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