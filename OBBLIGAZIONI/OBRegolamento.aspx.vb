Public Class OBRegolamento
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents tbCarPrinc As System.Web.UI.WebControls.Table
    Protected WithEvents Table1 As System.Web.UI.WebControls.Table
    Protected WithEvents tbCarDesc As System.Web.UI.WebControls.Table
    Protected WithEvents CheckBox1 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Radio1 As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents Radio2 As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblTIPORICERCA As System.Web.UI.WebControls.Label
    Protected WithEvents lbEstrazioni As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblINFOVARIE As System.Web.UI.HtmlControls.HtmlAnchor

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
        If Session("PROFILO8") = False Then
            Session("ERROR") = "Accesso alla funzione non autorizzato."
            Session("PAGERETURN") = "OBBLIGAZIONI/OBView.aspx"
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
        Dim cdt As New AccessDBManager
        Dim sql As String = ""
        Dim LastRecord As Boolean = False
        Dim kCol As Integer = -1
        Dim TableString As String = ""
        lblTIPORICERCA.Text = Session("TIPORICERCA")


        With cdt
            Try

                If Session("ISINCODE") <> "" Then
                    sql = "SELECT  A.*, B.REGOLAMENTO FROM TITOLOOBBLIGAZIONARIO A, TABREGTESTO B WHERE A.ISINCODE = '" & Session("ISINCODE") & "' AND A.ISINCODE = B.ISINCODE"
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

                    kCol += 1
                    kCol += 1
                    tbCarPrinc.Rows(kCol).Cells(0).Text = "REGOLAMENTO"


                    kCol += 1

                    Dim tmpStr As String = Replace(CType(dt.Rows(0).Item("REGOLAMENTO") & "", String), Chr(13), "<br>")
                    tmpStr = Replace(tmpStr, Space(4), "&nbsp;&nbsp;&nbsp;&nbsp;")
                    tmpStr = Replace(tmpStr, Space(3), "&nbsp;&nbsp;&nbsp;")
                    tmpStr = Replace(tmpStr, Space(2), "&nbsp;&nbsp")

                    tbCarPrinc.Rows(kCol).Cells(0).Text = tmpStr

                Else
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

                        kCol += 1
                        kCol += 1
                        tbCarPrinc.Rows(kCol).Cells(0).Text = "REGOLAMENTO"


                    Else
                        Response.Redirect("OBLista.aspx")
                    End If
                End If
            Catch ex As Exception
                Throw ex
            Finally
                dt.Dispose()
                .Dispose()
            End Try
        End With

    End Sub

End Class
