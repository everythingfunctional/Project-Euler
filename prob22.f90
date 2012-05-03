Program problem22
Implicit Integer (Selected_Int_Kind(16)) (I-N)
Character (Len=26) :: letters
Character (Len=16) :: names
LUIN = 1
OPEN (LUIN,file='sortednames.txt',Status='OLD')
letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
i = 0
names = '                '
nANS = 0
Do
  i = i+1
  Read ( LUIN, *, Iostat=IO ) names
  If ( IO /= 0 ) Exit
  leng = LEN_TRIM(names)
  Do j = 1, leng
    Do k = 1, 26
      If ( names(j:j) == letters(k:k) ) Then
        nANS = nANS+i*k
        Exit
      End If
    End Do
  End Do
  names = '                '
End Do
Print *, 'Answer is ',nANS

End Program problem22
