#!/bin/python3

import math
import os
import random
import re
import sys


#
# Complete the 'reverse_words_order_and_swap_cases' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING sentence as parameter.
#

def reverse_words_order_and_swap_cases(sentence):
    sentence_array = sentence.split(" ")
    sentence_array.reverse()
    
    for index in range(len(sentence_array)):
        sentence_word = ""
        for character in sentence_array[index]:
            if character.isupper():
                sentence_word += character.lower()
            elif character.islower():
                sentence_word += character.upper()
        sentence_array[index] = sentence_word
        
    return ' '.join(sentence_array)
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    sentence = input()

    result = reverse_words_order_and_swap_cases(sentence)

    fptr.write(result + '\n')

    fptr.close()
