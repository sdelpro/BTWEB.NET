Public Class AZMenu
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lbl10 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl9 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl8 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl7 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl6 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl5 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl4 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl3 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl2 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl1 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblINFOVARIE As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lbEstrazioni As System.Web.UI.HtmlControls.HtmlAnchor

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
        lblLastLogin.Text = Session("LASTLOGIN")
        LoadListaTitoliAz()
    End Sub

    Private Sub LoadListaTitoliAz()
        If Application("LISTA_TITOLI_AZ") Is Nothing Then
            Dim sqlTitoli As String = "select RAGSOC as DENOMINAZIONE from SOCIETA group by RAGSOC order by 1"
            '"select DENOMINAZIONE from TITOLOAZIONARIO group by DENOMINAZIONE order by 1"
            Dim dtt As New System.Data.DataTable
            Dim cdt As New AccessDBManager
            cdt.ReadGenericQuery(dtt, sqlTitoli)
            Dim i As Integer
            Dim strMst1 As String = "<script>$(function(){var availableTags = ["
            Dim strMst2 As String = "];$('.autcmpl').autocomplete({source:availableTags});});</script>"
            Dim strScr As String = "''"
            For i = 0 To dtt.Rows.Count - 1
                strScr = String.Format("{0},'{1}'", strScr, dtt.Rows(i).Item("DENOMINAZIONE"))
            Next
            Dim finalStr As String = String.Format("{0}{1}{2}", strMst1, strScr, strMst2)
            Application("LISTA_TITOLI_AZ") = finalStr
        End If
    End Sub

    Private Sub lbl1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl1.Click
        Response.Redirect("AZFindSocieta.aspx")
    End Sub

    Private Sub lbl2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl2.Click
        Response.Redirect("AZFindTitoli.aspx")
    End Sub

    Private Sub lbl3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl3.Click
        Response.Redirect("AZFindAssemblee.aspx")
    End Sub

    Private Sub lbl4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl4.Click
        Response.Redirect("AZFindCDA.aspx")
    End Sub

    Private Sub lbl5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl5.Click
        Response.Redirect("AZFindDIV.aspx")
    End Sub

    Private Sub lbl6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl6.Click
        Response.Redirect("AZFindNEWS.aspx")
    End Sub

    Private Sub lbl8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl8.Click
        Response.Redirect("AZFindOPCAP.aspx")
    End Sub

    Private Sub lbl9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl9.Click
        Response.Redirect("AZFindWarr.aspx")
    End Sub

    Private Sub lbl10_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl10.Click
        Response.Redirect("AZFindQuot.aspx")
    End Sub

    Private Sub lbl7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl7.Click
        Response.Redirect("AZFindCONV.aspx")
    End Sub
End Class
