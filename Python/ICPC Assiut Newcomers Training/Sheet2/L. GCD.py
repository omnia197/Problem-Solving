n1 = int(input())
n2 = int(input())
minn = min(n1, n2)
for i in range(minn, 0, -1):
  if n1 % i == 0 and n2 % i == 0:
    print(i)
    break
    