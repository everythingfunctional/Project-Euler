#!/usr/bin/env python2.7

max_length = 0
for i in xrange(2, 1000000):
    number = i
    chain_length = 1
    while True:
        if number == 1:
            break
        elif number % 2 == 0:
            number /= 2
            chain_length += 1
        else:
            number = number * 3 + 1
            chain_length += 1

    if i == 13:
        print "Length of",i,"chain is",chain_length
    if chain_length > max_length:
        max_length = chain_length
        longest = i

print "Maximum chain length is",max_length,"starting at",longest
