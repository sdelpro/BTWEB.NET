Public Class AZQuotazioni
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents tbQuot As System.Web.UI.WebControls.Table
    Protected WithEvents cmbAnno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents tbCarPrinc As System.Web.UI.WebControls.Table
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lblINFOVARIE As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblTipoRicerca As System.Web.UI.WebControls.Label
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor

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

        Dim zx As Int16

        If Session("QUOTANNO") Is Nothing Then
            If cmbAnno.SelectedIndex = -1 Then
                Session("QUOTANNO") = Year(Now)
            Else
                Session("QUOTANNO") = cmbAnno.SelectedValue
            End If
        Else
            If cmbAnno.SelectedIndex = -1 Then
                Session("QUOTANNO") = Year(Now)
            Else
                Session("QUOTANNO") = cmbAnno.SelectedValue
            End If
        End If
        cmbAnno.Items.Clear()
        Dim itmx As ListItem

        For zx = Year(Now) - 30 To Year(Now) + 30
            itmx = New ListItem
            itmx.Text = zx
            itmx.Value = zx
            cmbAnno.Items.Add(itmx)
            itmx = Nothing
        Next
        cmbAnno.Items(30 - (Year(Now) - Session("QUOTANNO"))).Selected = True
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

        Dim dt As New System.Data.DataTable
        Dim cdt As New AccessDBManager()
        Dim sql As String = ""
        Dim LastRecord As Boolean = False
        Dim kCol As Integer = -1
        Dim TableString As String = ""
        With cdt
            Try

                If Session("ISINCODE") <> "" Then
                    sql = "SELECT  * FROM TITOLOAZIONARIO WHERE ISINCODE = '" & Session("ISINCODE") & "'"
                Else
                    Response.Redirect("AZLista.aspx")
                End If

                .ReadGenericQuery(dt, sql)

                If CType(dt.Rows.Count, Boolean) Then

                    kCol += 1
                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "CODICE ISIN"

                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("ISINCODE") & "", String)

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "DESCRIZIONE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("DENOMINAZIONE") & "", String)

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "TIPO AZIONE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("TIPOAZIONE") & "", String)
                    tbCarPrinc.Rows(kCol).Cells(2).Text = "BLOCCHI"
                    tbCarPrinc.Rows(kCol).Cells(3).Text = fmtNumbertoDecimal(CType(dt.Rows(0).Item("MPREMI") & "", String))

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "ACRONIMO"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("ACRONIMO") & "", String)
                    tbCarPrinc.Rows(kCol).Cells(2).Text = "MERCATO"
                    tbCarPrinc.Rows(kCol).Cells(3).Text = CType(dt.Rows(0).Item("MERCATO") & "", String)

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "QUOTAZIONI PER ANNO"

                    tbQuot.Rows(0).Cells(0).Text = "<iframe name=""I1"" width=""100%"" height=""500"" frameborder=""0"" src=""" & "AZTabellaQuot.aspx" & """></iframe>"


                End If

            Catch ex As Exception
                Throw ex
            Finally
                dt.Dispose()

                .Dispose()
            End Try
        End With
    End Sub

    Private Sub cmbAnno_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbAnno.SelectedIndexChanged

    End Sub
End Class
