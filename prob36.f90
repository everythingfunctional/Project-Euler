Program problem36
Character (len=6) :: cNUM, cNUMR
Integer :: nBIN(1:20)
Character (len=20) :: cBINF, cBINR
nANS=0
Do i = 1, 999999
  cNUM = ''
  cNUMR = ''
  cBINF = ''
  cBINR = ''
  Write ( cNUM, '(I0)' ) i
  Do j = 1, 6
    cNUMR(j:j) = cNUM(7-j:7-j)
  End Do
  Read ( cNUMR, * ) nREV
  ! Check if number is palindromic
  If ( nREV == i ) Then
    num = i
    ! See how long the number will be in binary
    Do j = 19, 0, -1
      If ( num >= 2**j ) Then
        length = j+1
        Exit
      End If
    End Do
    ! Convert number to binary
    Do j = length-1, 0, -1
      nBIN(j+1) = floor(real(num/2**j))
      num = mod(num,2**j)
    End Do
    !Print *, 'Palindromic number',i,'=',nBIN(length:1:-1),'in binary'
    Write ( cBINF, '(20I1)' ) nBIN(length:1:-1)
    Write ( cBINR, '(20I1)' ) nBIN(1:length)
    If ( cBINF == cBINR ) Then
      nANS = nANS + i
      If ( i == 585 ) Then
        Print *, 'Found test case',i,'=',nBIN(1:length)
      End If
    End If
  End If
End Do
Print *, 'Sum of palindromic numbers is',nANS

End Program problem36
