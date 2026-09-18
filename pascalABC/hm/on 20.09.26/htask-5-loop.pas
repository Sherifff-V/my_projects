##
var a := readreal('Введите число а:');
var n := readinteger('Введите число n:');
assert(n > 0);
for var s := 1 to n-1 do
  a *= a;

println($'Ответ: {a}')