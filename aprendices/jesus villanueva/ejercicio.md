~~~
Sub ejercicio()
 dar = 0
 darsup = 0
 nodar = 0
 Total = 0

 While Total < 3000000

 dinero = Int(InputBox("cuanto quiere donar?"))
   
    If dinero > 0 Then
    
       dar = dar + 1
       
       Total = Total + dinero
       
        If dinero > 10000 Then
          darsup = darsup + 1
       
        End If
       
    Else
       nodar = nodar + 1
       
    End If
    
 Wend

 promedio = Total / dar

 MsgBox " el total recaudado es de $" & Total
 MsgBox " el promedio del recaudo es de $" & promedio
 MsgBox " la cantidad de estudiantes que donaron" & " (" & dar & ")" & "estudiantes"
 MsgBox " la cantidad de estudiantes que no donaron" & " (" & nodar & ")" & " estudiantes"
 MsgBox " los estudiantes que donaron un cantidad superior a $10.000:" & "(" & darsup & ")" & " estudiantes "
 
End Sub
~~~

[diagrama de flujo](DiagramaCorrection.jpg)


