Program problem26
Integer :: dig(1:100)
maxlen=0
Do n = 2, 1000
  irem=10
  dig(:)=0
  i=0
  ! Division Loop
  Divide: Do
    i=i+1
    dig(i)= floor(real(irem/n))
    If ( mod(irem,n) == 0 ) Exit ! Division Ended
    ! Calculate Remainder
    irem = 10*mod(irem,n)
    ! If String is long enough see if it has repetition
    If ( i >  maxlen ) Then
     Do j = 1, floor(real(i/2))
        Do k = 1, i-j
          If ( dig(k:k+j-1) == dig(k+j:k+2*j-1) ) Then ! Found Repetition
            If ( j > maxlen ) Then ! If repetition is longer than previously found, this is new max length
              maxlen = j
              maxlennum = n
            End If
            Exit Divide
          End If
        End Do
      End Do
    End If
  End Do Divide
  If ( n == 7 ) Then
    Print *, 'Length of longest repetition is',maxlen
    Print *, 'From 1/',maxlennum
  End If
End Do
Print *, 'Length of longest repetition is',maxlen
Print *, 'From 1/',maxlennum

End Program problem26
