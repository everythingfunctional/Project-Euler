Program problem20
Integer :: nfact(1:200)
Integer, Parameter :: nEND=100
nfact(:) = 0
nfact(1) = 1
lenfact = 1
Do i = 2, nEND
  Do j = 1, lenfact
    nfact(j) = nfact(j)*i
  End Do
  Do j = 1, lenfact
    nfact(j+1) = floor(real(nfact(j)/10))+nfact(j+1)
    nfact(j) = nfact(j)-floor(real(nfact(j)/10))*10
  End Do
  Do
    If ( nfact(lenfact+1) > 0 ) Then
      lenfact = lenfact+1
    Else
      Exit
    End If
    nfact(lenfact+1) = floor(real(nfact(lenfact)/10))+nfact(lenfact+1)
    nfact(lenfact) = nfact(lenfact)-floor(real(nfact(lenfact)/10))*10
  End Do
Print '(I0,A,200I1)', i,'! is ',nfact(lenfact:1:-1)
End Do
nsum=0
Do i = 1, lenfact
  nsum = nsum+nfact(i)
End Do
Print *, 'Sum of digits is',nsum
Print '(A,200I1)', 'Factorial is ',nfact(lenfact:1:-1)

End Program problem20
