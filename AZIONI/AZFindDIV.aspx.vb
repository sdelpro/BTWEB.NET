Public Class AZFindDIV
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents txtIsincode As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFind As System.Web.UI.WebControls.TextBox
    Protected WithEvents cmbFind As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label8 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtMDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtMA As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents Label6 As System.Web.UI.WebControls.Label
    Protected WithEvents Label7 As System.Web.UI.WebControls.Label
    Protected WithEvents btnFindPre As System.Web.UI.WebControls.Button
    Protected WithEvents Label11 As System.Web.UI.WebControls.Label
    Protected WithEvents btnFindDel As System.Web.UI.WebControls.Button
    Protected WithEvents txtDtPagA As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtPagDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtMDaPre As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtMAPre As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label12 As System.Web.UI.WebControls.Label
    Protected WithEvents Label13 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp2 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp4 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp7 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp5 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp6 As System.Web.UI.WebControls.Label
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents CkDivNonConfrD As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CkDivSaldoD As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CkDivAccD As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CkDivNettoD As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CkDivOrdD As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CkDivStrD As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CkDivStr As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CkDivNetto As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CkDivSaldo As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CkDivOrd As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CkDivAcc As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CkDivNonConfr As System.Web.UI.WebControls.CheckBox
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblINFOVARIE As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton
    Protected WithEvents Label15 As System.Web.UI.WebControls.Label
    Protected WithEvents Label14 As System.Web.UI.WebControls.Label

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
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("DIVAZIONI")

    End Sub

    Private Sub btnFindPre_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFindPre.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "DIVIDENDI PREANNUNCIATI"
        Dim sSql As String
        Dim sql As String
        sql = " SELECT A.ISINCODE, A.DENOMINAZIONE,B.VAL,B.LORDO,B.IDDIV  FROM TITOLOAZIONARIO A, DIVAZIONI B "
        sSql = " WHERE B.STATO  ='Preannunciato' "
        If isDateItalian(txtDtMDaPre.Text) Or isDateItalian(txtDtMAPre.Text) Then
            If isDateItalian(txtDtMAPre.Text) Then
                sSql = sSql & " AND B.DTMODIFICA <= '" & cDateItalian(txtDtMAPre.Text) & "'"
            End If
            If isDateItalian(txtDtMDaPre.Text) Then
                sSql = sSql & " AND B.DTMODIFICA >= '" & cDateItalian(txtDtMDaPre.Text) & "'"
            End If
        End If
        If CkDivAcc.Checked = True Then
            sSql = sSql & " AND B.ACCONTO='SI'"
        End If
        If CkDivStr.Checked = True Then
            sSql = sSql & " AND B.STRAORDINARIO='SI'"
        End If
        If CkDivOrd.Checked = True Then
            sSql = sSql & " AND B.ORDINARIO='SI'"
        End If
        If CkDivNetto.Checked = True Then
            sSql = sSql & " AND B.TIPONETTO='SI'"
        End If
        If CkDivSaldo.Checked = True Then
            sSql = sSql & " AND B.SALDO='SI'"
        End If
        If CkDivNonConfr.Checked = True Then
            sSql = sSql & " AND B.NONCONFR='SI'"
        End If
        Session("AZ_SQL") = sql & " " & sSql & " AND A.ISINCODE=B.ISINCODE ORDER BY A.DENOMINAZIONE"
        Session("TYPE_GRID") = "FINDDIVPRE"
        Session("SORT_VERSO") = "1"
        Response.Redirect("AZLista.aspx")
    End Sub

    Private Sub btnFindDel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFindDel.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "DIVIDENDI DELIBERATI"
        Dim sSql As String
        Dim sql As String
        sql = " SELECT A.ISINCODE,A.ISINCODERIF,A.DENOMINAZIONE, CONVERT(VARCHAR,B.DATASTACCO, 103) As DTSTACCO, DATASTACCO, CONVERT(VARCHAR,B.DATAPAG, 103) AS DPAG, B.DATAPAG, B.VAL, B.LORDO, B.IDDIV  FROM TITOLOAZIONARIO A, DIVAZIONI B "
        Select Case cmbFind.SelectedIndex
            Case 0
                sSql = " WHERE A.DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' AND B.STATO='Deliberato' "
            Case 1
                sSql = " WHERE A.DENOMINAZIONE LIKE '" & Replace(txtFind.Text, "'", "''") & "%' AND B.STATO='Deliberato' "
            Case 2
                sSql = " WHERE A.DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "' AND B.STATO='Deliberato' "
        End Select
        If IsNumeric(txtIsincode.Text) Then
            sSql = sSql & " AND A.UIC = '" & txtIsincode.Text & "'"
        Else
            If txtIsincode.Text <> "" Then sSql = sSql & " AND A.ISINCODE = '" & txtIsincode.Text & "'"
        End If
        If isDateItalian(txtDtPagDa.Text) Or isDateItalian(txtDtPagA.Text) Then
            If isDateItalian(txtDtPagA.Text) Then
                sSql = sSql & " AND B.DATAPAG <= '" & cDateItalian(txtDtPagA.Text) & "'"
            End If
            If isDateItalian(txtDtPagDa.Text) Then
                sSql = sSql & " AND B.DATAPAG >= '" & cDateItalian(txtDtPagDa.Text) & "'"
            End If
            sSql = sSql & " AND B.DATAPAG > '01/01/1900'" 'AND B.DATAPAG NOT LIKE '%01/01/%' "
        End If
        If isDateItalian(txtDtMDa.Text) Or isDateItalian(txtDtMA.Text) Then
            If isDateItalian(txtDtMA.Text) Then
                sSql = sSql & " AND B.DTMODIFICA <= '" & cDateItalian(txtDtMA.Text) & "'"
            End If
            If isDateItalian(txtDtMDa.Text) Then
                sSql = sSql & " AND B.DTMODIFICA >= '" & cDateItalian(txtDtMDa.Text) & "'"
            End If
        End If

        If CkDivAccD.Checked = True Then
            sSql = sSql & " AND B.ACCONTO='SI'"
        End If
        If CkDivStrD.Checked = True Then
            sSql = sSql & " AND B.STRAORDINARIO='SI'"
        End If
        If CkDivOrdD.Checked = True Then
            sSql = sSql & " AND B.ORDINARIO='SI'"
        End If
        If CkDivNettoD.Checked = True Then
            sSql = sSql & " AND B.TIPONETTO='SI'"
        End If
        If CkDivSaldoD.Checked = True Then
            sSql = sSql & " AND B.SALDO='SI'"
        End If
        If CkDivNonConfrD.Checked = True Then
            sSql = sSql & " AND B.NONCONFR='SI'"
        End If

        Session("AZ_SQL") = sql & " " & sSql & " AND A.ISINCODE=B.ISINCODE ORDER BY B.DATAPAG,A.DENOMINAZIONE "

        Session("TYPE_GRID") = "FINDDIVDEL"
        Session("SORT_VERSO") = "0"
        Response.Redirect("AZLista.aspx")
    End Sub
End Class
