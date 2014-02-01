#!/usr/bin/env python2.7

def is_pandigital(num):
    if "1" in num and "2" in num and "3" in num and "4" in num and "5" in num and "6" in num and "7" in num and "8" in num and "9" in num:
        return True
    else:
        return False

def find_factors(number):
    self = []
    j = 0
    stop_at = number
    while True:
        j += 1
        if j >= stop_at:
            break
        if number%j == 0:
            self.append([ j, number/j ])
            stop_at = number/j
    return self

Sum = 0

for prod in xrange(1000,10000):
    for mult in find_factors(prod):
        combine = str(mult[0]) + str(mult[1]) + str(prod)
        if len(combine) == 9:
            if is_pandigital(combine):
                Sum += prod
                print "found one " + str(mult[0]) + " x " + str(mult[1]) + " = " + str(prod)
                break

print "sum of pandigital products" + str(Sum)
