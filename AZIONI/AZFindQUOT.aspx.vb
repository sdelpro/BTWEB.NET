Public Class AZFindQUOT
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
    Protected WithEvents cmbMese As System.Web.UI.WebControls.DropDownList
    Protected WithEvents cmbAnno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label6 As System.Web.UI.WebControls.Label
    Protected WithEvents Label7 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label

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
        Dim zx As Integer
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
        If Not cmbAnno.SelectedItem Is Nothing Then
            Session("QUOTANNO") = Year(Now) - 30 + cmbAnno.SelectedIndex
        Else
            Session("QUOTANNO") = Year(Now)
        End If
        cmbAnno.Items.Clear()
        For zx = Year(Now) - 30 To Year(Now) + 30
            cmbAnno.Items.Add(zx)
        Next
        cmbAnno.Items(30).Selected = True

        Dim clsUtil As New clsUtility
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("QUOTAZIONI")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        'Session("QUOTANNO") = cmbAnno.SelectedValue
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "QUOTAZIONI"
        Dim sSql As String
        Dim sql As String
        sql = " SELECT TITOLOAZIONARIO.ISINCODE,TITOLOAZIONARIO.UIC, TITOLOAZIONARIO.DENOMINAZIONE, TITOLOAZIONARIO.QMINIMA, TITOLOAZIONARIO.ACRONIMO, " & _
                "QUOTAZIONI.COMPENSO,CAST(QUOTAZIONI.COMPENSO AS decimal(10,4)) as COMP,QUOTAZIONI.MINIMO,CAST(QUOTAZIONI.MINIMO AS decimal(10,4)) as MIN1,QUOTAZIONI.MASSIMO,CAST(QUOTAZIONI.MASSIMO AS decimal(10,4)) as MAX1 " & _
                "FROM TITOLOAZIONARIO INNER JOIN QUOTAZIONI " & _
                "ON TITOLOAZIONARIO.ISINCODE = QUOTAZIONI.ISINCODE "

        Session("PAGE_DEFAULT_VIEW") = "AZView.aspx"
        sSql = " WHERE QUOTAZIONI.ANNO ='" & Session("QUOTANNO") & "' AND " & _
               " QUOTAZIONI.MESE ='" & cmbMese.SelectedItem.Text & "' "
        If txtFind.Text <> "" Then
            sSql = sSql & " AND TITOLOAZIONARIO.DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "%'"
        End If
        If txtIsincode.Text <> "" Then
            If IsNumeric(txtIsincode.Text) Then
                sSql = sSql & " AND TITOLOAZIONARIO.UIC = '" & txtIsincode.Text & "'"
            Else
                sSql = sSql & " AND TITOLOAZIONARIO.ISINCODE = '" & txtIsincode.Text & "'"
            End If
        End If
        Session("AZ_SQL") = sql & " " & sSql & " ORDER BY DENOMINAZIONE ASC"
        Session("TYPE_GRID") = "FINDQUOTAZIONI"
        Response.Redirect("AZlista.aspx")
    End Sub

    Private Sub cmbAnno_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbAnno.SelectedIndexChanged
    End Sub
End Class
