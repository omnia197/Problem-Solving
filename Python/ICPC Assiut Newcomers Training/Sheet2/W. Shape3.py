n = int(input())

for i in range(n):
  space = " "
  char = "*"  
  space *= (n - i - 1)
  char *= (2*i + 1)
  print(space + char)

for i in range(n -1 , -1 , -1):
  space = " "
  char = "*"  
  space *= (n - i - 1)
  char *= (2*i + 1)
  print(space + char)