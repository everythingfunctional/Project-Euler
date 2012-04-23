Program prob381
Implicit Integer (Selected_Int_Kind(8)) (I-N)
Integer (Selected_Int_Kind(2)) nfact(1:100), nsum(1:100), nans(1:100)
Do np = 5, 100
  nsum = 0
  Do k = 1, 5
    nfact = 1
    Do i = 2, np-k
      nfact = nfact*i
    End Do
    nsum = nsum+nfact
  End Do
  Print *, 'p = ',np
  Print *, 'Sum is ',nsum
  Print *, 'Mod is ',mod(nsum,np)
  nans = nans+mod(nsum,np)
End Do
Print *, 'Answer is ',nans

End Program prob381
