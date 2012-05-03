Program problem23
Implicit Integer (Selected_Int_Kind(16)) (I-N)
Integer :: idiv(1:100)
Logical :: isabdnt(1:28123)
isabdnt(:) = .FALSE.
Do i = 2, 28123
  nstop = i
  j = 1
  ndiv = 1
  Do
    j = j + 1
    If ( j >= nstop ) Exit
    If ( mod(i,j) == 0 ) Then
      idiv(ndiv+1) = i
      idiv(ndiv+2) = i/j
      ndiv = ndiv+2
      nstop = i/j
    End If

End Program problem23
