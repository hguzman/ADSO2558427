Sub registro()
    fila = datos.Cells(1, 6)
    datos.Cells(fila, 1) = registro.Cells(6, 4)
    datos.Cells(fila, 2) = registro.Cells(8, 4)
    datos.Cells(fila, 3) = registro.Cells(10, 4)
    datos.Cells(fila, 4) = registro.Cells(12, 4)
    MsgBox "Datos Guardados"
    datos.Cells(1, 6) = fila + 1
End Sub