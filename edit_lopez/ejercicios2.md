Sub inicio()
   m = 1
   sw = True
   c = Int(InputBox("ingresar numero de cedula"))
    While sw
     If c = Hoja1.Cells(m, 2) Then
        n = Hoja1.Cells(m, 1)
        sw = False
        MsgBox "su nombre es:" & n
     Else
       MsgBox "documento no registrado"
        sw = False
        m = m + 1
     End If
    Wend
    
   
   
End Subs