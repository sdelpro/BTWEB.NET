Public Class AZPopupNews
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents tbNews As System.Web.UI.WebControls.Table

    'NOTA: la seguente dichiarazione � richiesta da Progettazione Web Form.
    'Non spostarla o rimuoverla.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: questa chiamata al metodo � richiesta da Progettazione Web Form.
        'Non modificarla nell'editor del codice.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Session("SORT_VERSO") = 0
        'Me.Response.CacheControl = "no-cache"
        'Me.Response.AddHeader("Pragma", "no-cache")
        'Me.Response.Expires = -1

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

        If Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
            Dim parIDNEWS As String = Server.HtmlDecode(Request("IDNEWS"))
            Dim dt As New DataTable
            Dim clt As New AccessDBManager()
            Dim zx As Integer = 0
            Dim sql As String = "SELECT TESTO FROM NEWS WHERE IDNEWS = " & CType(parIDNEWS, Double)
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
