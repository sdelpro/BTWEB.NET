Imports System.IO

Public Class Download
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents dg1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents lbDIR As System.Web.UI.WebControls.Label
    Protected WithEvents lbEstrazioni As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblINFOVARIE As System.Web.UI.HtmlControls.HtmlAnchor

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Dim m_PathouurceFile As String
    Dim m_request As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        If Not Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
            Session("ERROR") = "Accesso non autorizzato. Effettuare il Login"
            Me.Response.Redirect("Error.aspx")
        End If

        m_request = Request.QueryString("CD")
        Select Case m_request
            Case "3"
                If Session("PROFILO3") Then
                    lbDIR.Text = "  Elenco ESTRAZIONI"
                    m_PathouurceFile = configHelper.pathEstrazioni
                Else
                    Session("ERROR") = "Accesso non autorizzato."
                    Me.Response.Redirect("Error.aspx")
                End If
            Case "5"
                If Session("PROFILO5") Then
                    lbDIR.Text = "  Elenco SCARICHI A"
                    m_PathouurceFile = configHelper.pathScarichiA
                Else
                    Session("ERROR") = "Accesso non autorizzato."
                    Me.Response.Redirect("Error.aspx")
                End If
            Case "6"
                If Session("PROFILO6") Then
                    lbDIR.Text = "  Elenco SCARICHI B"
                    m_PathouurceFile = configHelper.pathScarichiB
                Else
                    Session("ERROR") = "Accesso non autorizzato."
                    Me.Response.Redirect("Error.aspx")
                End If
            Case Else
                Session("ERROR") = "Accesso non autorizzato."
                Me.Response.Redirect("Error.aspx")
        End Select

        If Not Page.IsPostBack Then
            viewstate.Add("sortfield", "Data ultima modifica")
            viewstate.Add("sortdirection", "DESC")
            Call BindGrid()
        End If

    End Sub

    Private Sub BindGrid()

        Dim dv As New DataView(CreateFilesDataSet.Tables("Files"))
        If Not viewstate("sortfield") Is Nothing Then dv.Sort = viewstate("sortfield") & " " & viewstate("sortdirection")
        dg1.DataSource = dv
        dg1.DataBind()

        If dg1.AutoGenerateColumns Then
            Dim m_clm As DataGridColumn
            For Each m_clm In dg1.Columns
                m_clm.SortExpression = m_clm.HeaderText
                ' m_clm.HeaderStyle.HorizontalAlign = HorizontalAlign.Center
            Next
        End If

        'dg1.Columns(1).ItemStyle.HorizontalAlign = HorizontalAlign.Left
        'dg1.Columns(2).ItemStyle.HorizontalAlign = HorizontalAlign.Right
        'dg1.Columns(3).ItemStyle.HorizontalAlign = HorizontalAlign.Center
        'dg1.Columns(4).ItemStyle.HorizontalAlign = HorizontalAlign.Center
        ''dg1.Columns(5).ItemStyle.HorizontalAlign = HorizontalAlign.Left
        'dg1.Columns(2).HeaderStyle.HorizontalAlign = HorizontalAlign.Center


    End Sub


    Public Function CreateFilesDataSet() As DataSet
        Dim oDs As New DataSet
        oDs.DataSetName = "FilesDs"
        oDs.Tables.Add("Files")
        oDs.Tables("Files").Columns.Add("Nome File", System.Type.GetType("System.String"))
        oDs.Tables("Files").Columns.Add("Dimensione KB", System.Type.GetType("System.Decimal"))
        'oDs.Tables("Files").Columns.Add("Data creazione", System.Type.GetType("System.DateTime"))
        'oDs.Tables("Files").Columns.Add("Data ultimo accesso", System.Type.GetType("System.DateTime"))
        oDs.Tables("Files").Columns.Add("Data ultima modifica", System.Type.GetType("System.DateTime"))
        oDs.Tables("Files").Columns.Add("Tipo File", System.Type.GetType("System.String"))


        Dim m_files() As String = Directory.GetFiles(m_PathouurceFile)
        Dim m_file As String

        Dim oRw As DataRow
        For Each m_file In m_files
            oRw = oDs.Tables("Files").NewRow
            'oRw = oDs.Tables("Files").NewRow
            Call FilesInfo(oRw, m_file)
            oDs.Tables("Files").Rows.Add(oRw)
        Next

        Return oDs

    End Function

    Private Sub FilesInfo(ByRef _Rw_ As DataRow, ByVal _File As String)

        Dim objFI As System.IO.FileInfo

        objFI = New System.IO.FileInfo(_File)

        _Rw_.Item("Nome File") = objFI.Name()
        _Rw_.Item("Dimensione KB") = (System.Math.Round(objFI.Length / 1000, 0)).ToString()
        '_Rw_.Item("Data creazione") = objFI.CreationTime.ToString()
        '_Rw_.Item("Data ultimo accesso") = objFI.LastAccessTime.ToString()
        _Rw_.Item("Data ultima modifica") = objFI.LastWriteTime.ToString()
        _Rw_.Item("Tipo File") = objFI.Extension()



    End Sub

    Private Sub dg1_SortCommand(ByVal source As System.Object, ByVal e As System.Web.UI.WebControls.DataGridSortCommandEventArgs) Handles dg1.SortCommand

        viewstate.Add("sortfield", e.SortExpression)
        If viewstate("sortdirection") Is Nothing Then
            viewstate.Add("sortdirection", "ASC")
        Else
            If viewstate("sortdirection") = "ASC" Then
                viewstate("sortdirection") = "DESC"
            Else
                viewstate("sortdirection") = "ASC"
            End If
        End If
        Call BindGrid()
    End Sub


    Private Sub dg1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles dg1.ItemCommand

        If e.CommandName = "Select" Then

            Dim m_e As DataGridItem = CType(e.Item, DataGridItem)
            Dim FullFileName As String = m_PathouurceFile + "\" + m_e.Cells(1).Text
            Dim FileName As String = m_e.Cells(1).Text
            Dim ContentType As String = m_e.Cells(4).Text

            Select Case ContentType
                Case ".zip"
                    ContentType = "application/zip"
                Case ".rar"
                    ContentType = "application/rar"
                Case ".xls"
                    ContentType = "application/xls"
                Case ".doc"
                    ContentType = "application/doc"
                Case ".txt"
                    ContentType = "text/plain"
                Case Else
                    ContentType = Replace(ContentType, ".", "")
            End Select

            Dim MyFileInfo As FileInfo = New FileInfo(FullFileName)
            Dim StartPos As Long
            Dim FileSize As Long = MyFileInfo.Length

            Response.Clear()
            Response.ContentType = ContentType
            Response.AppendHeader("Content-Disposition", "attachment;filename=" + FileName)
            Response.WriteFile(FullFileName, StartPos, FileSize)
            Response.Flush()
            Response.Close()


            'Response.AppendHeader("content-disposition", "attachment; filename=" + m_PathouurceFile + "\" + m_e.Cells(1).Text)
            'Response.ContentType = m_e.Cells(6).Text
            'Response.WriteFile(m_PathouurceFile + "\" + m_e.Cells(1).Text)
        End If

    End Sub

End Class






'Private Sub FileList(Optional ByVal _order As Integer = 0)

'    phFile.Controls.Clear()

'    Dim strOutput As String
'    strOutput = _order & " <table width=""100%"" cellpadding=0 cellspacing=0 border = 1 bordercolor=""Gainsboro"">"
'    strOutput += "<tr style=""FONT-WEIGHT: bold; FONT-SIZE: 10pt; FONT-FAMILY: Verdana; BACKGROUND-COLOR: gainsboro"">"
'    strOutput += "<td>"
'    strOutput += "Archivio"
'    strOutput += "</td>"
'    strOutput += "<td align=""center"">"
'    strOutput += "Dimensioni"
'    strOutput += "</td>"
'    strOutput += "<td align=""center"">"
'    strOutput += "Data Creazione"
'    strOutput += "</td>"
'    strOutput += "<td align=""center"">"
'    strOutput += "Data ultimo accesso"
'    strOutput += "</td>"
'    strOutput += "<td align=""center"">"
'    strOutput += "Data ultima modifica"
'    strOutput += "</td>"
'    strOutput += "<td align=""center"">"
'    strOutput += "Tipo file"
'    strOutput += "</td>"
'    strOutput += "<td align=""center"">"
'    strOutput += "Tipo file"
'    strOutput += "</td>"
'    strOutput += "</tr>"
'    phFile.Controls.Add(New LiteralControl(strOutput))

'    Dim m_files() As String = Directory.GetFiles(m_PathouurceFile)
'    Dim m_file As String

'    m_files.Sort(m_files, FilesInfo(_order))

'    For Each m_file In m_files
'        FileInfoOutput(m_file)

'    Next
'    phFile.Controls.Add(New LiteralControl("</table>"))
'End Sub

'Private Function FilesInfo(ByVal _info As Integer) As String()

'    Dim m_files() As String = Directory.GetFiles(m_PathouurceFile)
'    Dim m_file As String

'    Dim m_InfoFiles() As String = m_files

'    m_files.Sort(m_files)
'    Dim Counter As Integer = 0
'    Dim objFI As System.IO.FileInfo
'    For Each m_file In m_files
'        objFI = New System.IO.FileInfo(m_file)
'        Select Case _info
'            Case 0
'                m_InfoFiles(Counter) = objFI.Name()
'            Case 1
'                m_InfoFiles(Counter) = objFI.Length.ToString()
'            Case 2
'                m_InfoFiles(Counter) = objFI.CreationTime.ToString()
'            Case 3
'                m_InfoFiles(Counter) = objFI.LastAccessTime.ToString()
'            Case 4
'                m_InfoFiles(Counter) = objFI.LastWriteTime.ToString()
'            Case 5
'                m_InfoFiles(Counter) = objFI.Extension()
'        End Select
'        Counter += 1
'    Next
'    Return m_InfoFiles
'End Function


'Private Sub FileInfoOutput(ByVal _file)

'    Dim objFI As System.IO.FileInfo = New System.IO.FileInfo(_file)

'    Dim _download As New btDownloat
'    _download.Text = "Scarica File"
'    _download.Width = Unit.Percentage(100)
'    _download.FullFileName = objFI.FullName()
'    _download.ContentType = objFI.Extension()

'    AddHandler _download.Click, AddressOf Me.DownloadFile

'    Dim strOutput As String = "<tr style=""FONT-SIZE: 10pt; FONT-FAMILY: Verdana; "">"
'    strOutput += "<td>"
'    strOutput += objFI.Name()
'    strOutput += "</td align=""center"">"
'    strOutput += "<td align=""right"">"
'    strOutput += objFI.Length.ToString() + " byte"
'    strOutput += "</td>"
'    strOutput += "<td align=""center"">"
'    strOutput += objFI.CreationTime.ToString()
'    strOutput += "</td>"
'    strOutput += "<td align=""center"">"
'    strOutput += objFI.LastAccessTime.ToString()
'    strOutput += "</td>"
'    strOutput += "<td align=""center"">"
'    strOutput += objFI.LastWriteTime.ToString()
'    strOutput += "</td>"
'    strOutput += "<td align=""center"">"
'    strOutput += objFI.Extension()
'    strOutput += "</td>"
'    strOutput += "<td align=""center"">"
'    phFile.Controls.Add(New LiteralControl(strOutput))
'    phFile.Controls.Add(_download)
'    strOutput = "</td>"
'    strOutput += "</tr>"
'    phFile.Controls.Add(New LiteralControl(strOutput))
'End Sub

'Private Sub DownloadFile(ByVal sender As System.Object, ByVal e As System.EventArgs)
'    Response.AppendHeader("content-disposition", "attachment; filename=" + sender.FullFileName)
'    Response.ContentType = sender.ContentType
'    Response.WriteFile(sender.FullFileName)
'    Response.Flush()
'    Response.Close()
'End Sub

'Private Sub ddlOrder_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ddlOrder.SelectedIndexChanged
'    Call FileList(ddlOrder.SelectedValue)
'End Sub

