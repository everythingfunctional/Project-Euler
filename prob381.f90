Program prob381
Implicit Integer (Selected_Int_Kind(16)) (I-N)
Logical, Allocatable :: lprime(:)
Integer :: iprime(1:1000000)
nEND = 100
Allocate (lprime(2:nEND))
lprime(3:nEND:2) = .TRUE.
lprime(2:nEND:2) = .FALSE.
iprime(1) = 2
nprimes = 1
Do i = 3, nEND/2, 2
  If ( lprime(i) ) Then
    lprime(2*i:nEND:i) = .FALSE.
    nprimes = nprimes+1
    iprime(nprimes) = i
    !Print *, 'Prime',nprimes,'is',i
  End If
End Do
Do i = nEND/2+1, nEND, 2
  If ( lprime(i) ) Then
    nprimes = nprimes+1
    iprime(nprimes) = i
    !Print *, 'Prime',nprimes,'is',i
  End If
End Do
!Print *, 'Number of primes is',nprimes
Do np = 3, nprimes
  nmod = 0
  Do k = 1, 5
    nfact = 1
    Do j = iprime(np)-k, 2, -1
      nfact = nfact*j
      nfact = mod(nfact,iprime(np))
      If ( nfact == 0 ) Exit
    End Do
    nmod = nmod+nfact
    Print *, 'Funtion for prime',np,'=',nmod
  End Do
  nsum = nsum+mod(nmod,iprime(np))
End Do
Print *, 'Answer is ',nsum
End Program prob381
