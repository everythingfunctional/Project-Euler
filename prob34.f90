Program problem34
Integer :: numdig(1:7)
Character (len=7) :: cNUM
nANS=0
Do i = 10, 9999999
  cNUM = ''
  numdig(:) = 0
  ! Convert number into array of its digits
  Write ( cNUM, '(I0)' ) i
  length = Len_Trim(cNUM)
  If ( i == 10 ) Then
    Print *, 'Number converted to string',cNUM(1:7)
    Print *, 'With Length',length
  End If
  Do j = 1, length
    Read ( cNUM(j:j), * ) numdig(j)
  End Do
  nsum = 0
  ! Calculate sum of factorial of its digits
  Do j = 1, length
    If ( numdig(j) == 0 ) Then
      nsum = nsum+1
    Else
      nfact = 1
      Do k = 2, numdig(j)
        nfact = nfact*k
      End Do
      nsum = nsum+nfact
    End If
  End Do
  ! If the sum equals the original number, add it to our answer
  If ( nsum == i ) Then
    nANS = nANS+i
    If ( i == 145 ) Then
      Print *, 'Test Case Found!'
    End If
  End If
End Do
Print *, 'Sum of numbers that equal the sum of the factorial of their digits is',nANS

End Program problem34
