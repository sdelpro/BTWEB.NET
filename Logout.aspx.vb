Public Class Logout
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lbMessage As System.Web.UI.WebControls.Label

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

        Dim cdt As New AccessDBManager()
        Call cdt.UpdateGenericTable(" UPDATE CLIENTI SET CONNESSIONE = 'INATTIVA' " & _
                                   " WHERE USERNAME = '" & Session("USERNAME") & "'")
        cdt.Dispose()
        Session.Abandon()
        Response.Redirect("IDXMenu.aspx")
        'Inserire qui il codice utente necessario per inizializzare la pagina
    End Sub

End Class
