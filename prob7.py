end = int(10e8)
is_prime = range(3, end+1, 2)
is_prime.insert(0, 2)

for i in is_prime:
    for i in xrange(2 * i, end, i):
        is_prime.remove(i)

print 'Prime 6 is', primes[5]
print 'Prime 10001 is', primes[10005]
