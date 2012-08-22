#!/usr/bin/env python2.7

def primes_under(end):
    is_prime = [False]
    for i in xrange(end):
        is_prime.append(True)
    #is_prime[1] = False

    #for i in xrange(4, end+1, 4):
    #    is_prime[i] = False

    for i in xrange(3,  end / 2, 2):
        if is_prime[i]:
            for j in xrange(i * 2, end + 1, i):
                is_prime[j] = False

    primes = [2]
    for i in xrange(3, end + 1, 2):
        if is_prime[i]:
            primes.append(i)

    return primes
