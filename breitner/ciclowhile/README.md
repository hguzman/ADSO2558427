## ejercicios

```
Sub prueba()
   c = 0
   b = 0
   nb = 0
   a = 0
   t = 0
      While t < 3000000
         c = Int(InputBox("ingrese la cantidad: "))
         If c >= 1 Then
            b = b + 1
         End If
         If c >= 10000 Then
            a = a + 1
         End If
         If c <= o Then
            nb = nb + 1
         End If
            t = t + c
      Wend
      promedio = (t / b)
      MsgBox ("abonaron: " & b)
      MsgBox ("abonaron10k: " & a)
      MsgBox ("no abonaron: " & nb)
      MsgBox ("total recaudado: " & t)
      MsgBox ("promedio los que aportaron: " & promedio)
End Sub
```

! [diagrama de flujo](/breitner/ciclowhile/ing/FlowchartDiagram1.jpg)

