Program problem35
Logical, Allocatable :: lprime(:)
nEND = 100
! Calculate Primes ahead of time
Allocate lprime(2:nEND)
lprime(3:nEND:2) = .TRUE.
lprime(2:nEND:2) = .FALSE.
lprime(2) = .TRUE.
Do i = 3, nEND/2, 2
  If ( lprime(i) ) Then
    lprime(2*i:nEND:i) = .FALSE.
  End If
End Do
ncirc = 0
Do i = 2, nEND, 2
  

End Program problem35
