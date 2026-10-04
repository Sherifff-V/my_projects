##
var n := readinteger('Введите n:');
var sch := 1;
var elochka := 0;

for var i := 1 to n do
begin
  println;
  loop sch do
  begin
    if elochka = n then
      break;
    elochka += 1;
    print(elochka)
  end;
  sch += 1;
end;
{
Введите n:

1 
2 3 
4 5 6 
7 8 9 10 
11 12 
}