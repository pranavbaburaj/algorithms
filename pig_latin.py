import sys

data = sys.argv[1]

# write your solution here
english = ""
vowels = ["a", "e", "i", "o", 'u',"A","E", "I", "O", "U"]

data = data.split(" ")

for word in data:
    if word[0] in vowels and word.endswith("yay"):
        english += f"{word[:-3]} "
    elif "-" in word:
        word_data = word.split("-")
        english += f"{word_data[1][0:-2]}{word_data[0]} "

print(english)
