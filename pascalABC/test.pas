##
var test_string := readstring('Введите любимое слово:');
var test_int := readinteger('#Это тестовый файл, введите число:');
var test_float := readreal('Введите число: (float)');

if test_int > 322 then
    begin
    println($'ваше число выше 322-шного ((( {test_int} > 322');
    end;
while test_int > 0 do
    begin
      println($'{test_string}, осталось {test_int} раз!');
      test_int -= 1
    end;

println($'{round(test_float, 2)}')


for var i := 0 to 4 do
    print(i)