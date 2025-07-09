x = int(input("Input the digit"))
sum = 0
strx = str(x) 
len_strx = len(strx)
for ch in strx:
    sum+= pow(int(ch), len_strx)
print(sum, " Armestrong" if sum == x else " Not Armestrong")