Public Class AZFindOPCAP
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
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents btnFindStor As System.Web.UI.WebControls.Button
    Protected WithEvents txtDtMDa As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtMA As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label11 As System.Web.UI.WebControls.Label
    Protected WithEvents Label12 As System.Web.UI.WebControls.Label
    Protected WithEvents cmbStato As System.Web.UI.WebControls.DropDownList
    Protected WithEvents lbHelpDate As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp2 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp3 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp4 As System.Web.UI.WebControls.Label
    Protected WithEvents lbHelp5 As System.Web.UI.WebControls.Label
    Protected WithEvents Label13 As System.Web.UI.WebControls.Label
    Protected WithEvents txtDtM1Da As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtM1A As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label15 As System.Web.UI.WebControls.Label
    Protected WithEvents Label16 As System.Web.UI.WebControls.Label
    Protected WithEvents Label17 As System.Web.UI.WebControls.Label
    Protected WithEvents Label18 As System.Web.UI.WebControls.Label
    Protected WithEvents lbUpd As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents txtTesto As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label7 As System.Web.UI.WebControls.Label
    Protected WithEvents txtTestoStor As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblINFOVARIE As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton
    Protected WithEvents txtDtStoA As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDtStoDa As System.Web.UI.WebControls.TextBox

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
        lbUpd.Text = "Ultimo Aggiornamento: " & clsUtil.GetLastUpdateTable("OPCAPITALE")

    End Sub

    Private Sub btnFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFind.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        'Session("TIPORICERCA") = "OPERAZIONI SUL CAPITALE"
        Dim sSql As String
        Dim sql As String
        Select Case cmbStato.SelectedItem.Value.ToUpper().Trim()
            Case "PREANNUNCIATO", "APPROVATO", "TUTTI"
                sql = " SELECT A.ISINCODE,A.ISINCODERIF,A.DENOMINAZIONE, B.TESTO, B.IDOPCAP  FROM TITOLOAZIONARIO A, OPCAPITALE B "
                If cmbStato.SelectedItem.Value.ToUpper().Trim() = "TUTTI" Then
                    sSql = " WHERE B.STATO <> 'STORICIZZATO'"
                Else
                    sSql = " WHERE B.STATO = '" & cmbStato.SelectedItem.Value & "'"
                End If
                If isDateItalian(txtDtM1Da.Text) Or isDateItalian(txtDtM1A.Text) Then
                    If isDateItalian(txtDtM1A.Text) Then
                        sSql = sSql & " AND B.DTMODIFICA <= '" & cDateItalian(txtDtM1A.Text) & "'"
                    End If
                    If isDateItalian(txtDtM1Da.Text) Then
                        sSql = sSql & " AND B.DTMODIFICA >= '" & cDateItalian(txtDtM1Da.Text) & "'"
                    End If
                End If
                If txtTesto.Text <> "" Then
                    sSql = sSql & " AND B.TESTO LIKE '% " & txtTesto.Text & "%'"
                End If

                Session("AZ_SQL") = sql & " " & sSql & " AND A.ISINCODE=B.ISINCODE ORDER BY A.DENOMINAZIONE"
                Session("TYPE_GRID") = "FINDOPPREAPPR"
                If cmbStato.SelectedItem.Value = "PREANNUNCIATO" Then
                    Session("TIPORICERCA") = "OPERAZIONI SUL CAPITALE PREANNUNCIATE"
                Else
                    If cmbStato.SelectedItem.Value = "APPROVATO" Then
                        Session("TIPORICERCA") = "OPERAZIONI SUL CAPITALE APPROVATE"
                    Else
                        Session("TIPORICERCA") = "OPERAZIONI SUL CAPITALE"
                    End If
                End If
                Response.Redirect("AZLista.aspx")
            Case "IN CORSO DA"
                    sql = " SELECT A.ISINCODE,A.ISINCODERIF, A.DENOMINAZIONE, DATAINIZIO,CONVERT(VARCHAR,B.DATAINIZIO, 103) As DATAIN, DATAFINE,CONVERT(VARCHAR,B.DATAFINE, 103) As  DATAFIN, B.TESTO, B.IDOPCAP  FROM TITOLOAZIONARIO A, OPCAPITALE B "
                    sSql = " WHERE B.STATO='" & cmbStato.SelectedItem.Value & "'"
                    If isDateItalian(txtDtM1Da.Text) Or isDateItalian(txtDtM1A.Text) Then
                        If isDateItalian(txtDtM1A.Text) Then
                            sSql = sSql & " AND B.DTMODIFICA <= '" & cDateItalian(txtDtM1A.Text) & "'"
                        End If
                        If isDateItalian(txtDtM1Da.Text) Then
                            sSql = sSql & " AND B.DTMODIFICA >= '" & cDateItalian(txtDtM1Da.Text) & "'"
                        End If
                    End If
                    If txtTesto.Text <> "" Then
                        sSql = sSql & " AND B.TESTO LIKE '% " & txtTesto.Text & "%'"
                    End If

                    Session("AZ_SQL") = sql & " " & sSql & " AND A.ISINCODE=B.ISINCODE ORDER BY A.DENOMINAZIONE"
                    Session("TYPE_GRID") = "FINDOPINC"
                    Session("TIPORICERCA") = "OPERAZIONI SUL CAPITALE IN CORSO"
                    Response.Redirect("AZLista.aspx")
        End Select
    End Sub
    Private Sub btnFindStor_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFindStor.Click
        Session("ITEMSELECTINDEX") = ""
        Session("ISINCODE") = ""
        Session("TIPORICERCA") = "OPERAZIONI SUL CAPITALE STORICIZZATE"
        Dim sSql As String
        Dim sql As String
        sql = " SELECT A.ISINCODE,A.ISINCODERIF,A.DENOMINAZIONE,B.DATASTOR,DATAINIZIO,CONVERT(VARCHAR,B.DATAINIZIO, 103) As DATAIN, DATAFINE, CONVERT(VARCHAR,B.DATAFINE, 103) As  DATAFIN, DATASTOR, CONVERT(VARCHAR,B.DATASTOR, 103) As  DATASTORO, B.TESTO, B.IDOPCAP,B.DATASTOR  FROM TITOLOAZIONARIO A, OPCAPITALE B "

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

        If txtTestoStor.Text <> "" Then
            sSql = sSql & " AND B.TESTO LIKE '% " & txtTestoStor.Text & "%'"
        End If


        'If isDateItalian(txtDtStoDa.Text) Or isDateItalian(txtDtStoA.Text) Then
        '    If isDateItalian(txtDtStoA.Text) Then
        '        sSql = sSql & " AND A.DATASTOR <= '" & cDateItalian(txtDtStoA.Text) & "'"
        '    End If
        '    If isDateItalian(txtDtStoDa.Text) Then
        '        sSql = sSql & " AND A.DATASTOR >= '" & cDateItalian(txtDtStoDa.Text) & "'"
        '    End If
        'End If
        If isDateItalian(txtDtMDa.Text) Or isDateItalian(txtDtMA.Text) Then
            If isDateItalian(txtDtMA.Text) Then
                sSql = sSql & " AND B.DTMODIFICA <= '" & cDateItalian(txtDtMA.Text) & "'"
            End If
            If isDateItalian(txtDtMDa.Text) Then
                sSql = sSql & " AND B.DTMODIFICA >= '" & cDateItalian(txtDtMDa.Text) & "'"
            End If
        End If
        Session("AZ_SQL") = sql & " " & sSql & " AND B.STATO='STORICIZZATO' AND A.ISINCODE=B.ISINCODE"  ' ORDER BY B.DATASTOR"
        'If txtFind.Text = "" And txtIsincode.Text = "" And txtDtStoDa.Text = "" And txtDtStoA.Text = "" And txtDtMDa.Text = "" And txtDtMA.Text = "" Then
        'Session("AZ_SQL") = Session("AZ_SQL") & " ORDER BY A.DENOMINAZIONE"
        'Else
        '    Session("AZ_SQL") = Session("AZ_SQL") & " ORDER BY B.DATASTOR"
        'End If
        If txtFind.Text = "" And txtIsincode.Text = "" And txtDtMDa.Text = "" And txtDtMA.Text = "" Then
            Session("AZ_SQL") = Session("AZ_SQL") & " ORDER BY A.DENOMINAZIONE"
        Else
            Session("AZ_SQL") = Session("AZ_SQL") & " ORDER BY B.DATASTOR"
        End If

        Session("TYPE_GRID") = "FINDOPSTOR"

        Response.Redirect("AZLista.aspx")
    End Sub
End Class
