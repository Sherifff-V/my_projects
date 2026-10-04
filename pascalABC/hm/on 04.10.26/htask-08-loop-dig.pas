##
var n := readinteger('Введите n:');
assert(n >= 0, 'N >= 0');
var num : integer;
var num_mod : integer;
var num_max := 0;
var num_min := integer.maxvalue;

loop n do
    begin
      num := abs(readinteger($'{#10}Введите число:')); //Ну в условии же ничего не сказано про отрицательные числа))
      if num = 0 then num_min := 0;
      while num > 0 do
        begin
          num_mod := num mod 10;
          if num_max < num_mod then num_max := num_mod;
          if num_min > num_mod then num_min := num_mod;
          num := num div 10
        end;
        print($'Самый маленький разряд: {num_min}, Самый большой разряд: {num_max}.{#10}');
        num_max := 0;
        num_min := integer.maxvalue
    end;


{
Введите n: 4

Введите число: 4532 
Самый маленький разряд: 2, Самый большой разряд: 5.
 
Введите число: 42325
Самый маленький разряд: 2, Самый большой разряд: 5.
 
Введите число: 43235
Самый маленький разряд: 2, Самый большой разряд: 5.
 
Введите число: 32581
Самый маленький разряд: 1, Самый большой разряд: 8.
}
