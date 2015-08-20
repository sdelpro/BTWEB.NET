Public Class ControlPanel
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents btnGU As System.Web.UI.WebControls.Button
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents btnVR As System.Web.UI.WebControls.Button
    Protected WithEvents btnST As System.Web.UI.WebControls.Button
    Protected WithEvents dtgOBB As System.Web.UI.WebControls.DataGrid
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents lbDIR As System.Web.UI.WebControls.Label
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblINFOVARIE As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lbEstrazioni As System.Web.UI.HtmlControls.HtmlAnchor

    'NOTA: la seguente dichiarazione è richiesta da Progettazione Web Form.
    'Non spostarla o rimuoverla.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: questa chiamata al metodo è richiesta da Progettazione Web Form.
        'Non modificarla nell'editor del codice.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.Response.CacheControl = "no-cache"
        Me.Response.AddHeader("Pragma", "no-cache")
        Me.Response.Expires = -1

        'If Session("ADMIN_VALIDATE") = "ABILITATO_GEF" Then
        btnGU.Visible = True
        btnST.Visible = True
        btnVR.Visible = True
        'Else
        '    btnGU.Visible = False
        '    btnST.Visible = False
        '    btnVR.Visible = False
        'End If

        Dim clt As New AccessDBManager()
        Dim sql As String = "SELECT * FROM CLIENTI ORDER BY USERNAME"
        Dim dv As New DataView
        Dim dt As New DataTable
        If Not Session("TYPE_GRID") = "FINDQUOT" Then Session("QUOTANNO") = Year(Now)

        With clt
            Call .ReadGenericQuery(dt, sql)

            Call SetGrid(dtgOBB)

            dv = New DataView(dt)
            dtgOBB.DataSource = dv
            dtgOBB.DataBind()
            dtgOBB.Visible = True
            .Dispose()
        End With


    End Sub
    Private Sub SetGrid(ByVal GridCtrl As WebControls.DataGrid)

        With GridCtrl
            .Columns.Clear()
            .ControlStyle.Width.Percentage(100)
        End With

        Dim c0 As New WebControls.BoundColumn
        Dim c1 As New WebControls.BoundColumn
        Dim c2 As New WebControls.BoundColumn
        Dim c3 As New WebControls.BoundColumn
        Dim c4 As New WebControls.BoundColumn
        Dim c5 As New WebControls.ButtonColumn

        With c0
            .DataField = "Denominazione"
            .HeaderText = "Denominazione"
            .SortExpression = "Denominazione"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(60)
        End With

        With c1
            .DataField = "USERNAME"
            .HeaderText = "Utente"
            .SortExpression = "USERNAME"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(20)
        End With

        With c2
            .DataField = "PROFILO1"
            .HeaderText = "AZ"
            .SortExpression = "PROFILO1"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(5)
        End With

        With c3
            .DataField = "PROFILO2"
            .HeaderText = "OB"
            .SortExpression = "PROFILO2"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(5)
        End With

        With c3
            .DataField = "CONNESSIONE"
            .HeaderText = "OB"
            .SortExpression = "CONNESSIONE"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(5)
        End With

        With c5
            .HeaderText = ""
            .Text = "I"
            .ButtonType = ButtonColumnType.PushButton
            .CommandName = "CONNESSIONE"
            .ItemStyle.Font.Size = FontUnit.Point(10)
            .ItemStyle.Width = Unit.Percentage(5)
        End With

        GridCtrl.Columns.Add(c0)
        GridCtrl.Columns.Add(c1)
        GridCtrl.Columns.Add(c2)
        GridCtrl.Columns.Add(c3)
        GridCtrl.Columns.Add(c4)
        GridCtrl.Columns.Add(c5)

    End Sub

    Private Sub btnGU_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGU.Click
        btnGU.BackColor = System.Drawing.Color.Red
        btnST.BackColor = System.Drawing.Color.Silver
        btnVR.BackColor = System.Drawing.Color.Silver
        Dim cdt As New AccessDBManager()
        Call cdt.UpdateGenericTable(" UPDATE CLIENTI SET CONNESSIONE = 'INATTIVA' ")
        cdt.Dispose()

    End Sub

    Private Sub btnST_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnST.Click
        btnGU.BackColor = System.Drawing.Color.Silver
        btnST.BackColor = System.Drawing.Color.Red
        btnVR.BackColor = System.Drawing.Color.Silver
    End Sub

    Private Sub btnVR_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnVR.Click
        btnGU.BackColor = System.Drawing.Color.Silver
        btnST.BackColor = System.Drawing.Color.Silver
        btnVR.BackColor = System.Drawing.Color.Red
    End Sub
End Class
