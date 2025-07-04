s = input("Input te explression:\n")
if '+' in s:
    n1, n2 = s.split('+')
    res = int(n1) + int(n2)
elif '-' in s:
    n1, n2 = s.split('-')
    res = int(n1) - int(n2)

elif '*' in s:
    n1, n2 = s.split('*')
    res = int(n1) * int(n2)

elif '/' in s:
    n1, n2 = s.split('/')
    res = int(n1) / int(n2)

else: 
    print("Invalid")
    quit()


print(res)