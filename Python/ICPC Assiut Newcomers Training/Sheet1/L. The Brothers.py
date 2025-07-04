name1 = input()
name2 = input()
name1 = name1.split()
name2 = name2.split()
res = "ARE Brothers" if name1[1] == name2[1] else "NOT"
print(res)