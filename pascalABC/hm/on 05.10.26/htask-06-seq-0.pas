##
var k := readinteger('Введите k:');
print('Введите последовательность:');
var k_max := 0;
var num := 1;

while num <> 0 do
    begin
    num := readinteger();
    assert(num > 0);
    if num > k then k_max := num
    end;

print($'Ответ: {k_max}')

{
Введите k: 32
Введите последовательность: 4 3 2 4 5 32 1 23 4 3 2 44 34 56 32 1 23 43 23 44 12 31 0
Ответ: 44 

Введите k: 12
Введите последовательность: 32 43 2 1 3 34 5 3 2 4 52 23 4 0
Ответ: 23 
}