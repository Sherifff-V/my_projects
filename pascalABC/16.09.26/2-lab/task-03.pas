##
var n := readinteger('Введите n:');
assert(n > 0);
var sum := 0.0;

for var i := 1 to n do
  begin
  sum += 1/i;
  end;

println('Ответ:', sum)

{
Введите n: 5
Ответ: 2.28333333333333
Введите n: 1
Ответ: 1
Введите n: 10
Ответ: 2.92896825396825
}