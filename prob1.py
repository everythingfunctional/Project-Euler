end = 1000
sum_mult = 0
for i in range(3, end, 3):
    sum_mult += i

for i in range(5, end, 5):
    if i % 3 == 0:
        continue
    else:
        sum_mult += i

print 'Sum is %r' % sum_mult
