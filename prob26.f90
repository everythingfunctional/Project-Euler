Program problem26
Integer :: dig(1:1000), maxdec(1:1000)
maxlen=1
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
     Do j = ceiling(real(n/10)), floor(real(i/2)) ! String Length
        Do k = 1, i-j ! String Position
          Do l = k, k+j-1 ! Loop Through String
            If ( dig(l) /= dig(l+j) ) Exit ! Doesn't Repeat
          End Do
          If ( l > k+j-1 ) Then ! Made it through loop, so repeats
            If ( j >= maxlen ) Then ! If repetition is longer than previously found, this is new max length
              maxlen = j
              maxlennum = n
              maxdec(:) = dig(:)
            End If
              Exit Divide
          End If
        End Do
      End Do
    End If
  End Do Divide
  !If ( n < 100 ) Then
   ! Print *, '1/',n,'equals'
   ! Print '(A2,1000I1)', '0.',dig(1:i)
  !End If
  If ( n == 6 ) Then
    Print '(A,1000I1)', '1/6 is 0.',dig(1:i)
  End If
  If ( n == 6 ) Then
    Print *, 'Length of longest repetition is',maxlen
    Print *, 'From 1/',maxlennum
    Print *, 'With quotient'
    Print '(A2,1000I1)', '0.',maxdec(1:2*maxlen)
  End If
  If ( n == 7 ) Then
    Print *, 'Length of longest repetition is',maxlen
    Print *, 'From 1/',maxlennum
    Print *, 'With quotient'
    Print '(A2,1000I1)', '0.',maxdec(1:2*maxlen)
  End If
End Do
Print *, 'Length of longest repetition is',maxlen
Print *, 'From 1/',maxlennum
Print *, 'With quotient'
Print '(A2,1000I1)', '0.',maxdec(1:2*maxlen)

End Program problem26
