Public Class AZDettCDA
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
    Protected WithEvents lbl_datcda As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_temcda As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_testo As System.Web.UI.WebControls.Label

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
        Dim parIDCda As String = Server.HtmlDecode(Request("IDCDA"))
        Dim dt As New DataTable
        Dim clt As New AccessDBManager
        Dim zx As Integer = 0
        Dim sql As String = "SELECT A.*,B.DENOMINAZIONE FROM CDA A, TITOLOAZIONARIO B WHERE IDCDA = '" & parIDCda & "' AND A.ISINCODE=B.ISINCODE"
        With clt
            Call .ReadGenericQuery(dt, sql)
            If dt.Rows.Count = 1 Then
                lbl_codisi.Text() = dt.Rows(0).Item("ISINCODE")
                lbl_denomi.Text() = dt.Rows(0).Item("DENOMINAZIONE")
                lbl_datcda.Text() = dt.Rows(0).Item("DATA")
                lbl_temcda.Text() = dt.Rows(0).Item("TEMA")
                lbl_testo.Text() = IIf(dt.Rows(0).Item("TESTO") = "", "nessuno", dt.Rows(0).Item("TESTO"))
            End If
            'If dt.Rows.Count = 1 Then
            '    tbAss.Rows(0).Cells(0).Text() = "CODICE ISIN"
            '    tbAss.Rows(0).Cells(1).Text() = dt.Rows(0).Item("ISINCODE")
            '    tbAss.Rows(0).Cells(2).Text() = "DENOMINAZIONE"
            '    tbAss.Rows(0).Cells(3).Text() = dt.Rows(0).Item("DENOMINAZIONE")

            '    tbAss.Rows(1).Cells(0).Text() = "DATA CDA"
            '    tbAss.Rows(1).Cells(1).Text() = dt.Rows(0).Item("DATA")
            '    tbAss.Rows(1).Cells(2).Text() = "TEMA CDA"
            '    tbAss.Rows(1).Cells(3).Text() = dt.Rows(0).Item("TEMA")

            '    tbAss.Rows(2).Cells(0).Text() = "TESTO"
            '    tbAss.Rows(3).Cells(0).Text() = IIf(dt.Rows(0).Item("TESTO") = "", "nessuno", dt.Rows(0).Item("TESTO"))
            'End If
            .Dispose()
        End With
    End Sub

End Class
