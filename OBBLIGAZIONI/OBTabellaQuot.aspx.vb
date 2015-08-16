Public Class OBTabellaQuot
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents tbConv As System.Web.UI.WebControls.Table

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
        'Dim sql = "SELECT * FROM QUOTOBBLIGAZIONI WHERE ISINCODE = '" & Session("ISINCODE") & "' AND ANNO = '" & Session("QUOTANNO") & "'"
        Dim sql = "SELECT MESE,CAST(COMPENSO AS decimal(10,4)) as COMP1,CAST(MINIMO AS decimal(10,4)) as MIN1,CAST(MASSIMO AS decimal(10,4)) as MAX1 FROM QUOTOBBLIGAZIONI WHERE ISINCODE = '" & Session("ISINCODE") & "' AND ANNO = '" & Session("QUOTANNO") & "'"
        'MESE,CAST(COMPENSO AS decimal(10,4)) as COMP1,CAST(MINIMO AS decimal(10,4)) as MIN1,CAST(MASSIMO AS decimal(10,4)) as MAX1
        If Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
            With tbConv
                For zy = 0 To 12
                    Dim tr As New TableRow
                    Dim tch As New TableCell
                    Select Case zy
                        Case 0
                            tch.Text = "MESE"
                        Case 1
                            tch.Text = "GENNAIO"
                        Case 2
                            tch.Text = "FEBBRAIO"
                        Case 3
                            tch.Text = "MARZO"
                        Case 4
                            tch.Text = "APRILE"
                        Case 5
                            tch.Text = "MAGGIO"
                        Case 6
                            tch.Text = "GIUGNO"
                        Case 7
                            tch.Text = "LUGLIO"
                        Case 8
                            tch.Text = "AGOSTO"
                        Case 9
                            tch.Text = "SETTEMBRE"
                        Case 10
                            tch.Text = "OTTOBRE"
                        Case 11
                            tch.Text = "NOVEMBRE"
                        Case 12
                            tch.Text = "DICEMBRE"
                    End Select
                    tch.BackColor  = Color.FromArgb(255, 0, 84, 125)
                    tch.Font.Name = "Tahoma"
                    tch.Font.Bold = True
                    tch.Font.Size = FontUnit.Point(10)
                    tch.BorderStyle = BorderStyle.Solid
                    tch.ForeColor = Color.White
                    tch.BorderWidth = Unit.Pixel(1)
                    tch.BorderColor = Color.FromArgb(255, 0, 84, 125)
                    tch.Width = Unit.Pixel(100)
                    tr.Cells.Add(tch)

                    If zy = 0 Then
                        For zx = 0 To 2
                            Dim tc As New TableCell
                            tc.BackColor  = Color.FromArgb(255, 0, 84, 125)
                            Select Case zx
                                Case 0
                                    tc.Text = "     COMPENSO      "
                                Case 1
                                    tc.Text = "  VALORE MINIMO    "
                                Case 2
                                    tc.Text = "  VALORE MASSIMO   "
                                    'Case 3
                                    '    tc.Text = "COMPENSO PRECEDENTE"
                            End Select

                            tc.Font.Name = "Tahoma"
                            tc.Font.Bold = True
                            tc.ForeColor = Color.White
                            tc.Font.Size = FontUnit.Point(10)
                            tc.BorderStyle = BorderStyle.Solid
                            tc.BorderWidth = Unit.Pixel(1)
                            tc.BorderColor = Color.FromArgb(255, 0, 84, 125)
                            tc.HorizontalAlign = HorizontalAlign.Center
                            tc.Width = Unit.Pixel(100)
                            tr.Cells.Add(tc)
                        Next
                    Else
                        For zx = 0 To 2
                            Dim tc As New TableCell
                            tc.BackColor = System.Drawing.Color.White
                            tc.Text = "."
                            tc.Font.Name = "Tahoma"
                            tc.Font.Size = FontUnit.Point(10)
                            tc.ForeColor = Color.White
                            tc.BorderStyle = BorderStyle.Solid
                            tc.BorderWidth = Unit.Pixel(1)
                            tc.BorderColor = Color.LightGray
                            tc.HorizontalAlign = HorizontalAlign.Center
                            tc.Width = Unit.Pixel(100)
                            tr.Cells.Add(tc)
                        Next
                    End If
                    .Rows.Add(tr)
                Next
            End With

            Dim dt As New DataTable
            Dim intMese As Int16
            Dim clt As New AccessDBManager()
            With clt
                Call .ReadGenericQuery(dt, sql)
                If dt.Rows.Count > 0 Then
                    For zx = 0 To dt.Rows.Count - 1
                        Select Case dt.Rows(zx).Item("MESE") & ""
                            Case "GENNAIO"
                                intMese = 1
                            Case "FEBBRAIO"
                                intMese = 2
                            Case "MARZO"
                                intMese = 3
                            Case "APRILE"
                                intMese = 4
                            Case "MAGGIO"
                                intMese = 5
                            Case "GIUGNO"
                                intMese = 6
                            Case "LUGLIO"
                                intMese = 7
                            Case "AGOSTO"
                                intMese = 8
                            Case "SETTEMBRE"
                                intMese = 9
                            Case "OTTOBRE"
                                intMese = 10
                            Case "NOVEMBRE"
                                intMese = 11
                            Case "DICEMBRE"
                                intMese = 12
                        End Select
                        tbConv.Rows(intMese).Cells(1).Text = "" & dt.Rows(zx).Item("COMP1")
                        tbConv.Rows(intMese).Cells(2).Text = "" & dt.Rows(zx).Item("MIN1")
                        tbConv.Rows(intMese).Cells(3).Text = "" & dt.Rows(zx).Item("MAX1")
                        'tbConv.Rows(intMese).Cells(4).Text = dt.Rows(zx).Item("COMPPREC")

                        tbConv.Rows(intMese).Cells(1).ForeColor = Drawing.Color.Black
                        tbConv.Rows(intMese).Cells(2).ForeColor = Drawing.Color.Black
                        tbConv.Rows(intMese).Cells(3).ForeColor = Drawing.Color.Black
                        'tbConv.Rows(intMese).Cells(4).ForeColor = Drawing.Color.Black
                    Next
                End If
            End With
        End If
    End Sub

End Class
