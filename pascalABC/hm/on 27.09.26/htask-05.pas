##
var n := readinteger('Введите n:');
var x := readreal('Введите x:');
assert(n > 0);

var sum := 0.0;
var fact := 1.0; 
var pow_x := 1.0;   

for var i := 1 to n do
begin
    fact := fact * i;
    pow_x := pow_x * x;

    if i mod 2 = 0 then
        sum += (2 * pow_x) / (i + fact);
end;

print($'Сумма: {sum}');


{
Введите n: 4
Введите x: 2.0
Сумма Y: 3.14285714285714

Введите n: 4
Введите x: 0.5
Сумма Y: 0.129464285714286  
}