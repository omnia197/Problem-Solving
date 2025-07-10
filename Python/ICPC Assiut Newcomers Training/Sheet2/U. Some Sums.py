def sum_of_digit(num):
  str_ = str(num)
  sum = 0
  for i in str_:
    sum += int(i)
  return sum

N = int(input())
a = int(input())
b = int(input())
sum = 0
for i in range(N + 1):
  if sum_of_digit(i) in range(a, b+1):
    sum += i

print(sum)