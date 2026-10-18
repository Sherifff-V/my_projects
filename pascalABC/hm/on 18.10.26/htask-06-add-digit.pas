procedure AddLeftDigit(var k: integer; d: integer);
begin
  assert(k > 0);
  assert(d in 0..9);
  var d_k := 0;
  var i := 1;
  var temp_k := k;

  while temp_k > 0 do
    begin
      d_k += 1;
      temp_k := temp_k div 10;
    end;

  loop d_k do i *= 10;
  k := i * d + k;
end;

begin
  var k := readinteger('Введите число k:');
  var (d_1, d_2) := readinteger2('Введите числа d1 и d2:');
  
  AddLeftDigit(k, d_1);
  println(k);
  AddLeftDigit(k, d_2);
  println(k)
end.

{

Введите число k: 234
Введите числа d1 и d2: 5 3
5234
35234

}