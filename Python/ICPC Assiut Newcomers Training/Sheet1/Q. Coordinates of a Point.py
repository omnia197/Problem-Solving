n1 = float(input("First:  "))
n2 = float(input("Second:  "))
if n1 >0 and n2>0:
    print("Q1")
elif n1 <0 and n2>0:
    print("Q2")
elif n1 <0 and n2<0:
    print("Q3")
elif n1 >0 and n2<0:
    print("Q4")
else:
    print("Origin")