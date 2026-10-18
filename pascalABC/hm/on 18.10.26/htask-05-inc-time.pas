procedure IncTime(var h, m, s: integer; t: integer);
begin
  var temp_t := h * 3600 + m * 60 + s + t;
  (h, m, s) := (0, 0, 0);
  h := temp_t div 3600;
  m := (temp_t mod 3600) div 60;
  s := temp_t mod 60
end;

begin

var h := readinteger('Введите часы:');
var m := readinteger('Введите минуты:');
var s := readinteger('Введите секунды');
var t := readinteger('Введите насколько секунд увеличить время:');

assert((h > 0) and (m > 0) and (s > 0) and (t > 0));

IncTime(h, m, s, t);
print('Ответ:', h, m, s)

end.

{
Введите часы: 3
Введите минуты: 20
Введите секунды 4
Введите насколько секунд увеличить время: 5
Ответ: 3 20 9 

Введите часы: 4 
Введите минуты: 34
Введите секунды 12
Введите насколько секунд увеличить время: 120
Ответ: 4 36 12
}