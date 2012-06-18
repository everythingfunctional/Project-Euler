Program problem39

maxsol=0
Do i = 3, 1000
  nSOL = 0
  Do nA = 1, i/2
    Do nB = 1, i-nA-1
      If ( sqrt(real(nA**2+nB**2)) == real(i-nA-nB) ) Then
        Print *, 'Found solution to p=',i
        Print *, '{',nA,',',nB,',',i-nA-nB,'}'
        nSOL = nSOL+1
      End If
    End Do
  End Do
  If ( nSOL > maxsol ) Then
    maxsol = nSOL
    maxnum = i
  End If
End Do
Print *, 'Number with maximum solutions is',maxnum
Print *, 'giving',maxsol,'solutions'
End Program problem39
