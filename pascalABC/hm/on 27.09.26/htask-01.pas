##
var n1 := abs(readinteger('Введите число n1:'));
var n2 := abs(readinteger('Введите число n2:'));
var ans_p_1 := 0;
var ans_p_2 := 0;
var k := 0;

while n1 > 0 do
begin
  if (n1 mod 10) > (n2 mod 10) then
    ans_p_1 := ans_p_1 * 10 + (n1 mod 10)
  else
    ans_p_1 := ans_p_1 * 10 + (n2 mod 10);

  k := k + 1;
  n1 := n1 div 10;
  n2 := n2 div 10;
end;

for var i := 1 to k do
begin
  ans_p_2 := ans_p_2 * 10 + (ans_p_1 mod 10);
  ans_p_1 := ans_p_1 div 10;
end;

println('Ответ:', ans_p_2);
{
Введите число n1: 321
Введите число n2: 410
Ответ: 421
Введите число n1: 29
Введите число n2: -31
Ответ: 39
Введите число n1: 111
Введите число n2: 103
Ответ: 113
Введите число n1: -50
Введите число n2: 20
Ответ: 50
}