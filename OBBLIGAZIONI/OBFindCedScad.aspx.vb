Public Class OBFindCedScad
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents btnFind As System.Web.UI.WebControls.Button
    Protected WithEvents LinkButton1 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents HyperLink1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtPRA As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label11 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtPRDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents Label13 As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents txtDtScDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtScA As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label12 As System.Web.UI.WebControls.Label
    Protected WithEvents Label14 As System.Web.UI.WebControls.Label
    Protected WithEvents txtFind As System.Web.UI.WebControls.TextBox
    Protected WithEvents cmbFind As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents ckStor As System.Web.UI.WebControls.CheckBox
    Protected WithEvents ckPro As System.Web.UI.WebControls.CheckBox
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp2 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp4 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp5 As System.Web.UI.WebControls.Label
    Protected WithEvents txtIsincode As System.Web.UI.WebControls.TextBox
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
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("PIANOINDOBBLIGAZIONI")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "CEDOLE IN SCADENZA"
        Dim sSql1 As String
        Dim sSql2 As String
        Dim sql As String
        Dim sSqlPro As String
        Dim DtProDa As String
        Dim DtProA As String
        sql = " SELECT TITOLOOBBLIGAZIONARIO.ISINCODE, TITOLOOBBLIGAZIONARIO.DESCRL, " & _
              " replace(PIANOINDICIZZAZIONE.TLORDO,'.',',') as TLORDO, replace(PIANOINDICIZZAZIONE.TNETTO,'.',',') as TNETTO, " & _
              " CONVERT(VARCHAR, PIANOINDICIZZAZIONE.DATA, 103) AS DATA," & _
              " PIANOINDICIZZAZIONE.DATA AS DATACED " & _
              " FROM  TITOLOOBBLIGAZIONARIO INNER JOIN " & _
              " PIANOINDICIZZAZIONE ON TITOLOOBBLIGAZIONARIO.ISINCODE = PIANOINDICIZZAZIONE.ISINCODE "

        Select Case cmbFind.SelectedIndex
            Case 0
                sSql1 = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' "
                sSql2 = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 1
                sSql1 = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '" & Replace(txtFind.Text, "'", "''") & "%' "
                sSql2 = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 2
                sSql1 = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "' "
                sSql2 = " WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "' "
        End Select
        If ckStor.Checked = False Then
            sSql1 = sSql1 & " AND DSCADENZA >='" & GiveMeDate() & "' "
            sSql2 = sSql2 & " AND DSCADENZA >='" & GiveMeDate() & "' "
            'sSql = sSql & " AND STATO = 'ATTIVO'"
        End If
        If IsNumeric(txtIsincode.Text) Then
            sSql1 = sSql1 & " AND UIC = '" & txtIsincode.Text & "'"
            sSql2 = sSql2 & " AND UIC = '" & txtIsincode.Text & "'"
        Else
            If txtIsincode.Text <> "" Then
                sSql1 = sSql1 & " AND TITOLOOBBLIGAZIONARIO.ISINCODE = '" & txtIsincode.Text & "'"
                sSql2 = sSql2 & " AND TITOLOOBBLIGAZIONARIO.ISINCODE = '" & txtIsincode.Text & "'"
            End If
        End If
        If (isDateItalian(txtDtScDa.Text) Or isDateItalian(txtDtScA.Text)) Then
            If isDateItalian(txtDtScA.Text) Then
                sSql1 = sSql1 & " AND PIANOINDICIZZAZIONE.DATA <= '" & cDateItalian(txtDtScA.Text) & "'"
                DtProA = txtDtScA.Text
            Else
                DtProA = "01/01/3000"
            End If
            If isDateItalian(txtDtScDa.Text) Then
                sSql1 = sSql1 & " AND PIANOINDICIZZAZIONE.DATA >= '" & cDateItalian(txtDtScDa.Text) & "'"
                DtProDa = txtDtScDa.Text
            Else
                DtProDa = "01/01/1900"
            End If
        Else
            DtProA = "01/01/3000"
            DtProDa = "01/01/1900"
        End If
        If isDateItalian(txtDtPRDa.Text) Or isDateItalian(txtDtPRA.Text) Then
            sSql2 = sSql2 & " AND (1=1 "
            If isDateItalian(txtDtPRA.Text) Then
                sSql2 = sSql2 & " AND TITOLOOBBLIGAZIONARIO.D1PRATA <= '" & cDateItalian(txtDtPRA.Text) & "'"
            End If
            If isDateItalian(txtDtPRDa.Text) Then
                sSql2 = sSql2 & " AND TITOLOOBBLIGAZIONARIO.D1PRATA >= '" & cDateItalian(txtDtPRDa.Text) & "'"
            End If
            sSql2 = sSql2 & ") "
            sSql2 = sSql2 & " OR (1=1 "
            If isDateItalian(txtDtPRA.Text) Then
                sSql2 = sSql2 & " AND TITOLOOBBLIGAZIONARIO.D2PRATA <= '" & cDateItalian(txtDtPRA.Text) & "'"
            End If
            If isDateItalian(txtDtPRDa.Text) Then
                sSql2 = sSql2 & " AND TITOLOOBBLIGAZIONARIO.D2PRATA >= '" & cDateItalian(txtDtPRDa.Text) & "'"
            End If
            sSql2 = sSql2 & ") "
        End If

        '"WHERE TITOLOOBBLIGAZIONARIO.DESCRL LIKE '%" & txtFind.Text & "%'  AND DSCADENZA >'" & GiveMeDate() & "' " & _
        sSqlPro = "SELECT TITOLOOBBLIGAZIONARIO.ISINCODE, TITOLOOBBLIGAZIONARIO.DESCRL, " & _
        "replace(TITOLOOBBLIGAZIONARIO.TL1PRATA,'.',',') as TLORDO, " & _
        "replace(TITOLOOBBLIGAZIONARIO.TN1PRATA,'.',',') as TNETTO, " & _
        "CONVERT(VARCHAR, TITOLOOBBLIGAZIONARIO.D1PRATA, 103) AS DATA, " & _
        "TITOLOOBBLIGAZIONARIO.D1PRATA AS 'DATACED' " & _
        "FROM  TITOLOOBBLIGAZIONARIO " & sSql2 & _
        " AND TITOLOOBBLIGAZIONARIO.D1PRATA <'" & cDateItalian(DtProA) & "' AND  TITOLOOBBLIGAZIONARIO.D1PRATA >'" & cDateItalian(DtProDa) & "' " & _
        "UNION " & _
        "SELECT TITOLOOBBLIGAZIONARIO.ISINCODE, TITOLOOBBLIGAZIONARIO.DESCRL, " & _
        "replace(TITOLOOBBLIGAZIONARIO.TL2PRATA,'.',',') as TLORDO, " & _
        "replace(TITOLOOBBLIGAZIONARIO.TN2PRATA,'.',',') as TNETTO, " & _
        "CONVERT(VARCHAR, TITOLOOBBLIGAZIONARIO.D2PRATA, 103) AS DATA, " & _
        "TITOLOOBBLIGAZIONARIO.D2PRATA AS 'DATACED' " & _
        "FROM TITOLOOBBLIGAZIONARIO " & sSql2 & _
        " AND TITOLOOBBLIGAZIONARIO.D2PRATA <'" & cDateItalian(DtProA) & "' AND  TITOLOOBBLIGAZIONARIO.D2PRATA >'" & cDateItalian(DtProDa) & "' "

        If ckPro.Checked = False Then
            'Session("OB_SQL") = sql & "  " & sSql & " ORDER BY DATACED ASC, DESCRL ASC "
            Session("OB_SQL") = sql & "  " & sSql1 & " UNION " & sSqlPro & " ORDER BY DATACED ASC, DESCRL ASC "
        Else
            Session("OB_SQL") = sSqlPro & " ORDER BY DATACED ASC, DESCRL ASC "
        End If
        Session("TYPE_GRID") = "FINDCEDOLE"
        Response.Redirect("oblista.aspx")
    End Sub


End Class
