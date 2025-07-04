n1 = int(input())
n2 = int(input())
n3 = int(input())

original = [n1, n2, n3]
sorted_list = sorted(original)

for num in sorted_list:
    print(num)

print()

for num in original:
    print(num)
