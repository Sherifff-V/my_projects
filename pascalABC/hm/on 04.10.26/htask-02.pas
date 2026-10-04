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

{
x: 30
eps: 0.0001
sum: -0.988071673957622 sin: -0.988031624092862

x: 13
eps: 0.000001
sum: 0.420167030921433 sin: 0.420167036826641
}