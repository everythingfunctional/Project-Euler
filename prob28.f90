Program problem28
nsum = 1
Do i = 3, 1001, 2
  nsum = nsum + i**2 + i**2-(i-1) + i**2-2*(i-1) + i**2-3*(i-1)
  If ( i == 5 ) Then
    Print *, 'Sum of 5 by 5 spiral is',nsum
  End If
End Do
Print *, 'Sum of 1001 by 1001 spiral is',nsum

End Program problem28
