~~~
Sub mientras()
   monto = 0
    While monto < 3000000
        dinero = InputBox("Cuánto va a donar?")
    
        If dinero > 0 Then
            aportaron = aportaron + 1
            promedio = monto / aportaron
            If dinero >= 10000 Then
                aportaron10 = aportaron10 + 1
            End If
        Else
            no_aportaron = no_aportaron + 1
        End If
        monto = monto + dinero
    Wend
    
    MsgBox ("Total de monto recogido: $") & monto
    MsgBox ("Aportaron ") & aportaron & (" estudiantes ")
    MsgBox ("No aportaron ") & no_aportaron & (" estudiantes ")
    MsgBox (aportaron10) & (" estudiantes aportaron más de 10000 pesos")
    MsgBox ("Hubo un promedio de ") & promedio & (" pesos por estudiante que aportó")
End Sub
~~~
[diagrama](diagrama1.png)
