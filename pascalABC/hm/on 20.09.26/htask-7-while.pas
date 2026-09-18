##
var n := readinteger('Введите число N:');
assert(n > 1);
var (k, sum) := (0, 0);
while n >= sum + (k + 1) do
    begin
    k += 1;
    sum += k;
    end;

print($'Наибольшее из чисел k: {k}, Сумма: {sum}')