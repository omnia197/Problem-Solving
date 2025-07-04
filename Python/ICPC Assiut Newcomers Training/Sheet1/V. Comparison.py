x = input().strip()
if '<' in x:
    a, b = x.split('<')
    print("Right" if int(a)<int(b)else "Wrong")
elif '>' in x:
    a, b = x.split('>', 1)
    print("Right" if int(a)>int(b)else "Wrong")
elif '=' in x:
    a, b = x.split('=')
    print("Right" if int(a) == int(b)else "Wrong")
else:
    print("invalid")
