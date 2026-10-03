##
var n := readinteger('Введите n при (n >= 2):');
print('Введите последовательность:');
assert(n >= 2);
var num := 0;
var k_0 := 0;
var sum := 0;
var k := 0;


for var i := 1 to n do
    begin
      num := readinteger();
      if (num = 0) and (k_0 = 1) then k_0 := 0;
      if num = 0 then k_0 := 1;
      
      if (k_0 = 1) and (num <> 0) then
        begin
        k += 1;
        sum += num
        end;
    end;

println(sum, k)