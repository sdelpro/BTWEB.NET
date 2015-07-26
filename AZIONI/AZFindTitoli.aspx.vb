Public Class AZFindTitoli
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
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents Label8 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtMDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtMA As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp5 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp4 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp2 As System.Web.UI.WebControls.Label
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents cmbMercato As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents cmbSettore As System.Web.UI.WebControls.DropDownList

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
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("TITOLOAZIONARIO")
        If Not Page.IsPostBack Then
            cmbSettore.Items.Clear()
            LoadSettore()  '-- su richiesta di Luca, vengono caricati solo alcuni settori
            cmbMercato.Items.Clear()
            LoadMercato()  '-- su richiesta di Luca, vengono caricati solo alcuni mercati
        End If

    End Sub

    Private Sub LoadSettore()
        Dim dt As New DataTable
        Dim i As Integer
        Dim clt As New AccessDBManager
        cmbSettore.Items.Add("TUTTI")
        With clt
            Call .ReadGenericQuery(dt, "SELECT SETTORE FROM SETTORESOCIETA ORDER BY NUM")
            For i = 0 To dt.Rows.Count - 1
                cmbSettore.Items.Add(dt.Rows(i).Item("SETTORE"))
            Next
        End With
    End Sub

    Private Sub LoadMercato()
        Dim dt As New DataTable
        Dim i As Integer
        Dim clt As New AccessDBManager
        cmbMercato.Items.Add("TUTTI")
        With clt
            Call .ReadGenericQuery(dt, "SELECT TIPO FROM MERCATOSOCIETA ORDER BY NUM")
            For i = 0 To dt.Rows.Count - 1
                cmbMercato.Items.Add(dt.Rows(i).Item("TIPO"))
            Next
        End With
    End Sub


    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "TITOLI SOCIETA'"
        Dim sSql As String
        Dim sql As String
        Dim dtDa As String
        Dim dtA As String
        sql = "SELECT ISINCODERIF,ISINCODE, DENOMINAZIONE,TIPOAZIONE, CASE QUOTATA WHEN 1 THEN 'SI' WHEN 0 THEN 'NO' END AS QUOTATA, QUANTITA,VALNOMINALE, CONVERT(VARCHAR,VALNOMINALE) AS VNOM, CONVERT(VARCHAR, CONVERT(MONEY,CAPITALE),1) AS CAPITALE,CONVERT(FLOAT,CAPITALE) AS CAP,STATO FROM TITOLOAZIONARIO "
        Select Case cmbFind.SelectedIndex
            Case 0
                sSql = " WHERE DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 1
                sSql = " WHERE DENOMINAZIONE LIKE '" & Replace(txtFind.Text, "'", "''") & "%' "
            Case 2
                sSql = " WHERE DENOMINAZIONE LIKE '%" & Replace(txtFind.Text, "'", "''") & "' "
        End Select
        If IsNumeric(txtIsincode.Text) Then
            sSql = sSql & " AND UIC = '" & txtIsincode.Text & "'"
        Else
            If txtIsincode.Text <> "" Then sSql = sSql & " AND ISINCODE = '" & txtIsincode.Text & "'"
        End If
        If cmbMercato.SelectedItem.Text <> "TUTTI" Then
            sSql = sSql & " AND MERCATO = '" & cmbMercato.SelectedValue & "'"
        End If
        If cmbSettore.SelectedItem.Text <> "TUTTI" Then
            sSql = sSql & " AND SETTORE = '" & cmbSettore.SelectedValue & "'"
        End If

        If isDateItalian(txtDtMDa.Text) Or isDateItalian(txtDtMA.Text) Then
            If isDateItalian(txtDtMDa.Text) Then dtDa = txtDtMDa.Text Else dtDa = "01/01/1900"
            If isDateItalian(txtDtMA.Text) Then dtA = txtDtMA.Text Else dtA = "01/01/3000"
            sSql = sSql & " AND ISINCODERIF IN (SELECT ISINCODE FROM SOCIETA WHERE  DMODIFICA <= '" & cDateItalian(dtA) & "' AND DMODIFICA >= '" & cDateItalian(dtDa) & "')"
        End If

        Session("AZ_SQL") = sql & " " & sSql & " ORDER BY DENOMINAZIONE"
        Session("TYPE_GRID") = "FINDTITOLI"

        Response.Redirect("AZLista.aspx")
    End Sub
End Class
