## Algoritmo usando un ciclo PARA


~~~
Sub alumnos()

  a = 0
  b = 0
  nb = 0
  t = 0
  ab = 0
   For u = 1 To 10
       ab = Int(InputBox("ingrese la cantidad a donar"))
       If ab >= 100 Then
       b = b + 1
          If ab >= 10000 Then
          a = a + 1
          End If
       Else
         nb = nb + 1
       End If
       t = t + ab
    Next u
          
      promedio = t / b
      MsgBox ("aportaron: " & b)
      MsgBox ("no aportaron: " & nb)
      MsgBox (" aportaron mas de 10k: " & a)
      MsgBox ("total: " & t)
      MsgBox (" promedio de los estudiantes que aportaron: " & promedio)

End Sub
~~~