Public Class AZOpCapitale
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents tbOp As System.Web.UI.WebControls.Table
    Protected WithEvents lblTitoloForm As System.Web.UI.WebControls.Label
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblINFOVARIE As System.Web.UI.WebControls.LinkButton
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
        Dim clt As New AccessDBManager()
        Dim zx As Integer = 0
        Dim zxR As Integer = 0
        Dim sql As String
        lblLastLogin.Text = Session("LASTLOGIN")

        sql = "SELECT A.*, CASE A.STATO WHEN 'PREANNUNCIATO' THEN 0 WHEN 'APPROVATO' THEN 1 WHEN 'IN CORSO DA' THEN 2 WHEN 'STORICIZZATO' THEN 3 END AS ST ,B.DENOMINAZIONE FROM OPCAPITALE A, TITOLOAZIONARIO B WHERE A.ISINCODE = '" & Session("ISINCODE") & "' AND A.ISINCODE=B.ISINCODE ORDER BY ST,  DATASTOR DESC"
        With clt
            Call .ReadGenericQuery(dt, sql)
            If dt.Rows.Count > 0 Then
                tbOp.Rows(0).Cells(0).Text() = "CODICE ISIN"
                tbOp.Rows(0).Cells(1).Text() = dt.Rows(0).Item("ISINCODE")
                tbOp.Rows(1).Cells(0).Text() = "DENOMINAZIONE"
                tbOp.Rows(1).Cells(1).Text() = dt.Rows(0).Item("DENOMINAZIONE")
                zxR = 2
                For zx = 0 To dt.Rows.Count - 1
                    Call CreaTabella()
                    tbOp.Rows(zxR).Cells(0).Text() = "STATO"
                    tbOp.Rows(zxR).Cells(1).Text() = IIf(dt.Rows(zx).Item("STATO") & "" = "", ".", dt.Rows(zx).Item("STATO"))
                    tbOp.Rows(zxR).Cells(2).Text() = "DATA INIZIO"
                    tbOp.Rows(zxR).Cells(3).Text() = IIf(dt.Rows(zx).Item("DATAINIZIO") & "" = "", ".", dt.Rows(zx).Item("DATAINIZIO"))
                    tbOp.Rows(zxR).Cells(4).Text() = "DATA FINE"
                    tbOp.Rows(zxR).Cells(5).Text() = IIf(dt.Rows(zx).Item("DATAFINE") & "" = "", ".", dt.Rows(zx).Item("DATAFINE"))
                    tbOp.Rows(zxR).Cells(6).Text() = "DATA STORICIZZAZIONE"
                    tbOp.Rows(zxR).Cells(7).Text() = IIf(dt.Rows(zx).Item("DATASTOR") & "" = "", ".", dt.Rows(zx).Item("DATASTOR"))
                    tbOp.Rows(zxR + 1).Cells(0).Text() = "TESTO COMPLETO DELL'OPERAZIONE"
                    tbOp.Rows(zxR + 2).Cells(0).Text() = Replace(dt.Rows(zx).Item("TESTO"), Chr(13), "<br>")
                    tbOp.Rows(zxR + 3).Cells(0).Text() = "TABELLA DI PARITA'"
                    If dt.Rows(zx).Item("PARITA") Is System.DBNull.Value Then
                        tbOp.Rows(zxR + 4).Cells(0).Text() = "nessuna"
                    Else
                        If dt.Rows(zx).Item("PARITA") = "" Then
                            tbOp.Rows(zxR + 4).Cells(0).Text() = "nessuna"
                        Else
                            tbOp.Rows(zxR + 4).Cells(0).Text() = Replace(dt.Rows(zx).Item("PARITA") & "", Chr(13), "<br>")
                        End If
                    End If
                    'tbOp.Rows(zxR + 4).Cells(0).Text() = IIf(dt.Rows(zx).Item("PARITA") Is System.DBNull.Value, "nessuna", Replace(dt.Rows(zx).Item("PARITA") & "", Chr(13), "<br>"))
                    zxR = zxR + 5
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
        tch.CssClass = "etichetta"
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tch = New TableCell
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tch = New TableCell
        tch.CssClass = "etichetta"
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tch = New TableCell
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tch = New TableCell
        tch.CssClass = "etichetta"
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tch = New TableCell
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tch = New TableCell
        tch.CssClass = "etichetta"
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tch = New TableCell
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tbOp.Rows.Add(tr)
        tr = Nothing

        'riga 2
        tr = New TableRow
        tch = New TableCell
        tch.CssClass = "etichetta"
        tch.ColumnSpan = 8
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tbOp.Rows.Add(tr)
        tr = Nothing

        'riga(3)
        tr = New TableRow
        tch = New TableCell
        tch.ColumnSpan = 8
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tbOp.Rows.Add(tr)
        tr = Nothing

        'riga 4
        tr = New TableRow
        tch = New TableCell
        tch.CssClass = "etichetta"
        tch.ColumnSpan = 8
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tbOp.Rows.Add(tr)
        tr = Nothing

        'riga(5)
        tr = New TableRow
        tch = New TableCell
        tch.ColumnSpan = 8
        tch.Text = ""
        tr.Cells.Add(tch)
        tch = Nothing

        tbOp.Rows.Add(tr)
        tr = Nothing

    End Sub



End Class
