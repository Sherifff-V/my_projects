##
var eps := readreal('Введите eps:');
var a := 2.0;
var a_rez := 0.0;
println(a);


while abs(a - a_rez) > eps do
begin
  a_rez := a;
  a := 2 + 1/a_rez;
  println(a)
end;