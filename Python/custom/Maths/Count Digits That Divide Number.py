x = int(input())
lista = list(str(x))
count = 0
for n in lista:
    if int(n)!= 0 and x%int(n) == 0:
        count += 1
print(count)