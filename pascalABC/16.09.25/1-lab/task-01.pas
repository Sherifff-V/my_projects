##
var chislo := readinteger('Введите число:');
var ans := 0;
var k := 0;
while abs(chislo) > 0 do
  begin
  ans += abs(chislo) mod 10;
  chislo := abs(chislo) div 10;
  k += 1;
  end;
println($'Сумма - {ans}, Кол-во элементов - {k}')


{
Введите число: -123
Сумма - 6, Кол-во элементов - 3

Введите число: 123
Сумма - 6, Кол-во элементов - 3
}