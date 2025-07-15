def reverse(array):
    res = []
    for i in range(len(array) - 1, -1, -1):
        res.append(array[i])
    return res

length = int(input())
lista = list(map(int, input().split()))

print(*lista[::-1])
print(*reverse(lista))