
Public Class AZDettOPCAP
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents tbOp As System.Web.UI.WebControls.Table

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
        Dim parIDOp As String = Server.HtmlDecode(Request("IDOPCAP"))
        Dim dt As New DataTable
        Dim clt As New AccessDBManager
        Dim zx As Integer = 0
        Dim sql As String = "SELECT A.*,CONVERT(VARCHAR,A.DATAINIZIO,103) AS DATAINIZIO,CONVERT(VARCHAR,A.DATAFINE,103) AS DATAFINE,CONVERT(VARCHAR,A.DATASTOR,103) AS DATASTOR,B.DENOMINAZIONE FROM OPCAPITALE A, TITOLOAZIONARIO B WHERE IDOPCAP = '" & parIDOp & "' AND A.ISINCODE=B.ISINCODE"
        With clt
            Call .ReadGenericQuery(dt, sql)
            If dt.Rows.Count = 1 Then
                tbOp.Rows(0).Cells(0).Text() = "ISINCODE"
                tbOp.Rows(0).Cells(1).Text() = dt.Rows(0).Item("ISINCODE")
                tbOp.Rows(0).Cells(2).Text() = "DENOMINAZIONE"
                tbOp.Rows(0).Cells(3).Text() = dt.Rows(0).Item("DENOMINAZIONE") & ""
                tbOp.Rows(1).Cells(0).Text() = "STATO"
                tbOp.Rows(1).Cells(1).Text() = dt.Rows(0).Item("STATO")
                tbOp.Rows(1).Cells(2).Text() = "INIZIO"
                tbOp.Rows(1).Cells(3).Text() = IIf(dt.Rows(0).Item("DATAINIZIO") Is System.DBNull.Value, ".", dt.Rows(0).Item("DATAINIZIO"))
                tbOp.Rows(1).Cells(4).Text() = "FINE"
                tbOp.Rows(1).Cells(5).Text() = IIf(dt.Rows(0).Item("DATAFINE") Is System.DBNull.Value, ".", dt.Rows(0).Item("DATAFINE"))
                tbOp.Rows(1).Cells(6).Text() = "STORICIZZAZIONE"
                tbOp.Rows(1).Cells(7).Text() = IIf(dt.Rows(0).Item("DATASTOR") Is System.DBNull.Value, ".", dt.Rows(0).Item("DATASTOR"))
                tbOp.Rows(2).Cells(0).Text() = "OPERAZIONI SUL CAPITALE - TESTO COMPLETO DELL'OPERAZIONE"
                tbOp.Rows(3).Cells(0).Text() = dt.Rows(0).Item("TESTO") & ""
                tbOp.Rows(4).Cells(0).Text() = "TABELLA DI PARITA'"
                tbOp.Rows(5).Cells(0).Text() = IIf(dt.Rows(0).Item("PARITA") & "." = ".", "nessuna", Replace(dt.Rows(0).Item("PARITA") & ".", Chr(13), "<br>"))
                'tbOp.Rows(4).Cells(0).Text() = IIf(dt.Rows(0).Item("PARITA") Is System.DBNull.Value, ".", Replace(dt.Rows(0).Item("PARITA"), Chr(13), "<br>"))
            End If
            .Dispose()
        End With


    End Sub

End Class
