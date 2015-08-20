Public Class PageError
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblError As System.Web.UI.WebControls.Label
    Protected WithEvents lnbtn As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label

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
        lblError.Text = Session("ERROR")
        If Session("MACADDRESSSTATUS") = "OK" And Left(Session("ERROR"), 11) <> "La Password" And Left(Session("ERROR"), 12) <> "Accesso alla" Then
            Session("MACADDRESSSTATUS") = ""
            Me.Response.Write("<META HTTP-EQUIV=""refresh"" CONTENT=5;URL=""IDXMenu.aspx""")
        Else
            If Left(Session("ERROR"), 9) <> "Tentativo" And Left(Session("ERROR"), 12) <> "Accesso alla" And Session("MACADDRESSSTATUS") = "" Then
                Me.Response.Write("<META HTTP-EQUIV=""refresh"" CONTENT=3;URL=""IDXMenu.aspx""")
            Else
                Me.Response.Write("<META HTTP-EQUIV=""refresh"" CONTENT=3;URL=""" & Session("PAGERETURN") & """")
            End If
        End If
    End Sub


    Private Sub lnbtn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lnbtn.Click
        Response.Redirect("IDXMenu.aspx")
    End Sub
End Class
