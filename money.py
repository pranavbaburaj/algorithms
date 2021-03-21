data = input(">>>").split(" ")
user_name = data[0]

result = None

data.pop(0)

data = [int(el) for el in data]

winning = [10, 11, 8, 1, 5, 20]

def contain_duplicate(d):
    for el in range(len(d)):
        if d.count(d[el]) > 1:
            return True
    return False

def get_res(m):
    if m > 0:
        return f"{user_name} won {m} pesos"
    else:
        return f"{user_name} won nothing!"

def find_prizes():
    if(contain_duplicate(data)):
        return  "No Duplicates"
    else:
        money = 0
        for d in range(len(data)):
            if data[d] in winning:
                money += 100
        return get_res(money)

if len(data) != 6:result = "Should be 6 number"
else:
    result = find_prizes()
    
print(result)
