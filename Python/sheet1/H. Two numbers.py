#--------------implementing floor ceil and round methods

def ceily(num):
    return int(num+1) if num%10 != 0 else int(num)

def floory(num):
   return int(num)

def roundy(num):
    return int(num + 1) if num%10 >=5 else int(num)

import math
n1 = int(input())
n2 = int(input())
res = n1/n2
f = math.floor(res)
c = math.ceil(res)
r = int(math.floor(res + .5))

fIMP = floory(res)
cIMP = ceily(res)
rIMP = roundy(res)

print(f"floor {n1} / {n2} = {f}")
print(f"ceil {n1} / {n2} = {c}")
print(f"round {n1} / {n2} = {r}")
print("--------------------------")
print(f"floor {n1} / {n2} = {fIMP}")
print(f"ceil {n1} / {n2} = {cIMP}")
print(f"round {n1} / {n2} = {rIMP}")



