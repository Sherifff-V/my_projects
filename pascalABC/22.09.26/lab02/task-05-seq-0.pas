##
var sum := 0.0;
  while True do
  begin
  var a := Readreal;
  if a > 0 then
    sum += a;
  if a = 0 then
    break;
  end;

println('Сумма:', sum)

{
-1 -2 -3 4 5 0
Сумма: 9
}