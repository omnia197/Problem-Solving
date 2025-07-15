length = int(input())
lista = list(map(int, input().split()))

new = []
for n in lista:
    if n > 0:
        new.append(1)
    elif n < 0:
        new.append(2)
    else:
        new.append(0)

print(*new)