Program problem11
Implicit Integer (Selected_Int_Kind(16)) (I-N)
Integer (Selected_Int_Kind(16)) :: numbers(1:20,1:20), nhorizontal(1:20,1:17), nvertical(1:17,1:20), ndiaganolr(1:17,1:17), ndiaganoll(1:17,4:20)
LUIN = 1
Open (LUIN,File='prob11numbers.txt',Status='OLD')
Do i = 1, 20
  Read ( LUIN, * ) numbers(i,1:20)
End Do
!Do i = 1, 20
!  Print *, numbers(i,1:20)
!End Do
! Check horizontal
nANS = 0
Do i = 1, 20
  Do j = 1, 17
    mult = 1
    Do k = j, j+3
      mult = mult*numbers(i,k)
    End Do
    nhorizontal(i,j) = mult
    If ( mult > nANS ) nANS = mult
  End Do
End Do
!Do i = 1, 20
!  Print *, nhorizontal(i,1:17)
!End Do
Print *, 'Answer after horizontal',nANS
!Do i = 1, 20
  Print *, 'Max horizontal',maxval(nhorizontal(1:20,1:17))
!End Do
! Check vertical
Do i = 1, 20
  Do j = 1, 17
    mult = 1
    Do k = j, j+3
      mult = mult*numbers(k,i)
    End Do
    nvertical(j,i) = mult
    If ( mult > nANS ) nANS = mult
  End Do
End Do
!Do i = 1, 17
!  Print *, nvertical(i,1:20)
!End Do
Print *, 'Answer after vertical',nANS
!Do i = 1, 17
  Print *, 'Max vertical',maxval(nvertical(1:17,1:20))
!End Do
! Check diagonal
Do i = 1, 17
  Do j = 1, 17
    mult = 1
    Do k = 0, 3
      mult = mult*numbers(i+k,j+k)
    End Do
    ndiaganolr(i,j) = mult
    If ( mult > nANS ) nANS = mult
  End Do
End Do
!Do i = 1, 17
!  Print *, ndiaganol(i,1:17)
!End Do
Print *, 'Answer after diaganolright',nANS
!Do i = 1, 17
  Print *, 'Max diaganol',maxval(ndiaganolr(1:17,1:17))
!End Do
Do i = 1, 17
  Do j = 4, 20
    mult = 1
    Do k = 0, 3
      mult = mult*numbers(i-k,j-k)
    End Do
    ndiaganoll(i,j) = mult
    If ( mult > nANS) nANS = mult
  End Do
End Do
Print *, 'Answer after diaganolleft',nANS
Print *, 'Max diaganol',maxval(ndiaganoll(1:17,4:20))
End Program problem11
