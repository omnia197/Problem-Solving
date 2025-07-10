length = int(input())
for i in range(length):
    n = int(input())
    ones = bin(n).count('1')     
    binar = '1' * ones    
    result = int(binar, 2)       
    print(result)