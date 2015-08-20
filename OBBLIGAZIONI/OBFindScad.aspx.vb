Public Class OBFindScad
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
    Protected WithEvents txtDtRaDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtRaA As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label11 As System.Web.UI.WebControls.Label
    Protected WithEvents Label12 As System.Web.UI.WebControls.Label
    Protected WithEvents Label13 As System.Web.UI.WebControls.Label
    Protected WithEvents Label14 As System.Web.UI.WebControls.Label
    Protected WithEvents Label15 As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents ckStor As System.Web.UI.WebControls.CheckBox
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp4 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp5 As System.Web.UI.WebControls.Label
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblINFOVARIE As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lbEstrazioni As System.Web.UI.HtmlControls.HtmlAnchor

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
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("TITOLOOBBLIGAZIONARIO")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "OBBLIGAZIONI IN SCADENZA"
        Dim sSql As String
        Dim sql As String
        Dim sFlag As String
        sFlag = ""
        sql = " SELECT ISINCODE, DESCRL, CONVERT(VARCHAR,DSCADENZA, 103) AS DATA, DSCADENZA,DTRIMBANTICIPATO, CONVERT(VARCHAR,DTRIMBANTICIPATO, 103) AS DTRIMBANT FROM TITOLOOBBLIGAZIONARIO "
        sSql = "WHERE 1=1"
        If ckStor.Checked = False Then
            sSql = sSql & " AND DSCADENZA >='" & GiveMeDate() & "' "
            'sSql = sSql & " AND STATO = 'ATTIVO'"
        End If
        If isDateItalian(txtDtScDa.Text) Or isDateItalian(txtDtScA.Text) Then
            sFlag = "OK"
            If isDateItalian(txtDtScA.Text) Then
                sSql = sSql & " AND DSCADENZA <= '" & cDateItalian(txtDtScA.Text) & "'"
            End If
            If isDateItalian(txtDtScDa.Text) Then
                sSql = sSql & " AND DSCADENZA >= '" & cDateItalian(txtDtScDa.Text) & "'"
            End If
        End If
        If isDateItalian(txtDtRaDa.Text) Or isDateItalian(txtDtRaA.Text) Then
            sFlag = "OK"
            If isDateItalian(txtDtRaA.Text) Then
                sSql = sSql & " AND DTRIMBANTICIPATO <= '" & cDateItalian(txtDtRaA.Text) & "'"
            End If
            If isDateItalian(txtDtRaDa.Text) Then
                sSql = sSql & " AND DTRIMBANTICIPATO >= '" & cDateItalian(txtDtRaDa.Text) & "'"
            End If
        End If
        'If isDateItalian(txtDtInDa.Text) Or isDateItalian(txtDtInA.Text) Then
        '    sFlag = "OK"
        '    If isDateItalian(txtDtInA.Text) Then
        '        sSql = sSql & " AND DINSERIMENTO <= '" & cDateItalian(txtDtInA.Text) & "'"
        '    End If
        '    If isDateItalian(txtDtInDa.Text) Then
        '        sSql = sSql & " AND DINSERIMENTO >= '" & cDateItalian(txtDtInDa.Text) & "'"
        '    End If
        'End If
        If isDateItalian(txtDtMDa.Text) Or isDateItalian(txtDtMA.Text) Then
            sFlag = "OK"
            If isDateItalian(txtDtMA.Text) Then
                sSql = sSql & " AND DMODIFICA <= '" & cDateItalian(txtDtMA.Text) & "'"
            End If
            If isDateItalian(txtDtMDa.Text) Then
                sSql = sSql & " AND DMODIFICA >= '" & cDateItalian(txtDtMDa.Text) & "'"
            End If
        End If
        Session("OB_SQL") = sql & " " & sSql & " ORDER BY DSCADENZA ASC, DESCRL ASC"
        Session("TYPE_GRID") = "FINDSCAD"
        Response.Redirect("OBLista.aspx")
        'If sFlag = "OK" Then
        '    Response.Redirect("OBLista.aspx")
        'Else

        '    MsgBox("Errore, le date inserite non sono valide", , "Ricerca", ))

        'End If

    End Sub


End Class
