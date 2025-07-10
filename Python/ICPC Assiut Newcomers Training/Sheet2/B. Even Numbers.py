x = int(input("Enter the digit:\n"))
notF = True
for i in range(1, x+1):
  if i %2 == 0:
    print(i)
    notF = False

if notF:
  print(-1)