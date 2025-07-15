length = int(input())
lista = list(map(int, input().split()))

rev_lista = lista[::-1]
print("YES" if lista == rev_lista else "NO")