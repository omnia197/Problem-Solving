def is_prime(num):
    if num <= 1:
        return False
    for i in range(2, num//2 + 1):
        if num % i == 0:
            return False
    return True

x = int(input("Enter the digit:\n"))
count = 0

for i in range(2, x):  
    if is_prime(i):
        count += 1

print(count)
