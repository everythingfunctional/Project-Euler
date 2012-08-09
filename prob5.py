found_answer = False
end = 20
answer = end
range_list = range(end,0,-1)
while not found_answer:
    answer += end
    for i in range_list:
    #for i in reversed(range(1,end+1)):
        if answer % i != 0:
            found_answer = False
            break
        else:
            found_answer = True

print 'Answer is', answer
