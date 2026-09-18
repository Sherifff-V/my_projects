##
var num_mes := readinteger('Введите номер месяца:');

if num_mes in 3..5 then
    println('Это весна');
if num_mes in 6..8 then
    println('Это лето');
if num_mes in 9..11 then
    println('Это осень');
if (num_mes in 1..2) or (num_mes = 12) then
    println('Это зима');