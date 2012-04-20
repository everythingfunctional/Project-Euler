Program problem1
!Sum all multiples of 3 or 5 that are less than iUP
iUP = 1000
nSUM = 0
Do i = 3, iUP-1, 3
  nSUM = nSUM + i
End Do
Do i = 5, iUP-1, 5
  If ( mod(i,3) == 0 ) Then
    Cycle
  Else
    nSUM = nSUM + i
  End If
End Do
Print *, ' Sum is ',nSUM

End Program problem1
