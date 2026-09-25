##
var nn := readinteger('Введите число n:');
var d := readinteger('Введите число d:');
assert(d in 0..9);

var n := abs(nn);

if (n = 0) and (d = 0) then
  begin
  println('True');
  exit;
  end;


var fl := 'False';
while n > 0 do
begin
  begin
  if d = n mod 10 then
    fl := 'True'
  end;
  n := n div 10;
end;
println(fl)

{
Введите число n: 1
Введите число d: 9
False
Введите число n: 123
Введите число d: 2
True
Введите число n: 0
Введите число d: 0
True
}