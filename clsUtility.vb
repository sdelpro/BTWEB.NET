Public Class clsUtility
    Dim txtInput As String

    Function fnzINVASCII(ByVal txtStrind As String) As Boolean
        Dim i As Integer = 0, strTMP As String = "", strCODE As String = ""
        For i = 1 To Len(txtStrind)
            strTMP = Mid(txtStrind, i, 1)
            strCODE = Asc(strTMP)
            If strCODE > 236 Then
                MsgBox("Il carattere  '" & strTMP & "'  non è ammesso", vbCritical + vbOKOnly, "Errore")
                fnzINVASCII = True
                Exit For
            End If
        Next i
    End Function

    Public Function fnzCRIPTO(ByVal strInput As String) As String
        Dim i As Integer
        Dim rndINT As Integer
        rndINT = Int((9 * Rnd()) + 10)
        txtInput = strInput
        If fnzINVASCII(strInput) Then
            Exit Function
        End If
        Dim strTMP As String = "", strCRIPTO As String = "", strCODE As String = ""
        For i = 1 To Len(strInput)
            strTMP = Mid(strInput, i, 1)
            strCODE = Asc(strTMP)
            strTMP = CLng(strCODE) + rndINT
            strCRIPTO = strCRIPTO & Chr(strTMP)
        Next i
        fnzCRIPTO = strCRIPTO & strCRIPTO
        strCRIPTO = ""
        For i = 1 To 2
            strTMP = Mid(CStr(rndINT), i, 1)
            strCODE = Asc(strTMP)
            strTMP = CLng(strCODE) + 50
            strCRIPTO = strCRIPTO & Chr(strTMP)
        Next i
        fnzCRIPTO = strCRIPTO & fnzCRIPTO
    End Function

    Public Function fnzDECRIPTO(ByVal strInput As String) As String

        Dim i As Integer = 0
        Dim rndINT As String = ""
        Dim strTMP As String = ""
        Dim strDECRIPTO As String = ""
        Dim strCODE As String = ""
        For i = 1 To 2
            strTMP = Mid(strInput, i, 1)
            strCODE = Asc(strTMP)
            strTMP = CLng(strCODE) - 50
            rndINT = rndINT & Chr(strTMP)
        Next i
        For i = 3 To (Len(strInput) / 2) + 1
            strTMP = Mid(strInput, i, 1)
            strCODE = Asc(strTMP)
            strTMP = CLng(strCODE) - CInt(rndINT)
            strDECRIPTO = strDECRIPTO & Chr(strTMP)
        Next i
        fnzDECRIPTO = strDECRIPTO
    End Function

    Public Function GetLastUpdateTable(ByVal sTable As String) As String
        Dim ds As New System.Data.DataSet
        Dim cdt As New AccessDBManager()
        Dim sql As String
        Try
            sql = "SELECT IDUPDATE FROM TABELLAUPDATE WHERE IDTABELLA='" & sTable & "'"
            cdt.ReadGenericQuery(ds, sql, sTable)
            If ds.Tables(sTable).Rows.Count = 1 Then
                GetLastUpdateTable = Mid(ds.Tables(sTable).Rows(0).Item("IDUPDATE"), 7, 2) & "/" & _
                                    Mid(ds.Tables(sTable).Rows(0).Item("IDUPDATE"), 5, 2) & "/" & _
                                    Mid(ds.Tables(sTable).Rows(0).Item("IDUPDATE"), 1, 4) & " - " & _
                                    Mid(ds.Tables(sTable).Rows(0).Item("IDUPDATE"), 9, 2) & ":" & _
                                    Mid(ds.Tables(sTable).Rows(0).Item("IDUPDATE"), 11, 2)
                '_20041231123056
            Else
                GetLastUpdateTable = "NON DISPONIBILE"
            End If
        Catch ex As Exception
            GetLastUpdateTable = "NON DISPONIBILE"
        End Try

    End Function
End Class
