procedure Minmax(var x, y: real);
begin
  var min_x := min(x, y);
  var max_y := max(x, y);
  x := min_x;
  y := max_y 
end;

begin

var (a, b, c, d) := readreal4('Введите A, B, C, D:');
Minmax(a, b);
Minmax(c, d);
Minmax(a, c);
Minmax(b, d);

println($'Ответ: Минимум: {a}, Максимум: {d}')

end.

{

Введите A, B, C, D: 4 3 2 1
Ответ: Минимум: 1, Максимум: 4

Введите A, B, C, D: 43 12 -20 32
Ответ: Минимум: -20, Максимум: 43

}