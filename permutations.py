from itertools import permutations
def perms(nums: list):
    for x in range(0, len(nums)):
        nums[x] = str(nums[x])
    out: list = []
    for i in permutations("".join(nums)):
        out.append(list(i))
    return out
