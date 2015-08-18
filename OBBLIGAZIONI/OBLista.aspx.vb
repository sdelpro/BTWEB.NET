Public Class OBLista
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents dtgOBB As System.Web.UI.WebControls.DataGrid
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents lblNoRecord As System.Web.UI.WebControls.Label
    Protected WithEvents lblNumRecord As System.Web.UI.WebControls.Label
    Protected WithEvents lblTipoRicerca As System.Web.UI.WebControls.Label
    Protected WithEvents lblFirstPage As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblLastPage As System.Web.UI.WebControls.LinkButton
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
    Dim TotRecord As Double
    Private m_azdv As DataView

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
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

        Call LoadListOB()
    End Sub

    Private Sub dtgOBB_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles dtgOBB.PageIndexChanged

        Dim RecCorrenti As String
        dtgOBB.CurrentPageIndex = e.NewPageIndex
        If Session("PAGESELECTINDEX") = dtgOBB.CurrentPageIndex And Session("PAGESELECTINDEX") <> 0 Then
            dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
        Else
            dtgOBB.SelectedIndex = -1
        End If
        dtgOBB.DataBind()
        RecCorrenti = ((dtgOBB.CurrentPageIndex) * 40 + 1) & "..." & IIf((dtgOBB.CurrentPageIndex + 1) * 40 <= TotRecord, (dtgOBB.CurrentPageIndex + 1) * 40, TotRecord)
        lblNumRecord.Text = "Obbligazioni: " & RecCorrenti & "/" & TotRecord & " | Pagine " & dtgOBB.PageCount '  Int(TotRecord / 40) + 1

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
        m_azdv.Sort = m_SortExp
        dtgOBB.DataBind()
    End Sub

    Private Sub dtgOBB_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles dtgOBB.ItemCommand
        'dtgOBB.SelectedIndex = e.Item.ItemIndex
        dtgOBB.DataBind()
        If (e.CommandName = "DETTAGLI") Then

            Select Case Session("TYPE_GRID")
                Case "FINDDESC"
                    Session("ISINCODE") = dtgOBB.Items(e.Item.ItemIndex).Cells(0).Text   '   e.Item.Cells(0).Text
                    'Session("ISINCODE") = dtgOBB.Items(e.Item.ItemIndex).Cells(0).Text   '   e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgOBB.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("OBView.aspx")
                Case "FINDREGOL"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgOBB.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("OBRegolamento.aspx")
                Case "FINDMAGG"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgOBB.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("OBMaggiorazioni.aspx")
                Case "FINDSCAD"
                    Session("PAGESELECTINDEX") = dtgOBB.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
                    Session("ISINCODE") = e.Item.Cells(2).Text
                    Response.Redirect("OBView.aspx")
                Case "FINDCEDOLE"
                    Session("ISINCODE") = e.Item.Cells(1).Text
                    Session("PAGESELECTINDEX") = dtgOBB.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("OBPianoInd.aspx")
                Case "FINDPAMM"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgOBB.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("OBPianoAmm.aspx")
                Case "FINDCONV"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgOBB.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("OBConvertibili.aspx")
                Case "FINDNEWS"
                    Session("ISINCODE") = e.Item.Cells(1).Text
                    Session("PAGESELECTINDEX") = dtgOBB.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("OBNews.aspx")
                Case "FINDQUOT"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgOBB.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("OBQuotazioni.aspx")
            End Select

            Response.Redirect("OBView.aspx")
        End If
    End Sub

    Private Sub dtgOBB_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles dtgOBB.Init
    End Sub
    Private Sub LoadListOB()
        Dim dt As New DataTable

        lblLastLogin.Text = Session("LASTLOGIN")
        dtgOBB.Visible = False

        Dim clt As New AccessDBManager()
        Dim zx As Integer = 0
        Dim sql As String = Session("OB_SQL") '& " ORDER BY DESCRL"
        Dim RecCorrenti As String
        'sql = "SELECT TOP 1000 A.*, B.DATA, B.TLORDO, B.TNETTO FROM TITOLOOBBLIGAZIONARIO A, PIANOINDICIZZAZIONE B WHERE A.ISINCODE = B.ISINCODE"
        lblTIPORICERCA.Text = ""
        lblTIPORICERCA.Text = Session("TIPORICERCA") '"Ricerca Corrente:  " & Session("TIPORICERCA")
        If Not Session("TYPE_GRID") = "FINDQUOT" Then Session("QUOTANNO") = Year(Now)

        With clt
            Call .ReadGenericQuery(dt, sql)
            TotRecord = dt.Rows.Count
            If Not TotRecord = 0 Then
                RecCorrenti = ((dtgOBB.CurrentPageIndex) * 40 + 1) & "..." & IIf((dtgOBB.CurrentPageIndex + 1) * 40 <= dt.Rows.Count, (dtgOBB.CurrentPageIndex + 1) * 40, dt.Rows.Count)
            Else
                RecCorrenti = "0"
            End If
            lblNumRecord.Text = "Obbligazioni: " & RecCorrenti & "/" & dt.Rows.Count & " | Pagine " & Int(TotRecord / 40) + 1

            If Not dt.Rows.Count = 0 Then
                Select Case Session("TYPE_GRID")
                    Case "FINDDESC"
                        Call SetGridFindDesc(dtgOBB)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("OBView.aspx")
                        End If
                    Case "FINDREGOL"
                        Call SetGridFindDesc(dtgOBB)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("OBRegolamento.aspx")
                        End If
                    Case "FINDMAGG"
                        Call SetGridFindDesc(dtgOBB)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("OBMaggiorazioni.aspx")
                        End If
                    Case "FINDSCAD"
                        Call SetGridFindScad(dtgOBB)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("OBView.aspx")
                        End If
                    Case "FINDCEDOLE"
                        Call SetGridFindCedole(dtgOBB)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("OBPianoInd.aspx")
                        End If
                    Case "FINDPAMM"
                        Call SetGridFindDesc(dtgOBB)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("OBPianoAmm.aspx")
                        End If
                    Case "FINDCONV"
                        Call SetGridFindConv(dtgOBB)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("OBConvertibili.aspx")
                        End If
                    Case "FINDQUOT"
                        Call SetGridFindQuot(dtgOBB)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("OBQuotazioni.aspx")
                        End If
                    Case "FINDNEWS"
                        Call SetGridFindNews(dtgOBB)
                        dt.Columns.Add("LINK_NEWS", System.Type.GetType("System.String"), "")
                        Dim SmallNews As String = ""
                        For zx = 0 To dt.Rows.Count - 1
                            SmallNews = dt.Rows(zx).Item("TESTO")
                            If SmallNews.Length > 30 Then
                                SmallNews = SmallNews.Substring(0, 27) & " ..."
                            End If
                            dt.Rows(zx).Item("LINK_NEWS") = "<a href=""javascript:Popup('OBPopupNews.aspx?ID=" & Server.HtmlEncode(dt.Rows(zx).Item("ID")) & "')"">" & SmallNews & "</a>"
                        Next
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("OBNews.aspx")
                        End If
                End Select


                If Session("OLD_SQL_QUERY") <> sql Then
                    m_azdv = New DataView(dt)
                Else
                    m_azdv = Session("OBDATAVIEW")
                End If
                Session("OBDATAVIEW") = m_azdv
                Session("OLD_SQL_QUERY") = sql
                dtgOBB.DataSource = m_azdv
                dtgOBB.DataBind()
                dtgOBB.Visible = True
                If IsNumeric(Session("ITEMSELECTINDEX")) Then dtgOBB.SelectedIndex = Session("ITEMSELECTINDEX")
                'lblRecNum.Text = "Record Trovati " & Format(dt.Rows.Count, "#,##0")
            Else
                dtgOBB.Visible = False
                lblNoRecord.Visible = True
            End If
            .Dispose()
        End With

    End Sub
    Private Sub SetGridFindDesc(ByVal GridCtrl As WebControls.DataGrid)

        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With

        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c5 As New WebControls.ButtonColumn

        With c2
            .DataField = "ISINCODE"
            .HeaderText = "ISINCODE"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(20)
        End With

        With c3
            .DataField = "DESCRL"
            .HeaderText = "DESCRIZIONE"
            .SortExpression = "DESCRL"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(70)
        End With

        With c5
            .HeaderText = ""
            .Text = "Dettagli"
            '.buttontype = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c5)

    End Sub


    Private Sub SetGridFindQuot(ByVal GridCtrl As WebControls.DataGrid)

        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With

        Dim c1 As New WebControls.BoundColumn
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.BoundColumn
        Dim c6 As New WebControls.BoundColumn
        Dim c7 As New WebControls.BoundColumn
        Dim c8 As New WebControls.ButtonColumn

        With c1
            .DataField = "ISINCODE"
            .HeaderText = "ISINCODE"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(12)
        End With


        With c2
            .DataField = "DESCRL"
            .HeaderText = "DESCRIZIONE"
            .SortExpression = "DESCRL"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(45)
        End With

        With c3
            .DataField = "MIN1"
            .HeaderText = "MIN. ANNO"
            .SortExpression = "MINIMO"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(12)
            '.ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c4
            .DataField = "MAX1"
            .HeaderText = "MAX. ANNO"
            .SortExpression = "MASSIMO"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(12)
            '.ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c5
            .DataField = "COMP"
            .HeaderText = "MEDIA"
            .SortExpression = "COMPENSO"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(7)
            '.ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c6
            .DataField = "QMIN"
            .HeaderText = "Q.MIN"
            .SortExpression = "QMIN"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(7)
            '.ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c7
            .DataField = "ACRONIMO"
            .HeaderText = "ACRONIMO"
            .SortExpression = "ACRONIMO"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(5)
            '.ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c8
            .HeaderText = ""
            .Text = "Dettagli"
            '.buttontype = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        GridCtrl.Columns.Add(c1)
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
        GridCtrl.Columns.Add(c6)
        GridCtrl.Columns.Add(c7)
        GridCtrl.Columns.Add(c8)

    End Sub



    Private Sub SetGridFindConv(ByVal GridCtrl As WebControls.DataGrid)

        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With

        Dim c1 As New WebControls.BoundColumn
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c5 As New WebControls.ButtonColumn

        With c1
            .DataField = "ISINCODE"
            .HeaderText = "ISINCODE"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(20)
        End With

        With c2
            .DataField = "DESCRL"
            .HeaderText = "DESCRIZIONE"
            .SortExpression = "DESCRL"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(35)
        End With

        With c3
            .DataField = "NOTACONVRIEP"
            .HeaderText = "NOTA CONV."
            .SortExpression = "NOTACONVRIEP"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(35)
        End With

        With c5
            .HeaderText = ""
            .Text = "Dettagli"
            '.buttontype = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        GridCtrl.Columns.Add(c1)
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c5)

    End Sub
    Private Sub SetGridFindNews(ByVal GridCtrl As WebControls.DataGrid)

        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With

        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.BoundColumn
        Dim c6 As New WebControls.ButtonColumn
        Dim c7 As New WebControls.BoundColumn

        With c2
            .DataField = "DATANEWS"
            .HeaderText = "Data news"
            .SortExpression = "DATA"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        With c3
            .DataField = "ISINCODE"
            .HeaderText = "ISINCODE"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        With c4
            .DataField = "DESCRL"
            .HeaderText = "DESCRIZIONE"
            .SortExpression = "DESCRL"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(45)
        End With

        With c5
            .DataField = "LINK_NEWS"
            .HeaderText = ""
            .SortExpression = "LINK_NEWS"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(25)
        End With

        With c6
            .HeaderText = ""
            .Text = "Dettagli"
            '.buttontype = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
        GridCtrl.Columns.Add(c6)

    End Sub

    Private Sub SetGridFindScad(ByVal GridCtrl As WebControls.DataGrid)

        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With

        Dim c1 As New WebControls.BoundColumn
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.ButtonColumn

        With c1
            .DataField = "DATA"
            .HeaderText = "Data Scadenza"
            .SortExpression = "DSCADENZA"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        With c2
            .DataField = "DTRIMBANT"
            .HeaderText = "Data Rimb. Anticip."
            .SortExpression = "DTRIMBANTICIPATO"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        With c3
            .DataField = "ISINCODE"
            .HeaderText = "ISINCODE"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        With c4
            .DataField = "DESCRL"
            .HeaderText = "DESCRIZIONE"
            .SortExpression = "DESCRL"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(60)
        End With

        With c5
            .HeaderText = ""
            .Text = "Dettagli"
            '.buttontype = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        GridCtrl.Columns.Add(c1)
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)

    End Sub



    Private Sub SetGridFindCedole(ByVal GridCtrl As WebControls.DataGrid)

        GridCtrl.Columns.Clear()


        Dim c1 As New WebControls.BoundColumn
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.BoundColumn
        Dim c6 As New WebControls.ButtonColumn

        With c1
            .DataField = "DATA"
            .HeaderText = "DATA CEDOLA"
            .SortExpression = "DATACED"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        With c2
            .DataField = "ISINCODE"
            .HeaderText = "ISINCODE"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        With c3
            .DataField = "DESCRL"
            .HeaderText = "DESCRIZIONE"
            .SortExpression = "DESCRL"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(50)
        End With

        With c4
            .DataField = "TLORDO"
            .HeaderText = "TASSO LORDO"
            .SortExpression = "TLORDO"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
            '.ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c5
            .DataField = "TNETTO"
            .HeaderText = "TASSO NETTO"
            .SortExpression = "TNETTO"
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
            '.ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c6
            .HeaderText = ""
            .Text = "Dettagli"
            .CommandName = "DETTAGLI"
            '.buttontype = ButtonColumnType.PushButton
            '.ItemStyle.Font.Size = FontUnit.Point(10)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        GridCtrl.Columns.Add(c1)
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
        GridCtrl.Columns.Add(c6)


    End Sub

    Private Sub lblMenuRicerche_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("OBMenu.aspx")
    End Sub


    Private Sub lblFirstPage_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblFirstPage.Click
        Dim enew As New DataGridPageChangedEventArgs(sender, 0)
        dtgOBB_PageIndexChanged(sender, enew)

        'dtgOBB.CurrentPageIndex = 0
        'dtgOBB.

    End Sub

    Private Sub lblLastPage_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblLastPage.Click
        Dim enew As New DataGridPageChangedEventArgs(sender, dtgOBB.PageCount - 1)
        dtgOBB_PageIndexChanged(sender, enew)

        'dtgOBB.CurrentPageIndex = dtgOBB.PageCount - 1
    End Sub

    Private Sub dtgOBB_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dtgOBB.SelectedIndexChanged

    End Sub
End Class
