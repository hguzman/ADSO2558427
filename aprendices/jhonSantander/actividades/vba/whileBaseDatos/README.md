<h2 align=center>Ejercicio de buscador</h2>

<h3 align=center>programación</h3>

```
Sub buscador()
    n = 1
    lista = Int(InputBox("ingrese cantidad de datos"))
    busc = Int(InputBox("ingrese cedula"))
    sw = True
    While busc <> cedula And sw
        cedula = baseDatos.Cells(n, 1)
        n = n + 1
        If n = lista Then
            sw = False
            If busc <> cedula Then
                MsgBox ("error en encontar el nombre")
            End If
        End If
    Wend
    n = n - 1
    nom = baseDatos.Cells(n, 2)
    If busc = cedula Then
        MsgBox ("el nombre es " & nom)
    End If
End Sub
``` 