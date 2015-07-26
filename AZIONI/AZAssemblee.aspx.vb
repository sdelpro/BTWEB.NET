Public Class AZAssemblee
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents tbAss As System.Web.UI.WebControls.Table
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
        Dim parIDAss As String = Server.HtmlDecode(Request("IDASS"))
        Dim parDen As String = Server.HtmlDecode(Request("DENOMINAZIONE"))
        Dim dt As New DataTable
        Dim clt As New AccessDBManager
        Dim zx As Integer = 0
        Dim zxR As Integer = 0
        Dim sql As String = "SELECT A.*,B.DENOMINAZIONE FROM ASSEMBLEE A, TITOLOAZIONARIO B WHERE A.ISINCODE = '" & Session("ISINCODE") & "' AND A.ISINCODE=B.ISINCODE ORDER BY A.DATADEF DESC"
        lblLastLogin.Text = Session("LASTLOGIN")
        With clt
            Call .ReadGenericQuery(dt, sql)
            If dt.Rows.Count > 0 Then
                tbAss.Rows(0).Cells(0).Text() = "CODICE ISIN"
                tbAss.Rows(0).Cells(1).Text() = dt.Rows(0).Item("ISINCODE")
                tbAss.Rows(1).Cells(0).Text() = "DENOMINAZIONE"
                tbAss.Rows(1).Cells(1).Text() = dt.Rows(0).Item("DENOMINAZIONE")
                tbAss.Rows(2).Cells(0).Text() = ""
                zxR = 3
                For zx = 0 To dt.Rows.Count - 1
                    Call CreaTabella()
                    tbAss.Rows(zxR).Cells(0).Text() = "TIPO ASSEMBLEA"
                    Select Case dt.Rows(zx).Item("TIPO")
                        Case "s."
                            tbAss.Rows(zxR).Cells(1).Text() = "STRAORDINARIA"
                        Case "o."
                            tbAss.Rows(zxR).Cells(1).Text() = "ORDINARIA"
                        Case "o.s."
                            tbAss.Rows(zxR).Cells(1).Text() = "ORDINARIA/STRAORDINARIA"
                    End Select
                    tbAss.Rows(zxR + 1).Cells(0).Text() = "DATA ASSEMBLEA"
                    tbAss.Rows(zxR + 1).Cells(1).Text() = IIf(dt.Rows(zx).Item("DATADEF") & "" = "", ".", dt.Rows(zx).Item("DATADEF"))
                    tbAss.Rows(zxR + 1).Cells(2).Text() = "1° CONVOCAZIONE"
                    tbAss.Rows(zxR + 1).Cells(3).Text() = IIf(dt.Rows(zx).Item("DATA1") & "" = "", ".", dt.Rows(zx).Item("DATA1"))
                    tbAss.Rows(zxR + 1).Cells(4).Text() = "2° CONVOCAZIONE"
                    tbAss.Rows(zxR + 1).Cells(5).Text() = IIf(dt.Rows(zx).Item("DATA2") & "" = "", ".", dt.Rows(zx).Item("DATA2"))
                    tbAss.Rows(zxR + 1).Cells(6).Text() = "3° CONVOCAZIONE"
                    tbAss.Rows(zxR + 1).Cells(7).Text() = IIf(dt.Rows(zx).Item("DATA3") & "" = "", ".", dt.Rows(zx).Item("DATA3"))
                    tbAss.Rows(zxR + 2).Cells(0).Text() = "TESTO"
                    tbAss.Rows(zxR + 3).Cells(0).Text() = Replace(dt.Rows(zx).Item("TESTO"), Chr(13), "<br>")
                    zxR = zxR + 4
                Next zx
            Else
                Response.Redirect("AZTitolo.aspx")
            End If
        End With
    End Sub

    Private Sub CreaTabella()
        Dim zx As Int16
        Dim tr As TableRow
        Dim tch As TableCell

        'riga 1
        tr = New TableRow
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Gainsboro
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = System.Drawing.Color.Black
        tch.Width = Unit.Percentage(25)
        tch.ColumnSpan = 2
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Transparent
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = Color.Black
        tch.Width = Unit.Percentage(25)
        tch.ColumnSpan = 2
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing

        tbAss.Rows.Add(tr)
        tr = Nothing

        'riga 2
        tr = New TableRow
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Gainsboro
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = System.Drawing.Color.Black
        tch.Width = Unit.Percentage(14)
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Transparent
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = Color.Black
        tch.Width = Unit.Percentage(11)
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Gainsboro
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = System.Drawing.Color.Black
        tch.Width = Unit.Percentage(14)
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Transparent
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = Color.Black
        tch.Width = Unit.Percentage(11)
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Gainsboro
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = System.Drawing.Color.Black
        tch.Width = Unit.Percentage(14)
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Transparent
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = Color.Black
        tch.Width = Unit.Percentage(11)
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Gainsboro
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = System.Drawing.Color.Black
        tch.Width = Unit.Percentage(14)
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Transparent
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = Color.Black
        tch.Width = Unit.Percentage(11)
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing

        tbAss.Rows.Add(tr)
        tr = Nothing

        'riga(3)
        tr = New TableRow
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Gainsboro
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = System.Drawing.Color.Black
        tch.Width = Unit.Percentage(25)
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing

        tbAss.Rows.Add(tr)
        tr = Nothing

        'riga(4)
        tr = New TableRow
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Transparent
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = System.Drawing.Color.Black
        tch.Width = Unit.Percentage(100)
        tch.ColumnSpan = 8
        tch.Text = ""
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing

        tbAss.Rows.Add(tr)
        tr = Nothing

    End Sub

End Class
