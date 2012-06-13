Program problem35
Logical, Allocatable :: lprime(:)
Logical :: lcirc
Character (len=6) :: cNUM, cROT
nEND = 1000000
! Calculate Primes ahead of time
Allocate (lprime(2:nEND))
lprime(3:nEND:2) = .TRUE.
lprime(2:nEND:2) = .FALSE.
lprime(2) = .TRUE.
Do i = 3, nEND/2, 2
  If ( lprime(i) ) Then
    lprime(2*i:nEND:i) = .FALSE.
  End If
End Do
ncirc = 4
Do i = 11, nEND, 2
  lcirc = .FALSE.
  If ( lprime(i) ) Then
    length = 1+floor(log10(real(i)))
    Write ( cNUM, '(I0)' ) i
    Do j = 1, length-1
      Write ( cROT, '(2A)' ) cNUM(j+1:length),cNUM(1:j)
      Read ( cROT, * ) nROT
      If ( lprime(nROT) ) Then
        lcirc = .TRUE.
      Else
        lcirc = .FALSE.
        Exit
      End If
    End Do
  End If
  If ( lcirc ) Then
    ncirc = ncirc+1
  End If
End Do
Print *, 'There are',ncirc,'circular primes below',nEND

End Program problem35
