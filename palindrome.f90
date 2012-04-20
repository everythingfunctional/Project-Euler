Program problem4
Logical :: Lpal
Do I = 99, 10, -1
  Do J = 99, 10, -1
    nProd = I*J
    Lpal = palchk(nProd)
    If ( Lpal .AND. nProd > maxpal ) Then
      maxpal = nProd
    End If
  End Do
End Do

End Program problem4
Function palchk(num)
Allocatable :: numa(:)
Logical :: palchk
k = 0
Do
  k = k+1
  If ( 10**k > num ) Then
    iSize = k
    Exit
  End If
End Do
nchk = Floor(iSize/2)
Allocate (numa(0:iSize-1))
Do k = iSize-1, 0, -1
  numa(k) = Floor(numa/(10**k))
  num = num - numa(k)*10**k
End Do
If ( numa(0:nchk-1) == numa(iSize-1:iSize-nchk:-1) ) Then
  palchk = .TRUE.
Else
  palchk = .FALSE.
End If
End Function palchk
