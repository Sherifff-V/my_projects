##
var n := readinteger('Введите n:');
assert(n > 1);
var (a1, a2, a_rez, sum) := (1.0, 2.0, 0.0, 3.0);
println(a1);
println(a2);
loop n - 2 do
begin
  a_rez := (a1 +2 *a2) / 3;
  sum += a_rez;
  println(a_rez);
  a1 := a2;
  a2 := a_rez
end;

print('Ср. Арифм:',(sum) / n)


{
Введите n: 5
1
2
1.66666666666667
1.77777777777778
1.74074074074074
1.63703703703704

Введите n: 3
1
2
1.66666666666667
Ср. Арифм: 1.55555555555556
}