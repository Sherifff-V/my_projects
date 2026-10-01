##
var eps := readreal('eps:');
assert(eps > 0);
var a_1 := 1.0; // Первоначально к - 2
var a_2 := 2.0; // Первоначально к - 1
var a_k := 0.0; // Первоночально к
var k := 2;

while true do
    begin
      k += 1;
      a_k := (a_1 + 2 * a_2) / 3;
      if abs(a_k - a_2) < eps then
        begin
        println($'Номер A(k-2): {k-2} {#10}Номер A(k-1): {k-1} {#10}Номер A(k): {k}');
        break  
        end;
      a_1 := a_2;
      a_2 := a_k;
    end;

//println($'A(k-1): {a_2} {#10}A(k-2): {a_1} {#10}A(k): {a_k}'); //для проверки