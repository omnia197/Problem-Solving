n = int(input())
str_ = str(n)
print(int(str_[::-1]))
print("YES" if str_ == str_[::-1] else "NO")