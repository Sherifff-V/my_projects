##
var x := readreal('x:');
var eps := readreal('eps:');
assert((eps > 0) and (eps < 1));
var num := x;
var sum := x;
var st := 1;


while abs(num) > eps do
    begin
      num := -num * (x * x) / ((2*st + 1) * 2*st);
      st += 1;
      sum += num
    end;

assert(abs(sum - sin(x)) <= eps * 2); 
println('sum:', sum, 'sin:', sin(x))