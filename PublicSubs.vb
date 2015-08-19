

Module PublicSubs

    Public Function AbilitaPagina(ByVal SessionID As String, ByVal Username As String) As Int16
        Dim dsa As New System.Data.DataSet
        Dim cdt As New AccessDBManager
        Dim sql As String
        With cdt
            sql = "SELECT COUNT(USERNAME) AS CONTA FROM CLIENTI WHERE USERNAME = '" & _
                          Username & "' AND CONNESSIONE = '" & SessionID & "'"
            .ReadGenericQuery(dsa, sql, "CLIENTI")
            Return dsa.Tables("CLIENTI").Rows(0).Item("CONTA")
        End With
    End Function

    Public Sub LogUserLogin(ByVal strUser As String)
        Dim clt As New AccessDBManager
        clt.UpdateGenericTable("INSERT INTO USERLOG VALUES('" & strUser & "','" & Format(Now, "mm/dd/yyyy") & "','" & Format(Now, "HH:mm") & "')")
    End Sub

    Public Function fmtNumbertoDecimal(ByVal lNumber As String) As String
        On Error GoTo ErrHndl
        Dim iCommaPos As Integer
        Dim kPos As Integer
        Dim strNumber As String
        strNumber = CStr(lNumber)
        strNumber = Replace(strNumber, ".", ",")
        iCommaPos = InStr(strNumber, ",")
        If iCommaPos = 0 Then iCommaPos = Len(strNumber) + 1
        For kPos = iCommaPos - 3 To 1 Step -3
            If kPos > 1 Then strNumber = Left(strNumber, kPos - 1) & "." & Right(strNumber, Len(strNumber) - kPos + 1)
        Next kPos
        fmtNumbertoDecimal = strNumber
        Exit Function
ErrHndl:
        On Error GoTo 0
    End Function

    Public Function isDateItalian(ByVal strData As String) As Boolean
        Dim strDD As String
        Dim strMM As String
        Dim strYYYY As String
        If Len(strData & "") <> 10 Then
            isDateItalian = False
            Exit Function
        End If
        strDD = Mid(strData, 1, 2)
        strMM = Mid(strData, 4, 2)
        strYYYY = Mid(strData, 7, 4)
        If Not IsNumeric(strDD) And Not IsNumeric(strMM) And Not IsNumeric(strYYYY) Then
            isDateItalian = False
            Exit Function
        End If
        Select Case CInt(strMM)
            Case 1, 3, 5, 7, 8, 10, 12
                If CInt(strDD) > 31 Then
                    isDateItalian = False
                    Exit Function
                Else
                    isDateItalian = True
                    Exit Function
                End If
            Case 4, 6, 9, 11
                If CInt(strDD) > 30 Then
                    isDateItalian = False
                    Exit Function
                Else
                    isDateItalian = True
                    Exit Function
                End If
            Case 2
                If CInt(strYYYY) / 4 * 4 = CInt(strYYYY) Then
                    If CInt(strDD) > 29 Then
                        isDateItalian = False
                        Exit Function
                    Else
                        isDateItalian = True
                        Exit Function
                    End If
                Else
                    If CInt(strDD) > 28 Then
                        isDateItalian = False
                        Exit Function
                    Else
                        isDateItalian = True
                        Exit Function
                    End If
                End If
        End Select
    End Function

    Public Function cDateItalian(ByVal strData As String) As String

        'per questioni di regional setting tutte le date si trasformano in yyyy-mm-dd

        'If Len(strData & "") < 10 Then Return "2090-01-01"
        'If Not isDateItalian(strData) Then Return "2090-01-01"

        'Return String.Format("{0}-{1}-{2}", Mid(strData, 7, 4), Mid(strData, 4, 2), Mid(strData, 1, 2))

        If Len(strData & "") < 10 Then
            cDateItalian = #1/1/3000#
            Exit Function
        End If
        If Not isDateItalian(strData) Then
            cDateItalian = #1/1/3000#
            Exit Function
        End If

        Select Case strServerVersion
            Case "Italian"
                ' se il server è italiano
                cDateItalian = strData
                'cDateItalian = Mid(strData, 1, 2) & "/" & Mid(strData, 4, 2) & "/" & Mid(strData, 7, 4)
            Case "English"
                ' se il server è inglese
                cDateItalian = Mid(strData, 4, 2) & "/" & Mid(strData, 1, 2) & "/" & Mid(strData, 7, 4)
        End Select
    End Function
    Public Function cstrItToDateEn(ByVal strData As String) As Date
        If Len(strData & "") < 10 Then
            cstrItToDateEn = #1/1/3000#
            Exit Function
        End If
        If Not isDateItalian(strData) Then
            cstrItToDateEn = #1/1/3000#
            Exit Function
        End If

        'Select Case strServerVersion
        'Case "English"
        '    ' se il server è italiano
        '    cstrItToDateEn = strData
        'Case "Italian"
        ' se il server è inglese
        cstrItToDateEn = Mid(strData, 1, 2) & "/" & Mid(strData, 4, 2) & "/" & Mid(strData, 7, 4)
        'End Select
    End Function
    Public Function GiveMeDate() As String
        Select Case strServerVersion
            Case "Italian"
                ' se il server è italiano
                GiveMeDate = Format(Date.Now, "dd/MM/yyyy")
            Case Else '"English"
                ' se il server è inglese
                GiveMeDate = Format(Date.Now, "MM/dd/yyyy")
        End Select

    End Function

    Public Function GetEnvValue(ByVal strFileConf As String, ByVal strNameVar As String) As String
        Dim m_dsReadConnString As New DataSet
        Dim m_Row As DataRow
        m_dsReadConnString.ReadXml(strFileConf)
        m_Row = m_dsReadConnString.Tables(0).Select("Env = '" & strNameVar & "'")(0)
        GetEnvValue = m_Row("String")
    End Function
    Public Function getComunic() As String
        'Dim ds As New System.Data.DataSet
        'Dim cdt As New AccessDBManager()
        'Dim sql As String
        'With cdt
        '    sql = "SELECT * FROM NEWSGENERALI WHERE TITOLO = 'COMUNICAZIONE'"
        '    .ReadGenericQuery(ds, sql, "NEWSGENERALI")
        '    getComunic = ds.Tables("NEWSGENERALI").Rows(0).Item("NEWS")
        'End With
    End Function
    Public Function Crypt(ByVal _input_to_crypt As String) As String
        Dim i As Integer = 0
        Dim pLen As Integer = Len(_input_to_crypt)
        Dim Serv As String = ""
        Dim iServ As Integer = 0
        Dim cr_pwd As String = ""
        Try
            For i = 1 To pLen
                Serv = Mid$(_input_to_crypt, i, 1)
                If Len(Serv) > 0 Then
                    iServ = Asc(Serv) * 2
                Else
                    iServ = 0
                End If
                If iServ < 10 Then
                    Serv = "00" & CStr(iServ)
                ElseIf iServ < 100 Then
                    Serv = "0" & CStr(iServ)
                Else
                    Serv = CStr(iServ)
                End If
                cr_pwd = cr_pwd & Serv
            Next i
            Return cr_pwd
        Catch ex As System.Exception
            Return vbNullString
        End Try

    End Function

    Public Function DeCrypt(ByVal _input_to_decrypt As String) As String
        Dim Init As Integer = 1
        Dim offset As Integer = 3
        Dim pLen As Integer = Len(_input_to_decrypt)

        Dim sTern As String = ""
        Dim iTern As Integer = 0
        Dim pwd As String = ""

        Try
            Do While Init < pLen
                sTern = Mid$(_input_to_decrypt, Init, offset)
                iTern = CInt(sTern)
                pwd = pwd & Chr(iTern \ 2)
                Init = Init + offset
            Loop
            Return pwd
        Catch ex As System.Exception
            Return vbNullString
        End Try
    End Function

    Public Function isValidKey(ByVal strKey As String) As Boolean
        ' KEY#473027055@@2004_00_29_10_29
        Dim iPos As Integer = InStr(strKey, "@@")
        isValidKey = True
        If Left(strKey, 3) <> "KEY" Then isValidKey = False
        If isValidKey = True And Mid(strKey, 4, 1) <> "#" Then isValidKey = False
        If isValidKey = True And Mid(strKey, iPos + 6, 1) <> "_" Then isValidKey = False
        If isValidKey = True And Mid(strKey, iPos + 9, 1) <> "_" Then isValidKey = False
        If isValidKey = True And Mid(strKey, iPos + 12, 1) <> "_" Then isValidKey = False
        If isValidKey = True And Mid(strKey, iPos + 15, 1) <> "_" Then isValidKey = False
        If isValidKey = True And Mid(strKey, iPos + 18, 1) <> "_" Then isValidKey = False
    End Function
End Module
