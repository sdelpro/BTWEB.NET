Public Class FindNews
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents txtTesto As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnFind As System.Web.UI.WebControls.Button
    Protected WithEvents cmbTipoNews As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtA As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
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
        Dim clt As New AccessDBManager()
        Dim zx As Integer = 0
        Dim dt As New DataTable

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
        Dim sql As String = "SELECT TIPO FROM TIPONEWS ORDER BY NUM"
        cmbTipoNews.Items.Add("TUTTI")
        With clt
            Call .ReadGenericQuery(dt, sql)
            For zx = 0 To dt.Rows.Count - 1
                cmbTipoNews.Items.Add(dt.Rows(zx).Item("TIPO"))
            Next
        End With

        lblLastLogin.Text = Session("LASTLOGIN")

        Dim clsUtil As New clsUtility
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("OPCAPITALE")

    End Sub



    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "NEWSGENERALI"
        Dim sql As String
        sql = " SELECT *,CONVERT(VARCHAR,DMODIFICA, 103) AS DMOD, DMODIFICA FROM NEWSGENERALI WHERE STATO='ATTIVA' "
        If cmbTipoNews.SelectedItem.Text <> "TUTTI" Then
            sql = sql & " AND " & " TITOLO='" & cmbTipoNews.SelectedItem.Text & "'"
        End If
        If txtTesto.Text <> "" Then
            sql = sql & " AND NEWS LIKE  '%" & txtTesto.Text & "%'"
        End If
        If isDateItalian(txtDtDa.Text) Or isDateItalian(txtDtA.Text) Then
            If isDateItalian(txtDtA.Text) Then
                sql = sql & " AND DMODIFICA <= '" & cDateItalian(txtDtA.Text) & "'"
            End If
            If isDateItalian(txtDtDa.Text) Then
                sql = sql & " AND DMODIFICA >= '" & cDateItalian(txtDtDa.Text) & "'"
            End If
        End If
        Session("AZ_SQL") = sql & " AND TITOLO <> 'COMUNICAZIONE' ORDER BY DMODIFICA DESC"  ' ORDER BY DATA"
        Response.Redirect("News.aspx")
    End Sub
End Class
