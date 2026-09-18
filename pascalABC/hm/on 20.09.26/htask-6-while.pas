##
var (n, k) := readinteger2('Введите делимое и делитель:');
var quotient := 0;
assert((k > 0) and (n > 0));

while n >= k do
  begin
  quotient += 1;
  n -= k;
  end;
  

print($'Частное: {quotient}, остаток: {n}')

{
Введите делимое и делитель: 27 5
Частное: 5, остаток: 2
Введите делимое и делитель: 12 4
Частное: 3, остаток: 0
}