Public Class AZLista
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblNoRecord As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblNumRecord As System.Web.UI.WebControls.Label
    Protected WithEvents lblTipoRicerca As System.Web.UI.WebControls.Label
    'Protected WithEvents Dhtmlmenucontrol3 As DHTML.MenuControl.DHTMLMenuControl
    Protected WithEvents lblFirstPage As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblLastPage As System.Web.UI.WebControls.LinkButton
    Protected WithEvents dtgAZIO As System.Web.UI.WebControls.DataGrid
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblINFOVARIE As System.Web.UI.HtmlControls.HtmlAnchor
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
    Dim dt As New DataTable
    Private m_azdv As DataView
    Dim TotRecord As Double

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
        Call LoadListAZ()

    End Sub
    Private Sub LoadListAZ()

        lblLastLogin.Text = Session("LASTLOGIN")
        dtgAZIO.Visible = False

        Dim clt As New AccessDBManager()
        Dim zx As Integer = 0
        Dim zy As Integer = 0
        Dim sql As String = Session("AZ_SQL")
        Dim RecCorrenti As String
        lblNumRecord.Visible = True
        lblFirstPage.Visible = True
        lblLastPage.Visible = True

        lblTIPORICERCA.Text = ""
        lblTIPORICERCA.Text = Session("TIPORICERCA") '"Ricerca Corrente:  " & Session("TIPORICERCA")
        With clt
            Call .ReadGenericQuery(dt, sql)
            TotRecord = dt.Rows.Count
            If Not dt.Rows.Count = 0 Then
                Select Case Session("TYPE_GRID")
                    Case "FINDSOC"
                        Call SetGridFindDesc(dtgAZIO)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZSocieta.aspx")
                        End If
                    Case "FINDTITOLI"
                        Call SetGridFindTitoli(dtgAZIO)
                        dt.Columns.Add("TITOLO", System.Type.GetType("System.String"), "")
                        For zx = 0 To dt.Rows.Count - 1
                            dt.Rows(zx).Item("TITOLO") = "<a href=""javascript:Popup('AZDettTitolo.aspx?ISINCODE=" & Server.HtmlEncode(dt.Rows(zx).Item("ISINCODE")) & "')"">" & "Scheda" & "</a>"
                            If dt.Rows(zx).Item("VNOM") & "" = String.Empty Then dt.Rows(zx).Item("VNOM") = "" Else dt.Rows(zx).Item("VNOM") = fmtNumbertoDecimal(dt.Rows(zx).Item("VNOM"))
                            dt.Rows(zx).Item("CAPITALE") = Replace(Replace(Replace(dt.Rows(zx).Item("CAPITALE") & "", ",", "#"), ".", ","), "#", ".")
                        Next
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(1)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZTitolo.aspx")
                            'Response.Redirect("AZSocieta.aspx")
                        End If
                    Case "FINDASS"
                        Call SetGridFindAss(dtgAZIO)
                        dt.Columns.Add("ASSEMBLEA", System.Type.GetType("System.String"), "")
                        For zx = 0 To dt.Rows.Count - 1
                            dt.Rows(zx).Item("ASSEMBLEA") = "<a href=""javascript:Popup('AZDettAssemblea.aspx?IDASS=" & Server.HtmlEncode(dt.Rows(zx).Item("IDASS")) & "')"">" & "Scheda" & "</a>"
                        Next
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZAssemblee.aspx")
                            'Response.Redirect("AZSocieta.aspx")
                        End If
                    Case "FINDCDA"
                        Call SetGridFindCda(dtgAZIO)
                        dt.Columns.Add("CDA", System.Type.GetType("System.String"), "")
                        For zx = 0 To dt.Rows.Count - 1
                            dt.Rows(zx).Item("CDA") = "<a href=""javascript:Popup('AZDettCDA.aspx?IDCDA=" & Server.HtmlEncode(dt.Rows(zx).Item("IDCDA")) & "')"">" & "Scheda" & "</a>"
                        Next
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(1)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZCda.aspx")
                            'Response.Redirect("AZSocieta.aspx")
                        End If
                    Case "FINDDIVPRE"
                        Call SetGridFindDivPre(dtgAZIO)
                        dt.Columns.Add("DIV", System.Type.GetType("System.String"), "")
                        For zx = 0 To dt.Rows.Count - 1
                            dt.Rows(zx).Item("DIV") = "<a href=""javascript:Popup('AZDettDIVPRE.aspx?IDDIV=" & Server.HtmlEncode(dt.Rows(zx).Item("IDDIV")) & "')"">" & "Scheda" & "</a>"
                        Next
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZDividendi.aspx")
                            'Response.Redirect("AZSocieta.aspx")
                        End If
                    Case "FINDDIVDEL"
                        Call SetGridFindDivDel(dtgAZIO)
                        dt.Columns.Add("DIV", System.Type.GetType("System.String"), "")
                        For zx = 0 To dt.Rows.Count - 1
                            dt.Rows(zx).Item("DIV") = "<a href=""javascript:Popup('AZDettDIVDEL.aspx?IDDIV=" & Server.HtmlEncode(dt.Rows(zx).Item("IDDIV")) & "')"">" & "Scheda" & "</a>"
                        Next
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(1)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZDividendi.aspx")
                        End If
                    Case "FINDNEWS"
                        Call SetGridFindNews(dtgAZIO)
                        Dim SmallNews As String = ""
                        dt.Columns.Add("LINKNEWS", System.Type.GetType("System.String"), "")
                        For zx = 0 To dt.Rows.Count - 1
                            SmallNews = dt.Rows(zx).Item("TESTO")
                            If SmallNews.Length > 30 Then
                                SmallNews = SmallNews.Substring(0, 27) & " ..."
                            End If
                            dt.Rows(zx).Item("LINKNEWS") = "<a href=""javascript:Popup('AZPopupNews.aspx?IDNEWS=" & Server.HtmlEncode(dt.Rows(zx).Item("IDNEWS")) & "')"">" & SmallNews & "</a>"
                        Next
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZNews.aspx")
                        End If
                    Case "FINDOPPREAPPR"
                        Call SetGridFindOpPreAppr(dtgAZIO)
                        Dim SmallNews As String = ""
                        dt.Columns.Add("OPCAP", System.Type.GetType("System.String"), "")
                        For zx = 0 To dt.Rows.Count - 1
                            SmallNews = dt.Rows(zx).Item("TESTO")
                            If SmallNews.Length > 30 Then
                                SmallNews = SmallNews.Substring(0, 27) & " ..."
                            End If
                            dt.Rows(zx).Item("OPCAP") = "<a href=""javascript:Popup('AZDettOPCAP.aspx?IDOPCAP=" & Server.HtmlEncode(dt.Rows(zx).Item("IDOPCAP")) & "')"">" & SmallNews & "</a>"
                        Next
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZOpCapitale.aspx")
                        End If
                    Case "FINDOPINC"
                        Call SetGridFindOpInCorso(dtgAZIO)
                        Dim SmallNews As String = ""
                        dt.Columns.Add("OPCAP", System.Type.GetType("System.String"), "")
                        For zx = 0 To dt.Rows.Count - 1
                            SmallNews = dt.Rows(zx).Item("TESTO")
                            If SmallNews.Length > 30 Then
                                SmallNews = SmallNews.Substring(0, 27) & " ..."
                            End If
                            dt.Rows(zx).Item("OPCAP") = "<a href=""javascript:Popup('AZDettOPCAP.aspx?IDOPCAP=" & Server.HtmlEncode(dt.Rows(zx).Item("IDOPCAP")) & "')"">" & SmallNews & "</a>"
                        Next
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZOpCapitale.aspx")
                        End If
                    Case "FINDOPSTOR"
                        Call SetGridFindOpStor(dtgAZIO)
                        Dim SmallNews As String = ""
                        dt.Columns.Add("OPCAP", System.Type.GetType("System.String"), "")
                        For zx = 0 To dt.Rows.Count - 1
                            SmallNews = dt.Rows(zx).Item("TESTO")
                            If SmallNews.Length > 30 Then
                                SmallNews = SmallNews.Substring(0, 27) & " ..."
                            End If
                            dt.Rows(zx).Item("OPCAP") = "<a href=""javascript:Popup('AZDettOPCAP.aspx?IDOPCAP=" & Server.HtmlEncode(dt.Rows(zx).Item("IDOPCAP")) & "')"">" & SmallNews & "</a>"
                        Next
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZOpCapitale.aspx")
                        End If
                    Case "FINDWARR"
                        Call SetGridFindWarr(dtgAZIO)
                        Dim SmallNews As String = ""
                        dt.Columns.Add("WARR", System.Type.GetType("System.String"), "")
                        For zx = 0 To dt.Rows.Count - 1
                            dt.Rows(zx).Item("WARR") = "<a href=""javascript:Popup('AZDettTitolo.aspx?ISINCODE=" & Server.HtmlEncode(dt.Rows(zx).Item("ISINCODE")) & "')"">" & "Scheda" & "</a>"
                        Next
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZWarrant.aspx")
                        End If
                    Case "FINDQUOT"
                        Call SetGridFindQuot(dtgAZIO)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZQuotazioni.aspx")
                        End If
                    Case "FINDQUOTAZIONI"
                        Call SetGridFindQuotAzioni(dtgAZIO)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZQuotazioni.aspx")
                        End If
                    Case "FINDCONV"
                        Call SetGridFindConv(dtgAZIO)
                        If dt.Rows.Count = 1 Then
                            Session("ISINCODE") = dt.Rows(0).Item(0)
                            Session("ITEMSELECTINDEX") = 0
                            Response.Redirect("AZConvertibili.aspx")
                        End If

                End Select
                If Session("OLD_SQL_QUERY") <> sql Then
                    m_azdv = New DataView(dt)
                Else
                    m_azdv = Session("AZDATAVIEW")
                End If
                Session("OLD_SQL_QUERY") = sql
                Session("AZDATAVIEW") = m_azdv
                dtgAZIO.DataSource = m_azdv
                dtgAZIO.DataBind()
                If Session("TYPE_GRID") = "FINDTITOLI" Or Session("TYPE_GRID") = "FINDSOC" Then
                    For zx = 0 To dtgAZIO.Items.Count - 1
                        For zy = 0 To dtgAZIO.Columns.Count - 2
                            If dt.Rows(zx).Item("STATO") & "" <> "ATTIVO" Then
                                dtgAZIO.Items(zx).ForeColor = Drawing.Color.Red
                                dtgAZIO.Items(zx).Font.Italic = True
                            End If
                        Next
                    Next
                End If
                TotRecord = dt.Rows.Count

                If dt.Rows.Count <> 0 Then
                    dtgAZIO.Visible = True
                    If IsNumeric(Session("ITEMSELECTINDEX")) Then dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    If Not TotRecord = 0 Then
                        RecCorrenti = ((dtgAZIO.CurrentPageIndex) * 40 + 1) & "..." & IIf((dtgAZIO.CurrentPageIndex + 1) * 40 <= TotRecord, (dtgAZIO.CurrentPageIndex + 1) * 40, TotRecord)
                    Else
                        RecCorrenti = "0"
                    End If
                    lblNumRecord.Text = "Azioni: " & RecCorrenti & "/" & TotRecord & " | Pagine " & dtgAZIO.PageCount
                Else
                    dtgAZIO.Visible = False
                    lblNoRecord.Visible = True
                    lblNumRecord.Visible = False
                    lblFirstPage.Visible = False
                    lblLastPage.Visible = False
                End If
            Else
                dtgAZIO.Visible = False
                lblNoRecord.Visible = True
                lblNumRecord.Visible = False
                lblFirstPage.Visible = False
                lblLastPage.Visible = False
            End If
            .Dispose()
        End With
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

        With c2
            .DataField = "DATAN"
            .HeaderText = "DATA NEWS"
            .SortExpression = "DATA"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(9)
        End With

        With c3
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(9)
        End With

        With c4
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DENOMINAZIONE"
            .SortExpression = "DENOMINAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(45)
        End With

        With c5
            .DataField = "LINKNEWS"
            .HeaderText = ""
            .SortExpression = "LINKNEWS"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(25)
        End With

        With c6
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
        GridCtrl.Columns.Add(c6)

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
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        With c2
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DESCRIZIONE"
            .SortExpression = "DESCRL"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(50)
        End With

        With c3
            .DataField = "MINIMO"
            .HeaderText = "MIN. ANNO"
            .SortExpression = "MINIMO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(12)
            .ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c4
            .DataField = "MASSIMO"
            .HeaderText = "MAX. ANNO"
            .SortExpression = "MASSIMO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
            .ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c5
            .DataField = "COMPENSO"
            .HeaderText = "MEDIA"
            .SortExpression = "COMPENSO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(5)
            .ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c6
            .DataField = "QMINIMA"
            .HeaderText = "Q.MIN"
            .SortExpression = "QMIN"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(5)
            .ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c7
            .DataField = "ACRONIMO"
            .HeaderText = "ACRONIMO"
            .SortExpression = "ACRONIMO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(5)
            .ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c8
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
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

    Private Sub SetGridFindQuotAzioni(ByVal GridCtrl As WebControls.DataGrid)

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
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(12)
        End With

        With c2
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DESCRIZIONE"
            .SortExpression = "DENOMINAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(48)
        End With

        With c3
            .DataField = "MIN1"
            .HeaderText = "MIN. ANNO"
            .SortExpression = "MINIMO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(12)
            .ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c4
            .DataField = "MAX1"
            .HeaderText = "MAX. ANNO"
            .SortExpression = "MASSIMO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
            .ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c5
            .DataField = "COMP"
            .HeaderText = "MEDIA"
            .SortExpression = "COMPENSO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(5)
            .ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c6
            .DataField = "QMINIMA"
            .HeaderText = "Q.MIN"
            .SortExpression = "QMINIMA"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(5)
            .ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c7
            .DataField = "ACRONIMO"
            .HeaderText = "ACRONIMO"
            .SortExpression = "ACRONIMO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(5)
            .ItemStyle.HorizontalAlign = HorizontalAlign.Center
        End With

        With c8
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
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

    Private Sub SetGridFindOpInCorso(ByVal GridCtrl As WebControls.DataGrid)

        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With

        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.BoundColumn
        Dim c6 As New WebControls.BoundColumn
        Dim c7 As New WebControls.ButtonColumn

        With c2
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c3
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DENOMINAZIONE"
            .SortExpression = "DENOMINAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(45)
        End With
        With c4
            .DataField = "DATAIN"
            .HeaderText = "DATA INIZIO"
            .SortExpression = "DATAINIZIO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c5
            .DataField = "DATAFIN"
            .HeaderText = "DATA FINE"
            .SortExpression = "DATAFINE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c6
            .DataField = "OPCAP"
            .HeaderText = ""
            .SortExpression = "OpCap"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(40)
        End With
        With c7
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
        GridCtrl.Columns.Add(c6)
        GridCtrl.Columns.Add(c7)

    End Sub
    Private Sub SetGridFindOpStor(ByVal GridCtrl As WebControls.DataGrid)

        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With

        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.BoundColumn
        Dim c6 As New WebControls.BoundColumn
        Dim c7 As New WebControls.BoundColumn
        Dim c8 As New WebControls.ButtonColumn

        With c2
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c3
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DENOMINAZIONE"
            .SortExpression = "DENOMINAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(30)
        End With
        With c4
            .DataField = "DATAIN"
            .HeaderText = "DATA INIZIO"
            .SortExpression = "DATAINIZIO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c5
            .DataField = "DATAFIN"
            .HeaderText = "DATA FINE"
            .SortExpression = "DATAFINE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c6
            .DataField = "DATASTORO"
            .HeaderText = "DATA STOR"
            .SortExpression = "DATASTOR"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c7
            .DataField = "OPCAP"
            .HeaderText = ""
            .SortExpression = "OpCap"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(20)
        End With
        With c8
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
        GridCtrl.Columns.Add(c6)
        GridCtrl.Columns.Add(c7)
        GridCtrl.Columns.Add(c8)

    End Sub
    Private Sub SetGridFindDesc(ByVal GridCtrl As WebControls.DataGrid)
        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.ButtonColumn
        With c2
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            ''.ItemStyle.Font.Size = FontUnit.Point(9)
            ''.ItemStyle.Width = Unit.Percentage(20)
        End With
        With c3
            .DataField = "RAGSOC"
            .HeaderText = "DESCRIZIONE"
            .SortExpression = "RAGSOC"
            ''.ItemStyle.Font.Size = FontUnit.Point(9)
            ''.ItemStyle.Width = Unit.Percentage(70)
        End With
        With c4
            .DataField = "STATO"
            .HeaderText = ""
            .Visible = False
            '.ItemStyle.Width = Unit.Percentage(0)
        End With
        With c5
            .HeaderText = ""
            .Text = "Dettagli"
            ''.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With

        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)

    End Sub
    Private Sub SetGridFindConv(ByVal GridCtrl As WebControls.DataGrid)
        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.ButtonColumn
        With c2
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(20)
        End With
        With c3
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DESCRIZIONE"
            .SortExpression = "DENOMINAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(35)
        End With
        With c4
            .DataField = "NOTACONVRIEP"
            .HeaderText = "PERIODO DI CONVERSIONE"
            .SortExpression = "NOTACONVRIEP"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(35)
        End With
        With c5
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
    End Sub

    Private Sub SetGridFindWarr(ByVal GridCtrl As WebControls.DataGrid)
        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.ButtonColumn
        With c2
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(20)
        End With
        With c3
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DESCRIZIONE"
            .SortExpression = "DENOMINAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(60)
        End With
        With c4
            .DataField = "WARR"
            .HeaderText = ""
            .SortExpression = "Warr"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c5
            .HeaderText = ""
            .Text = "Dettagli"
            ''.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
    End Sub
    Private Sub SetGridFindOpPreAppr(ByVal GridCtrl As WebControls.DataGrid)
        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.ButtonColumn
        With c2
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(15)
        End With
        With c3
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DENOMINAZIONE"
            .SortExpression = "DENOMINAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(40)
        End With
        With c4
            .DataField = "OPCAP"
            .HeaderText = ""
            .SortExpression = "OpCap"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(40)
        End With
        With c5
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
    End Sub
    Private Sub SetGridFindAss(ByVal GridCtrl As WebControls.DataGrid)
        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.BoundColumn
        Dim c6 As New WebControls.ButtonColumn
        With c2
            .DataField = "DATADEFA"
            .HeaderText = "DATA ASSEMBLEA"
            .SortExpression = "DATADEF"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(15)
        End With
        With c3
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(25)
        End With
        With c4
            .DataField = "RAGSOC"
            .HeaderText = "DENOMINAZIONE"
            .SortExpression = "RAGSOC"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(50)
        End With
        With c5
            .DataField = "ASSEMBLEA"
            .HeaderText = ""
            .SortExpression = "Scheda"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(5)
        End With
        With c6
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
        GridCtrl.Columns.Add(c6)
    End Sub
    Private Sub SetGridFindDivPre(ByVal GridCtrl As WebControls.DataGrid)
        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.BoundColumn
        Dim c6 As New WebControls.BoundColumn
        Dim c7 As New WebControls.ButtonColumn
        With c2
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(20)
        End With
        With c3
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DENOMINAZIONE"
            .SortExpression = "DENOMINAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(50)
        End With
        With c4
            .DataField = "VAL"
            .HeaderText = "VAL"
            .SortExpression = "VAL"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(15)
        End With
        With c5
            .DataField = "LORDO"
            .HeaderText = "LORDO"
            .SortExpression = "LORDO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(15)
        End With
        With c6
            .DataField = "DIV"
            .HeaderText = ""
            .SortExpression = "DIV"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c7
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
        GridCtrl.Columns.Add(c6)
        GridCtrl.Columns.Add(c7)
    End Sub
    Private Sub SetGridFindDivDel(ByVal GridCtrl As WebControls.DataGrid)
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
            .DataField = "DPAG"
            .HeaderText = "PAGAMENTO"
            .SortExpression = "DATAPAG"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c2
            .DataField = "DTSTACCO"
            .HeaderText = "STACCO"
            .SortExpression = "DATASTACCO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c3
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(15)
        End With
        With c4
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DENOMINAZIONE"
            .SortExpression = "DENOMINAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(40)
        End With
        With c5
            .DataField = "VAL"
            .HeaderText = "VAL."
            .SortExpression = "VAL"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(5)
        End With
        With c6
            .DataField = "LORDO"
            .HeaderText = "LORDO"
            .SortExpression = "LORDO"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c7
            .DataField = "DIV"
            .HeaderText = ""
            .SortExpression = "DIV"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c8
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
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
    Private Sub SetGridFindCda(ByVal GridCtrl As WebControls.DataGrid)
        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.BoundColumn
        Dim c6 As New WebControls.ButtonColumn
        With c2
            .DataField = "DATAC"
            .HeaderText = "DATA"
            .SortExpression = "DATA"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c3
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(20)
        End With
        With c4
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DENOMINAZIONE"
            .SortExpression = "DENOMINAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(60)
        End With
        With c5
            .DataField = "CDA"
            .HeaderText = ""
            .SortExpression = "Scheda"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(60)
        End With
        With c6
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
        GridCtrl.Columns.Add(c6)
    End Sub
    Private Sub SetGridFindTitoli(ByVal GridCtrl As WebControls.DataGrid)
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
        Dim c8 As New WebControls.BoundColumn
        Dim c9 As New WebControls.ButtonColumn
        Dim c10 As New WebControls.BoundColumn
        With c1
            .DataField = "ISINCODERIF"
            .HeaderText = "ISIN SOCIETA'"
            .SortExpression = "ISINCODERIF"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        With c2
            .DataField = "ISINCODE"
            .HeaderText = "ISIN TITOLO"
            .SortExpression = "ISINCODE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(10)
        End With
        'ISINCODERIF,ISINCODE, DENOMINAZIONE,TIPOAZIONE,QUOTATA,QUANTITA,VALNOMINALE,CAPITALE
        With c3
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DENOMINAZIONE"
            .SortExpression = "DENOMINAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(18)
        End With
        With c4
            .DataField = "TIPOAZIONE"
            .HeaderText = "TIPO AZIONE"
            .SortExpression = "TIPOAZIONE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(20)
        End With
        With c5
            .DataField = "QUOTATA"
            .HeaderText = "QUOT."
            .SortExpression = "QUOTATA"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(4)
        End With
        With c6
            .DataField = "VNOM"
            .HeaderText = "NOM."
            .SortExpression = "VALNOMINALE"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(8)
        End With
        With c7
            .DataField = "CAPITALE"
            .HeaderText = "CAPITALE"
            .SortExpression = "CAP"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(15)
        End With
        With c8
            .DataField = "TITOLO"
            .HeaderText = ""
            .SortExpression = "Scheda"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(5)
        End With
        With c9
            .HeaderText = ""
            .Text = "Dettagli"
            '.ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            '.ItemStyle.Font.Size = FontUnit.Point(9)
            '.ItemStyle.Width = Unit.Percentage(5)
        End With
        With c10
            .DataField = "STATO"
            .HeaderText = ""
            .Visible = False
            '.ItemStyle.Width = Unit.Percentage(0)
        End With

        GridCtrl.Columns.Add(c1)
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
        GridCtrl.Columns.Add(c6)
        GridCtrl.Columns.Add(c7)
        GridCtrl.Columns.Add(c8)
        GridCtrl.Columns.Add(c9)
        GridCtrl.Columns.Add(c10)
    End Sub

    Private Sub dtgAZIO_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles dtgAZIO.PageIndexChanged
        Dim RecCorrenti As String
        Dim zx As Integer
        Dim zy As Integer
        dtgAZIO.CurrentPageIndex = e.NewPageIndex
        If Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex And Session("PAGESELECTINDEX") <> 0 Then
            dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
        Else
            dtgAZIO.SelectedIndex = -1
        End If
        dtgAZIO.DataBind()
        RecCorrenti = ((dtgAZIO.CurrentPageIndex) * 40 + 1) & "..." & IIf((dtgAZIO.CurrentPageIndex + 1) * 40 <= TotRecord, (dtgAZIO.CurrentPageIndex + 1) * 40, TotRecord)
        lblNumRecord.Text = "Azioni: " & RecCorrenti & "/" & TotRecord & " | Pagine " & dtgAZIO.PageCount  '  Int(TotRecord / 40) + 1
        If Session("TYPE_GRID") = "FINDTITOLI" Then
            For zx = 0 To dtgAZIO.Items.Count - 1
                For zy = 0 To dtgAZIO.Columns.Count - 2
                    If dtgAZIO.Items(zx).Cells(9).Text & "" <> "ATTIVO" Then
                        dtgAZIO.Items(zx).ForeColor = Drawing.Color.Red
                        dtgAZIO.Items(zx).Font.Italic = True
                    End If
                Next
            Next
        End If
        If Session("TYPE_GRID") = "FINDSOC" Then
            For zx = 0 To dtgAZIO.Items.Count - 1
                For zy = 0 To dtgAZIO.Columns.Count - 2
                    If dtgAZIO.Items(zx).Cells(2).Text & "" <> "ATTIVO" Then
                        dtgAZIO.Items(zx).ForeColor = Drawing.Color.Red
                        dtgAZIO.Items(zx).Font.Italic = True
                    End If
                Next
            Next
        End If
    End Sub
    Private Sub dtgAZIO_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles dtgAZIO.ItemCommand
        dtgAZIO.DataBind()

        If (e.CommandName = "DETTAGLI") Then
            Select Case Session("TYPE_GRID")
                Case "FINDSOC"
                    Session("ISINCODE") = dtgAZIO.Items(e.Item.ItemIndex).Cells(0).Text  'e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZSocieta.aspx")
                Case "FINDTITOLI"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZtitoli.aspx")
                Case "FINDOPPREAPPR", "FINDOPINC", "FINDOPSTOR"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZOpCapitale.aspx")
                Case "FINDQUOT"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZQuotazioni.aspx")
                Case "FINDQUOTAZIONI"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZQuotazioni.aspx")
                Case "FINDNEWS"
                    Session("ISINCODE") = e.Item.Cells(1).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZNews.aspx")
                Case "FINDASS"
                    Session("ISINCODE") = dtgAZIO.Items(e.Item.ItemIndex).Cells(1).Text   'e.Item.Cells(1).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZAssemblee.aspx")
                Case "FINDCDA"
                    Session("ISINCODE") = e.Item.Cells(1).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZCda.aspx")
                Case "FINDDIVDEL"
                    Session("ISINCODE") = e.Item.Cells(2).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZDividendi.aspx")
                Case "FINDDIVPRE"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZDividendi.aspx")
                Case "FINDCONV"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZConvertibili.aspx")
                Case "FINDWARR"
                    Session("ISINCODE") = e.Item.Cells(0).Text
                    Session("PAGESELECTINDEX") = dtgAZIO.CurrentPageIndex
                    Session("ITEMSELECTINDEX") = e.Item.ItemIndex
                    dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
                    Response.Redirect("AZWarrant.aspx")
            End Select
        End If
    End Sub

    Private Sub lblFirstPage_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblFirstPage.Click
        Dim enew As New DataGridPageChangedEventArgs(sender, 0)
        If TotRecord <> 0 Then dtgAZIO_PageIndexChanged(sender, enew)
    End Sub

    Private Sub lblLastPage_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblLastPage.Click
        Dim enew As New DataGridPageChangedEventArgs(sender, dtgAZIO.PageCount - 1)
        If TotRecord <> 0 Then dtgAZIO_PageIndexChanged(sender, enew)
    End Sub

    Private Sub dtgAZIO_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dtgAZIO.SelectedIndexChanged

    End Sub

    Private Sub dtgAZIO_SortCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridSortCommandEventArgs) Handles dtgAZIO.SortCommand
        Dim m_SortExp As String
        Dim zx As Integer
        Dim zy As Integer
        If Session("SORT_VERSO") = "1" Then
            m_SortExp = e.SortExpression & " DESC"
        Else
            m_SortExp = e.SortExpression
        End If
        If Session("SORT_VERSO") = "0" Then
            Session("SORT_VERSO") = "1"
        Else
            Session("SORT_VERSO") = "0"
        End If
        m_azdv.Sort = m_SortExp
        dtgAZIO.DataBind()
        If Session("TYPE_GRID") = "FINDTITOLI" Then
            For zx = 0 To dtgAZIO.Items.Count - 1
                For zy = 0 To dtgAZIO.Columns.Count - 2
                    If dtgAZIO.Items(zx).Cells(9).Text & "" <> "ATTIVO" Then
                        dtgAZIO.Items(zx).ForeColor = Drawing.Color.Red
                        dtgAZIO.Items(zx).Font.Italic = True
                    End If
                Next
            Next
        End If
        If Session("TYPE_GRID") = "FINDSOC" Then
            For zx = 0 To dtgAZIO.Items.Count - 1
                For zy = 0 To dtgAZIO.Columns.Count - 2
                    If dtgAZIO.Items(zx).Cells(2).Text & "" <> "ATTIVO" Then
                        dtgAZIO.Items(zx).ForeColor = Drawing.Color.Red
                        dtgAZIO.Items(zx).Font.Italic = True
                    End If
                Next
            Next
        End If
    End Sub

    Private Sub dtgAZIO_DataBinding(ByVal sender As Object, ByVal e As System.EventArgs) Handles dtgAZIO.DataBinding
    End Sub
End Class

