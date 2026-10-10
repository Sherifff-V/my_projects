##
var num_1 := abs(readinteger('Введите 1-ое число:'));
var num_2 := abs(readinteger('Введите 2-ое число:'));
var num_mod_1 : integer;
var num_mod_2 : integer;
var raz_sum : integer;
var mult := 1;
var ans := 0;
var zn := 1;

while num_1 > 0 do
    begin
      num_mod_1 := num_1 mod 10;
      num_mod_2 := num_2 mod 10;
      raz_sum := (num_mod_1 + num_mod_2) mod 10;
      ans += raz_sum * mult;
      mult *= 10;
      num_1 := num_1 div 10;
      num_2 := num_2 div 10
    end;

println($'Ответ: {ans}')


{
Введите 1-ое число: 345
Введите 2-ое число: 597
Ответ: 832
}