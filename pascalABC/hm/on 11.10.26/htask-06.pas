##
var num := readinteger('Введите число:');
var num_mod : integer;
var mult := 1;
var ans := 0;
var zn := 1;

if num < 0 then
    begin
      zn := -1;
      num := abs(num)
    end;

while num > 0 do
    begin
      num_mod := num mod 10;
      if num_mod mod 2 = 0 then
      begin 
        ans += num_mod * mult;
        mult *= 10;
      end;
      num := num div 10;
    end;

println($'Ответ: {ans * zn}')

{
Введите число: 10456
Ответ: 46

Введите число: -8260
Ответ: -8260

Введите число: -75
Ответ: 0

Введите число: 405
Ответ: 40

Введите число: 6
Ответ: 6

Введите число: 9233420
Ответ: 2420
}