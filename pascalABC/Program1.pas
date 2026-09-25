##
var x := ReadReal;
Assert(x>0);
var eps := 1e-20;
var b := real.MaxValue;
var a := x;
while Abs(a - b) >= eps do begin
  b := a;
  a := (a + x/a) / 2;
end;
Print(a,Sqrt(x));