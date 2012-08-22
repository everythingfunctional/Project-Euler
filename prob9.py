#!/usr/bin/env python2.7

for A in xrange(1, 1001):
    for B in xrange(1, 1001 - A):
        C = 1000 - A - B
        if A ** 2 + B ** 2 == C ** 2:
            print "A=", A, " B=", B, " C=",C
            print "A^2=", A ** 2, " B^2=", B ** 2, " C^2=", C ** 2, " A^2+B^2=", A ** 2 + B ** 2
            print "A+B+C=", A + B + C
            print "A*B*C=", A * B * C
            break
