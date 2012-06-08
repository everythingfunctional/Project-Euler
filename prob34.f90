Program problem34
Integer :: numdig(1:7)
Character (len=7) :: cNUM

Do i = 1, 9999999
  cNUM = ''
  numdig(:) = 0
  Write ( cNUM, * ) i
  length = Len_Trim(cNUM)
  Do j = 1, length
    numdig(j) = cNUM(j)
  End Do

End Program problem34
