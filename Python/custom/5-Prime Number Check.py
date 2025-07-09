x = int(input())
prime = True
if x <= 1:
    print("No")
    quit()

for i in range(2,x//2):
    if x%i == 0:
        prime  = False
        break
print("Yes" if prime else "No")
