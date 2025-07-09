# n = int(input())

# str_n = str(n)
# len_strn = len(str_n)

# while len_strn >1:
#     sum = 0
#     for i in str_n: 
#         sum = sum +int(i) 

#         str_n = str(sum)
#         len_strn = len(str_n)

# print(sum)

n = int(input())

while n >= 10:
    total = 0
    for digit in str(n):
        total += int(digit)
    n = total

print(n)
