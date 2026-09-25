##
var b : Integer;
var n := readinteger('Введите положительное n:');
assert(n > 0);

var ans := 0;
var a := 1;

while a * 2 <= n do
    a *= 2;

while a > 0 do
begin
    b := (n div a) mod 2;
    ans := ans * 10 + b;
    a := a div 2;
end;

println($'Запись в двоичной системе: {ans}')