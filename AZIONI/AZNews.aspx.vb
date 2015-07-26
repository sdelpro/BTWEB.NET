Public Class AZNews
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents tbNews As System.Web.UI.WebControls.Table
    Protected WithEvents lblTitoloForm As System.Web.UI.WebControls.Label

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
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
        Dim dt As New DataTable
        Dim clt As New AccessDBManager()
        Dim zx As Integer = 0
        Dim sql As String = "SELECT A.*,B.DENOMINAZIONE FROM NEWS A, TITOLOAZIONARIO B WHERE A.ISINCODE = '" & Session("ISINCODE") & "' AND A.ISINCODE=B.ISINCODE ORDER BY DATA DESC"
        lblLastLogin.Text = Session("LASTLOGIN")
        With clt
            Call .ReadGenericQuery(dt, sql)
            If dt.Rows.Count > 0 Then
                tbNews.Rows(0).Cells(0).Text() = "CODICE ISIN"
                tbNews.Rows(0).Cells(1).Text() = dt.Rows(0).Item("ISINCODE")
                tbNews.Rows(1).Cells(0).Text() = "DENOMINAZIONE"
                tbNews.Rows(1).Cells(1).Text() = dt.Rows(0).Item("DENOMINAZIONE")
                tbNews.Rows(2).Cells(0).Text() = ""
                tbNews.Rows(3).Cells(0).Text() = "DATA"
                tbNews.Rows(3).Cells(1).Text() = "TESTO"
                For zx = 0 To dt.Rows.Count - 1
                    Call CreaTabella()
                    tbNews.Rows(zx + 4).Cells(0).Text() = dt.Rows(zx).Item("DATA")
                    tbNews.Rows(zx + 4).Cells(1).Text() = Replace(dt.Rows(zx).Item("TESTO"), Chr(13), "<br>")
                Next zx
            Else
                Response.Redirect("AZTitolo.aspx")
            End If
        End With
    End Sub
    Private Sub CreaTabella()
        Dim zx As Int16
        Dim tr As TableRow
        Dim tch As TableCell

        'riga 1
        tr = New TableRow
        tr.Width = Unit.Percentage(100)
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Transparent
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.Width = Unit.Percentage(12.5)
        tch.BorderColor = System.Drawing.Color.Black
        tch.Text = ""
        tch.Font.Name = "Tahoma"

        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Transparent
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.Width = Unit.Percentage(87.5)
        tch.BorderColor = Color.Black
        tch.ColumnSpan = 7
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing

        tbNews.Rows.Add(tr)
        tr = Nothing


    End Sub
End Class
