Public Class AZDividendi
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents lblTitoloForm As System.Web.UI.WebControls.Label
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents tbDiv As System.Web.UI.WebControls.Table
    Protected WithEvents tbDiv2 As System.Web.UI.WebControls.Table
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

        Dim sql As String = "SELECT *,CASE STATO WHEN 'Preannunciato' then 0  WHEN 'Deliberato' THEN 1 END AS DORD  FROM DIVAZIONI WHERE ISINCODE = '" & Session("ISINCODE") & "' ORDER BY DORD,DATAPAG DESC "
        Dim sqlTit As String = "SELECT DENOMINAZIONE, TIPOAZIONE FROM TITOLOAZIONARIO WHERE ISINCODE = '" & Session("ISINCODE") & "' "


        Dim dt As New DataTable
        Dim dtTit As New DataTable
        Dim clt As New AccessDBManager
        Dim cltTit As New AccessDBManager
        Dim zx As Int16 = 0
        lblLastLogin.Text = Session("LASTLOGIN")

        cltTit.ReadGenericQuery(dtTit, sqlTit)
        tbDiv.Rows(0).Cells(0).Text = "CODICE ISIN"
        tbDiv.Rows(0).Cells(1).Text = Session("ISINCODE")
        tbDiv.Rows(1).Cells(0).Text = "DENOMINAZIONE"
        tbDiv.Rows(1).Cells(1).Text = dtTit.Rows(0).Item("DENOMINAZIONE")
        tbDiv.Rows(2).Cells(0).Text = "TIPO AZIONE"
        tbDiv.Rows(2).Cells(1).Text = dtTit.Rows(0).Item("TIPOAZIONE")

        clt.ReadGenericQuery(dt, sql)
        If dt.Rows.Count = 0 Then
            Response.Redirect("AZTitolo.aspx")
        End If
        For zx = 0 To dt.Rows.Count - 1
            Call InsertData(dt.Rows(zx))
        Next

    End Sub

    Private Sub InsertData(ByVal _Row As DataRow)

        Dim tr As TableRow
        Dim tch As TableCell
        Dim radioString As String

        With tbDiv

            tr = New TableRow
            tch = New TableCell
            tch.CssClass = "etichetta"
            tch.Text = "STATO"
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.Text = IIf(_Row.Item("STATO") & "" = "", ".", _Row.Item("STATO") & "")  '_Row.Item("STATO") & ""
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.Text = "VALUTA"
            tch.CssClass = "etichetta"
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.Text = IIf(_Row.Item("VAL") & "" = "", ".", _Row.Item("VAL") & "")  '_Row.Item("VAL") & ""
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.Text = "PAGAMENTO"
            tch.CssClass = "etichetta"
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            If _Row.Item("DATAPAG") & "" = "" Or _Row.Item("DATAPAG") & "" = "1/1/1900" Or _Row.Item("DATAPAG") & "" = "01/01/1900" Then
                tch.Text = "."
            Else
                If Left(_Row.Item("DATAPAG"), 6) = "01/01/" Or Left(_Row.Item("DATAPAG"), 4) = "1/1/" Then
                    tch.Text() = Right(_Row.Item("DATAPAG"), 4)
                Else
                    tch.Text() = _Row.Item("DATAPAG")
                End If
            End If
            'tch.Text = IIf(_Row.Item("DATAPAG") & "" = "" Or _Row.Item("DATAPAG") & "1/1/1900" = "" Or _Row.Item("DATAPAG") & "" = "01/01/1900", ".", _Row.Item("DATAPAG") & "") '_Row.Item("DATAPAG") & ""
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.Text = "STACCO"
            tch.CssClass = "etichetta"
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.Text = IIf(_Row.Item("DATASTACCO") & "" = "", ".", _Row.Item("DATASTACCO") & "")  '_Row.Item("DATASTACCO") & ""
            tr.Cells.Add(tch)
            tch = Nothing

            .Rows.Add(tr)
            tr = Nothing

            '*********************************

            tr = New TableRow
            tch = New TableCell
            tch.Text = "LORDO"
            tch.CssClass = "etichetta"
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.Text = IIf(_Row.Item("LORDO") & "" = "", ".", _Row.Item("LORDO") & "")  '_Row.Item("LORDO") & ""
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.Text = "ALIQUOTA %"
            tch.CssClass = "etichetta"
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            If _Row.Item("ALIQUOTA") & "" = "" Then
                tch.Text = "."
            Else
                If _Row.Item("ALIQUOTA") & "" = "-1" Then
                    tch.Text = "0"
                Else
                    tch.Text = _Row.Item("ALIQUOTA") & ""
                End If
            End If
            'tch.Text = IIf(_Row.Item("ALIQUOTA") & "" = "", ".", _Row.Item("ALIQUOTA") & "")  '_Row.Item("ALIQUOTA") & ""
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.CssClass = "etichetta"
            tch.Text = "NETTO"
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.Text = IIf(_Row.Item("NETTO") & "" = "", ".", _Row.Item("NETTO") & "")
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.CssClass = "etichetta"
            tch.Text = "CEDOLA"
            tr.Cells.Add(tch)
            tch = Nothing

            tch = New TableCell
            tch.Text = IIf(_Row.Item("NUMCEDOLA") & "" = "", ".", _Row.Item("NUMCEDOLA") & "")
            tr.Cells.Add(tch)
            tch = Nothing

            .Rows.Add(tr)
            tr = Nothing

            '*******************************************************
            tr = New TableRow

            radioString = "<INPUT type=""radio"" value=""off"" " & IIf(_Row.Item("STRAORDINARIO") & "" = "SI", "CHECKED", "") & "> " & "STRAORDINARIO"
            tch = New TableCell
            tch.Text = radioString
            tr.Cells.Add(tch)
            tch = Nothing

            radioString = "<INPUT type=""radio"" value=""off"" " & IIf(_Row.Item("ORDINARIO") & "" = "SI", "CHECKED", "") & "> " & "ORDINARIO"
            tch = New TableCell
            tch.Text = radioString
            tr.Cells.Add(tch)
            tch = Nothing

            radioString = "<INPUT type=""radio"" value=""off"" " & IIf(_Row.Item("TIPONETTO") & "" = "SI", "CHECKED", "") & "> " & "NETTO"
            tch = New TableCell
            tch.Text = radioString
            tr.Cells.Add(tch)
            tch = Nothing

            radioString = "<INPUT type=""radio"" value=""off"" " & IIf(_Row.Item("ACCONTO") & "" = "SI", "CHECKED", "") & "> " & "ACCONTO"
            tch = New TableCell
            tch.Text = radioString
            tr.Cells.Add(tch)
            tch = Nothing

            radioString = "<INPUT type=""radio"" value=""off"" " & IIf(_Row.Item("SALDO") & "" = "SI", "CHECKED", "") & "> " & "SALDO"
            tch = New TableCell
            tch.Text = radioString
            tr.Cells.Add(tch)
            tch = Nothing

            radioString = "<INPUT type=""radio"" value=""off"" " & IIf(_Row.Item("NONCONFR") & "" = "SI", "CHECKED", "") & "> " & "NON CONFRONTABILE"
            tch = New TableCell
            tch.Text = radioString
            tch.ColumnSpan = 3
            tr.Cells.Add(tch)
            tch = Nothing

            .Rows.Add(tr)
            tr = Nothing

            '*******************************************************

            Call InsertNote(_Row.Item("DINSERIMENTO"))

            tr = New TableRow

            tch = New TableCell
            tch.ColumnSpan = 8
            tch.Text = "."
            tr.Cells.Add(tch)
            tch = Nothing

            .Rows.Add(tr)
            tr = Nothing


        End With


    End Sub

    Private Sub InsertNote(ByVal DInserimento As String)
        Dim tr As TableRow
        Dim tch As TableCell
        Dim radioString As String
        Dim zx As Int16
        Dim sql As String = " SELECT NOTADIV.NOTA FROM NOTEDIVAZIONI " & _
                            " INNER JOIN NOTADIV ON NOTEDIVAZIONI.NUMNOTA = NOTADIV.NUMNOTA " & _
                            " WHERE NOTEDIVAZIONI.ISINCODE = '" & Session("ISINCODE") & "'" & _
                            " AND NOTEDIVAZIONI.DINSERIMENTO = '" & DInserimento & "'"

        Dim dtNote As New DataTable
        Dim cltx As New AccessDBManager
        cltx.ReadGenericQuery(dtNote, sql)




        With tbDiv
            If dtNote.Rows.Count > 0 Then

                tr = New TableRow

                tch = New TableCell
                tch.Text = "NOTE"
                tch.ColumnSpan = 8
                tch.CssClass = "etichetta"
                tr.Cells.Add(tch)
                tch = Nothing

                .Rows.Add(tr)
                tr = Nothing

            End If


            For zx = 0 To dtNote.Rows.Count - 1
                tr = New TableRow

                tch = New TableCell
                tch.ColumnSpan = 8
                tch.Text = IIf(dtNote.Rows(zx).Item(0) & "" = "", ".", dtNote.Rows(zx).Item(0) & "")
                tr.Cells.Add(tch)
                tch = Nothing

                .Rows.Add(tr)
                tr = Nothing
            Next
        End With

    End Sub

End Class
