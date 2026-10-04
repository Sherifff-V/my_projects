##
var n := readinteger('Введите n при (n >= 2):');
print('Введите последовательность:');
assert(n >= 2);

var num := 0;
var k_0 := 0;
var sum := 0;
var k := 0;
var ans_sum := 0; 
var ans_k := 0;

for var i := 1 to n do
begin
    num := readinteger();
    if num = 0 then
    begin
        if k_0 = 0 then
            k_0 := 1              
        else
        begin
            ans_sum := sum;       
            ans_k := k;
            sum += num;           
            k += 1;
        end;
    end
    else if k_0 = 1 then
    begin
        sum += num;
        k += 1;
    end;
end;

println($'Сумма: {ans_sum}{#10}Кол-во: {ans_k}');

{
Введите n при (n >= 2): 7
Введите последовательность: 4 8 0 3 4 0 9
Сумма: 7
Кол-во: 2

Введите последовательность: 9 87 0 7 5 4 3 0
Сумма: 19
Кол-во: 4
}