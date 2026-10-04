##
var k := readinteger('Введите k:');
print('Введите последовательность:');

var num := readinteger();
var i := 0;                 
var ans_index := 0;        

while num <> 0 do
begin
    i += 1;
    if num > k then
        ans_index := i;
    num := readinteger();
end;

print($'Ответ: {ans_index}');

{
Введите k: 12
Введите последовательность: 32 43 2 1 3 34 5 3 2 4 52 23 4 0
Ответ: 12 

Введите k: 32
Введите последовательность: 4 3 2 4 5 32 1 23 4 3 2 44 34 56 32 1 23 43 23 44 12 31 0
Ответ: 20
}