##
var a := readreal('Введите a:');
var n := readinteger('Введите n:');
assert(n >= 0);
var sum := 1.0;
var el := a;

loop n do
  begin
  sum += el;
  el *= a
  end;

println('Ответ:', sum)

{
Введите a: 1.5
Введите n: 10
Ответ: 170.9951171875
Введите a: -3.7
Введите n: 9
Ответ: -102310.093030167
}