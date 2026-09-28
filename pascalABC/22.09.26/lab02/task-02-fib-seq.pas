##
var n := readinteger('Введите n:');
assert(n >= 0);
var (f1, f2) := (1, 1);
println(f1);
println(f2);
loop n-2 do
begin
  (f1, f2) := (f2, f1 + f2);
  println(f2)
end;

{
Введите n: 10
1
1
2
3
5
8
13
21
34
55
