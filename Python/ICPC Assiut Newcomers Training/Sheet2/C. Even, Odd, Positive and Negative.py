length = int(input("Enter the length of the numbers you wanna input:\n"))
evenCalc = 0
positive = 0
zero_exist = 0
for i in range(length):
  x = int(input())
  if x % 2 == 0:
   evenCalc += 1
  if x > 0:
    positive += 1
  if x == 0:
    zero_exist += 1

print(f"Even numbers: {evenCalc}")
print(f"Odd numbers: {length - evenCalc}")
print(f"Positive numbers: {positive}")
print(f"Negative numbers: {length - positive - zero_exist}")