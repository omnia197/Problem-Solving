n1 = int(input())
n2 = int(input())
ll = []
for i in range(n1, n2 + 1):
  if all(c in '47' for c in str(i)):
        ll.append(str(i))

if ll:
    print(" ".join(ll))
else:
    print(-1)
