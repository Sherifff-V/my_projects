##
var n := readinteger('Введите n:');
a := 2;
loop n do
begin
  a := 2 + 1/a;
  print(a)
end;