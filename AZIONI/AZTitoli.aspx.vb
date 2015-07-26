Public Class AZTitoli
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents tbCarPrinc As System.Web.UI.WebControls.Table
    Protected WithEvents dtgAZIO As System.Web.UI.WebControls.DataGrid
    Protected WithEvents lblTitoloForm As System.Web.UI.WebControls.Label

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
        lblTitoloForm.Text = "TITOLI ASSOCIATI"

        Dim dtt As New System.Data.DataTable
        Dim dtHis As New System.Data.DataTable
        Dim cdt As New AccessDBManager()
        Dim sql As String = ""
        Dim LastRecord As Boolean = False
        Dim kCol As Integer = -1
        Dim kCol2
        Dim TableString As String = ""
        Dim zx, zy As Integer
        With cdt
            Try

                If Session("ISINCODE") <> "" Then
                    sql = "SELECT A.RAGSOC, B.STATO, B.*,CONVERT(VARCHAR,CONVERT (MONEY, CAPITALE),1) AS CAP,CONVERT(VARCHAR,CONVERT (MONEY, QUANTITA),1) AS QTA, CASE B.QUOTATA WHEN 1 THEN 'SI' WHEN 0 THEN 'NO' END AS QUOTATA2,CASE B.TIPOAZIONE WHEN 'ORDINARIA' THEN  0 ELSE 1 END AS TIPOAZ2 FROM SOCIETA A, TITOLOAZIONARIO B WHERE B.ISINCODERIF = (SELECT ISINCODERIF FROM TITOLOAZIONARIO WHERE ISINCODE='" & Session("ISINCODE") & "') AND A.ISINCODE=B.ISINCODERIF ORDER BY TIPOAZ2 "

                    '                   sql = "SELECT *,CASE QUOTATA WHEN 1 THEN 'SI' WHEN 0 THEN 'NO' END AS QUOTATA2,CASE TIPOAZIONE WHEN 'ORDINARIA' THEN  0 ELSE 1 END AS TIPOAZ2 FROM TITOLOAZIONARIO WHERE ISINCODERIF = (select isincoderif from titoloazionario where isincode='" & Session("ISINCODE") & "') ORDER BY TIPOAZ2 "
                Else
                    Response.Redirect("AZLista.aspx")
                End If

                .ReadGenericQuery(dtt, sql)

                kCol += 1
                tbCarPrinc.Rows(kCol).Cells(0).Text = "CODICE ISIN"
                tbCarPrinc.Rows(kCol).Cells(1).Text = Left(Session("ISINCODE"), 12)
                kCol += 1
                tbCarPrinc.Rows(kCol).Cells(0).Text = "DESCRIZIONE"
                tbCarPrinc.Rows(kCol).Cells(1).Text = dtt.Rows(0).Item("RAGSOC") ' Right(Session("ISINCODE"), Len(Session("ISINCODE")) - 12)
                kCol += 1
                tbCarPrinc.Rows(kCol).Cells(0).Text = "TITOLI ASSOCIATI ALLA SOCIETA'"

                If Not dtt.Rows.Count = 0 Then
                    Call SetGridFindTitoli(dtgAZIO)
                End If

                Dim dvt As DataView = New DataView(dtt)
                dtgAZIO.DataSource = dvt
                dtgAZIO.DataBind()
                For zx = 0 To dtgAZIO.Items.Count - 1
                    For zy = 0 To dtgAZIO.Columns.Count - 2
                        If zy = 4 Then
                            dtgAZIO.Items(zx).Cells(4).Text = Replace(Replace(Replace(dtgAZIO.Items(zx).Cells(4).Text, ",", "#"), ".", ","), "#", ".")
                        End If
                        If zy = 5 Then
                            dtgAZIO.Items(zx).Cells(5).Text = fmtNumbertoDecimal(dtgAZIO.Items(zx).Cells(5).Text)
                        End If
                        If zy = 6 Then
                            dtgAZIO.Items(zx).Cells(6).Text = Replace(Replace(Replace(dtgAZIO.Items(zx).Cells(6).Text, ",", "#"), ".", ","), "#", ".")
                        End If
                        If dvt.Table.Rows(zx).Item("STATO") <> "ATTIVO" Then
                            dtgAZIO.Items(zx).ForeColor = Drawing.Color.Red
                            dtgAZIO.Items(zx).Font.Italic = True
                        End If
                    Next
                Next
                dtgAZIO.Visible = True

            Catch ex As Exception
                Throw ex
            Finally
                dtHis.Dispose()
                .Dispose()
            End Try
        End With
        Session("ISINCODE") = Left(Session("ISINCODE"), 12)
    End Sub



    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("AZAssemblee.aspx")
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("AZCda.aspx")
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("AZNews.aspx")
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("AZConvertibili.aspx")
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("QUOTANNO") = Year(Now)
        Response.Redirect("AZQuotazioni.aspx")
    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Response.Redirect("AZOpCapitale.aspx")
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
        Dim c9 As New WebControls.ButtonColumn
        With c1
            .DataField = "ISINCODE"
            .HeaderText = "CODICE ISIN"
            .SortExpression = "ISINCODE"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(10)
        End With
        'ISINCODERIF,ISINCODE, DENOMINAZIONE,TIPOAZIONE,QUOTATA,QUANTITA,VALNOMINALE,CAPITALE
        With c2
            .DataField = "DENOMINAZIONE"
            .HeaderText = "DENOMINAZIONE"
            .SortExpression = "DENOMINAZIONE"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(30)
        End With
        With c3
            .DataField = "TIPOAZIONE"
            .HeaderText = "TIPO AZIONE"
            .SortExpression = "TIPOAZIONE"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(20)
        End With
        With c4
            .DataField = "QUOTATA2"
            .HeaderText = "QUOT."
            .SortExpression = "QUOTATA"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(5)
        End With
        With c5
            .DataField = "QTA"
            .HeaderText = "QUANTITA'"
            .SortExpression = "QUANTITA"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(10)
        End With
        With c6
            .DataField = "VALNOMINALE"
            .HeaderText = "NOM."
            .SortExpression = "VALNOMINALE"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(5)
        End With
        With c7
            .DataField = "CAP"
            .HeaderText = "CAPITALE SOCIALE"
            .SortExpression = "CAPITALE"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(15)
        End With
        With c9
            .HeaderText = ""
            .Text = "Dettagli"
            .ButtonType = ButtonColumnType.PushButton
            .CommandName = "DETTAGLI"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(5)
        End With
        GridCtrl.Columns.Add(c1)
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)
        GridCtrl.Columns.Add(c6)
        GridCtrl.Columns.Add(c7)
        GridCtrl.Columns.Add(c9)
    End Sub





    Private Sub dtgAZIO_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles dtgAZIO.ItemCommand
        dtgAZIO.DataBind()
        If (e.CommandName = "DETTAGLI") Then
            Session("ISINCODE") = e.Item.Cells(0).Text
            Session("ITEMSELECTINDEX") = e.Item.ItemIndex
            dtgAZIO.SelectedIndex = Session("ITEMSELECTINDEX")
            Response.Redirect("AZTitolo.aspx")
        End If

    End Sub

    Private Sub dtgAZIO_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dtgAZIO.SelectedIndexChanged

    End Sub
End Class
