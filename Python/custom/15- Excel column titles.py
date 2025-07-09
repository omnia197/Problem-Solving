n = int(input("Enter the digit:\n"))
result = ""

while n > 0:
    n -= 1  #1 based index
    result = chr(65 + (n % 26)) + result
    n //= 26

print(result)