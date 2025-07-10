ch = input()
length = int(input())
numbers = list(map(int, input().split()))
for i in numbers:
  print(ch * i)