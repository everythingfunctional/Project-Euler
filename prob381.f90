Program prob381
Implicit Integer (Selected_Int_Kind(16)) (I-N)
Common / iprimes / iprime(1:1000000),nprimes
Save / iprimes /
Call FindPrimes(10**8)
!Do np = 3, nprimes
!  nsum = 0
!  Do k = 1, 5
!    nfact = 1
!    Do i = 2, np-k
!      nfact = nfact*i
!    End Do
!    nsum = nsum+nfact
!  End Do
!  Print *, 'p = ',np
!  Print *, 'Sum is ',nsum
!  Print *, 'Mod is ',mod(nsum,np)
!  nans = nans+mod(nsum,np)
!End Do

End Program prob381
Subroutine FindPrimes (nEND)
Implicit Integer (Selected_Int_Kind(16)) (I-N)
Common / iprimes / iprime(1:1000000),nprimes
Save / iprimes /
iprime(1) = 2
iprime(2) = 3
nprimes = 2
n = 3
Do
  n = n+2
  If ( n > nEND ) Exit
  Do i = 2, nprimes
    If ( mod(n,iprime(i)) == 0 ) Exit
  End Do
  If ( i > nprimes ) Then
    nprimes = nprimes+1
    iprime(nprimes) = n
!    Print *, 'Prime ',i,' is ',iprime(nprimes)
  End If
End Do
Print *, 'Number of primes is',nprimes
Return
End Subroutine FindPrimes
