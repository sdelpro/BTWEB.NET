Public Class OBFindDesc
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
    Protected WithEvents Label6 As System.Web.UI.WebControls.Label
    Protected WithEvents Label7 As System.Web.UI.WebControls.Label
    Protected WithEvents Label8 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtMA As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtMDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents ckStor As System.Web.UI.WebControls.CheckBox
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp4 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp5 As System.Web.UI.WebControls.Label
    Protected WithEvents txtIsincode As System.Web.UI.WebControls.TextBox
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents Textbox1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents txtNota As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents Label11 As System.Web.UI.WebControls.Label
    Protected WithEvents Textbox4 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label12 As System.Web.UI.WebControls.Label
    Protected WithEvents Label13 As System.Web.UI.WebControls.Label
    Protected WithEvents txtPrEmDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label14 As System.Web.UI.WebControls.Label
    Protected WithEvents txtPrEmA As System.Web.UI.WebControls.TextBox
    Protected WithEvents cmbIndic As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label15 As System.Web.UI.WebControls.Label
    Protected WithEvents ckMaggiorazione As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Label16 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtScadA As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtScadDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtNotaSpec As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
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
        'Session("SORT_VERSO") = 0
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
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("TITOLOOBBLIGAZIONARIO")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "CARATTERISTICHE PRINCIPALI"
        Dim sSql As String
        Dim sql As String
        Dim dtDate As Date
        sql = " SELECT ISINCODE, DESCRL FROM TITOLOOBBLIGAZIONARIO "
        Session("PAGE_DEFAULT_VIEW") = "OBView.aspx"
        Select Case cmbFind.SelectedIndex
            Case 0
                sSql = " WHERE (DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 1
                sSql = " WHERE (DESCRL LIKE '" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 2
                sSql = " WHERE (DESCRL LIKE '%" & Replace(txtFind.Text, "'", "''") & "' "
        End Select

        If ckStor.Checked = False Then
            sSql = sSql & " AND DSCADENZA >='" & GiveMeDate() & "' "
        End If

        If IsNumeric(txtIsincode.Text) Then
            sSql = sSql & " AND UIC = '" & txtIsincode.Text & "'"
        Else
            If txtIsincode.Text <> "" Then sSql = sSql & " AND TITOLOOBBLIGAZIONARIO.ISINCODE = '" & txtIsincode.Text & "'"
        End If

        If txtNota.Text <> "" Then
            sSql = sSql & " AND NOTAGEN  LIKE '%" & txtNota.Text & "%'"
        End If

        If IsNumeric(txtPrEmDa.Text) Then
            sSql = sSql & " AND PEMISSIONE >= '" & txtPrEmDa.Text & "'"
        End If

        If IsNumeric(txtPrEmA.Text) Then
            sSql = sSql & " AND PEMISSIONE <= '" & txtPrEmA.Text & "'"
        End If

        If cmbIndic.SelectedValue <> "Tutti" Then
            Select Case cmbIndic.SelectedValue
                Case "A Tasso Fisso"
                    sSql = sSql & " AND INDICIZZAZIONE  = 1"
                Case "A Tasso Variabile"
                    sSql = sSql & " AND INDICIZZAZIONE  = 2"
                Case "A Tasso Misto"
                    sSql = sSql & " AND INDICIZZAZIONE  = 3"
                Case "Nessuno"
                    sSql = sSql & " AND INDICIZZAZIONE  = 0"
            End Select

        End If

        If ckMaggiorazione.Checked Then
            sSql = sSql & " AND ISINCODE IN (SELECT ISINCODE FROM MAGGIORAZIONI)"
        End If

        If isDateItalian(txtDtScadDa.Text) Or isDateItalian(txtDtScadA.Text) Then
            If isDateItalian(txtDtScadA.Text) Then
                sSql = sSql & " AND DSCADENZA <= '" & cDateItalian(txtDtScadA.Text) & "'"
            End If
            If isDateItalian(txtDtScadDa.Text) Then
                sSql = sSql & " AND DSCADENZA >= '" & cDateItalian(txtDtScadDa.Text) & "'"
            End If
        End If

        If txtNotaSpec.Text <> "" Then
            sSql = sSql & " AND ISINCODE IN (select ISINCODE FROM NOTEOBBLTITOLI N, NOTAOBBL M WHERE N.NUMNOTA=M.NUMNOTA AND M.NOTA LIKE '%" & txtNotaSpec.Text & "%')"
        End If

        sSql = sSql & ") "

        If isDateItalian(txtDtMDa.Text) Or isDateItalian(txtDtMA.Text) Then
            sSql = sSql & "AND (1=1 "
            If isDateItalian(txtDtMA.Text) Then
                sSql = sSql & " AND DINSERIMENTO <= '" & cDateItalian(txtDtMA.Text) & "'"
            End If
            If isDateItalian(txtDtMDa.Text) Then
                sSql = sSql & " AND DINSERIMENTO >= '" & cDateItalian(txtDtMDa.Text) & "'"
            End If
            sSql = sSql & " OR 1=1 "
            If isDateItalian(txtDtMA.Text) Then
                sSql = sSql & " AND DMODIFICA <= '" & cDateItalian(txtDtMA.Text) & "'"
            End If
            If isDateItalian(txtDtMDa.Text) Then
                sSql = sSql & " AND DMODIFICA >= '" & cDateItalian(txtDtMDa.Text) & "'"
            End If
            sSql = sSql & ") "
        End If


        Session("OB_SQL") = sql & " " & sSql & " ORDER BY DESCRL "
        Session("TYPE_GRID") = "FINDDESC"

        Response.Redirect("oblista.aspx")
    End Sub

    Private Sub lblMenuRicerche_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("OBMenu.aspx")
    End Sub
End Class
