##
var n := readinteger('Введите n:');
assert(n > 0);
var sum := 0.0;
var el := 1.1;
var znak := 1;

loop n do
begin
  sum += el * znak;
  el += 0.1;
  znak *= -1;
end;

println('Ответ:', sum)

{
Введите n: 1
Ответ: 1.1
Введите n: 3
Ответ: 1.2
Введите n: 10
Ответ: -0.5
Введите n: 199191919
Ответ: 9959597.00135073
}