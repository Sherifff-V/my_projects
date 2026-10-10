##
var num := abs(readinteger('Введите число:'));
var k := abs(readinteger('Введите k:'));
var num_k := 0;
var ans := -1;

if (num = 0) and (k = 0) then ans := 0;

while num > 0 do
    begin
      if num_k = k then ans := num mod 10;
      num_k += 1;
      num := num div 10
    end;


println($'Ответ: {ans}')

{
Введите число: 10586 
Введите k: 2
Ответ: 5

Введите число: -1234
Введите k: 1
Ответ: 3

Введите число: 0
Введите k: 0
Ответ: 0

Введите число: 70
Введите k: 0
Ответ: 0

Введите число: 42
Введите k: 2
Ответ: -1
}