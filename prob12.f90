Program problem12
nend = 500
I = 0
num = 0
Do
  I = I + 1
  num = num+I
  ndiv = 0
  j = 0
  nstop = num
  Do
    j = j+1
    If ( j >= nstop ) Exit
    If ( mod(num,j) == 0 ) Then
      ndiv = ndiv+2
      nstop = num/j
    End If
  End Do
  !Print *, num,'has',ndiv,'divisors'
  If ( ndiv > nend ) Then
    Print *, 'First triangle to have more than',nend,'divisors is',num
    Exit
  End If
End Do
End Program problem12
