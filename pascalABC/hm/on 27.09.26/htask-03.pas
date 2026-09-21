##
var n := readinteger('Введите положительное n:');
var ans := 0;
var n_mod := 0;
var k := 0;
assert(n > 0);
while n > 0 do
    begin
        if (n mod 2 = 0) and (k = 0) then
            begin
            n_mod := 1;
            ans := (ans * 10) + n_mod;
            k += 1;
            end
        else
            begin
            n_mod := n mod 2;
            ans := (ans * 10) + n_mod;
            k += 1
            end;
    n := n div 2
    end;


println($'Запись в двоичном системе: {ans}')