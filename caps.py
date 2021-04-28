def swap_cases(data, caps):
    if data.isupper() and caps:
        return data.lower()
    elif data.islower() and caps:
        return data.upper()
    return data


def caps_lock(data):
    return_value = ""
    upper = False
    for character in data:
        append_character = None
        if character in ["a", "A"]:
            upper = not upper
            continue
        else:
            append_character = swap_cases(character, upper)
        return_value += append_character if append_character else ""
    return return_value

test_cases = int(input("Enter the number of test cases"))
for test_case_count in range(test_cases):
    string = str(input(">>>"))
    print(caps_lock(string))
