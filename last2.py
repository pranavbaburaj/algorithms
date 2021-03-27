def substrings(string):
    return [string[i: j] for i in range(len(string))
          for j in range(i + 1, len(string) + 1)]

def last2(string):
    find_characters = string[-2:]
    
    return list(substrings(string)).count(find_characters) - 1
    
print(last2('11212'))
