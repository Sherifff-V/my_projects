##

var num := readinteger('Введите число:');
var num_temp := 0;
var pos := 1;
var mult := 1;
var num_mod : integer;
var zn := 1;

if num < 0 then
    begin
      zn := -1;
      num := abs(num)
    end;

While num > 0 do
    begin
      num_mod := num mod 10;
      if pos mod 2 = 1 then num_temp += num_mod * mult;
      mult *= 10;
      num := num div 10;
      pos += 1;
    end;

println($'Ответ: {num_temp * zn}')

{
Введите число: 20
Ответ: 0

Введите число: -1
Ответ: -1

Введите число: -1945
Ответ: -905

Введите число: 51030
Ответ: 50000
}