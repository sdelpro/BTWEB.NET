Public Class OBNews
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
    Protected WithEvents lbEstrazioni As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblINFOVARIE As System.Web.UI.HtmlControls.HtmlAnchor

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

                    sql = "SELECT DATA, TESTO " & _
                    " FROM NEWSOBBL " & _
                    " WHERE ISINCODE = '" & Session("ISINCODE") & "'" & _
                    " ORDER BY DATA DESC "
                    .ReadGenericQuery(dt, sql)

                    kCol += 1
                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "NEWS"

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "DATA"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = "TESTO"

                    kCol += 1

                    Dim zx As Integer = 0

                    For zx = 1 To dt.Rows.Count - 1
                        Dim tr As New TableRow
                        .ReadGenericQuery(dt, sql)

                        Dim tch As New TableCell
                        tch.Width = Unit.Percentage(12.5)
                        tch.ColumnSpan = 1

                        tch.Text = dt.Rows(zx).Item("DATA") & ""
                        tch.CssClass = "etichetta"

                        tr.Cells.Add(tch)

                        Dim tce As New TableCell
                        tce.Width = Unit.Percentage(87.5)
                        tce.ColumnSpan = 7


                        If dt.Rows(zx).Item("TESTO") & "" <> "" Then
                            tce.Text = dt.Rows(zx).Item("TESTO") & ""
                        Else
                            tce.Text = "."

                        End If
                        tr.Cells.Add(tce)
                        tbCarPrinc.Rows.Add(tr)
                    Next

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
