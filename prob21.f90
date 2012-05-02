Program problem21
Integer :: idiv(1:100)
nans=0
Do i = 1, 10000
  j = 1
  nstop = i
  idiv(:)=0
  idiv(1)=1
  ndiv = 1
  Do
    j = j+1
    If ( j >= nstop ) Exit
    If ( mod(i,j) == 0 ) Then
      idiv(ndiv+1) = j
      idiv(ndiv+2) = i/j
      ndiv = ndiv+2
      nstop = i/j
    End If
  End Do
  If ( idiv(ndiv) == idiv(ndiv-1) ) Then
    ndiv = ndiv-1
  End If
  nsum1 = 0
  Do j = 1, ndiv
    nsum1 = nsum1+idiv(j)
  End Do
  If ( nsum1 == i ) Cycle
  nstop = nsum1
  j = 1
  idiv(:) = 0
  idiv(1) = 1
  ndiv = 1
  Do
    j = j+1
    If ( j >= nstop ) Exit
    If ( mod(nsum1,j) == 0 ) Then
      idiv(ndiv+1) = j
      idiv(ndiv+2) = nsum1/j
      ndiv = ndiv+2
      nstop = nsum1/j
    End If
  End Do
  If ( idiv(ndiv) == idiv(ndiv-1) ) Then
    ndiv = ndiv-1
  End If
  nsum2 = 0
  Do j = 1, ndiv
    nsum2 = nsum2+idiv(j)
  End Do
  If ( nsum2 == i ) Then
    nans = nans+nsum2+i
    !If ( i == 220 .OR. nsum2 == 220 ) Then
      Print *, 'Found amicable pair',i,'and',nsum1,'with divisors'
      Print *, idiv(1:ndiv)
    !End If
  End If
End Do
Print *, 'Answer is',nans/2
End Program problem21
