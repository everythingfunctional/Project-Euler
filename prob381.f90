Program prob381
Implicit Integer (Selected_Int_Kind(16)) (I-N)
Logical, Allocatable :: lprime(:)
Integer :: iprime(1:10000000)
nEND = 10**8
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
nsum=0
Print *, 'Number of primes is',nprimes
Do np = nprimes, 3, -1
  nmod = iprime(np)+(iprime(np)-3)/2+1 ! (p-1)+(1)+((p-3)/2+1)+
  Do k = 4, 5
    nfact = 1
    If ( k == 4 .AND. mod(iprime(np)+1,6) == 0 ) Then
      nfact = (iprime(np)+1)/6
    Else If ( k == 5 .AND. mod(iprime(np)-1,24) == 0 ) Then
      nfact = (iprime(np)-1)/24
    Else
      Do j = iprime(np)-k, 2, -1
        nfact = nfact*j
        nfact = mod(nfact,iprime(np))
      End Do
    End If
    nmod = nmod+nfact
    !Print *, 'Factorial for',iprime(np)-k,'=',nfact
  End Do
  Print *, 'Function for',iprime(np),'=',mod(nmod,iprime(np))
  nsum = nsum+mod(nmod,iprime(np))
End Do
Print *, 'Answer is ',nsum
End Program prob381
