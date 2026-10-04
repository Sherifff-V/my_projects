##
var n := readinteger('Введите n:');
assert(n > 3);
var num : integer;
var a_1 := 1; //Первоночальное к - 3
var a_2 := 2; //Первоночальное к - 2
var a_3 := 3; //Первоночальное к - 1
println($'Элементы с А(1) - А(n):{#10}{a_1}{#10}{a_2}{#10}{a_3}');

for var i := 4 to n do
    begin
      num := 2*a_3 + a_3 * a_2 - a_1;
      println(num);
      a_1 := a_2;
      a_2 := a_3;
      a_3 := num
    end;

{
Введите n: 6
Элементы с А(1) - А(n):
1
2
3
11
53
686
}