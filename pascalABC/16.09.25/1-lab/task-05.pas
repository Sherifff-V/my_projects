##
var n := readinteger('Введите число');
var ans := 0;

while abs(n) > 0 do
begin
  ans := (ans * 10) + (n mod 10);
  n := n div 10;
end;
println('Ответ:', ans)

{
Введите число -950
Ответ: -59
Введите число 1205
Ответ: 5021

}