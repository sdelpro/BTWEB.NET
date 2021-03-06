Public Class OBFindNews
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents txtFind As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnFind As System.Web.UI.WebControls.Button
    Protected WithEvents cmbFind As System.Web.UI.WebControls.DropDownList
    Protected WithEvents LinkButton1 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents HyperLink1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents Label6 As System.Web.UI.WebControls.Label
    Protected WithEvents Label8 As System.Web.UI.WebControls.Label
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtInDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtInA As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtMA As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtMDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents ckStor As System.Web.UI.WebControls.CheckBox
    Protected WithEvents lbHelp4 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents txtIsincode As System.Web.UI.WebControls.TextBox
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents txtNews As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents lblAZIONI As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblINFOVARIE As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lbEstrazioni As System.Web.UI.HtmlControls.HtmlAnchor

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
        Session("SORT_VERSO") = 1
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
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("NEWSOBBLIGAZIONI")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "NEWS"
        Dim sSql As String
        Dim sql As String
        sql = " SELECT TITOLOOBBLIGAZIONARIO.ISINCODE, TITOLOOBBLIGAZIONARIO.DESCRL, " & _
              " CONVERT(VARCHAR, NEWSOBBL.DATA, 103) AS DATANEWS, DATA, NEWSOBBL.ID, NEWSOBBL.TESTO FROM TITOLOOBBLIGAZIONARIO " & _
              " INNER JOIN " & _
              " NEWSOBBL ON TITOLOOBBLIGAZIONARIO.ISINCODE = NEWSOBBL.ISINCODE "
        Session("PAGE_DEFAULT_VIEW") = "OBView.aspx"
        Select Case cmbFind.SelectedIndex
            Case 0
                sSql = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 1
                sSql = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 2
                sSql = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "' "
        End Select
        'If ckStor.Checked = False Then
        '    sSql = sSql & " AND DSCADENZA >='" & GiveMeDate() & "' "
        '    'sSql = sSql & " AND STATO = 'ATTIVO'"
        'End If
        If IsNumeric(txtIsincode.Text) Then
            sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.UIC = '" & txtIsincode.Text & "'"
        Else
            If txtIsincode.Text <> "" Then sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.ISINCODE = '" & txtIsincode.Text & "'"
        End If
        If isDateItalian(txtDtInDa.Text) Or isDateItalian(txtDtInA.Text) Then
            If isDateItalian(txtDtInA.Text) Then
                sSql = sSql & " AND NEWSOBBL.DATA <= '" & cDateItalian(txtDtInA.Text) & "'"
            End If
            If isDateItalian(txtDtInDa.Text) Then
                sSql = sSql & " AND NEWSOBBL.DATA >= '" & cDateItalian(txtDtInDa.Text) & "'"
            End If
        End If
        If txtNews.Text <> "" Then
            sSql = sSql & " AND NEWSOBBL.TESTO LIKE '%" & txtNews.Text & "%'"
        End If

        Session("OB_SQL") = sql & " " & sSql & " ORDER BY DATA ASC, DESCRL ASC"
        Session("TYPE_GRID") = "FINDNEWS"

        Response.Redirect("OBLista.aspx")
    End Sub

    Private Sub lblMenuRicerche_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("OBMenu.aspx")
    End Sub
End Class
