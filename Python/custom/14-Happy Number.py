n = int(input())
seen = set()
while n != 1 and n is not seen:
    seen.add(n)
    total = 0
    for digit in str(n):
        total += pow(int(digit), 2)
    n = total

print("Happy Number" if n == 1 else "Not a happy number")