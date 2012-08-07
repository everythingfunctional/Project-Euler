end = 600851475143
i = 1
while i < end:
    i += 1
    while end%i == 0:
        end /= i

print "Largest Prime Factor is %r" % i
