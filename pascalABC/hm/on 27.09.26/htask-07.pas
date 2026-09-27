##
var n := readinteger('Введите n:');
assert(n > 0);

var sum := 0.0;
var zn := -1.0;

for var k := 1 to n do
begin
    sum += zn / k;
    zn := -1 * zn;
end;

print($'Сумма: {sum}');

{
Введите n: 10
Сумма: -0.645634920634921 
Введите n: 5
Сумма: -0.783333333333333
Введите n: 1
Сумма: -1 
}