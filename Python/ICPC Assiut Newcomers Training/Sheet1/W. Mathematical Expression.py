x = input().strip()
if '+' in x:
    a, rest = x.split('+')
    b, c = rest.split('=')
    print("Right" if int(c) == int(a)+int(b)else "Wrong")
elif '-' in x:
    a, rest = x.split('-', 1)
    b, c = rest.split('=')
    print("Right" if int(c) == int(a)-int(b)else "Wrong")
elif '*' in x:
    a, rest = x.split('*')
    b, c = rest.split('=')
    print("Right" if int(c) == int(a) * int(b)else "Wrong")
else:
    print("invalid")
