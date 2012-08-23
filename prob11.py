#!/usr/bin/env python2.7

numbers = []
for line in open('prob11numbers.txt', 'r'):
    numbers.append(line.split())

answer = 0

for i in xrange(20):
    for j in xrange(20):
        numbers[i][j] = int(numbers[i][j])

for i in xrange(20):
    for j in xrange(17):
        product = 1
        for k in xrange(j, j + 4):
            product *= numbers[i][k]
        if product > answer: answer = product

for i in xrange(20):
    for j in xrange(17):
        product = 1
        for k in xrange(j, j + 4):
            product *= numbers[k][i]
        if product > answer: answer = product

for i in xrange(17):
    for j in xrange(17):
        product = 1
        for k in xrange(4):
            product *= numbers[i + k][j + k]
        if product > answer: answer = product

for i in xrange(17):
    for j in xrange(3, 20):
        product = 1
        for k in xrange(4):
            product *= numbers[i + k][j - k]
        if product > answer: answer = product

print "Answer is",answer
