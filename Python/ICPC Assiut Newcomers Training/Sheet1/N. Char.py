s= input("enter the char")
x_n = ord(s)
if x_n in range(65, 91):
    x_n +=32
else:
    x_n -=32

print(chr(x_n))