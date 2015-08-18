Public Class OBFindQuot
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents btnFind As System.Web.UI.WebControls.Button
    Protected WithEvents lbHelp As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents cmbMese As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents cmbAnno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ckStor As System.Web.UI.WebControls.CheckBox
    Protected WithEvents txtIsincode As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFind As System.Web.UI.WebControls.TextBox
    Protected WithEvents cmbFind As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
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
        Dim zx As Int16
        If Not cmbAnno.SelectedItem Is Nothing Then
            Session("QUOTANNO") = Year(Now) - 30 + cmbAnno.SelectedIndex
        Else
            Session("QUOTANNO") = Year(Now)
        End If
        cmbAnno.Items.Clear()
        For zx = Year(Now) - 30 To Year(Now) + 30
            cmbAnno.Items.Add(zx)
        Next
        cmbAnno.SelectedIndex = 30

        Dim clsUtil As New clsUtility
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("QUOTOBBLIGAZIONI")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        'Session("QUOTANNO") = cmbAnno.SelectedItem.Text
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "QUOTAZIONI"
        Dim sSql As String
        Dim sql As String
        sql = " SELECT TITOLOOBBLIGAZIONARIO.ISINCODE, TITOLOOBBLIGAZIONARIO.DESCRL, TITOLOOBBLIGAZIONARIO.QMIN, TITOLOOBBLIGAZIONARIO.ACRONIMO, " & _
                "QUOTOBBLIGAZIONI.COMPENSO,CAST(QUOTOBBLIGAZIONI.COMPENSO AS decimal(10,4)) as COMP,QUOTOBBLIGAZIONI.MINIMO,CAST(QUOTOBBLIGAZIONI.MINIMO AS decimal(10,4)) as MIN1,QUOTOBBLIGAZIONI.MASSIMO,CAST(QUOTOBBLIGAZIONI.MASSIMO AS decimal(10,4)) as MAX1" & _
                " FROM TITOLOOBBLIGAZIONARIO INNER JOIN QUOTOBBLIGAZIONI " & _
                "ON TITOLOOBBLIGAZIONARIO.ISINCODE = QUOTOBBLIGAZIONI.ISINCODE "
        If ckStor.Checked = False Then
            sSql = sSql & " AND DSCADENZA >='" & GiveMeDate() & "' "
            'sql = sql & " WHERE STATO = 'ATTIVO'"
        End If
        sSql = " WHERE QUOTOBBLIGAZIONI.ANNO ='" & Session("QUOTANNO") & "' AND " & _
               " QUOTOBBLIGAZIONI.MESE ='" & cmbMese.SelectedItem.Text & "' "
        If txtFind.Text <> "" Then
            sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "%'"
        End If
        If txtIsincode.Text <> "" Then
            If IsNumeric(txtIsincode.Text) Then
                sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.UIC = '" & txtIsincode.Text & "'"
            Else
                sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.ISINCODE = '" & txtIsincode.Text & "'"
            End If
        End If

        Session("PAGE_DEFAULT_VIEW") = "OBView.aspx"
        Session("OB_SQL") = sql & " " & sSql & " ORDER BY DESCRL ASC"
        Session("TYPE_GRID") = "FINDQUOT"
        Response.Redirect("oblista.aspx")

    End Sub

End Class
