##
var n := readinteger('Введите n:');
assert(n >= 0, 'N >= 0!');
var a_n := 1.0;
var num : real;
var k := 0;
println('A0:', a_n);

for var i := 1 to n do
    begin
    k += 1;
    num := (a_n + 1) / i;
    println($'A{k}: {num}');
    a_n := num
    end;