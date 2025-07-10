length = int(input())
for i in range(length):
  n1 = int(input())
  n2 = int(input())
  sum = 0
  for i in range(min(n1, n2) + 1, max(n1, n2)):
    if i %2 != 0:
      sum += i
  print(sum)