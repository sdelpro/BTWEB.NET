Public Class IDXMenuIn
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents txtPassword As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtUsername As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblUsername As System.Web.UI.WebControls.Label
    Protected WithEvents lblPassword As System.Web.UI.WebControls.Label
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents lblINFOVARIE As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblError As System.Web.UI.WebControls.Label
    Protected WithEvents tbComun As System.Web.UI.WebControls.Table
    Protected WithEvents Dhtmlmenucontrol4 As BTWEB.DHTML.MenuControl.DHTMLMenuControl
    Protected WithEvents Linkbutton1 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents imgBollettino As System.Web.UI.WebControls.Image
    Protected WithEvents lbDal As System.Web.UI.WebControls.Label
    Protected WithEvents lbInfobt As System.Web.UI.WebControls.Label
    Protected WithEvents lbStaffbt As System.Web.UI.WebControls.Label
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbScarA As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbScarB As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbScarichi As System.Web.UI.WebControls.Label
    Protected WithEvents lblTitoloForm As System.Web.UI.WebControls.Label
    Protected WithEvents phScarichi As System.Web.UI.WebControls.PlaceHolder

    'NOTA: la seguente dichiarazione è richiesta da Progettazione Web Form.
    'Non spostarla o rimuoverla.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: questa chiamata al metodo è richiesta da Progettazione Web Form.
        'Non modificarla nell'editor del codice.
        InitializeComponent()
    End Sub

#End Region

    Private Sub lblOBBLIGAZIONI_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblOBBLIGAZIONI.Click
        Response.Redirect("OBBLIGAZIONI/OBMenu.aspx")

    End Sub

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim sql As String
        Dim ds As New System.Data.DataSet
        Dim cdt As New AccessDBManager()

        If Not Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
            Session("ERROR") = "Accesso non autorizzato. Effettuare il Login"
            Me.Response.Redirect("Error.aspx")
        End If
        If AbilitaPagina(Session.SessionID, Session("USERNAME")) = 0 Then
            Session.Clear()
            Session("ERROR") = "Errore 1752. Violazione di Protezione.<br><br>" & _
                               "Il sistema ha rilevato un accesso multiplo non autorizzato.<br>" & _
                               "Contattare il supporto tecnico per maggiori informazioni."
            Me.Response.Redirect("Error.aspx")
        End If
        lblLastLogin.Text = Session("LASTLOGIN")

        sql = "SELECT * FROM NEWSGENERALI WHERE TITOLO = 'COMUNICAZIONE' ORDER BY DMODIFICA DESC"
        cdt.ReadGenericQuery(ds, sql, "NEWSGENERALI")
        tbComun.Visible = True
        If Not CType(ds.Tables("NEWSGENERALI").Rows.Count, Integer) = 0 Then
            tbComun.Rows(1).Cells(0).Text = Replace(CType(ds.Tables("NEWSGENERALI").Rows(0).Item("NEWS") & "", String), Chr(13), "<br>")

        End If
        'End With
        'lblError.Visible = False
        'If Not Session("USERNAME") = "btadmin" Then
        If Not Session("USERNAME") = "btadmin" Then
            If Session("PROFILO1") Then lblAZIONI.Visible = True
            If Session("PROFILO2") Then lblOBBLIGAZIONI.Visible = True
            If Session("PROFILO3") Then lbEstrazioni.Visible = True
            If Session("PROFILO5") Or Session("PROFILO6") Then lbScarichi.Visible = True
            If Session("PROFILO5") Then lbScarA.Visible = True
            If Session("PROFILO6") Then lbScarB.Visible = True

        Else
            lblAZIONI.Visible = True
            lblOBBLIGAZIONI.Visible = True
        End If
        lblINFOVARIE.Visible = True
        lblLastLogin.Visible = True
        lblLastLogin.Text = Session("LASTLOGIN")
    End Sub

    Private Sub lblINFOVARIE_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblINFOVARIE.Click
        Response.Redirect("FindNews.aspx")
    End Sub

    Private Sub lbEstrazioni_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbEstrazioni.Click
        If Session("PROFILO3") Then Server.Transfer("Download.aspx?CD=3")
    End Sub

    Private Sub lbScarA_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbScarA.Click
        If Session("PROFILO5") Then Server.Transfer("Download.aspx?CD=5")
    End Sub

    Private Sub lbScarB_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lbScarB.Click
        If Session("PROFILO6") Then Server.Transfer("Download.aspx?CD=6")
    End Sub
End Class
