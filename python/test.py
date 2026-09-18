round_test_fl = float(input('Число float (проверка round):'))
round_test_t = int(input('Сколько знаков после точки (проверка round):'))
print(round(round_test_fl, round_test_t))

import math as m
exp_test = int(input('int:'))
print('exp:', m.exp(exp_test))