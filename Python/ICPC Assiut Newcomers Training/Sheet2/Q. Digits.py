length = int(input())
for i in range(1, length + 1):
  n = int(input())
  print(" ".join(str(n)[::-1]))