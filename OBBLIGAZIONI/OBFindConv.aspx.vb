Public Class OBFindConv
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents btnFind As System.Web.UI.WebControls.Button
    Protected WithEvents txtFind As System.Web.UI.WebControls.TextBox
    Protected WithEvents cmbFind As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label13 As System.Web.UI.WebControls.Label
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents ckConv As System.Web.UI.WebControls.CheckBox
    Protected WithEvents ckStor As System.Web.UI.WebControls.CheckBox
    Protected WithEvents lbHelp4 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp2 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents txtIsincode As System.Web.UI.WebControls.TextBox
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents lblAZIONI As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblINFOVARIE As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton

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
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("CONVOBBLIGAZIONI")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "OBBLIGAZIONI CONVERTIBILI"
        Dim sSql As String
        Dim sql As String
        sql = " SELECT TITOLOOBBLIGAZIONARIO.ISINCODE, TITOLOOBBLIGAZIONARIO.DESCRL, NOTECONVOBBL.NOTACONVRIEP " & _
              " FROM  TITOLOOBBLIGAZIONARIO INNER JOIN " & _
              " NOTECONVOBBL ON TITOLOOBBLIGAZIONARIO.ISINCODE = NOTECONVOBBL.ISINCODE"

        Select Case cmbFind.SelectedIndex
            Case 0
                sSql = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 1
                sSql = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 2
                sSql = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "' "
        End Select
        If ckStor.Checked = False Then
            sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.DSCADENZA >='" & GiveMeDate() & "' "
            'sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.STATO = 'ATTIVO'"
        End If

        If IsNumeric(txtIsincode.Text) Then
            sSql = sSql & " AND UIC = '" & txtIsincode.Text & "'"
        Else
            If txtIsincode.Text <> "" Then sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.ISINCODE = '" & txtIsincode.Text & "'"
        End If

        sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.ISINCODE IN (SELECT DISTINCT TABCONV.ISINCODE FROM TABCONV)"

        If ckConv.Checked = True Then
            sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.ISINCODE IN (SELECT DISTINCT TABCONV.ISINCODE FROM TABCONV) ORDER BY DESCRL ASC"
        End If

        Session("OB_SQL") = sql & " " & sSql
        Session("TYPE_GRID") = "FINDCONV"

        Response.Redirect("oblista.aspx")
    End Sub
End Class
