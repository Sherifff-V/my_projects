##

var k := readinteger('Введите k:');
var n := readinteger('Введите n:');
var k_num := 0;
var num : integer;
var ans : integer;
assert((K > 0) and (n >= 0));
println('Введите последовательности:');

for var i := 1 to k do
    begin
      loop n do
        begin
          num := abs(readinteger());
          k_num += 1;
          if num = 5 then
            begin
              ans := k_num;
              break
            end;
        end;
    println($'{i} набор, ответ: {ans}');
    ans := 0;
    k_num := 0
    end;


{
Введите k: 2
Введите n: 3
Введите последовательности:
1 2 3
1 набор, ответ: 0
2 4 5
2 набор, ответ: 3

Введите k: 4
Введите n: 3
Введите последовательности:
1 2 3  
1 набор, ответ: 0
3 4 5
2 набор, ответ: 3
5 4 3
3 набор, ответ: 1
1 1 1
4 набор, ответ: 0

Введите k: 2 
Введите n: 3
Введите последовательности:
1 1 1
1 набор, ответ: 0
2 3 5
2 набор, ответ: 3
}