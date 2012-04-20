Program problem3
Implicit Integer (Selected_Int_Kind(16)) (I-N)
! Find the largest prime factor of a number
!nEND = 600851475143
nEND = 6857
I = 1
Do
I = I+1
  Do
    If ( mod(nEND,I) == 0 ) Then
      nEND = nEND/I
    Else
      Exit
    End If
  End Do
  If ( I >= nEND ) Then
    Exit
  End If
End Do
Print *,'I = ',I

End Program problem3
