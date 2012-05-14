Program problem24
Implicit Integer (Selected_Int_Kind(12)) (I-N)
Logical :: used(0:9)
Integer :: digit(1:10)
nend = 1000000
used(:) = .FALSE.
nprog=0
Do i = 10, 1, -1
  nfact = 1
  Do j = i-1, 2, -1
    nfact = nfact*j
  End Do
  ndig = ceiling(real((nend-nprog)/nfact))
  Print *, 'Number of digits in postion',i,'is',ndig
  nprog = (ndig)*nfact+nprog
  Print *, 'And we''ve gotten through',nprog,'permutations'
  k = 1
  num = 0
  Do
    If ( used(num) ) Then
      num = num+1
      Cycle
    Else If ( k == ndig ) Then
      used(k-1) = .TRUE.
      digit(i) = num
      Exit
    Else
      k = k+1
      num = num+1
    End If
  End Do
End Do
Print *, 'The 1000000th permutation is',digit(10:1:-1)
End Program problem24
