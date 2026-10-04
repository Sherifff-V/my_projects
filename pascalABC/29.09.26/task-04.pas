##
var n := readinteger('Введите n:');
var ch: integer;
var sum := 0;

loop n do
begin
  println;
  ch := readinteger('Введите число:');
  for var j := 1 to ch do
  begin
    if ch mod j = 0 then
    begin
      print(j);
      sum += 1;
      if j = ch then
      begin
        print($'Количество: {sum}');
        sum := 0
      end;
    end;
  end;
  
end; 