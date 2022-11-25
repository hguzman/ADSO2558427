## ejercicio 2

~~~
Sub cedulas()
    contador = Hojal.Cells(1, 6)
    cedula = Int(InputBox("ingresar numero de cedula: "))
    jr = True
    While jr
     If cedula - Hojal.Cells(contador, 1) Then
          n = Hojal.Cells(contador, 2)
         sw = False
         MsgBox " el nombre es. n"
     End If
     If n = 20 Then
         MsgBox "no se encuentra resultado"
         jr = False
     End If
     contador = contador + 1
    
     Wend
End Sub
~~~