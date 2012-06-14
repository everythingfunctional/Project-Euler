Program problem37
Logical, allocatable :: lprime(:)
Logical :: ltrunc
nEND = 100000
allocate (lprime(2:nEND))
lprime(:) = .TRUE.
lprime(4:nEND:2) = .FALSE.
Do i = 3, nEND/2, 2
  If ( lprime(i) ) Then
    lprime(i*2:nEND:i) = .FALSE.
  End If
End Do
Do i = 11, nEND, 2
  If ( lprime(i) ) Then
    length = 1+log10(real(i))
    num = i
    ltrunc = .TRUE.
    Do j = 1, length-1
      num = floor(real(num/10))
      If ( .NOT. lprime(num) ) Then
        ltrunc = .FALSE.
        Exit
      End If
    End Do
    If ( .NOT. ltrunc ) Cycle
    num = i
    ltrunc = .TRUE.
    Do j = length-1, 1, -1
      num = num - floor(real(num/10**(j)))
      If ( .NOT. lprime(num) ) Then
        ltrunc = .FALSE.
        Exit
      End If
    End Do
    If ( ltrunc ) Then
      Print *, 'Found truncatable prime',i
      nANS = nANS+i
    End If
  End If
End Do

End Program problem37
