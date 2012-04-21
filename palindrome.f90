Program problem4
Do I = 999, 100, -1
  Do J = 999, 100, -1
    nProd = I*J
    !Print *, 'Product is ',nProd
    Lpal = npalchk(nProd)
    !Print *, 'Lpal is passed',Lpal,'and nProd is',nProd
    If ( Lpal == 1 .AND. I*J > maxpal ) Then
      !Print *, 'Palindrome found',I*J
      maxpal = I*J
    End If
  End Do
End Do
Print *, 'Max. Plaindrome is ',maxpal
End Program problem4
Function npalchk(num)
Allocatable :: numa(:)
k = 0
Do
  k = k+1
  If ( 10**k > num ) Then
    iSize = k
    Exit
  End If
End Do
nchk = Floor(REAL(iSize/2))
Allocate (numa(0:iSize-1))
Do k = iSize-1, 0, -1
  numa(k) = Floor(REAL(num/(10**k)))
  num = num - numa(k)*10**k
End Do
Do k = 0, nchk-1
  If ( numa(k) /= numa(iSize-k-1) ) Then
    npalchk = 0
    Exit
  Else
    npalchk = 1
  End If
End Do
!If ( npalchk == 1 ) Then
!  Print *, 'palindrome found of size',iSize
!End If
Return
End Function npalchk
