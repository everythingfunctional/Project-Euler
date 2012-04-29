Program problem14
Integer :: nchainlen(1:10000000), nchain(1:10000000,1:10000), ichaincur(1:10000)
Logical :: lchainfound(1:10000000)
nchainlen(:) = 1
nchain(:,:) = 0
lchainfound(:) = .FALSE.
Do i = 2, 999999
  num = i
  nchaincur=1
  ichaincur(:)=0
  ichaincur(1)=num
  Do
    If ( num == 1) Then
      Exit
    !Have come across this number before in a sequence, just assign its values
    Else If ( lchainfound(num) ) Then
      ! Loop through numbers found starting at i
      Do j = 1, nchaincur
        ! Loop through the chain we have already found and add it to the end of this one for any numbers at the beginning of the search
        Do k = 1, nchainlen(num)
          nchain(ichaincur(j),nchainlen(ichaincur(j))+k) = nchain(num,k)
        End Do
        ! Keep the length of this chain correct
        nchainlen(ichaincur(j)) = nchainlen(ichaincur(j))+nchainlen(num)
      End Do
      Exit
    Else If ( mod(num,2) == 0 ) Then
      If ( lchainfound(num) ) Then
        Stop 'I think I found an infinite loop, some logic must be wrong'
      Else
        lchainfound(num) = .TRUE.
      End If
      num = num/2
      ! have found another new number, add it into this chain
      Do j = 1, nchaincur
        nchainlen(ichaincur(j)) = nchainlen(ichaincur(j))+1
        nchain(ichaincur(j),nchainlen(ichaincur(j))) = num
      End Do
      nchaincur = nchaincur+1
      ichaincur(nchaincur) = num
    Else
      If ( lchainfound(num) ) Then
        Stop 'I think I found an infinite loop, some logic must be wrong'
      Else
        lchainfound(num) = .TRUE.
      End If
      num = num*3+1
      ! have found another new number, add it into this chain
      Do j = 1, nchaincur
        nchainlen(ichaincur(j)) = nchainlen(ichaincur(j))+1
        nchain(ichaincur(j),nchainlen(ichaincur(j))) = num
      End Do
      nchaincur = nchaincur+1
      ichaincur(nchaincur) = num
    End If
  End Do
  If ( i == 13 ) Then
    Print *, "Length of 13's chain is",nchainlen(13)
  End If
  !If ( mod(i,1000) == 0 ) Then
    !Print *, 'Length of chain starting at',i,'is',nchainlen(i)
  !End If
  If ( nchaincur > nmaxlen ) Then
    nmaxlen = nchaincur
    nlongstart = i
  End If
End Do
Print *, 'Maximum chain length is',nmaxlen,'starting at',nlongstart
End Program problem14
