def create_sub_array(array, n):
    collection = []
    for index in range(0, len(array) - (n - 1)):
        collection.append(array[index:index + n])
    return collection

def get_sums(arr):
    sums = []
    for x in range(len(arr)):
        s = 0
        for i in arr[x]:
            s += i
        sums.append(s)
    return sums
    
    
def get_maximum(arr, sums):
    data = []
    for x in range(2):
#         largest = max(sums)
        i = sums.index(max(sums))
        sums[i] = 0
        data.append(i)

    return data


array = [0, 3, 9, 1, 7, 21, 0, 4, 9]
n =  3

arr = create_sub_array(array, n)
sums = get_sums(arr)

f = get_maximum(arr, sums)
for el in f:
    print(arr[el])
