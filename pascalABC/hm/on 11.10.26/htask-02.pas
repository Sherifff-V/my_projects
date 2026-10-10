##

var n := abs(readinteger('Введите число n:'));
var d := readinteger('Введите числло d:');
var k := 0;
var n_temp : integer;
assert(d in 0..9);

while n > 0 do
    begin
      n_temp := n mod 10;
      n := n div 10;
      if n_temp = d then k += 1;
    end;

println($'Цифры D в числе N: {k}')

{
Введите число n: 4445
Введите числло d: 4
Цифры D в числе N: 3

Введите число n: 200
Введите числло d: 0
Цифры D в числе N: 2

Введите число n: 234622
Введите числло d: 2
Цифры D в числе N: 3

Введите число n: -987
Введите числло d: 8
Цифры D в числе N: 1
}