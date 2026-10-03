##
var n := readinteger('n:');
assert(n >= 0);
var k := 0;
var sum := 0.0;
var real_num : real;
var num_ost : real;

for var i := 1 to n do
    begin
      k += 1;
      real_num := readreal();
      num_ost := real_num;
      while num_ost >= 1 do 
      
        num_ost -= 1.0;
      real_num -= num_ost;
      print($'{#10}{k} число: {real_num}');
      sum += real_num
    end;

print($'{#10}Сумма: {sum}');