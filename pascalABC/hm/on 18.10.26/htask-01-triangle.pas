procedure TrianglePS(a: real; var p, s: real);
begin
    p := 3 * a;
    s := (sqr(a) * sqrt(3)) / 4; 
end;

begin
var a := readreal('Введите a:');
assert(a > 0);
var p : real; 
var s : real;
TrianglePS(a, p, s);
print($'Периетр - {p}{#10}Площадь - {s}');
end.

{
Введите a: 5
Периетр - 15
Площадь - 10.8253175473055 

Введите a: 4
Периетр - 12
Площадь - 6.92820323027551 
    
}