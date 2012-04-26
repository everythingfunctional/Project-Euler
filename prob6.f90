Program problem6
Implicit Integer (Selected_Int_Kind(16)) (I-N)
nEND = 100
nsumofsq = 0
nsqofsum = 0
Do i = 1, nEND
  nsumofsq = nsumofsq+i**2
End Do
Do i = 1, nEND
  nsqofsum = nsqofsum+i
End Do
nsqofsum = nsqofsum**2
Print *, 'Answer is',nsqofsum-nsumofsq

End Program problem6
