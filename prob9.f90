Program problem9

Do nA = 1, 1000
  Do nB = 1, 1000-nA
    nC = 1000-nA-nB
    If ( nA**2+nB**2 == nC**2 ) Then
      Print *, 'A =',nA,'B =',nB,'C =',nC
      Print *, 'A^2 =',nA**2,'B^2 =',nB**2,'C^2 =',nC**2,'A^2+B^2 =',nA**2+nB**2
      Print *, 'A+B+C =',nA+nB+nC
      Print *, 'A*B*C =',nA*nB*nC
      Stop
    End If
  End Do
End Do

End Program problem9
