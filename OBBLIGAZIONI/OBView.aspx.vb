Public Class OBView
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents tbCarPrinc As System.Web.UI.WebControls.Table
    Protected WithEvents Table1 As System.Web.UI.WebControls.Table
    Protected WithEvents tbCarDesc As System.Web.UI.WebControls.Table
    Protected WithEvents CheckBox1 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Radio1 As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents Radio2 As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents lblTIPORICERCA As System.Web.UI.WebControls.Label

    'NOTA: la seguente dichiarazione è richiesta da Progettazione Web Form.
    'Non spostarla o rimuoverla.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: questa chiamata al metodo è richiesta da Progettazione Web Form.
        'Non modificarla nell'editor del codice.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Not Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
            Session("ERROR") = "Accesso non autorizzato. Effettuare il Login"
            Me.Response.Redirect("../Error.aspx")
        End If
        If AbilitaPagina(Session.SessionID, Session("USERNAME")) = 0 Then
            Session.Clear()
            Session("ERROR") = "Errore 1752. Violazione di Protezione.<br><br>" & _
                               "Il sistema ha rilevato un accesso multiplo non autorizzato.<br>" & _
                               "Contattare il supporto tecnico per maggiori informazioni."
            Me.Response.Redirect("../Error.aspx")
        End If
        lblLastLogin.Text = Session("LASTLOGIN")

        Dim dt As New System.Data.DataTable
        Dim cdt As New AccessDBManager()
        Dim sql As String = ""
        Dim LastRecord As Boolean = False
        Dim kCol As Integer = -1
        Dim TableString As String = ""
        Dim radioString As String
        lblTIPORICERCA.Text = Session("TIPORICERCA")
        With cdt
            Try



                If Session("ISINCODE") <> "" Then
                    sql = "SELECT  * FROM TITOLOOBBLIGAZIONARIO WHERE ISINCODE = '" & Session("ISINCODE") & "'"
                Else
                    Response.Redirect("OBLista.aspx")
                End If


                .ReadGenericQuery(dt, sql)

                If CType(dt.Rows.Count, Boolean) Then

                    kCol += 1
                    kCol += 1

                    'tbCarPrinc.Rows(kCol).Cells(0).Text = "UIC"
                    'tbCarPrinc.Rows(kCol).Cells(1).Text = "ISINCODE"
                    'tbCarPrinc.Rows(kCol).Cells(2).Text = "SETTORE"
                    'tbCarPrinc.Rows(kCol).Cells(3).Text = "DESCRIZIONE BREVE"

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "ISINCODE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = "SETTORE"

                    radioString = "<INPUT type=""radio"" value=""off"" CHECKED>"
                    If CType(dt.Rows(0).Item("INDICIZZAZIONE") & "", Int16) = 0 Then
                        radioString = "<INPUT type=""radio"" value=""off"">"
                    End If
                    tbCarPrinc.Rows(kCol).Cells(2).Text = radioString & "CEDOLE"

                    radioString = "<INPUT type=""radio"" value=""off"" CHECKED>"
                    If CType(dt.Rows(0).Item("QUOTAZIONE") & "", Int16) = 0 Then
                        Session("OB_QUOT") = "NO"
                        radioString = "<INPUT type=""radio"" value=""off"">"
                    Else
                        Session("OB_QUOT") = "SI"
                    End If
                    tbCarPrinc.Rows(kCol).Cells(4).Text = radioString & "QUOTATO"      '" TITOLO IN QUOTAZIONE"

                    radioString = "<INPUT type=""radio"" value=""off"" CHECKED>"
                    If isDateItalian(dt.Rows(0).Item("D1PRATA") & "") = False And isDateItalian(dt.Rows(0).Item("D2PRATA") & "") = False Then
                        radioString = "<INPUT type=""radio"" value=""off"">"
                    End If
                    tbCarPrinc.Rows(kCol).Cells(3).Text = radioString & "PRORATA"

                    kCol += 1

                    'tbCarPrinc.Rows(kCol).Cells(0).Text = CType(dt.Rows(0).Item("UIC") & "", String)
                    'tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("ISINCODE") & "", String)
                    'tbCarPrinc.Rows(kCol).Cells(2).Text = CType(dt.Rows(0).Item("SETTORE") & "", String)
                    'tbCarPrinc.Rows(kCol).Cells(3).Text = CType(dt.Rows(0).Item("DESCRS") & "", String)

                    tbCarPrinc.Rows(kCol).Cells(0).Text = CType(dt.Rows(0).Item("ISINCODE") & "", String)
                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("SETTORE") & "", String)

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "DESCRIZIONE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("DESCRL") & "", String)

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "CONTROVALORE INIZIALE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(Format(dt.Rows(0).Item("CVINIZIALE") & "", "standard"), String)
                    tbCarPrinc.Rows(kCol).Cells(2).Text = "TASSO LORDO"
                    tbCarPrinc.Rows(kCol).Cells(3).Text = Replace(CType(dt.Rows(0).Item("TLORDO") & "", String), ".", ",")
                    tbCarPrinc.Rows(kCol).Cells(4).Text = "PREZZO DI EMISSIONE"
                    tbCarPrinc.Rows(kCol).Cells(5).Text = CType(Format(dt.Rows(0).Item("PEMISSIONE"), "0.000000"), String)
                    tbCarPrinc.Rows(kCol).Cells(6).Text = "TAGLIO MINIMO INIZIALE"
                    tbCarPrinc.Rows(kCol).Cells(7).Text = CType(Format(dt.Rows(0).Item("TMINIZIALE"), "#,###,##0.0000"), String)

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "CONTROVALORE ATTUALE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(Format(dt.Rows(0).Item("CVATTUALE") & "", "standard"), String)
                    tbCarPrinc.Rows(kCol).Cells(2).Text = "RITENUTA FISCALE"
                    tbCarPrinc.Rows(kCol).Cells(3).Text = Replace(CType(dt.Rows(0).Item("RITFISCALE") & "", String), ".", ",")
                    tbCarPrinc.Rows(kCol).Cells(4).Text = "PREZZO DI RIMBORSO"
                    tbCarPrinc.Rows(kCol).Cells(5).Text = CType(Format(dt.Rows(0).Item("PRIMBORSO"), "0.000000"), String)
                    tbCarPrinc.Rows(kCol).Cells(6).Text = "TAGLIO MINIMO ATTUALE"
                    tbCarPrinc.Rows(kCol).Cells(7).Text = CType(Format(dt.Rows(0).Item("TMATTUALE"), "#,###,##0.0000"), String)

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = ""
                    'tbCarPrinc.Rows(kCol).Cells(1).Text = CType(Format(dt.Rows(0).Item("CVATTUALE") & "", "standard"), String)
                    tbCarPrinc.Rows(kCol).Cells(2).Text = "TASSO NETTO"
                    tbCarPrinc.Rows(kCol).Cells(3).Text = Replace(CType(dt.Rows(0).Item("TNETTO") & "", String), ".", ",")
                    tbCarPrinc.Rows(kCol).Cells(4).Text = "VALORE NOMINALE"
                    tbCarPrinc.Rows(kCol).Cells(5).Text = CType(Format(dt.Rows(0).Item("NOMINALE"), "#,###,##0.0000"), String)
                    tbCarPrinc.Rows(kCol).Cells(6).Text = "VALUTA"
                    tbCarPrinc.Rows(kCol).Cells(7).Text = CType(dt.Rows(0).Item("VALUTA") & "", String)

                    kCol += 1

                    kCol += 1
                    radioString = "<INPUT type=""radio"" value=""off"" CHECKED>"
                    If CType(dt.Rows(0).Item("GARSTATO") & "", Int16) = 0 Then
                        radioString = "<INPUT type=""radio"" value=""off"">"
                    End If
                    tbCarPrinc.Rows(kCol).Cells(0).Text = radioString & " GARANZIA DELLO STATO"



                    radioString = "<INPUT type=""radio"" value=""off"" CHECKED>"
                    If UCase(CType(dt.Rows(0).Item("EMITITALIANA") & "", String)) = "NO" Then
                        radioString = "<INPUT type=""radio"" value=""off"">"
                    End If
                    tbCarPrinc.Rows(kCol).Cells(1).Text = radioString & " EMITTENTE ITALIANA"

                    'radioString = "<INPUT type=""radio"" value=""off"" CHECKED>"
                    'If CType(dt.Rows(0).Item("BOLLETTINO") & "", Int16) = 0 Then
                    '    radioString = "<INPUT type=""radio"" value=""off"">"
                    'End If
                    'tbCarPrinc.Rows(kCol).Cells(2).Text = radioString & " BOLLETTINO"


                    kCol += 1
                    kCol += 1
                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "PERIODICITÀ DELLE CEDOLE E DATE DI SCADENZA"

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "<INPUT type=""radio"" value=""off"">" & " 12 Mesi"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = "<INPUT type=""radio"" value=""off"">" & " 6 Mesi"
                    tbCarPrinc.Rows(kCol).Cells(2).Text = "<INPUT type=""radio"" value=""off"">" & " 3 Mesi"
                    tbCarPrinc.Rows(kCol).Cells(3).Text = "<INPUT type=""radio"" value=""off"">" & " Altro"

                    radioString = "<INPUT type=""radio"" value=""off"" CHECKED>"
                    If Not CType(dt.Rows(0).Item("SCADCED3") & "", String) = vbNullString Then
                        tbCarPrinc.Rows(kCol).Cells(2).Text = radioString & " 3 Mesi"

                    ElseIf Not CType(dt.Rows(0).Item("SCADCED2") & "", String) = vbNullString Then
                        tbCarPrinc.Rows(kCol).Cells(1).Text = radioString & " 6 Mesi"

                    ElseIf Not CType(dt.Rows(0).Item("SCADCED1") & "", String) = vbNullString Then
                        tbCarPrinc.Rows(kCol).Cells(0).Text = radioString & " 12 Mesi"

                    Else
                        tbCarPrinc.Rows(kCol).Cells(3).Text = radioString & " Altro"
                    End If



                    kCol += 1
                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "EMISSIONE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = "GODIMENTO"
                    tbCarPrinc.Rows(kCol).Cells(2).Text = "SCADENZA"
                    tbCarPrinc.Rows(kCol).Cells(3).Text = "I RIMBORSO"

                    kCol += 1

                    TableString = CType(dt.Rows(0).Item("DEMISSIONE") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(0).Text = TableString
                    TableString = CType(dt.Rows(0).Item("DGODIMENTO") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(1).Text = TableString
                    TableString = CType(dt.Rows(0).Item("DSCADENZA") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(2).Text = TableString
                    TableString = CType(dt.Rows(0).Item("D1RIMBORSO") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(3).Text = TableString

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "GG MM"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = "GG MM"
                    tbCarPrinc.Rows(kCol).Cells(2).Text = "GG MM"
                    tbCarPrinc.Rows(kCol).Cells(3).Text = "GG MM"

                    kCol += 1

                    TableString = CType(dt.Rows(0).Item("SCADCED1") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(0).Text = TableString
                    TableString = CType(dt.Rows(0).Item("SCADCED2") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(1).Text = TableString
                    TableString = CType(dt.Rows(0).Item("SCADCED3") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(2).Text = TableString
                    TableString = CType(dt.Rows(0).Item("SCADCED4") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(3).Text = TableString

                    kCol += 1
                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "FACOLTÀ DI ESERCIZIO"
                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "FACOLTÀ DI CALL"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = "ESERCITATA IL"
                    tbCarPrinc.Rows(kCol).Cells(2).Text = "FACOLTÀ DI PUT"

                    kCol += 1

                    TableString = CType(dt.Rows(0).Item("DCALL") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(0).Text = TableString
                    TableString = CType(dt.Rows(0).Item("DTRIMBANTICIPATO") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(1).Text = TableString
                    TableString = CType(dt.Rows(0).Item("DPUT") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(2).Text = TableString


                    kCol += 1
                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "ESTRAZIONI"

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "DATE ESTRAZIONI"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = "DATA 1"
                    tbCarPrinc.Rows(kCol).Cells(3).Text = "DATA 2"

                    TableString = CType(dt.Rows(0).Item("DT1EXTR") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(2).Text = TableString
                    TableString = CType(dt.Rows(0).Item("DT2EXTR") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(4).Text = TableString


                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "TIPO ESTRAZIONE"

                    TableString = CType(dt.Rows(0).Item("TIPOEXTR") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(1).Text = TableString

                    kCol += 1
                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "TIPO EMITTENTE/AMMORTAMENTO/CEDOLE"

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "TIPO EMITTENTE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = "TIPO AMMORTAMENTO"
                    tbCarPrinc.Rows(kCol).Cells(2).Text = "TIPO CEDOLE"

                    kCol += 1
                    TableString = CType(dt.Rows(0).Item("TIPOEMIT") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(0).Text = TableString
                    TableString = CType(dt.Rows(0).Item("TIPOAMMORT") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(1).Text = TableString
                    Select Case CType(dt.Rows(0).Item("INDICIZZAZIONE") & "", String)
                        Case "0"
                            TableString = "NESSUNO"
                        Case "1"
                            TableString = "A TASSO FISSO"
                        Case "2"
                            TableString = "A TASSO VARIABILE"
                        Case "3"
                            TableString = "A TASSO MISTO"
                        Case Else
                            TableString = "."
                    End Select
                    tbCarPrinc.Rows(kCol).Cells(2).Text = TableString

                    kCol += 1
                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "NOTA BREVE"

                    kCol += 1
                    TableString = CType(dt.Rows(0).Item("NOTAGEN") & "", String)
                    If TableString = "" Then TableString = "."
                    tbCarPrinc.Rows(kCol).Cells(0).Text = TableString

                    kCol += 1
                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "TESTO NOTE ASSOCIATE"


                    sql = "SELECT NOTAOBBL.NOTA " & _
                        " FROM NOTAOBBL INNER JOIN NOTEOBBLTITOLI ON NOTAOBBL.NUMNOTA = NOTEOBBLTITOLI.NUMNOTA " & _
                        " WHERE (((NOTEOBBLTITOLI.ISINCODE)='" & Session("ISINCODE") & "')) "
                    'Session("ISINCODE") = ""

                    .ReadGenericQuery(dt, sql)
                    kCol += 1

                    Dim zx As Integer = 0

                    For zx = 1 To dt.Rows.Count - 1
                        .ReadGenericQuery(dt, sql)
                        Dim tr As New TableRow
                        Dim tch As New TableCell
                        tch.BackColor = System.Drawing.Color.Transparent
                        tch.BorderStyle = BorderStyle.Solid
                        tch.BorderWidth = Unit.Pixel(1)
                        tch.Width = Unit.Percentage(100)
                        tch.ColumnSpan = 8
                        tch.BorderColor = Color.Black
                        tch.Text = dt.Rows(zx).Item("NOTA") & ""
                        tch.Font.Name = "Tahoma"
                        tch.Font.Size = FontUnit.Point(10)
                        tr.Cells.Add(tch)
                        tbCarPrinc.Rows.Add(tr)
                    Next


                    'If strNote = "" Then strNote = "."
                    'tbCarPrinc.Rows(kCol).Cells(0).Text = strNote


                    'If LastRecord = True Then
                    '    Session("POSITION_OB") = 0
                    'End If
                End If
            Catch ex As Exception
                Throw ex
            Finally
                dt.Dispose()
                .Dispose()
            End Try
        End With

    End Sub

End Class
