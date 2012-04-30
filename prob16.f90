Program problem16
Integer :: mult(1:500)
Character (len=32) :: cFMT
nEND = 1000
multlen = 1
mult(1) = 2
Do i = 1, nEND-1
  mult(1) = mult(1)*2
  Do j = 2, multlen
    If ( mult(j-1) > 9 ) Then
      mult(j-1) = mult(j-1)-10
      mult(j) = mult(j)*2+1
    Else
      mult(j) = mult(j)*2
    End If
  End Do
  If ( mult(multlen) > 9 ) Then
    mult(multlen) = mult(multlen)-10
    multlen = multlen+1
    mult(multlen) = 1
  End If
End Do
Print *, '2 to the',nEND,'equals'
!Write ( cFMT , '(A,I0,A)' ) '"(',multlen,'I1)"'
!Print Trim(cFMT), mult(multlen:1:-1)
Print *, mult(multlen:1:-1)
nSUM = 0
Do i = 1, multlen
  nSUM = nSUM+mult(i)
End Do
Print *, 'The sum of its digits is',nSUM
End Program problem16
