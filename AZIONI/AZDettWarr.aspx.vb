Public Class AZDettWarr
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents tbAss As System.Web.UI.WebControls.Table
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image

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
        Dim parIDWarr As String = Server.HtmlDecode(Request("ISINCODE"))
        Dim dt As New DataTable
        Dim clt As New AccessDBManager
        Dim zx As Integer = 0
        '        Dim sql As String = "SELECT A.*,B.DENOMINAZIONE,B.ACRONIMO,B.QUANTITA  FROM NOTEWARRAZIONI A, TITOLOAZIONARIO B WHERE A.ISINCODE = '" & parIDWarr & "' AND A.ISINCODE=B.ISINCODE"
        Dim sql As String = "SELECT ISINCODE, DENOMINAZIONE, ACRONIMO, QUANTITA  FROM TITOLOAZIONARIO WHERE ISINCODE = '" & parIDWarr & "'"
        With clt
            Call .ReadGenericQuery(dt, sql)
            If dt.Rows.Count = 1 Then
                tbAss.Rows(0).Cells(0).Text() = "ISINCODE"
                tbAss.Rows(0).Cells(1).Text() = dt.Rows(0).Item("ISINCODE")
                tbAss.Rows(0).Cells(2).Text() = "DENOMINAZIONE"
                tbAss.Rows(0).Cells(3).Text() = dt.Rows(0).Item("DENOMINAZIONE")
                tbAss.Rows(1).Cells(0).Text() = "ACRONIMO"
                tbAss.Rows(1).Cells(1).Text() = IIf(dt.Rows(0).Item("ACRONIMO") <> "", dt.Rows(0).Item("ACRONIMO"), ".")
                tbAss.Rows(1).Cells(2).Text() = "QUANTITA'"
                tbAss.Rows(1).Cells(3).Text() = IIf(dt.Rows(0).Item("QUANTITA") <> "", dt.Rows(0).Item("QUANTITA"), ".")
                'tbAss.Rows(2).Cells(0).Text() = "NOTA"
                'tbAss.Rows(3).Cells(0).Text() = dt.Rows(0).Item("NOTACONVRIEP")
                'tbAss.Rows(4).Cells(0).Text() = "TESTO"
                'tbAss.Rows(5).Cells(0).Text() = dt.Rows(0).Item("NOTA")

            End If
            .Dispose()
        End With
        Dim dtn As New DataTable
        Dim cltn As New AccessDBManager
        sql = "SELECT * FROM NOTEWARRAZIONI WHERE ISINCODE = '" & parIDWarr & "'"
        With cltn
            Call .ReadGenericQuery(dtn, sql)
            If dtn.Rows.Count = 1 Then
                tbAss.Rows(2).Cells(0).Text() = "NOTA"
                If dtn.Rows(0).Item("NOTACONVRIEP") & "" = "" Then tbAss.Rows(3).Cells(0).Text = "." Else tbAss.Rows(3).Cells(0).Text() = dtn.Rows(0).Item("NOTACONVRIEP") & ""
                tbAss.Rows(4).Cells(0).Text() = "TESTO"
                If dtn.Rows(0).Item("NOTA") & "" = "" Then tbAss.Rows(3).Cells(0).Text = "." Else tbAss.Rows(5).Cells(0).Text() = dtn.Rows(0).Item("NOTA")
            Else
                tbAss.Rows(2).Cells(0).Text() = "NOTA"
                tbAss.Rows(3).Cells(0).Text() = "."
                tbAss.Rows(4).Cells(0).Text() = "TESTO"
                tbAss.Rows(5).Cells(0).Text() = "."
            End If
            .Dispose()
        End With

    End Sub

End Class
