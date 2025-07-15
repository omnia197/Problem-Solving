length = int(input())
lista = list(map(int, input().split()))

for i, n in enumerate(lista):
    if n <= 10:
        print(f"A[{i}] = {n}")