Program problem13
Integer :: num(1:100,1:50), nsum(1:100)
Character (len=50) :: cnum(1:100)
LUIN = 1
Open (LUIN,File='prob13num.txt',Status='OLD')
Do i = 1, 100
  Read ( LUIN , '(A50)' ) cnum(i)
End Do
!Do i = 1, 100
!  Print *, cnum(i)
!End Do
Do i = 1, 100
  Do j = 1,50
    Read ( cnum(i)(j:j) , '(I1)' ) num(i,51-j)
  End Do
End Do
!Do i = 1, 100
!  Print '(50I1)', num(i,50:1:-1)
!End Do
nsum(:) = 0
Do i = 1, 100
  Do j = 1,50
    nsum(j) = nsum(j)+num(i,j)
    Do k = 1, 99
      If ( nsum(k) > 9 ) Then
        nsum(k) = nsum(k)-10
        nsum(k+1) = nsum(k+1)+1
      End If
    End Do
  End Do
End Do
Print *, 'Sum of Numbers is'
Print '(100I1)', nsum(100:1:-1)
End Program problem13
