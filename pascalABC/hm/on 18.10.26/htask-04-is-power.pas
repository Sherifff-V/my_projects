function IsPowerN(k, n: integer): boolean;
begin
  while (k mod n = 0) and (k > 0) do
    k := k div n;
  
  Result := (k = 1);
end;

begin
  var k := readinteger('Введите количество чисел K:');
  var n := readinteger('Введите число N:');
  
  assert(k >= 0);
  assert(n > 1);
  
  var k_st := 0;

  if k > 0 then
  begin
    println($'Введите {k} целых положительных чисел:');
    for var i := 1 to k do
    begin
      var num := abs(readinteger);
      
      if IsPowerN(num, n) then 
        k_st += 1;
    end;
  end;

  println('Количество степеней числа N:', k_st);
end.

{

Введите количество чисел K: 5
Введите число N: 3
Введите 5 целых положительных чисел:
1 9 15 27 30
Количество степеней числа N: 3

}
