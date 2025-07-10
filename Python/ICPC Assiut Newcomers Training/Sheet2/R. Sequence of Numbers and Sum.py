while True:  
  n1 = int(input())
  n2 = int(input())

  sum = 0
  num = ""
  if n1 <=0 or n2<= 0:
    break
  else:
    for i in range(min(n1, n2), max(n1, n2) + 1):
      sum += i
      num += str(i) + " "
    print(num, f"Sum ={sum}")