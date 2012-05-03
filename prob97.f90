Program problem97
Implicit Integer(Selected_Int_Kind(16)) (I-N)
nANS = 28433
Do i = 1, 7830457
  nANS = nANS*2
  nANS = mod(nANS,10000000000)
End Do
nANS=nANS+1
Print '(A,I0)', 'Answer is ',nANS

End Program problem97
