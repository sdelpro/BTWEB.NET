Public Class AZDettTitolo
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents tbTitolo As System.Web.UI.WebControls.Table
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lbl_codisi As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_denomi As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_tipazi As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_quotat As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_indice As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_peso As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_qta As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_valnom As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_capita As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_acroni As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_qtamin As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_mercat As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_altind As System.Web.UI.WebControls.Label

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
        Dim parIDTitolo As String = Server.HtmlDecode(Request("ISINCODE"))
        Dim dt As New DataTable
        Dim clt As New AccessDBManager
        Dim zx As Integer = 0
        Dim sql As String = "SELECT *,CONVERT(VARCHAR,CONVERT (MONEY, CAPITALE),1) AS CAP,CONVERT(VARCHAR,CONVERT (MONEY, QUANTITA),1) AS QTA FROM TITOLOAZIONARIO WHERE ISINCODE = '" & parIDTitolo & "'"
        With clt
            Call .ReadGenericQuery(dt, sql)
            If dt.Rows.Count = 1 Then

                lbl_codisi.Text() = dt.Rows(0).Item("ISINCODE")

                If dt.Rows(0).Item("DENOMINAZIONE") = "" Then lbl_denomi.Text() = "." Else lbl_denomi.Text() = dt.Rows(0).Item("DENOMINAZIONE")
                If dt.Rows(0).Item("TIPOAZIONE") = "" Then lbl_tipazi.Text() = "." Else lbl_tipazi.Text() = dt.Rows(0).Item("TIPOAZIONE") & ""
                If dt.Rows(0).Item("QUOTATA") Then lbl_quotat.Text() = "SI" Else lbl_quotat.Text() = "NO"
                If dt.Rows(0).Item("SETTORE") & "" = "" Then lbl_indice.Text() = "." Else lbl_indice.Text() = dt.Rows(0).Item("SETTORE") & ""
                If dt.Rows(0).Item("PESO") & "" = "" Then lbl_peso.Text() = "." Else lbl_peso.Text() = dt.Rows(0).Item("PESO") & ""
                If dt.Rows(0).Item("QTA") = "" Then lbl_qta.Text() = "." Else lbl_qta.Text() = Replace(Replace(Replace(dt.Rows(0).Item("QTA"), ",", "#"), ".", ","), "#", ".") & ""
                If dt.Rows(0).Item("VALNOMINALE") & "" = "" Then lbl_valnom.Text() = "." Else lbl_valnom.Text() = fmtNumbertoDecimal(dt.Rows(0).Item("VALNOMINALE") & "")
                If dt.Rows(0).Item("CAP") & "" = "" Then lbl_capita.Text() = "." Else lbl_capita.Text() = Replace(Replace(Replace(dt.Rows(0).Item("CAP"), ",", "#"), ".", ","), "#", ".") & ""
                If dt.Rows(0).Item("ACRONIMO") & "" = "" Then lbl_acroni.Text() = "." Else lbl_acroni.Text() = dt.Rows(0).Item("ACRONIMO") & ""
                If dt.Rows(0).Item("QMINIMA") & "" = "" Then lbl_qtamin.Text() = "." Else lbl_qtamin.Text() = dt.Rows(0).Item("QMINIMA") & ""
                If dt.Rows(0).Item("MERCATO") & "" = "" Then lbl_mercat.Text() = "." Else lbl_mercat.Text() = dt.Rows(0).Item("MERCATO") & ""
                If dt.Rows(0).Item("INDBORSA") & "" = "" Then lbl_altind.Text() = "." Else lbl_altind.Text() = dt.Rows(0).Item("INDBORSA") & ""
            End If
            'If dt.Rows.Count = 1 Then
            '    tbTitolo.Rows(0).Cells(0).Text() = "CODICE ISIN"
            '    tbTitolo.Rows(0).Cells(1).Text() = dt.Rows(0).Item("ISINCODE")
            '    tbTitolo.Rows(0).Cells(2).Text() = "DENOMINAZIONE"
            '    If dt.Rows(0).Item("DENOMINAZIONE") = "" Then tbTitolo.Rows(0).Cells(3).Text() = "." Else tbTitolo.Rows(0).Cells(3).Text() = dt.Rows(0).Item("DENOMINAZIONE")

            '    tbTitolo.Rows(1).Cells(0).Text() = "TIPO AZIONE"
            '    If dt.Rows(0).Item("TIPOAZIONE") = "" Then tbTitolo.Rows(1).Cells(1).Text() = "." Else tbTitolo.Rows(1).Cells(1).Text() = dt.Rows(0).Item("TIPOAZIONE") & ""
            '    tbTitolo.Rows(1).Cells(2).Text() = "QUOTATA"
            '    If dt.Rows(0).Item("QUOTATA") Then tbTitolo.Rows(1).Cells(3).Text() = "SI" Else tbTitolo.Rows(1).Cells(3).Text() = "NO"

            '    tbTitolo.Rows(2).Cells(0).Text() = "INDICE"
            '    If dt.Rows(0).Item("SETTORE") & "" = "" Then tbTitolo.Rows(2).Cells(1).Text() = "." Else tbTitolo.Rows(2).Cells(1).Text() = dt.Rows(0).Item("SETTORE") & ""

            '    tbTitolo.Rows(2).Cells(2).Text() = "PESO %"
            '    If dt.Rows(0).Item("PESO") & "" = "" Then tbTitolo.Rows(2).Cells(3).Text() = "." Else tbTitolo.Rows(2).Cells(3).Text() = dt.Rows(0).Item("PESO") & ""

            '    tbTitolo.Rows(3).Cells(0).Text() = "QUANTITA'"
            '    If dt.Rows(0).Item("QTA") = "" Then tbTitolo.Rows(3).Cells(1).Text() = "." Else tbTitolo.Rows(3).Cells(1).Text() = Replace(Replace(Replace(dt.Rows(0).Item("QTA"), ",", "#"), ".", ","), "#", ".") & ""
            '    tbTitolo.Rows(3).Cells(2).Text() = "VALORE NOMINALE"
            '    If dt.Rows(0).Item("VALNOMINALE") & "" = "" Then tbTitolo.Rows(3).Cells(3).Text() = "." Else tbTitolo.Rows(3).Cells(3).Text() = fmtNumbertoDecimal(dt.Rows(0).Item("VALNOMINALE") & "")
            '    tbTitolo.Rows(3).Cells(4).Text() = "CAPITALE"
            '    If dt.Rows(0).Item("CAP") & "" = "" Then tbTitolo.Rows(3).Cells(5).Text() = "." Else tbTitolo.Rows(3).Cells(5).Text() = Replace(Replace(Replace(dt.Rows(0).Item("CAP"), ",", "#"), ".", ","), "#", ".") & ""

            '    tbTitolo.Rows(4).Cells(0).Text() = "ACRONIMO"
            '    If dt.Rows(0).Item("ACRONIMO") & "" = "" Then tbTitolo.Rows(4).Cells(1).Text() = "." Else tbTitolo.Rows(4).Cells(1).Text() = dt.Rows(0).Item("ACRONIMO") & ""
            '    tbTitolo.Rows(4).Cells(2).Text() = "QUANTITA' MINIMA"
            '    If dt.Rows(0).Item("QMINIMA") & "" = "" Then tbTitolo.Rows(4).Cells(3).Text() = "." Else tbTitolo.Rows(4).Cells(3).Text() = dt.Rows(0).Item("QMINIMA") & ""
            '    tbTitolo.Rows(5).Cells(0).Text() = "MERCATO"
            '    If dt.Rows(0).Item("MERCATO") & "" = "" Then tbTitolo.Rows(5).Cells(1).Text() = "." Else tbTitolo.Rows(5).Cells(1).Text() = dt.Rows(0).Item("MERCATO") & ""
            '    tbTitolo.Rows(5).Cells(2).Text() = "ALTRO INDICE"
            '    If dt.Rows(0).Item("INDBORSA") & "" = "" Then tbTitolo.Rows(5).Cells(3).Text() = "." Else tbTitolo.Rows(5).Cells(3).Text() = dt.Rows(0).Item("INDBORSA") & ""

            'End If

            .Dispose()
        End With

    End Sub

End Class
