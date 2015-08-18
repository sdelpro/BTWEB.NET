Public Class OBQuotazioni
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents tbCarPrinc As System.Web.UI.WebControls.Table
    Protected WithEvents tbQuot As System.Web.UI.WebControls.Table
    Protected WithEvents cmbAnno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblTIPORICERCA As System.Web.UI.WebControls.Label
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton

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
        'Me.Response.CacheControl = "no-cache"
        'Me.Response.AddHeader("Pragma", "no-cache")
        'Me.Response.Expires = -1

        Dim zx As Int16
        If Not cmbAnno.SelectedItem Is Nothing Then
            Session("QUOTANNO") = Year(Now) - 30 + cmbAnno.SelectedIndex
        End If
        cmbAnno.Items.Clear()
        For zx = Year(Now) - 30 To Year(Now) + 30
            cmbAnno.Items.Add(zx)
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
        lblTIPORICERCA.Text = Session("TIPORICERCA")
        If Session("OB_QUOT") = "NO" Then Me.Response.Redirect("OBView.aspx")

        Dim dt As New System.Data.DataTable
        'Dim dtn As New System.Data.DataTable
        'Dim dtp As New System.Data.DataTable
        Dim cdt As New AccessDBManager
        Dim sql As String = ""
        Dim LastRecord As Boolean = False
        Dim kCol As Integer = -1
        Dim TableString As String = ""
        With cdt
            Try
                If Session("ISINCODE") <> "" Then
                    sql = "SELECT  * FROM TITOLOOBBLIGAZIONARIO WHERE ISINCODE = '" & Session("ISINCODE") & "'"
                Else
                    Response.Redirect("OBLista.aspx")
                End If
                .ReadGenericQuery(dt, sql)

                If CType(dt.Rows.Count, Boolean) Then

                    kCol += 1
                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "ISINCODE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("ISINCODE") & "", String)

                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "DESCRIZIONE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("DESCRL") & "", String)

                    'commentato su richiesta di Luca Brambilla del 22-09-2010
                    'tbCarPrinc.Rows(kCol).Cells(2).Text = "BLOCCHI"
                    'tbCarPrinc.Rows(kCol).Cells(3).Text = fmtNumbertoDecimal(CType(dt.Rows(0).Item("PRMIN") & "", String))

                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "ACRONIMO"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = IIf(CType(dt.Rows(0).Item("ACRONIMO") & "", String) <> "", CType(dt.Rows(0).Item("ACRONIMO") & "", String), ".")

                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "QUOTAZIONI PER ANNO"

                    tbQuot.Rows(0).Cells(0).Text = "<iframe name=""I1"" width=""100%"" height=""500"" frameborder=""0"" src=""" & "OBTabellaQuot.aspx" & """></iframe>"


                End If

            Catch ex As Exception
                Throw ex
            Finally
                dt.Dispose()
                'dtn.Dispose()
                'dtp.Dispose()
                .Dispose()
            End Try
        End With
    End Sub


    Private Sub cmbAnno_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmbAnno.SelectedIndexChanged

    End Sub
End Class
