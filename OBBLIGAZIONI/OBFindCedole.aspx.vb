Public Class OBFindCedole
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents btnFind As System.Web.UI.WebControls.Button
    Protected WithEvents LinkButton1 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents HyperLink1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label6 As System.Web.UI.WebControls.Label
    Protected WithEvents Label7 As System.Web.UI.WebControls.Label
    Protected WithEvents Label8 As System.Web.UI.WebControls.Label
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtInDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtInA As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtMA As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtMDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtScDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtScA As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label12 As System.Web.UI.WebControls.Label
    Protected WithEvents Label14 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents Label11 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtPRDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtPRA As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFind As System.Web.UI.WebControls.TextBox
    Protected WithEvents cmbFind As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label13 As System.Web.UI.WebControls.Label
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents Label15 As System.Web.UI.WebControls.Label
    Protected WithEvents cmbTipoInd As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ckStor As System.Web.UI.WebControls.CheckBox
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp4 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp5 As System.Web.UI.WebControls.Label
    Protected WithEvents txtIsincode As System.Web.UI.WebControls.TextBox
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton
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
        Session("SORT_VERSO") = 0
        'Me.Response.CacheControl = "no-cache"
        'Me.Response.AddHeader("Pragma", "no-cache")
        'Me.Response.Expires = -1

        If Not Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
            Session("ERROR") = "Accesso non autorizzato. Effettuare il Login"
            Me.Response.Redirect("../Error.aspx")
        End If
        If Session("PROFILO7") = False Then
            Session("ERROR") = "Accesso alla funzione non autorizzato.<br><br>" & _
                               "Contattare il supporto tecnico per maggiori informazioni."
            Session("PAGERETURN") = "OBBLIGAZIONI/OBMenu.aspx"
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
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("PIANOINDOBBLIGAZIONI")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "AGGIORNAMENTO CEDOLE"
        Dim sSql As String
        Dim sql As String

        sql = " SELECT TITOLOOBBLIGAZIONARIO.ISINCODE, TITOLOOBBLIGAZIONARIO.DESCRL, TITOLOOBBLIGAZIONARIO.INDICIZZAZIONE, " & _
              " replace(PIANOINDICIZZAZIONE.TLORDO,'.',',') as TLORDO, replace(PIANOINDICIZZAZIONE.TNETTO,'.',',') as TNETTO, " & _
              " CONVERT(VARCHAR, PIANOINDICIZZAZIONE.DATA, 103) AS DATA, PIANOINDICIZZAZIONE.DATA as DATACED " & _
              " FROM  TITOLOOBBLIGAZIONARIO INNER JOIN " & _
              " PIANOINDICIZZAZIONE ON TITOLOOBBLIGAZIONARIO.ISINCODE = PIANOINDICIZZAZIONE.ISINCODE "

        Select Case cmbFind.SelectedIndex
            Case 0
                sSql = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 1
                sSql = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 2
                sSql = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "' "
        End Select
        If ckStor.Checked = False Then
            sSql = sSql & " AND DSCADENZA >='" & GiveMeDate() & "' "
            'sSql = sSql & " AND STATO = 'ATTIVO'"
        End If
        If IsNumeric(txtIsincode.Text) Then
            sSql = sSql & " AND UIC = '" & txtIsincode.Text & "'"
        Else
            If txtIsincode.Text <> "" Then sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.ISINCODE = '" & txtIsincode.Text & "'"
        End If

        If (isDateItalian(txtDtMDa.Text) Or isDateItalian(txtDtMA.Text)) And cmbTipoInd.SelectedValue <> 0 Then
            If isDateItalian(txtDtMA.Text) Then
                sSql = sSql & " AND PIANOINDICIZZAZIONE.DTMODIFICA <= '" & cDateItalian(txtDtMA.Text) & "'"
            End If
            If isDateItalian(txtDtMDa.Text) Then
                sSql = sSql & " AND PIANOINDICIZZAZIONE.DTMODIFICA >= '" & cDateItalian(txtDtMDa.Text) & "'"
            End If
        End If
        If cmbTipoInd.SelectedValue <> -1 Then
            If cmbTipoInd.SelectedValue = 0 Then
                sql = " SELECT ISINCODE, DESCRL, INDICIZZAZIONE, " & _
                      " replace(TLORDO,'.',',') as TLORDO, replace(TNETTO,'.',',') as TNETTO, " & _
                      " '' AS DATA,'' as DATACED " & _
                      " FROM  TITOLOOBBLIGAZIONARIO "
            End If
            sSql = sSql & " AND INDICIZZAZIONE = " & cmbTipoInd.SelectedValue & ""
        End If

        Session("OB_SQL") = sql & "  " & sSql & " ORDER BY DATACED ASC, DESCRL ASC"
        Session("TYPE_GRID") = "FINDCEDOLE"

        Response.Redirect("oblista.aspx")
    End Sub

End Class
