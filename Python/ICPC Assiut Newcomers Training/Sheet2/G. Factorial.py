def factorial(num):
  if num == 0 or num == 1:
    return 1
  else:
       return num * factorial(num-1)

      
length = int(input())
for _ in range(length):
  n = int(input())
  print(factorial(n))