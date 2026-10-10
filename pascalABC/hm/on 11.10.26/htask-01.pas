##
var num := readinteger('Введите целое число:');
var num_temp : integer;
var multi_num := 1;
var zn := 1;

if num < 0 then
    begin
      zn := -1;
      num := abs(num)
    end;

while num > 0 do
    begin
      num_temp := num mod 10;
      num := num div 10;
      multi_num *= num_temp
    end;

println($'Проиведение: {multi_num * zn}')



{
Введите целое число: -322
Проиведение: -12

Введите целое число: 6754367
Проиведение: 105840

Введите целое число: 2008
Проиведение: 0

Введите целое число: -9887      
Проиведение: -4032
}