##
var n := readinteger('Введите длину последовательности:');
var a1 := 1;
assert(n > 0)

for var i := 1 to n do
begin
  var a := readinteger();
  loop i do
    a1 *= a;
  print(a1);
  a1 := 1
end;