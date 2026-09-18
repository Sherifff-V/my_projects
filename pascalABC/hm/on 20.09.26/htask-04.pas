    ##
    var n := readinteger('Введите число n:');
    println($'Число последовательности: {n}');
    while n <> 1 do
        begin
        if n mod 2 = 0 then
            begin
            n := n div 2;
            end
        else
            begin
            n := n * 3 + 1;
            end;
        println($'Число последовательности: {n}');
        end;

