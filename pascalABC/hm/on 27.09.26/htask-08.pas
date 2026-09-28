##
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

print($'Сумма: {sum}');
{
Введите n: 10
Введите x: 4
Сумма: 72750.5886394605 
Введите n: 20
Введите x: 2
Сумма: 55570.8011793653
Введите n: 1
Введите x: 1
Сумма: 0.77015115293407
}