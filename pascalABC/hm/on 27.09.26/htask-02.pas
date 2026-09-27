##
var n1 := readinteger('Введите n1:');
var n_f_wl := abs(readinteger('Введите n2:'));
var n2 := n_f_wl;
var k := 0;
var ans := 0;

if n_f_wl = 0 then // случай при n2 = 0
    k := 1;

while n_f_wl > 0 do
    begin
    n_f_wl := n_f_wl div 10;
    k += 1
    end;

loop k do
    n1 := n1 * 10;

if n1 < 0 then
    begin
    ans := (abs(n1) + n2) * -1;
    end

else
    begin
    ans := (abs(n1) + n2);
    end;

print($'Ответ: {ans}')


{
Введите n1: -1
Введите n2: 390
Ответ: -1390
Введите n1: 0
Введите n2: -21
Ответ: 21
Введите n1: 72
Введите n2: 0
Ответ: 720 
}