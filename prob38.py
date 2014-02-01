#!/usr/bin/env python2.7

def is_pandigital(num):
    if "1" in num and "2" in num and "3" in num and "4" in num and "5" in num and "6" in num and "7" in num and "8" in num and "9" in num:
        return True
    else:
        return False

answer = "0"

for start in xrange(1,10000):
    mult = 0
    combined = ""
    while True:
        mult += 1
        combined = combined + str(start*mult)
        if len(combined) == 9:
            if is_pandigital(combined):
                print "found one " + combined
                if int(combined) > int(answer):
                    answer = combined
            break
        elif len(combined) > 9:
            break

print "lagest of pandigital products " + answer
