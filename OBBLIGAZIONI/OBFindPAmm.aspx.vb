Public Class OBFindPAmm
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
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents Label13 As System.Web.UI.WebControls.Label
    Protected WithEvents cmbFind As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtFind As System.Web.UI.WebControls.TextBox
    Protected WithEvents ckPiano As System.Web.UI.WebControls.CheckBox
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtScA As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label14 As System.Web.UI.WebControls.Label
    Protected WithEvents Label12 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtScDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label15 As System.Web.UI.WebControls.Label
    Protected WithEvents cmbTipoAmm As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ckStor As System.Web.UI.WebControls.CheckBox
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
        Dim clt As New AccessDBManager()
        Dim zx As Integer = 0
        Dim dt As New DataTable

        Dim sql As String = "SELECT TIPO FROM TIPOAMMORTAMENTOWEB ORDER BY NUM"
        cmbTipoAmm.Items.Add("TUTTI")
        With clt
            Call .ReadGenericQuery(dt, sql)
            For zx = 0 To dt.Rows.Count - 1
                cmbTipoAmm.Items.Add(dt.Rows(zx).Item("TIPO"))
            Next
        End With
        lblLastLogin.Text = Session("LASTLOGIN")

        Dim clsUtil As New clsUtility
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("PIANOAMMOBBLIGAZIONI")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "PIANI AMMORTAMENTO"
        Dim sSql As String
        Dim sql As String
        sql = " SELECT TITOLOOBBLIGAZIONARIO.ISINCODE, TITOLOOBBLIGAZIONARIO.DESCRL FROM TITOLOOBBLIGAZIONARIO "
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
            'sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.STATO = 'ATTIVO'"
        End If
        If IsNumeric(txtIsincode.Text) Then
            sSql = sSql & " AND UIC = '" & txtIsincode.Text & "'"
        Else
            If txtIsincode.Text <> "" Then sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.ISINCODE = '" & txtIsincode.Text & "'"
        End If

        If cmbTipoAmm.SelectedItem.Text <> "TUTTI" Then
            sSql = sSql & " AND TIPOAMMORT = '" & cmbTipoAmm.SelectedItem.Text & "'"
        End If


        If isDateItalian(txtDtScDa.Text) Or isDateItalian(txtDtScA.Text) Then
            sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.ISINCODE IN (SELECT DISTINCT PIANOAMMORTAMENTO.ISINCODE FROM PIANOAMMORTAMENTO WHERE 1=1 "
            If isDateItalian(txtDtScA.Text) Then
                sSql = sSql & " AND PIANOAMMORTAMENTO.DATA <= '" & cDateItalian(txtDtScA.Text) & "'"
            End If
            If isDateItalian(txtDtScDa.Text) Then
                sSql = sSql & " AND PIANOAMMORTAMENTO.DATA >= '" & cDateItalian(txtDtScDa.Text) & "'"
            End If
            sSql = sSql & ")"
        Else
            sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.ISINCODE IN (SELECT DISTINCT PIANOAMMORTAMENTO.ISINCODE FROM PIANOAMMORTAMENTO) ORDER BY DESCRL ASC"
        End If

        'If ckPiano.Checked = True Then
        '    sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.ISINCODE IN (SELECT DISTINCT PIANOAMMORTAMENTO.ISINCODE FROM PIANOAMMORTAMENTO)"
        'End If

        Session("OB_SQL") = sql & " " & sSql
        Session("TYPE_GRID") = "FINDPAMM"

        Response.Redirect("oblista.aspx")
    End Sub


End Class
