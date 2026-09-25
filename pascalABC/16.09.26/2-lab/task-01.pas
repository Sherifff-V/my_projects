##
var (a, b) := readinteger2('Введите числа А и В:');
assert(a <= b);
var sum := 0;
for var i := a to b do
  sum += i;

print('Ответ:', sum)


{
Введите числа А и В: -1 3
Ответ: 5
Введите числа А и В: 2 2
Ответ: 2  
}