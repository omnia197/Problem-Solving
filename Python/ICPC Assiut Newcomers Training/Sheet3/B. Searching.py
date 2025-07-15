length = int(input())
lista = [int(input()) for _ in range(length)]
val = int(input())

if val in lista:
    print(lista.index(val))

else:
    print(-1)