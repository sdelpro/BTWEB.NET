Public Class AZFindCONV
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents txtIsincode As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnFind As System.Web.UI.WebControls.Button
    Protected WithEvents txtFind As System.Web.UI.WebControls.TextBox
    Protected WithEvents cmbFind As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp2 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents lblAZIONI As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblINFOVARIE As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton

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
        lblLastLogin.Text = Session("LASTLOGIN")

        Dim clsUtil As New clsUtility
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("CONVAZIONI")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click

        Session("TIPORICERCA") = "AZIONI CONVERTIBILI"
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Dim sSql As String
        Dim sql As String
        sql = " SELECT TITOLOAZIONARIO.ISINCODE, TITOLOAZIONARIO.UIC,  TITOLOAZIONARIO.DENOMINAZIONE, NOTECONVAZIONI.NOTACONVRIEP " & _
              " FROM  TITOLOAZIONARIO INNER JOIN " & _
              " NOTECONVAZIONI ON TITOLOAZIONARIO.ISINCODE = NOTECONVAZIONI.ISINCODE WHERE TITOLOAZIONARIO.STATO='ATTIVO'"
        If txtFind.Text <> "" Then
            sSql = sSql & " AND DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' "
        End If
        If txtIsincode.Text <> "" Then
            If IsNumeric(txtIsincode.Text) Then
                sSql = sSql & " AND TITOLOAZIONARIO.UIC = '" & txtIsincode.Text & "' "
            Else
                sSql = sSql & " AND TITOLOAZIONARIO.ISINCODE = '" & txtIsincode.Text & "' "
            End If
        End If
        Session("AZ_SQL") = sql & " " & sSql & " ORDER BY TITOLOAZIONARIO.DENOMINAZIONE"
        Session("TYPE_GRID") = "FINDCONV"
        Session("SORT_VERSO") = "1"
        Response.Redirect("azlista.aspx")

    End Sub
End Class
