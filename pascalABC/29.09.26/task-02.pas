##
var k := readinteger('Введите кол-во наборов:');
var n := readinteger('Введите длину наборов:');
assert(n >= 0)
assert(k > 0)
var sum := 1;
var a : integer;

for var i := 1 to k do
begin
  for var c := 1 to n do
    a := readinteger();
    if a = 2 then
      sum += 1;
end;

print($'Ответ: {sum}')

{
Введите кол-во наборов: 3
Введите длину наборов: 5
6 4 2 -3 2
-1 5 6 3 49
31 7 7 -8 12
Ответ: 2 
}