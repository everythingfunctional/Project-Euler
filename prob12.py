#!/usr/bin/env python2.7

end = 500
I = 0
number = 0
while True:
    I += 1
    number += I
    number_of_divisors = 0
    j = 0
    stop_at = number
    while True:
        j += 1
        if j >= stop_at:
            break
        if number%j == 0:
            number_of_divisors += 2
            stop_at = number / j
    if number_of_divisors > end:
        print "First triangle to have more than",end,"divisors is",number
        break
