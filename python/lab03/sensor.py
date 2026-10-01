porog = float(input())
zapis = int(input())

g_max = 0
g_sr = 0
k = 0
k_er = 0

for i in range(zapis):
    gradus = input()

    if gradus == 'error': k_er += 1
    
    else:
        gradus = float(gradus)
        g_sr += gradus
        if gradus > porog: k += 1
        if g_max < gradus: g_max = gradus


print(zapis, k_er, k, round(g_max, 1), \
      round(g_sr / (zapis - k_er), 1), \
      sep='\n')