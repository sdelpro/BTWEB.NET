Public Class AZDettDIV
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblINFOVARIE As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_codisi As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_denomi As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_valuta As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_stato As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_lordo As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_vadipr As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_divpre As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_pagame As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_stacco As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_straor As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_ordina As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_ordnet As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_accont As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_saldo As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_noncfr As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_nota As System.Web.UI.WebControls.Label

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
        Dim parIDDiv As String = Server.HtmlDecode(Request("IDDIV"))
        Dim dt As New DataTable
        Dim clt As New AccessDBManager
        Dim zx As Integer = 0
        Dim sql As String = "SELECT A.*,B.DENOMINAZIONE FROM DIVAZIONI A, TITOLOAZIONARIO B WHERE IDDIV = '" & parIDDiv & "' AND A.ISINCODE=B.ISINCODE"
        With clt
            Call .ReadGenericQuery(dt, sql)
            If dt.Rows.Count = 1 Then

                lbl_codisi.Text() = dt.Rows(0).Item("ISINCODE")

                lbl_denomi.Text() = dt.Rows(0).Item("DENOMINAZIONE")


                lbl_valuta.Text() = dt.Rows(0).Item("VAL")

                lbl_valuta.Text() = UCase(dt.Rows(0).Item("STATO"))


                lbl_lordo.Text() = IIf(dt.Rows(0).Item("LORDO") & "" = "", ".", dt.Rows(0).Item("LORDO"))
                lbl_vadipr.Text() = dt.Rows(0).Item("VALUD")

                lbl_divpre.Text() = fmtNumbertoDecimal(dt.Rows(0).Item("UD"))


                lbl_pagame.Text() = IIf(dt.Rows(0).Item("DATAPAG") & "" = "" Or dt.Rows(0).Item("DATAPAG") & "" = "01/01/1900" Or dt.Rows(0).Item("DATAPAG") & "" = "1/1/1900", ".", dt.Rows(0).Item("DATAPAG"))

                lbl_stacco.Text() = IIf(dt.Rows(0).Item("DATASTACCO") & "" = "", ".", dt.Rows(0).Item("DATASTACCO"))

                lbl_straor.Text() = IIf(dt.Rows(0).Item("STRAORDINARIO") = "SI", "SI", ".")

                lbl_ordina.Text() = IIf(dt.Rows(0).Item("ORDINARIO") = "SI", "SI", ".")

                lbl_ordnet.Text() = IIf(dt.Rows(0).Item("TIPONETTO") = "SI", "SI", ".")


                lbl_accont.Text() = IIf(dt.Rows(0).Item("ACCONTO") = "SI", "SI", ".")

                lbl_saldo.Text() = IIf(dt.Rows(0).Item("SALDO") = "SI", "SI", ".")

                lbl_noncfr.Text() = IIf(dt.Rows(0).Item("NONCONFR") = "SI", "SI", ".")

            End If
            'If dt.Rows.Count = 1 Then
            '    tbDiv.Rows(0).Cells(0).Text() = "CODICE ISIN"
            '    tbDiv.Rows(0).Cells(1).Text() = dt.Rows(0).Item("ISINCODE")
            '    tbDiv.Rows(0).Cells(2).Text() = "DENOMINAZIONE"
            '    tbDiv.Rows(0).Cells(3).Text() = dt.Rows(0).Item("DENOMINAZIONE")

            '    tbDiv.Rows(1).Cells(0).Text() = "VALUTA"
            '    tbDiv.Rows(1).Cells(1).Text() = dt.Rows(0).Item("VAL")
            '    tbDiv.Rows(1).Cells(2).Text() = "STATO"
            '    tbDiv.Rows(1).Cells(3).Text() = UCase(dt.Rows(0).Item("STATO"))

            '    tbDiv.Rows(2).Cells(0).Text() = "LORDO"
            '    tbDiv.Rows(2).Cells(1).Text() = IIf(dt.Rows(0).Item("LORDO") & "" = "", ".", dt.Rows(0).Item("LORDO"))
            '    'tbDiv.Rows(2).Cells(2).Text() = "ALIQUOTA %"
            '    'tbDiv.Rows(2).Cells(3).Text() = IIf(dt.Rows(0).Item("ALIQUOTA") & "" = "", ".", dt.Rows(0).Item("ALIQUOTA"))
            '    'tbDiv.Rows(2).Cells(4).Text() = "NETTO"
            '    'tbDiv.Rows(2).Cells(5).Text() = IIf(dt.Rows(0).Item("NETTO") & "" = "", ".", dt.Rows(0).Item("NETTO"))

            '    tbDiv.Rows(2).Cells(2).Text() = "VAL. DIV. PREC."
            '    tbDiv.Rows(2).Cells(3).Text() = dt.Rows(0).Item("VALUD")
            '    tbDiv.Rows(2).Cells(4).Text() = "DIV. PREC."
            '    tbDiv.Rows(2).Cells(5).Text() = fmtNumbertoDecimal(dt.Rows(0).Item("UD"))

            '    tbDiv.Rows(3).Cells(0).Text() = "PAGAMENTO"
            '    tbDiv.Rows(3).Cells(1).Text() = IIf(dt.Rows(0).Item("DATAPAG") & "" = "" Or dt.Rows(0).Item("DATAPAG") & "" = "01/01/1900" Or dt.Rows(0).Item("DATAPAG") & "" = "1/1/1900", ".", dt.Rows(0).Item("DATAPAG"))
            '    tbDiv.Rows(3).Cells(2).Text() = "STACCO"
            '    tbDiv.Rows(3).Cells(3).Text() = IIf(dt.Rows(0).Item("DATASTACCO") & "" = "", ".", dt.Rows(0).Item("DATASTACCO"))

            '    tbDiv.Rows(4).Cells(0).Text() = "STRAORD."
            '    tbDiv.Rows(4).Cells(1).Text() = IIf(dt.Rows(0).Item("STRAORDINARIO") = "SI", "SI", ".")
            '    tbDiv.Rows(4).Cells(2).Text() = "ORD."
            '    tbDiv.Rows(4).Cells(3).Text() = IIf(dt.Rows(0).Item("ORDINARIO") = "SI", "SI", ".")
            '    tbDiv.Rows(4).Cells(4).Text() = "NETTO"
            '    tbDiv.Rows(4).Cells(5).Text() = IIf(dt.Rows(0).Item("TIPONETTO") = "SI", "SI", ".")

            '    tbDiv.Rows(5).Cells(0).Text() = "ACCONTO"
            '    tbDiv.Rows(5).Cells(1).Text() = IIf(dt.Rows(0).Item("ACCONTO") = "SI", "SI", ".")
            '    tbDiv.Rows(5).Cells(2).Text() = "SALDO"
            '    tbDiv.Rows(5).Cells(3).Text() = IIf(dt.Rows(0).Item("SALDO") = "SI", "SI", ".")
            '    tbDiv.Rows(5).Cells(4).Text() = "NON CONFR."
            '    tbDiv.Rows(5).Cells(5).Text() = IIf(dt.Rows(0).Item("NONCONFR") = "SI", "SI", ".")
            'End If

            .Dispose()
        End With
        Dim dtn As New DataTable
        Dim cltn As New AccessDBManager
        sql = "SELECT * FROM NOTADIV WHERE NUMNOTA IN(SELECT NUMNOTA FROM NOTEDIVAZIONI WHERE ISINCODE = '" & dt.Rows(0).Item("ISINCODE") & "' AND DINSERIMENTO='" & dt.Rows(0).Item("DINSERIMENTO") & "') ORDER BY NUMNOTA"
        With cltn
            Call .ReadGenericQuery(dtn, sql)

            If dtn.Rows.Count > 0 Then
                For zx = 0 To dtn.Rows.Count - 1
                    lbl_stato.Text() = dtn.Rows(zx).Item("NOTA")
                Next zx
                .Dispose()
            Else
                lbl_stato.Text() = "Nessuna"
            End If
        End With
    End Sub

End Class
