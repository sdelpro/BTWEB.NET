Public Class AZFindNEWS
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
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtA As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp2 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents txtNews As System.Web.UI.WebControls.TextBox
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
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("NEWSAZIONI")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "NEWS AZIONI"
        Dim sSql As String
        Dim sql As String
        sql = " SELECT B.ISINCODE, B.DENOMINAZIONE,CONVERT(VARCHAR,A.DATA, 103) AS DATAN, A.TESTO, B.ISINCODERIF,A.IDNEWS,A.DATA FROM NEWS A,TITOLOAZIONARIO B "
        Select Case cmbFind.SelectedIndex
            Case 0
                sSql = " WHERE B.DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 1
                sSql = " WHERE B.DENOMINAZIONE LIKE '" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 2
                sSql = " WHERE B.DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "' "
        End Select
        If IsNumeric(txtIsincode.Text) Then
            sSql = sSql & " AND B.UIC = '" & txtIsincode.Text & "'"
        Else
            If txtIsincode.Text <> "" Then sSql = sSql & " AND B.ISINCODE = '" & txtIsincode.Text & "'"
        End If
        If isDateItalian(txtDtDa.Text) Or isDateItalian(txtDtA.Text) Then
            If isDateItalian(txtDtA.Text) Then
                sSql = sSql & " AND A.DATA <= '" & cDateItalian(txtDtA.Text) & "'"
            End If
            If isDateItalian(txtDtDa.Text) Then
                sSql = sSql & " AND A.DATA >= '" & cDateItalian(txtDtDa.Text) & "'"
            End If
        End If
        If txtNews.Text <> "" Then
            sSql = sSql & " AND A.TESTO LIKE '%" & txtNews.Text & "%'"
        End If

        Session("AZ_SQL") = sql & " " & sSql & " AND A.ISINCODE= B.ISINCODE"  ' ORDER BY DATA"

        If txtFind.Text = "" And txtIsincode.Text = "" And txtDtDa.Text = "" And txtDtA.Text = "" Then
            Session("AZ_SQL") = Session("AZ_SQL") & " ORDER BY B.DENOMINAZIONE"
        Else
            Session("AZ_SQL") = Session("AZ_SQL") & " ORDER BY DATA"
        End If
        Session("TYPE_GRID") = "FINDNEWS"

        Response.Redirect("AZLista.aspx")
    End Sub
End Class
