n1 = int(input())
n2 = int(input())
lopy = max(n1, n2+1)
for i in range(2, lopy):
    if n1%i ==0 and n2%i ==0:
        print(i)
        quit()
else: 
  print("no common divisor")