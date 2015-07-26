Public Class AZDettAssemblea
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
        Dim parIDAss As String = Server.HtmlDecode(Request("IDASS"))
        Dim parDen As String = Server.HtmlDecode(Request("DENOMINAZIONE"))
        Dim dt As New DataTable
        Dim clt As New AccessDBManager
        Dim zx As Integer = 0
        '        Dim sql As String = "SELECT A.ISINCODE,A.TIPO,A.TESTO,CONVERT(VARCHAR,A.DATADEF, 103)AS DATADEF,CONVERT(VARCHAR,A.DATA1, 103) AS DATA1, CONVERT(VARCHAR,A.DATA2, 103) AS DATA2,CONVERT(VARCHAR,A.DATA3, 103)AS DATA3,B.DENOMINAZIONE FROM ASSEMBLEE A, TITOLOAZIONARIO B WHERE IDASS = '" & parIDAss & "' AND A.ISINCODE=B.ISINCODE"
        Dim sql As String = "SELECT A.*,B.DENOMINAZIONE FROM ASSEMBLEE A, TITOLOAZIONARIO B WHERE IDASS = '" & parIDAss & "' AND A.ISINCODE=B.ISINCODE"
        With clt
            Call .ReadGenericQuery(dt, sql)
            If dt.Rows.Count = 1 Then
                tbAss.Rows(0).Cells(0).Text() = "CODICE ISIN"
                tbAss.Rows(0).Cells(1).Text() = dt.Rows(0).Item("ISINCODE")
                tbAss.Rows(0).Cells(2).Text() = "DENOMINAZIONE"
                tbAss.Rows(0).Cells(3).Text() = dt.Rows(0).Item("DENOMINAZIONE")

                tbAss.Rows(1).Cells(0).Text() = "DATA ASSEMBLEA"
                tbAss.Rows(1).Cells(1).Text() = dt.Rows(0).Item("DATADEF")
                tbAss.Rows(2).Cells(0).Text() = "TIPO ASSEMBLEA"
                Select Case dt.Rows(0).Item("TIPO")
                    Case "o."
                        tbAss.Rows(2).Cells(1).Text() = "ORDINARIA"
                    Case "s."
                        tbAss.Rows(2).Cells(1).Text() = "STRAORDINARIA"
                    Case "o.s."
                        tbAss.Rows(2).Cells(1).Text() = "ORDINARIA/STRAORDINARIA"
                End Select

                tbAss.Rows(3).Cells(0).Text() = "1° CONVOCAZIONE"
                tbAss.Rows(3).Cells(1).Text() = IIf(CType(dt.Rows(0).Item("DATA1") & "", String) = "", ".", dt.Rows(0).Item("DATA1") & "")
                tbAss.Rows(3).Cells(2).Text() = "2° CONVOCAZIONE"
                tbAss.Rows(3).Cells(3).Text() = IIf(CType(dt.Rows(0).Item("DATA2") & "", String) = "", ".", dt.Rows(0).Item("DATA2") & "")
                tbAss.Rows(3).Cells(4).Text() = "3° CONVOCAZIONE"
                tbAss.Rows(3).Cells(5).Text() = IIf(CType(dt.Rows(0).Item("DATA3") & "", String) = "", ".", dt.Rows(0).Item("DATA3") & "")

                tbAss.Rows(4).Cells(0).Text() = "TESTO"
                tbAss.Rows(5).Cells(0).Text() = dt.Rows(0).Item("TESTO")





            End If
            .Dispose()
        End With
    End Sub

End Class
