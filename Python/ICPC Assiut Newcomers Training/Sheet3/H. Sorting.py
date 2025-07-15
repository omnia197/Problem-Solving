def sort_array(array):
    for i in range(len(array)):
        min_index = i
        for j in range(i + 1, len(array)):
            if array[j] < array[min_index]:
                min_index = j
        array[i], array[min_index] = array[min_index], array[i]
    return array

length = int(input())
lista = list(map(int, input().split())) 
print(*sorted(lista))
print(*sort_array(lista))

