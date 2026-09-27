var n := readinteger('Введите n:');
var x := readreal('Введите x:');
assert(n > 0);

var sum := 0.0;
var pow_x := 1.0;


for var k := 1 to n do  
begin
    pow_x := pow_x * x;
    sum += (pow_x + cos(pow_x)) / (2 * k);
end;

print($'Сумма Y: {sum}');