Program problem14
Implicit Integer (Selected_Int_Kind(16)) (I-N)
nmaxlen = 0
Do i = 2, 999999
  num = i
  nchain=1
  Do
    If ( num == 1) Then
      Exit
    !Have come across this number before in a sequence, just assign its values
    !Else If ( num < i ) Then
     !   nchainlen(i) = nchaincur+nchainlen(num)
      !Exit
    Else If ( mod(num,2) == 0 ) Then
      num = num/2
      nchain = nchain+1
    Else
      num = num*3+1
      nchain = nchain+1
    End If
  End Do
  If ( i == 13 ) Then
    Print *, "Length of ",i," chain is",nchain
  End If
  If ( mod(i,10000) == 0 ) Then
    Print *, 'Length of chain starting at',i,'is',nchain
  End If
  If ( nchain > nmaxlen ) Then
    nmaxlen = nchain
    nlongstart = i
  End If
End Do
Print *, 'Maximum chain length is',nmaxlen,'starting at',nlongstart
End Program problem14
