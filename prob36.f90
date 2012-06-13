Program problem36
Character (len=6) :: cNUM
Integer :: nBIN(1:20)
Character (len=20) :: cBINF, cBINR

Do i = 1, 999999
  Write ( cNUM, '(I0)' ) i
  Read ( cNUM(6:1:-1), * ) nREV
  If ( nREV == i ) Then
    num = i
    Do j = 19, 0, -1
      If ( num >= 2**j ) Then
        length = j+1
        Exit
      End If
    End Do
    Do j = length-1, 0, -1
      nBIN(j+1) = floor(real(num/2**j))
      num = mod(num,2**j)
    End Do
    Write ( cBINF, '(I1)' ) nBIN(length:1:-1)
    Write ( cBINR, '(I1)' ) nBIN(1:length)

End Program problem36
