end = 4000000
fibn_1 = 1
fibn = 2
sum_even = 2
while True:
    for i in range(1,4):
        fibn += fibn_1
        fibn_1 = fibn-fibn_1

    if fibn > end: break
    sum_even += fibn

print "Sum is %r" % sum_even
