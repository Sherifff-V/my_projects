const MAX_STEPS = 15;

begin
  var nizh := readinteger('Введите нижнюю границу диапазона:');
  var verh := readinteger('Введите верхнюю границу диапазона:');
  
  while verh < nizh do
  begin
    println('Ошибка: верхняя граница не может быть меньше нижней.');
    verh := readinteger('Введите верхнюю границу диапазона:');
  end;
  
  println;
  println($'Задан диапазон: {nizh}..{verh}.');

  
  var X := Random(nizh, verh);
  var razmer := verh - nizh + 1;
  var vsego := Min(razmer, MAX_STEPS);
  
  println($'Компьютер загадал число. Попробуйте отгадать его! У вас есть {vsego} попыток.');
  println;
  
  var tek_nizh := nizh;
  var tek_verh := verh;
  var win := false;
  var vne := false;
  
  for var shag := 1 to vsego do
  begin
    println($'Попытка #{shag}/{vsego}.');
    var vvod := readinteger($'Введите число из диапазона {tek_nizh}..{tek_verh}:');
    
    if (vvod < tek_nizh) or (vvod > tek_verh) then
    begin
      vne := true;
      break;
    end;
    
    if vvod = X then
    begin
      win := true;
      println;
      println($'Число отгадано! Это {X}.');

      var s100 := shag mod 100;
      var s10 := shag mod 10;
      var slovo: string;
      if (s100 >= 11) and (s100 <= 14) then
        slovo := 'шагов'
      else if s10 = 1 then
        slovo := 'шаг'
      else if (s10 >= 2) and (s10 <= 4) then
        slovo := 'шага'
      else
        slovo := 'шагов';
      
      println($'Вы угадали число за {shag} {slovo}.');
      break;
    end
    else if X > vvod then
    begin
      println($'Загаданное число больше {vvod}.');
      tek_nizh := vvod + 1;
    end
    else
    begin
      println($'Загаданное число меньше {vvod}.');
      tek_verh := vvod - 1;
    end;
    println;
  end;
  
  if not win then
  begin
    println;
    if vne then
      println('Вы проиграли!')
    else
      println('Вы проиграли! Исчерпано допустимое количество попыток.');
    println($'Было загадано число {X}.');
  end;
end.

{
Введите нижнюю границу диапазона: 1
Введите верхнюю границу диапазона: 5

Задан диапазон: 1..5.
Компьютер загадал число. Попробуйте отгадать его! У вас есть 5 попыток.

Попытка #1/5.
Введите число из диапазона 1..5: 4
Загаданное число больше 4.

Попытка #2/5.
Введите число из диапазона 5..5: 5

Число отгадано! Это 5.
Вы угадали число за 2 шага.
}