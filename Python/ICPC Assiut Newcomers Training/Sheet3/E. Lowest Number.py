def mini(array):
    m = array[0]
    idx = 0
    for i, n in enumerate(array):
        if n < m:
            m = n
            idx = i

    return [m,"  ", idx + 1]


length = int(input())
lista = list(map(int, input().split()))

print(min(lista), " ", lista.index(min(lista)) + 1)
print(*mini(lista))
