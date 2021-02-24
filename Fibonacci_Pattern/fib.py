value: int = int(input())
    
def fib_by_recursion(data: int):
    if data <= 1:
        return data
    else:
        return fib_by_recursion(data - 1) + fib_by_recursion(data - 2)

def fibonacci(data: int):
    sequence: list = []
    index: int = 0
    while index < data + 1:
        if index == 0 or index == 1:
            sequence.append(index)
        else:
            sequence.append(sequence[index - 1] + sequence[index - 2])
        index += 1
    return sequence[-1]
