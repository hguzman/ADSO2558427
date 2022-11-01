 ```
 Sub proyect()
    For j = 2 To 21
  nombre = nomb.Cells(j, 1)
   ulti = Len(nombre) - 1
    nomb.Cells(j, 2) = Mid(nombre, ulti, 2)
    Next j
    
    
End Sub
```
