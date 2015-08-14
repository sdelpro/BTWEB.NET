Public Class AZFindWARR
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
    Protected WithEvents Label8 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtMDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtMA As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp2 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents txtTesto As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents txtNota As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
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
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("WARRANTAZIONI")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Dim sSql As String
        Dim sql As String
        sql = " SELECT A.ISINCODE, A.DENOMINAZIONE FROM TITOLOAZIONARIO A, NOTEWARRAZIONI B  "
        Session("TIPORICERCA") = "WARRANT IN CIRCOLAZIONE"
        Select Case cmbFind.SelectedIndex
            Case 0
                sSql = " WHERE A.DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 1
                sSql = " WHERE A.DENOMINAZIONE LIKE '" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 2
                sSql = " WHERE A.DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "' "
        End Select
        If IsNumeric(txtIsincode.Text) Then
            sSql = sSql & " AND A.UIC = '" & txtIsincode.Text & "'"
        Else
            If txtIsincode.Text <> "" Then sSql = sSql & " AND A.ISINCODE = '" & txtIsincode.Text & "'"
        End If
        If txtTesto.Text <> "" Then
            sSql = sSql & " AND B.NOTACONVRIEP LIKE  '%" & Replace(txtTesto.Text, "'", "''") & "%'"
        End If
        If txtNota.Text <> "" Then
            sSql = sSql & " AND B.NOTA LIKE  '%" & Replace(txtNota.Text, "'", "''") & "%'"
        End If

        Session("AZ_SQL") = sql & " " & sSql & " AND A.TIPOAZIONE='WARRANT' AND A.STATO='ATTIVO' AND A.ISINCODE=B.ISINCODE ORDER BY DENOMINAZIONE"

        'Premodifica aggiunta testo e nota
        'sql = " SELECT ISINCODE, DENOMINAZIONE FROM TITOLOAZIONARIO "
        'Session("TIPORICERCA") = "WARRANT IN CIRCOLAZIONE"
        'Select Case cmbFind.SelectedIndex
        '    Case 0
        '        sSql = " WHERE DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' "
        '    Case 1
        '        sSql = " WHERE DENOMINAZIONE LIKE '" & Replace(txtFind.Text, "'", "''") & "%' "
        '    Case 2
        '        sSql = " WHERE DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "' "
        'End Select
        'If IsNumeric(txtIsincode.Text) Then
        '    sSql = sSql & " AND UIC = '" & txtIsincode.Text & "'"
        'Else
        '    If txtIsincode.Text <> "" Then sSql = sSql & " AND ISINCODE = '" & txtIsincode.Text & "'"
        'End If

        'Session("AZ_SQL") = sql & " " & sSql & " AND TIPOAZIONE='WARRANT' AND STATO='ATTIVO' ORDER BY DENOMINAZIONE"


        Session("TYPE_GRID") = "FINDWARR"
        Session("SORT_VERSO") = "1"
        Response.Redirect("AZLista.aspx")
    End Sub
End Class
