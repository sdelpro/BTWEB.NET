Public Class OBPianoAmm
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
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
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
        lblTIPORICERCA.Text = Session("TIPORICERCA")

        With cdt
            Try


                'Select Case Session("POSITION_OB")
                '    Case -3
                '        sql = "SELECT TOP 1 * FROM TITOLOOBBLIGAZIONARIO  " & Session("OB_SQL") & " ORDER BY DESCRL DESC"
                '        Session("POSITION_OB") = 1
                '        LastRecord = True
                '    Case -2
                '        sql = "SELECT TOP 1 * FROM TITOLOOBBLIGAZIONARIO  " & Session("OB_SQL") & " ORDER BY DESCRL"
                '        Session("POSITION_OB") = 1
                '    Case -1
                '        sql = "SELECT TOP " & Session("POSITION_OB") + 1 & " * FROM TITOLOOBBLIGAZIONARIO  " & Session("OB_SQL") & " ORDER BY DESCRL"
                '        Session("POSITION_OB") = 1
                '    Case 0
                '        sql = "SELECT TOP " & Session("POSITION_OB") + 1 & " * FROM TITOLOOBBLIGAZIONARIO  " & Session("OB_SQL") & " ORDER BY DESCRL"
                '        Session("POSITION_OB") = 1
                '    Case Else
                '        sql = "SELECT TOP " & Session("POSITION_OB") & " * FROM TITOLOOBBLIGAZIONARIO  " & Session("OB_SQL") & " ORDER BY DESCRL"
                'End Select

                If Session("ISINCODE") <> "" Then
                    sql = "SELECT  * FROM TITOLOOBBLIGAZIONARIO WHERE ISINCODE = '" & Session("ISINCODE") & "'"
                Else
                    Response.Redirect("OBLista.aspx")
                End If

                .ReadGenericQuery(dt, sql)

                If CType(dt.Rows.Count, Boolean) Then

                    kCol += 1
                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "ISINCODE"

                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("ISINCODE") & "", String)

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "DESCRIZIONE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("DESCRL") & "", String)

                    kCol += 1
                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "PIANO AMMORTAMENTO"



                    sql = "SELECT DATA, CVALORE, TAGLIO " & _
                    " FROM PIANOAMMORTAMENTO " & _
                    " WHERE ISINCODE = '" & Session("ISINCODE") & "'" & _
                    " ORDER BY DATA "
                    'Session("ISINCODE") = ""

                    .ReadGenericQuery(dt, sql)
                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "DATA"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = "CONTROVALORE"
                    tbCarPrinc.Rows(kCol).Cells(2).Text = "TAGLIO"

                    kCol += 1


                    Dim zx As Integer = 0

                    For zx = 1 To dt.Rows.Count - 1
                        Dim tr As New TableRow
                        .ReadGenericQuery(dt, sql)

                        Dim tch As New TableCell
                        tch.Width = Unit.Percentage(25)
                        tch.ColumnSpan = 2

                        tch.Text = dt.Rows(zx).Item("DATA") & ""
                        tr.Cells.Add(tch)

                        Dim tcg As New TableCell
                        tcg.Width = Unit.Percentage(25)
                        tcg.ColumnSpan = 2
                        'tcg.BorderColor = Color.Black
                        tcg.Text = Format(CLng("0" & dt.Rows(zx).Item("CVALORE")), "###,###,###.00")
                        tr.Cells.Add(tcg)

                        Dim tce As New TableCell
                        tce.Width = Unit.Percentage(25)
                        tce.ColumnSpan = 2
                        'tce.BorderColor = Color.Black
                        tce.Text = Format(CLng("0" & dt.Rows(zx).Item("TAGLIO")), "###,###,###.00")

                        tr.Cells.Add(tce)
                        tbCarPrinc.Rows.Add(tr)
                    Next

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
