Public Class OBPopupNews
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents tbNews As System.Web.UI.WebControls.Table

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
        Me.Response.CacheControl = "no-cache"
        Me.Response.AddHeader("Pragma", "no-cache")
        Me.Response.Expires = -1

        If Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
            Dim parIDNEWS As String = Server.HtmlDecode(Request("ID"))
            Dim dt As New DataTable
            Dim clt As New AccessDBManager()
            Dim zx As Integer = 0
            Dim sql As String = "SELECT TESTO FROM NEWSOBBL WHERE ID = " & CType(parIDNEWS, Double)
            With clt
                Call .ReadGenericQuery(dt, sql)
                If dt.Rows.Count > 0 Then
                    tbNews.Rows(0).Cells(0).Text() = dt.Rows(0).Item("TESTO")
                End If
                .Dispose()
            End With
        Else
            tbNews.Rows(0).Cells(0).Text() = "Accesso non autorizzato o sessione scaduta"
            tbNews.Rows(0).Cells(0).Font.Bold = True
            tbNews.Rows(0).Cells(0).ForeColor = System.Drawing.Color.Red
        End If
    End Sub

End Class
