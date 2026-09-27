##
var n := readinteger('Введите n:');
var x := readreal('Введите x:');
assert(n > 0);

var sum := 0.0;
var fact := 2.0;
var pow_x := x * x;


for var i := 2 to n step 2 do
begin
    sum += (2 * pow_x) / (i + fact);
    
    pow_x *= x * x;
    fact *= (i + 1) * (i + 2);    
end;

print($'Сумма Y: {sum}');


{
Введите n: 4
Введите x: 2
Сумма Y: 3.14285714285714 

Введите n: 4
Введите x: 0.5
Сумма Y: 0.129464285714286
}