Program problem29
Integer (Selected_Int_Kind(16)) :: numbers(1:10000,1:100), pow(1:100), numlen(1:10000)
Logical :: lfound
numunique = 0
Do nA = 2, 100
  Do nB = 2, 100
    pow(:) = 0
    pow(1) = 1
    lenpow = 1
    ! Calculate Power
    Do i = 1, nB
      Do j = 1, lenpow
        pow(j) = pow(j)*nA
      End Do
      ! If bin is to large, rollover to next bin
      Do j = 1, lenpow
        If ( pow(j) >= 100000 ) Then
          pow(j+1) = pow(j+1)+floor(real(pow(j)/100000))
          pow(j) = mod(pow(j),100000)
        End If
      End Do
      ! Check if we have rolled over into a new bin
      If ( pow(lenpow+1) > 0 ) lenpow=lenpow+1
    End Do
    ! Check to see if we have encoutered this number before
    lfound = .FALSE.
    Do i = 1, numunique
      If ( numlen(i) == lenpow ) Then
        Do j = 1, lenpow
          If ( pow(j) /= numbers(i,j) ) Then
            lfound = .FALSE.
            Exit !If we exit this loop early, the number does not equal the one we are checking
          Else
            lfound = .TRUE.
          End If
        End Do
      Else
        lfound = .FALSE.
      End If
      If ( lfound ) Exit !If we exit this loop early, the number is not unique
    End Do
    ! If number is unique we will store it and add one to our count
    If ( .NOT. lfound ) Then
      numbers(i,:) = pow(:)
      numlen(i) = lenpow
      numunique = numunique+1
      Print *, 'Found new unique number'
      Print '(100I5)', numbers(numunique,lenpow:1:-1)
    End If
  End Do
End Do
Print *, 'Number of unique values is',numunique

End Program problem29
