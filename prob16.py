#!/usr/bin/env python2.7

from math import log10

end = 1000
power = 2 ** end

#print "2 to the",end,"=",power

length = int(log10(power)) + 1
sum_of_digits = 0

for i in reversed(xrange(length)):
    digit = power / 10 ** i
    sum_of_digits += digit
    power -= digit * 10 ** i

print "Sum of the digits of 2^",end,"is",sum_of_digits
