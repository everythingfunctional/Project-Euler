Program problem27
Logical :: lprime(-10000000:10000000)
! Calculate Primes ahead of time
lprime(3:10000000:2) = .TRUE.
lprime(0:10000000:2) = .FALSE.
lprime(2) = .TRUE.
Do i = 3, 10000000/2, 2
  If ( lprime(i) ) Then
    lprime(2*i:10000000:i) = .FALSE.
  End If
End Do
Do i = 1, 10000000, 1
  lprime(-i) = lprime(i)
End Do
! Loop through quadratic equations
Do iA = -1000, 1000, 1
  Do iB = -1000, 1000, 1
    n = -1
    ! increment n until it does not make a prime
    Do
      n = n+1
      num = n**2 + n*iA + iB
      If ( .NOT. lprime(num) ) Exit
    End Do
    If ( n > maxprimes ) Then
      maxprimes = n
      nANS = iA*iB
    End If
  End Do
End Do
Print *, 'The most consectutive primes is,',maxprimes
Print *, 'With A*B =',nANS

End Program problem27
