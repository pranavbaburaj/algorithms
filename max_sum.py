
def sub_arrays(array, length):
    sub_array_list = []
    for index in range(len(array)):
        for idx in range(index+1, len(array) + 1):
            sub_array_list.append(array[index:idx])
    return list(filter(lambda element:len(element) == int(length), sub_array_list))
    
def create_array_sum(array):
    return [sum(map(int, element)) for element in array]

def solution(elements, length, n):
    data = sub_arrays(elements, n)
    sums = create_array_sum(data)
    return sums[sums.index(max(sums))]

test_cases = int(input("Cases >"))
for test_case_count in range(test_cases):
    length, n = str(input(">>>")).split(" ")
    elements = str(input(">>>")).split(" ")
    
    print(solution(elements, length, n))
    
