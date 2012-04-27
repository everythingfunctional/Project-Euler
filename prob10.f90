Program prob10
Implicit Integer (Selected_Int_Kind(16)) (I-N)
Logical, Allocatable :: lprime(:)
Integer :: iprime(1:10000000)
nEND = 2000000
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
If ( mod(nEND,4) == 0 ) Then
  mid = nEND/2+1
Else
  mid = nEND/2+2
End If
Do i = mid, nEND, 2
  If ( lprime(i) ) Then
    nprimes = nprimes+1
    iprime(nprimes) = i
    !Print *, 'Prime',nprimes,'is',i
  End If
End Do
nsum=0
Print *, 'Number of primes is',nprimes
Do np = nprimes, 1, -1
  nsum = nsum + iprime(np)
End Do
Print *, 'Answer is ',nsum
End Program prob10
