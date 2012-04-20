Program problem2
! Claculate the sum of all even numbers in the Fibonacci sequence less than istop
istop = 4000000
Ifibn_1 = 1
Ifibn = 2
nSUM = 2
Do
  Do I = 1, 3
    Ifibn = Ifibn_1+Ifibn
    Ifibn_1 = Ifibn-Ifibn_1
  End Do
  If ( Ifibn > istop ) Exit
  nSUM = nSUM + Ifibn
End Do
Print *, 'Sum is ',nSUM

End Program problem2
