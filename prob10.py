#!/usr/bin/env python2.7

from primes import *

sum_of_primes = 0
for i in primes_under(2000000):
    sum_of_primes += i

print "Sum of primes is", sum_of_primes
