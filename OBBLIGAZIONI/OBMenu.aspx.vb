Public Class OBMenu
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents btnLogin As System.Web.UI.WebControls.Button
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents txtPassword As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtUsername As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblUsername As System.Web.UI.WebControls.Label
    Protected WithEvents lblPassword As System.Web.UI.WebControls.Label
    Protected WithEvents HyperLink1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents lbl2 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl3 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl4 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl5 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl6 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl7 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl8 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl9 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents LBLLASTLOGIN As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lbl1 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl12 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl11 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblINFOVARIE As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl10 As System.Web.UI.WebControls.LinkButton

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
        LBLLASTLOGIN.Text = Session("LASTLOGIN")
        'LoadListaTitoliOb()
    End Sub

    Private Sub LoadListaTitoliOb()
        If Application("LISTA_TITOLI_OB") Is Nothing Then
            Dim sqlTitoli As String = "select DESCRL as DENOMINAZIONE from TITOLOOBBLIGAZIONARIO group by DESCRL"

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
            Application("LISTA_TITOLI_OB") = finalStr
        End If
    End Sub

    'Private Sub lblOBBLIGAZIONI_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
    '    Response.Redirect("OBLista.aspx")
    'End Sub

    Private Sub lbl1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl1.Click
        Response.Redirect("OBFindDesc.aspx")
    End Sub

    Private Sub lbl2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl2.Click
        Response.Redirect("OBFindScad.aspx")
    End Sub

    Private Sub lbl3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl3.Click
        Response.Redirect("OBFindCedole.aspx")
    End Sub

    Private Sub lbl4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl4.Click
        Response.Redirect("OBFindCedScad.aspx")
    End Sub

    Private Sub lbl5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl5.Click
        Response.Redirect("OBFindPAmm.aspx")
    End Sub

    Private Sub lbl6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl6.Click
        Response.Redirect("OBFindNews.aspx")
    End Sub

    Private Sub lbl7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl7.Click
        Response.Redirect("OBFindConv.aspx")
    End Sub

    Private Sub lbl8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl8.Click
        Response.Redirect("OBFindRegol.aspx")
    End Sub

    Private Sub lbl9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl9.Click
        Response.Redirect("OBFindMagg.aspx")
    End Sub

    Private Sub lbl10_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbl10.Click
        Response.Redirect("OBFindQuot.aspx")
    End Sub

End Class
