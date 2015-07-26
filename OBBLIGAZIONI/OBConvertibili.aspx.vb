Public Class OBConvertibili
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents tbCarPrinc As System.Web.UI.WebControls.Table
    Protected WithEvents lblTIPORICERCA As System.Web.UI.WebControls.Label
    Protected WithEvents lblNoRecord As System.Web.UI.WebControls.Label

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


        Dim dt As New System.Data.DataTable
        Dim dtn As New System.Data.DataTable
        Dim dtp As New System.Data.DataTable
        Dim dtck As New System.Data.DataTable
        Dim cdt As New AccessDBManager()
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

                    .ReadGenericQuery(dtn, "SELECT NOTA, NOTACONVRIEP FROM NOTECONVOBBL WHERE ISINCODE = '" & Session("ISINCODE") & "'")

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "DESCRIZIONE"
                    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("DESCRL") & "", String)

                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "CONVERTIBILITÀ"
                    If dtn.Rows.Count = 0 Then
                        tbCarPrinc.Rows(kCol).Cells(1).Text = "."
                    Else
                        If Trim(CType(dtn.Rows(0).Item("NOTACONVRIEP") & "", String)) = "" Then
                            tbCarPrinc.Rows(kCol).Cells(1).Text = "."
                        Else
                            tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dtn.Rows(0).Item("NOTACONVRIEP") & "", String)
                        End If
                    End If


                    kCol += 1
                    kCol += 1

                    tbCarPrinc.Rows(kCol).Cells(0).Text = "NOTA"

                    kCol += 1

                    If dtn.Rows.Count = 0 Then
                        tbCarPrinc.Rows(kCol).Cells(0).Text = "."
                    Else
                        If Trim(CType(dtn.Rows(0).Item("NOTA") & "", String)) = "" Then
                            tbCarPrinc.Rows(kCol).Cells(0).Text = "."
                        Else
                            tbCarPrinc.Rows(kCol).Cells(0).Text = CType(dtn.Rows(0).Item("NOTA") & "", String)
                        End If
                    End If

                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "TABELLA DI CONVERTIBILITÀ"
                    .ReadGenericQuery(dtck, "SELECT NOTA, NOTACONVRIEP FROM NOTECONVOBBL WHERE ISINCODE = '" & Session("ISINCODE") & "'")
                    If dtck.Rows.Count > 0 Then
                        lblNoRecord.Visible = False
                        kCol += 1
                        tbCarPrinc.Rows(kCol).Cells(0).Text = "<iframe name=""I1"" width=""100%"" height=""305"" frameborder=""0"" src=""" & "OBTabellaConv.aspx" & """></iframe>"
                    Else
                        lblNoRecord.Visible = True
                        kCol += 1
                        tbCarPrinc.Rows(kCol).Cells(0).Text = "<iframe name=""I1"" width=""100%"" height=""305"" frameborder=""0"" src=""" & "" & """></iframe>"
                    End If
                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "TABELLA DI PARITÀ"

                    kCol += 1
                    Dim tmpStr As String = ""
                    .ReadGenericQuery(dtp, "SELECT PARITA FROM TABOBBLPARITA WHERE ISINCODE = '" & Session("ISINCODE") & "'")
                    If dtp.Rows.Count = 0 Then
                        tbCarPrinc.Rows(kCol).Cells(0).Text = "."
                    Else
                        If Trim(CType(dtp.Rows(0).Item("PARITA") & "", String)) = "" Then
                            tbCarPrinc.Rows(kCol).Cells(0).Text = "."
                        Else
                            tmpStr = Replace(CType(dtp.Rows(0).Item("PARITA") & "", String), Chr(13), "<br>")
                            tmpStr = Replace(tmpStr, Space(4), "&nbsp;&nbsp;&nbsp;&nbsp;")
                            tmpStr = Replace(tmpStr, Space(3), "&nbsp;&nbsp;&nbsp;")
                            tmpStr = Replace(tmpStr, Space(2), "&nbsp;&nbsp;")
                            tbCarPrinc.Rows(kCol).Cells(0).Text = tmpStr
                        End If
                    End If

                End If

            Catch ex As Exception
                Throw ex
            Finally
                dt.Dispose()
                dtn.Dispose()
                dtp.Dispose()
                dtck.Dispose()
                .Dispose()
            End Try
        End With


    End Sub

End Class
