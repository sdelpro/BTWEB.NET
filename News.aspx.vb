Public Class News
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents dtgOBB As System.Web.UI.WebControls.DataGrid
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblNumRecord As System.Web.UI.WebControls.Label
    Protected WithEvents lblFirstPage As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblLastPage As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblNoRecord As System.Web.UI.WebControls.Label
    Protected WithEvents lblBackRicerche As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblPrecPage As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblSuccPage As System.Web.UI.WebControls.LinkButton

    'NOTA: la seguente dichiarazione è richiesta da Progettazione Web Form.
    'Non spostarla o rimuoverla.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: questa chiamata al metodo è richiesta da Progettazione Web Form.
        'Non modificarla nell'editor del codice.
        InitializeComponent()
    End Sub

#End Region
    'Dim dv As DataView
    Dim TotRecord As Double


    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Me.Response.CacheControl = "no-cache"
        'Me.Response.AddHeader("Pragma", "no-cache")
        'Me.Response.Expires = -1

        If Not Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
            Session("ERROR") = "Accesso non autorizzato. Effettuare il Login"
            Me.Response.Redirect("Error.aspx")
        End If
        If AbilitaPagina(Session.SessionID, Session("USERNAME")) = 0 Then
            Session.Clear()
            Session("ERROR") = "Errore 1752. Violazione di Protezione.<br><br>" & _
                               "Il sistema ha rilevato un accesso multiplo non autorizzato.<br>" & _
                               "Contattare il supporto tecnico per maggiori informazioni."
            Me.Response.Redirect("Error.aspx")
        End If
        lblLastLogin.Text = Session("LASTLOGIN")
        Call LoadListOB()
        If TotRecord <> 0 Then
            lblNumRecord.Text = "News: " & 1 & "/" & TotRecord & " | Pagine " & dtgOBB.PageCount  ' Int(TotRecord / 40)    '+ 1
        Else
            lblNumRecord.Text = " - - "
        End If

    End Sub

    Private Sub dtgOBB_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles dtgOBB.PageIndexChanged

        Dim RecCorrenti As String
        dtgOBB.CurrentPageIndex = e.NewPageIndex
        If CType(Session("PAGESELECTINDEX"), Integer) = CType(dtgOBB.CurrentPageIndex, Integer) Then
            dtgOBB.SelectedIndex = IIf(Session("ITEMSELECTINDEX") = String.Empty, 0, Session("ITEMSELECTINDEX"))
        Else
            dtgOBB.SelectedIndex = -1
        End If
        dtgOBB.DataBind()
        RecCorrenti = ((dtgOBB.CurrentPageIndex) * 40 + 1) & "..." & IIf((dtgOBB.CurrentPageIndex + 1) * 40 <= TotRecord, (dtgOBB.CurrentPageIndex + 1) * 40, TotRecord)
        lblNumRecord.Text = "News: " & RecCorrenti & "/" & TotRecord & " | Pagine " & dtgOBB.PageCount  'Int(TotRecord / 40) '+ 1

        'Dim RecCorrenti As String
        'dtgOBB.CurrentPageIndex = e.NewPageIndex
        'If Session("PAGESELECTINDEX") = dtgOBB.CurrentPageIndex Then
        '    dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
        'Else
        '    dtgOBB.SelectedIndex = -1
        'End If
        'dtgOBB.DataBind()
        'RecCorrenti = ((dtgOBB.CurrentPageIndex) * 40 + 1) & "..." & IIf((dtgOBB.CurrentPageIndex + 1) * 40 <= TotRecord, (dtgOBB.CurrentPageIndex + 1) * 40, TotRecord)
        'lblNumRecord.Text = "News: " & RecCorrenti & "/" & TotRecord & " | Pagine " & dtgOBB.PageCount  'Int(TotRecord / 40) '+ 1
    End Sub

    Private Sub dtgOBB_SortCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridSortCommandEventArgs) Handles dtgOBB.SortCommand
        Dim m_SortExp As String
        If Session("SORT_VERSO") = "0" Then
            Session("SORT_VERSO") = "1"
        Else
            Session("SORT_VERSO") = "0"
        End If
        If Session("SORT_VERSO") = "0" Then
            m_SortExp = e.SortExpression & " DESC"
        Else
            m_SortExp = e.SortExpression
        End If
        dv.Sort = m_SortExp
        dtgOBB.DataBind()
    End Sub

    Private Sub LoadListOB()
        Dim dt As New DataTable
        lblLastLogin.Text = Session("LASTLOGIN")
        dtgOBB.Visible = False

        Dim clt As New AccessDBManager()
        Dim zx As Integer = 0
        'Dim sql As String = "SELECT CONVERT(VARCHAR, NEWSGENERALI.DMODIFICA, 103) AS DMOD, NEWSGENERALI.TITOLO, NEWSGENERALI.IDNEWS, NEWSGENERALI.NEWS FROM NEWSGENERALI WHERE NEWSGENERALI.STATO = 'ATTIVA' AND TITOLO <> 'COMUNICAZIONE' ORDER BY DMODIFICA DESC "
        Dim sql As String = Session("AZ_SQL")
        Dim RecCorrenti As String

        With clt
            Call .ReadGenericQuery(dt, sql)
            If Not dt.Rows.Count = 0 Then
                Call SetGridFindNews(dtgOBB)
                TotRecord = dt.Rows.Count
                Dim SmallNews As String = ""
                dt.Columns.Add("LINK_NEWS", System.Type.GetType("System.String"), "")
                For zx = 0 To dt.Rows.Count - 1
                    SmallNews = dt.Rows(zx).Item("NEWS")
                    If SmallNews.Length > 30 Then
                        SmallNews = SmallNews.Substring(0, 27) & " ..."
                    End If
                    dt.Rows(zx).Item("LINK_NEWS") = "<a href=""javascript:Popup('PopupNews.aspx?IDNEWS=" & Server.HtmlEncode(dt.Rows(zx).Item("IDNEWS")) & "')"">" & SmallNews & "</a>"
                Next

                'dt.Columns.Add("NEWSP", System.Type.GetType("System.String"), "")
                'For zx = 0 To dt.Rows.Count - 1
                '    SmallNews = dt.Rows(zx).Item("NEWS")
                '    If SmallNews.Length > 30 Then
                '        SmallNews = SmallNews.Substring(0, 27) & " ..."
                '    End If
                '    dt.Rows(zx).Item("NEWSP") = "<a href=""javascript:Popup('PopupNews.aspx?IDNEWS=" & Server.HtmlEncode(dt.Rows(zx).Item("IDNEWS")) & "')"">" & SmallNews & "</a>"
                'Next

                'dt.Columns.Add("LINK_NEWS", System.Type.GetType("System.String"), "")
                'For zx = 0 To dt.Rows.Count - 1
                '    dt.Rows(zx).Item("LINK_NEWS") = "<a href=""javascript:Popup('PopupNews.aspx?IDNEWS=" & Server.HtmlEncode(dt.Rows(zx).Item("IDNEWS")) & "')"">Apri news</a>"
                'Next
                If Session("OLD_SQL_QUERY") <> sql Then dv = New DataView(dt)
                Session("OLD_SQL_QUERY") = sql
                dtgOBB.DataSource = dv
                dtgOBB.DataBind()
                dtgOBB.Visible = True
            Else
                lblNoRecord.Visible = True
                dtgOBB.Visible = False
            End If
            .Dispose()
        End With

    End Sub

    Private Sub SetGridFindNews(ByVal GridCtrl As WebControls.DataGrid)

        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With

        Dim c1 As New WebControls.BoundColumn
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn

        With c1
            .DataField = "DMOD"
            .HeaderText = "Data"
            .SortExpression = "DMODIFICA"
        End With

        With c2
            .DataField = "TITOLO"
            .HeaderText = "Argomento"
            .SortExpression = "TITOLO"
        End With

        'With c3
        '    .DataField = "NEWSP"
        '    .HeaderText = "Inizio del testo della News"
        '    .SortExpression = "NEWSP"
        '    .ItemStyle.Font.Size = FontUnit.Point(10)
        '    .ItemStyle.Width = Unit.Percentage(30)
        'End With

        With c4
            .DataField = "LINK_NEWS"
            .HeaderText = "Testo News"
            .SortExpression = "NEWS"

        End With

        GridCtrl.Columns.Add(c1)
        GridCtrl.Columns.Add(c2)
        'GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)

    End Sub

    Private Sub dtgOBB_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dtgOBB.SelectedIndexChanged

    End Sub

    'Private Sub lblFirstPage_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblFirstPage.Click
    '    Dim enew As New DataGridPageChangedEventArgs(sender, 0)
    '    If TotRecord <> 0 Then dtgOBB_PageIndexChanged(sender, enew)
    'End Sub

    'Private Sub lblLastPage_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblLastPage.Click
    '    Dim enew As New DataGridPageChangedEventArgs(sender, dtgOBB.PageCount - 1)
    '    If TotRecord <> 0 Then dtgOBB_PageIndexChanged(sender, enew)
    'End Sub

    Private Sub lblFirstPage_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblFirstPage.Click
        Dim enew As New DataGridPageChangedEventArgs(sender, 0)
        dtgOBB_PageIndexChanged(sender, enew)

        'dtgOBB.CurrentPageIndex = 0
        'dtgOBB.

    End Sub
    Private Sub lblPrecPage_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblPrecPage.Click
        If dtgOBB.CurrentPageIndex > 0 Then
            Dim enew As New DataGridPageChangedEventArgs(sender, dtgOBB.CurrentPageIndex - 1)
            dtgOBB_PageIndexChanged(sender, enew)
        End If
        'dtgOBB.CurrentPageIndex = 0
        'dtgOBB.

    End Sub

    Private Sub lblSuccPage_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblSuccPage.Click
        If dtgOBB.CurrentPageIndex < (dtgOBB.PageCount - 1) Then
            Dim enew As New DataGridPageChangedEventArgs(sender, dtgOBB.CurrentPageIndex + 1)
            dtgOBB_PageIndexChanged(sender, enew)
        End If
        'dtgOBB.CurrentPageIndex = 0
        'dtgOBB.

    End Sub

    Private Sub lblLastPage_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblLastPage.Click
        Dim enew As New DataGridPageChangedEventArgs(sender, dtgOBB.PageCount - 1)
        dtgOBB_PageIndexChanged(sender, enew)

        'dtgOBB.CurrentPageIndex = dtgOBB.PageCount - 1
    End Sub

    Private Sub lblBackRicerche_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblBackRicerche.Click
        Me.Response.Redirect("FindNews.aspx")
    End Sub
End Class
