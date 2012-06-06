Program problem29
Real (Selected_Real_Kind(31,300)) :: numbers(1:10000), pow

numunique = 0
Do nA = 2, 100
  Do nB = 2, 100
    pow = nA**nB
    Do i = 1, numunique
      If ( pow == numbers(i) ) Exit
    End Do
    If ( i > numunique ) Then
      numbers(i) = pow
      numunique = numunique+1
    End If
  End Do
End Do
Print *, 'Number of unique values is',numunique

End Program problem29
