def Fibonacci(num):
  if num == 1:
    return 0
  elif num == 2:
    return 1
  else:
    return Fibonacci(num-1) + Fibonacci(num-2)

n= int(input())
for i in range(n):
  print(Fibonacci(i + 1), end=" ")