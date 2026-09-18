##
var nn := readinteger('Введите число n:');
var n := abs(nn);
if n = 0 then
  begin
  println(0);
  exit;
  end;
while n > 0 do
  begin
  print(n mod 10);
  n := n div 10;
  end;
  
  
{
Введите число n: -123
3 2 1 
Введите число n: 123
3 2 1
Введите число n: 0
0

}