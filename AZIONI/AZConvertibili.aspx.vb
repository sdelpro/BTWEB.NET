Public Class AZConvertibili
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents lblTitoloForm As System.Web.UI.WebControls.Label
    Protected WithEvents lblNoRecord As System.Web.UI.WebControls.Label
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblINFOVARIE As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lbEstrazioni As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lbl_codisi As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_denomi As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_conver As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_nota As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_tabcon As System.Web.UI.WebControls.Label

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


        Dim dt As New System.Data.DataTable
        Dim dtn As New System.Data.DataTable
        Dim dtp As New System.Data.DataTable
        Dim cdt As New AccessDBManager
        Dim sql As String = ""
        Dim LastRecord As Boolean = False
        Dim kCol As Integer = -1
        Dim TableString As String = ""

        With cdt
            Try

                If Session("ISINCODE") <> "" Then
                    sql = "SELECT  * FROM TITOLOAZIONARIO WHERE ISINCODE = '" & Session("ISINCODE") & "'"
                Else
                    Response.Redirect("OBLista.aspx")
                End If

                .ReadGenericQuery(dt, sql)

                If CType(dt.Rows.Count, Boolean) Then
                    kCol += 1
                    kCol += 1
                    lbl_codisi.Text = CType(dt.Rows(0).Item("ISINCODE") & "", String)
                    kCol += 1
                    .ReadGenericQuery(dtn, "SELECT NOTA, NOTACONVRIEP FROM NOTECONVAZIONI WHERE ISINCODE = '" & Session("ISINCODE") & "'")

                    lbl_denomi.Text = CType(dt.Rows(0).Item("DENOMINAZIONE") & "", String)

                    kCol += 1


                    If dtn.Rows.Count = 0 Then
                        'lblNoRecord.Visible = True
                        Response.Redirect("AZTitolo.aspx")
                    Else
                        If Trim(CType(dtn.Rows(0).Item("NOTACONVRIEP") & "", String)) = "" Then
                            lbl_conver.Text = "."
                        Else
                            lbl_conver.Text = Replace(CType(dtn.Rows(0).Item("NOTACONVRIEP") & "", String), Chr(13), "<br>")
                        End If
                    End If
                    kCol += 1
                    kCol += 1

                    kCol += 1
                    If dtn.Rows.Count = 0 Then
                        lbl_nota.Text = "."
                    Else
                        If Trim(CType(dtn.Rows(0).Item("NOTA") & "", String)) = "" Then
                            lbl_nota.Text = "."
                        Else
                            lbl_nota.Text = Replace(CType(dtn.Rows(0).Item("NOTA") & "", String), Chr(13), "<br>")
                        End If
                    End If

                    kCol += 1

                    .ReadGenericQuery(dtp, "SELECT * FROM TABAZIONICONV WHERE ISINCODE = '" & Session("ISINCODE") & "'")
                    If dtp.Rows.Count > 0 Then
                        lblNoRecord.Visible = False
                        kCol += 1
                        Session("SQLTAB") = "SELECT * FROM TABAZIONICONV WHERE ISINCODE = '"

                        lbl_tabcon.Text = "<iframe name=""I1"" width=""100%"" height=""305"" frameborder=""0"" src=""" & "AZTabellaConv.aspx" & """></iframe>"
                    Else
                        lblNoRecord.Visible = True

                    End If

                End If

                'If CType(dt.Rows.Count, Boolean) Then

                '    kCol += 1
                '    kCol += 1

                '    tbCarPrinc.Rows(kCol).Cells(0).Text = "CODICE ISIN"

                '    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("ISINCODE") & "", String)

                '    kCol += 1

                '    .ReadGenericQuery(dtn, "SELECT NOTA, NOTACONVRIEP FROM NOTECONVAZIONI WHERE ISINCODE = '" & Session("ISINCODE") & "'")

                '    tbCarPrinc.Rows(kCol).Cells(0).Text = "DESCRIZIONE"
                '    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("DENOMINAZIONE") & "", String)

                '    kCol += 1

                '    tbCarPrinc.Rows(kCol).Cells(0).Text = "CONVERTIBILITĀ"
                '    If dtn.Rows.Count = 0 Then
                '        'lblNoRecord.Visible = True
                '        Response.Redirect("AZTitolo.aspx")
                '    Else
                '        If Trim(CType(dtn.Rows(0).Item("NOTACONVRIEP") & "", String)) = "" Then
                '            tbCarPrinc.Rows(kCol).Cells(1).Text = "."
                '        Else
                '            tbCarPrinc.Rows(kCol).Cells(1).Text = Replace(CType(dtn.Rows(0).Item("NOTACONVRIEP") & "", String), Chr(13), "<br>")
                '        End If
                '    End If
                '    kCol += 1
                '    kCol += 1
                '    tbCarPrinc.Rows(kCol).Cells(0).Text = "NOTA"
                '    kCol += 1
                '    If dtn.Rows.Count = 0 Then
                '        tbCarPrinc.Rows(kCol).Cells(0).Text = "."
                '    Else
                '        If Trim(CType(dtn.Rows(0).Item("NOTA") & "", String)) = "" Then
                '            tbCarPrinc.Rows(kCol).Cells(0).Text = "."
                '        Else
                '            tbCarPrinc.Rows(kCol).Cells(0).Text = Replace(CType(dtn.Rows(0).Item("NOTA") & "", String), Chr(13), "<br>")
                '        End If
                '    End If

                '    kCol += 1
                '    tbCarPrinc.Rows(kCol).Cells(0).Text = "TABELLA DI CONVERTIBILITĀ"
                '    .ReadGenericQuery(dtp, "SELECT * FROM TABAZIONICONV WHERE ISINCODE = '" & Session("ISINCODE") & "'")
                '    If dtp.Rows.Count > 0 Then
                '        lblNoRecord.Visible = False
                '        kCol += 1
                '        Session("SQLTAB") = "SELECT * FROM TABAZIONICONV WHERE ISINCODE = '"

                '        tbCarPrinc.Rows(kCol).Cells(0).Text = "<iframe name=""I1"" width=""100%"" height=""305"" frameborder=""0"" src=""" & "AZTabellaConv.aspx" & """></iframe>"
                '    Else
                '        lblNoRecord.Visible = True

                '    End If

                'End If
            Catch ex As Exception
                Throw ex
            Finally
                dt.Dispose()
                dtn.Dispose()
                dtp.Dispose()
                .Dispose()
            End Try
        End With
    End Sub

End Class
