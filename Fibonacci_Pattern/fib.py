value: int = int(input())

def fibonacci(data: int):
    sequence: list = []
    index: int = 0
    while index < data + 1:
        if index == 0 or index == 1:
            sequence.append(index)
        else:
            sequence.append(sequence[index - 1] + sequence[index - 2])
        index += 1
    return sequence
