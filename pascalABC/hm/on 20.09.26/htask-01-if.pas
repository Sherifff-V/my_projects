##
var number := random(10);
if number = 0 then
  begin
  println('Я устал');
  exit;
  end;

var ans := readinteger('Введите число:');
var chetn := ans mod 2 = number mod 2;
if number = ans then
  println('Вы угадали:(')
else
  println($'Не угадали:P, {chetn}');
{
Введите число: 7
Не угадали:P, True

Введите число: 6
Вы угадали:(

Я устал

Введите число: 5
Не угадали:P, False
}

