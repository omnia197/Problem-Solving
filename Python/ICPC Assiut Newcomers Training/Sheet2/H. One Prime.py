def is_prime(num):
  prime = True
  if num <= 1:
    return False
  else:
    for i in range(2, int(num ** 0.5) + 1):
      if num %i ==0:
       return False

  return True


n = int(input())
print("Yes" if is_prime(n) else "No")