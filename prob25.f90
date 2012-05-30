Program problem25
!Implicit Real (Selected_Real_Kind(15,1000)) (D-H)
Integer :: fnm1(1:1000), fn(1:1000), fnp1(1:1000)

fn(:) = 0
fnm1(:) = 0
fnp1(:) = 0
fn(1) = 1
fnm1(1) = 1
i = 2
numdig = 1

Do
  i = i+1
  fnp1(:) = fn(:) + fnm1(:)
  Do j = 1, numdig
    If ( fnp1(j) > 9 ) Then
      fnp1(j+1) = fnp1(j+1)+1
      fnp1(j) = fnp1(j)-10
      If ( j == numdig ) numdig=numdig+1
    End If
  End Do
  If ( numdig > 999 ) Exit
  If ( i == 12 ) Then
    Print *, i,'th term is'
    Print '(1000I1)', fnp1(1000:1:-1)
  End If
  fnm1 = fn
  fn = fnp1
End Do
Print *, 'The',i,'th term has more than 1000 digits.'
Print *, 'and it equals'
Print '(1000I1)', fnp1(1000:1:-1)

End Program problem25
