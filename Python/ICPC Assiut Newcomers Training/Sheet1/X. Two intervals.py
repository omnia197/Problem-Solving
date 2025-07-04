n1 = int(input())
n2 = int(input())
n3 = int(input())
n4 = int(input())

start = max(n1, n3)
end = min(n2, n4)

if start <= end:
    print(start, end)
else:
    print(-1)
