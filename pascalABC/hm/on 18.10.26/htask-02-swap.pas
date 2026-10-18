procedure MySwap(var x, y: real);
begin
  (x, y) := (y, x)
end;

begin
  var (a, b, c, d) := readreal4('Введите A, B, C, D:');
  MySwap(a, b);
  MySwap(c, d);
  MySwap(b, c);
  println($'Ответ: А = {a}, B = {b}, C = {c}, D = {d}')
end.

{
Введите A, B, C, D: 1.0 2.0 3.0 4.0
Ответ: А = 2, B = 4, C = 1, D = 3

Введите A, B, C, D: 1.0 2.0 -3.3 4.0
Ответ: А = 2, B = 4, C = 1, D = -3.3
}