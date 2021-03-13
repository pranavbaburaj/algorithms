import sys

def get_striped(array):
    for index in range(len(array)):
        array[index] = array[index].strip()

    return array

value = get_striped(sys.argv[1].lower().split(","))

length_count = [len(word) for word in value]

def get_longest_object(index_array, words):
    return_array = []
    max_index = max(index_array)

    for index in range(len(index_array)):
        if index_array[index] == max_index:
            if words[index] not in return_array:
                return_array.append(words[index].strip())
    return return_array

def join_string(array):
    string_form = ""
    for array_index in range(len(array)):
        string_form += f"{array[array_index]},"
    
    return string_form[0:len(string_form) - 1]

print(join_string(get_longest_object(length_count, value)))
