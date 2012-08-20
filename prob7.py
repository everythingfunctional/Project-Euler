end = int(1000000)
is_prime = [False]
i = 0
while i < end:
    is_prime.append(True)
    i += 1
is_prime[1] = False

i = 4
while i <= end:
    is_prime[i] = False
    i += 2

i = 3
while i < end / 2:
    if is_prime[i]:
        j = i * 2
        while j < end:
            is_prime[j] = False
            j += i
    i += 2

primes = [2]
i = 3
while i < end:
    if is_prime[i]:
        primes.append(i)
    i += 2

print 'Prime 6 is', primes[5]
print 'Prime 10001 is', primes[10000]
