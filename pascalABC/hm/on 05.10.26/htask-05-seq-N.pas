##
var n := readinteger('n:');
assert(n >= 0);
var k := 0;
var sum := 0.0;
var real_num : real;

for var i := 1 to n do
    begin
      k += 1;
      real_num := readreal('');
      real_num := round(real_num - 0.50);
      print($'{#10}{k} число: {real_num}');
      sum += real_num
    end;

print($'{#10}Сумма: {sum}')



// НЕ РЕШЕНО