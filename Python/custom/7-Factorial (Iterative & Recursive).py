def factorial(num):
  if num == 0 or num == 1:
    return 1
  if num < 0:
    print("negative number")
  return num * factorial(num - 1)

def factorial_(num):
  if num == 0 or num == 1:
    return 1
  if num < 0:
    print("negative number")
  for i in range(num,1, -1):
    num *= i - 1
  return num

factorial(5), factorial_(5)