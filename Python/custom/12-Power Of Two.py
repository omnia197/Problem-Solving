def power_of_two(n):
    return n > 0 and (n & (n - 1)) == 0

n= int(input("Enetr the digit:\n"))
print("Yes" if power_of_two(n) else "No")