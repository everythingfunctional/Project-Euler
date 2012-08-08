from math import *

def palindrome_check(number):
    length = int(log10(number)) + 1
    check_number = length / 2
    digits = []
    for i in reversed(range(length)):
        digits.append(number / (10**i))
        number -= (number / 10**i) * 10**i

    for i in range(check_number):
        if digits[i] != digits[-i-1]:
            palindrome = False
            break
        else:
            palindrome = True

    return palindrome

maximum_palindrome = 0

for i in reversed(range(100,1000)):
    for j in reversed(range(100,1000)):
        product = i * j
        if product > maximum_palindrome and palindrome_check(product):
            maximum_palindrome = product

print 'Maximum Palindrome is ',maximum_palindrome
