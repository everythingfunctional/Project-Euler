Program problem5
Logical :: lANS
Logical, Allocatable :: lprime(:)
Integer :: iprime(1:100)
nEND = 20
nANS = nEND
lANS = .FALSE.
Do
  nANS = nANS + nEND
  Do i = nEND, 1, -1
    If ( mod(nANS,i) /= 0 ) Then
      lANS = .FALSE.
      Exit
    Else
      lANS = .TRUE.
    End If
  End Do
  If ( lANS ) Exit
End Do
Print *, 'Answer is',nANS

End Program problem5
