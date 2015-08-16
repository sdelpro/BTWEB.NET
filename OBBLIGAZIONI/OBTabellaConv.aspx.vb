Public Class OBTabellaConv
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents tbConv As System.Web.UI.WebControls.Table
    Protected WithEvents lblSearch As System.Web.UI.WebControls.Label
    Protected WithEvents imgWait As System.Web.UI.WebControls.Image

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
        Dim zx As Int16 = 0
        Dim zy As Int16 = 0
        Dim sql = "SELECT * FROM TABCONV WHERE ISINCODE = '" & Session("ISINCODE") & "'"

        If Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
            With tbConv
                For zy = 0 To 12
                    Dim tr As New TableRow
                    Dim tch As New TableCell
                    Select Case zy
                        Case 0
                            tch.Text = "ANNO"
                        Case 1
                            tch.Text = "GEN"
                        Case 2
                            tch.Text = "FEB"
                        Case 3
                            tch.Text = "MAR"
                        Case 4
                            tch.Text = "APR"
                        Case 5
                            tch.Text = "MAG"
                        Case 6
                            tch.Text = "GIU"
                        Case 7
                            tch.Text = "LUG"
                        Case 8
                            tch.Text = "AGO"
                        Case 9
                            tch.Text = "SET"
                        Case 10
                            tch.Text = "OTT"
                        Case 11
                            tch.Text = "NOV"
                        Case 12
                            tch.Text = "DIC"
                    End Select
                    tch.BackColor  = Color.FromArgb(255, 0, 84, 125)
                    tch.Font.Name = "Tahoma"
                    tch.Font.Bold = True
                    tch.Font.Size = FontUnit.Point(10)
                    tch.BorderStyle = BorderStyle.Solid
                    tch.ForeColor = Color.White
                    tch.BorderWidth = Unit.Pixel(1)
                    tch.BorderColor = Color.FromArgb(255, 0, 84, 125)
                    tr.Cells.Add(tch)

                    If zy = 0 Then
                        For zx = 1991 To 2100
                            Dim tc As New TableCell
                            tc.BackColor  = Color.FromArgb(255, 0, 84, 125)
                            tc.Text = Right(CType(zx, String), 2)
                            tc.Font.Name = "Tahoma"
                            tc.Font.Bold = True
                            tc.ForeColor = Color.White
                            tc.Font.Size = FontUnit.Point(10)
                            tc.BorderStyle = BorderStyle.Solid
                            tc.BorderWidth = Unit.Pixel(1)
                            tc.BorderColor = Color.FromArgb(255, 0, 84, 125)
                            tr.Cells.Add(tc)
                        Next
                    Else
                        For zx = 1991 To 2100
                            Dim tc As New TableCell
                            tc.BackColor = System.Drawing.Color.White
                            tc.Text = "."
                            tc.Font.Name = "Tahoma"
                            tc.Font.Size = FontUnit.Point(10)
                            TC.ForeColor = Color.White
                            tc.BorderStyle = BorderStyle.Solid
                            tc.BorderWidth = Unit.Pixel(1)
                            tc.BorderColor = Color.LightGray
                            tr.Cells.Add(tc)
                        Next
                    End If
                    .Rows.Add(tr)
                Next
            End With

            Dim dt As New DataTable
            Dim clt As New AccessDBManager()
            With clt
                Call .ReadGenericQuery(dt, sql)
                If dt.Rows.Count > 0 Then
                    For zx = 0 To dt.Rows.Count - 1
                        tbConv.Rows(CType(dt.Rows(zx).Item("MESE"), Int16)).Cells(CType(dt.Rows(zx).Item("ANNO"), Int16) - 1990).ForeColor = Color.Red
                        tbConv.Rows(CType(dt.Rows(zx).Item("MESE"), Int16)).Cells(CType(dt.Rows(zx).Item("ANNO"), Int16) - 1990).BackColor = Color.Red
                        'tbConv.Rows(CType(dt.Rows(zx).Item("MESE"), Int16)).Cells(CType(dt.Rows(zx).Item("ANNO"), Int16) - 1990).BorderColor = Color.Red
                    Next
                End If
            End With



        End If
    End Sub

End Class
