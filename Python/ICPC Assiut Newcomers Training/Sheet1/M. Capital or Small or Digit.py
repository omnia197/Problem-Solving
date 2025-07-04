x = input("Enter the value")
x_n = ord(x)
if x_n in range(65, 91):
    print("IS CAPITAL")
elif x_n in range(97, 123):
    print("IS SMALL")
elif x_n in range(48, 58):
    print("IS DIGIT")
else:
    print("Other Symbol")