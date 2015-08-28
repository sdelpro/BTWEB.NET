Imports system.Web.Security

Public Class IDXMenu
    Inherits System.Web.UI.Page

#Region " Codice generato da Progettazione Web Form "

    'Chiamata richiesta da Progettazione Web Form.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents btnLogin As System.Web.UI.WebControls.Button
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents txtPassword As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtUsername As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblUsername As System.Web.UI.WebControls.Label
    Protected WithEvents lblPassword As System.Web.UI.WebControls.Label
    Protected WithEvents lblUser As System.Web.UI.WebControls.Label
    Protected WithEvents lblError As System.Web.UI.WebControls.Label
    Protected WithEvents Linkbutton1 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents lbStaffbt As System.Web.UI.WebControls.Label
    Protected WithEvents lbTuttotitoli As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents imgBtnInfo1 As System.Web.UI.WebControls.ImageButton
    Protected WithEvents imgBtnInfo2 As System.Web.UI.WebControls.ImageButton
    Protected WithEvents imgBollettino As System.Web.UI.WebControls.Image
    Protected WithEvents lbDal As System.Web.UI.WebControls.Label
    Protected WithEvents btnGotoHome As System.Web.UI.WebControls.Button
    'NOTA: la seguente dichiarazione è richiesta da Progettazione Web Form.
    'Non spostarla o rimuoverla.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: questa chiamata al metodo è richiesta da Progettazione Web Form.
        'Non modificarla nell'editor del codice.
        InitializeComponent()
    End Sub

#End Region


    Private Sub btnLogin_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim ds As New System.Data.DataSet
        Dim cdt As New AccessDBManager
        Dim cdtSec As New AccessDBManager
        Dim sql As String
        With cdt
            Try
                If Not Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
                    Session("ADMIN_VALIDATE") = ""
                    Session("LOGIN_VALIDATE") = ""
                    sql = "SELECT * FROM CLIENTI WHERE USERNAME = '" & txtUsername.Text & "'"
                    sUser = txtUsername.Text
                    .ReadGenericQuery(ds, sql, "CLIENTI")
                    If ds.Tables("CLIENTI").Rows.Count = 0 Then
                        Session("MACADDRESSSTATUS") = ""
                        Session("ERROR") = "Username o password errati.<br>Contattare il supporto tecnico"
                        Response.Redirect("Error.aspx")
                    End If

                    'implementazione security

                    If Not Session("MACADDRESSSTATUS") = "OK" And ds.Tables("CLIENTI").Rows(0).Item("MACCONTROL") <> "NESSUN CONTROLLO" Then
                        Try
                            Dim SecurityKeyCrypt As String = Request("KEY")
                            'Dim SecurityKeyCrypt As String = "150138178070104110102096100110096106106128128100096096104190096096190100114190098096190100114"
                            Dim SecurityKeyDecrypt As String = DeCrypt(SecurityKeyCrypt)

                            If Not isValidKey(SecurityKeyDecrypt) Then
                                Session("MACADDRESSSTATUS") = ""
                                Session("ERROR") = "Tentativo di Connessione a BTWeb non autorizzato.<br>Utilizzare l'utility BT Agent per connettersi al Sistema.<br>Key non corretta. <br>Per info contattare il supporto tecnico."
                                Response.Redirect("Error.aspx")
                            End If
                            MacAddressClient = Mid(SecurityKeyDecrypt, 5, InStr(SecurityKeyDecrypt, "@@") - 5)
                            With cdtSec
                                sql = "SELECT * FROM SCTKEY WHERE REQUESTKEY = '" & SecurityKeyCrypt & "'"
                                .ReadGenericQuery(ds, sql, "SCTKEY")
                                If CType(ds.Tables("SCTKEY").Rows.Count, Integer) > 0 Then
                                    Session("MACADDRESSSTATUS") = ""
                                    Session("ERROR") = "Tentativo di Connessione a BTWeb non autorizzato.<br>Utilizzare l'utility BT Agent per connettersi al Sistema.<br>Key già utilizzata.<br>Per info contattare il supporto tecnico."
                                    Response.Redirect("Error.aspx")
                                Else
                                    sql = "INSERT INTO SCTKEY  (REQUESTKEY) VALUES ('" & SecurityKeyCrypt & "')"
                                    .UpdateGenericTable(sql)
                                    Session("MACADDRESSSTATUS") = "OK"
                                End If
                            End With


                        Catch ex As Exception
                            Session("MACADDRESSSTATUS") = ""
                            Session("ERROR") = "Tentativo di Connessione a BTWeb non autorizzato.<br>Utilizzare l'utility BT Agent per connettersi al Sistema.<br>Per info contattare il supporto tecnico."
                            Response.Redirect("Error.aspx")
                        End Try
                    End If

                    'If txtUsername.Text = "btadmin" And txtPassword.Text = "gef1815" Then
                    '    Dim ctrlCP As String = "<a style=""FONT-SIZE: 16px; COLOR: navy; FONT-FAMILY: Tahoma; TEXT-DECORATION: underline"" href=""javascript:Popup('ControlPanel.aspx')"" id=""A1"" runat=""server"">PANNELLO DI CONTROLLO</a>"
                    '    Session("LOGIN_VALIDATE") = "ABILITATO_BT"
                    '    Session("ADMIN_VALIDATE") = "ABILITATO_GEF"

                    '    txtPassword.Text = ""
                    '    txtUsername.Text = ""
                    'End If

                    If ds.Tables("CLIENTI").Rows(0).Item("PASSWORD") <> txtPassword.Text Then
                        'Session("MACADDRESSSTATUS") = "OK"
                        Session("ERROR") = "Username o Password  non corretti.<br>Per info contattare il supporto tecnico."
                        Response.Redirect("Error.aspx")
                    End If

                    If ds.Tables("CLIENTI").Rows(0).Item("STATOABB") = "BLOCCATO" Then
                        Session("MACADDRESSSTATUS") = ""
                        Session("ERROR") = "La login al Sistema è bloccata.<br>Per info contattare il supporto tecnico."
                        Response.Redirect("Error.aspx")
                    End If

                    If ds.Tables("CLIENTI").Rows(0).Item("SCADABB") < Now Then
                        Session("MACADDRESSSTATUS") = ""
                        Session("ERROR") = "L'abbonamento è scaduto.<br>Per info contattare il supporto tecnico."
                        Response.Redirect("Error.aspx")
                    End If

                    Session("USERNAME") = txtUsername.Text

                    Session("ULTIMALOGIN") = Left(CType(ds.Tables("CLIENTI").Rows(0).Item("ULTIMALOGIN") & "", String), 10)
                    Session("LASTLOGIN") = "Ultima connessione: " & CType(ds.Tables("CLIENTI").Rows(0).Item("ULTIMALOGIN") & "", String)

                    ds.Tables("CLIENTI").Rows(0).Item("ULTIMALOGIN") = Format(Now, "dd/MM/yyyy")
                    Session("PROFILO1") = ds.Tables("CLIENTI").Rows(0).Item("PROFILO1")
                    Session("PROFILO2") = ds.Tables("CLIENTI").Rows(0).Item("PROFILO2")
                    Session("PROFILO3") = ds.Tables("CLIENTI").Rows(0).Item("PROFILO3")
                    Session("PROFILO4") = ds.Tables("CLIENTI").Rows(0).Item("PROFILO4")
                    Session("PROFILO5") = ds.Tables("CLIENTI").Rows(0).Item("PROFILO5")
                    Session("PROFILO6") = ds.Tables("CLIENTI").Rows(0).Item("PROFILO6")
                    Session("PROFILO7") = ds.Tables("CLIENTI").Rows(0).Item("PROFILO7")
                    Session("PROFILO8") = ds.Tables("CLIENTI").Rows(0).Item("PROFILO8")
                    Session("NOME_CLIENTE") = CType(ds.Tables("CLIENTI").Rows(0).Item("DENOMINAZIONE"), String)

                    If ds.Tables("CLIENTI").Rows(0).Item("MACCONTROL" & "") = "CONTROLLA CODICE" Then
                        If ds.Tables("CLIENTI").Rows(0).Item("MACADDRESS" & "") = "" Then
                            sql = "UPDATE CLIENTI SET MACADDRESS='" & MacAddressClient & "' WHERE USERNAME='" & Session("USERNAME") & "'"
                            .UpdateGenericTable(sql)
                        Else
                            If ds.Tables("CLIENTI").Rows(0).Item("MACADDRESS" & "") <> MacAddressClient And ds.Tables("CLIENTI").Rows(0).Item("MACCONTROL" & "") = "CONTROLLA CODICE" Then
                                Session("MACADDRESSSTATUS") = ""
                                Session("ERROR") = "Tentativo di Connessione a BTWeb non autorizzato.<br>Codice non corretto.<br>Utilizzare l'utility BT per connettersi al Sistema.<br>Per info contattare il supporto tecnico"
                                Response.Redirect("Error.aspx")
                            End If
                        End If
                    End If

                    sql = "INSERT INTO SCTMACADDRESS  (SCTDATA,SCTMACADDR,SCTUSERNAME) VALUES (getdate(),'" & MacAddressClient & "','" & Session("USERNAME") & "')"
                    .UpdateGenericTable(sql)

                    sql = " UPDATE CLIENTI SET ULTIMALOGIN = '" & Format(Now, "dd/MM/yyyy ora HH:mm") & "'" & " , CONNESSIONE = '" & Session.SessionID & "' " & " WHERE USERNAME = '" & Session("USERNAME") & "'"
                    .UpdateGenericTable(sql)

                    Session("LOGIN_VALIDATE") = "ABILITATO_BT"
                    Session("ITEMSELECTINDEX") = -1
                    'End If

                End If
            Catch ex As Exception
                Session("LOGIN_VALIDATE") = "NO_PERMISSION"
                Throw ex
            Finally
                If Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
                    Response.Redirect("IDXMenuIn.aspx")
                    'Dhtmlmenucontrol4.Visible = True
                    ''With cdt
                    'sql = "SELECT * FROM NEWSGENERALI WHERE TITOLO = 'COMUNICAZIONE' ORDER BY DMODIFICA DESC"
                    '.ReadGenericQuery(ds, sql, "NEWSGENERALI")
                    'tbComun.Visible = True
                    'If Not CType(ds.Tables("NEWSGENERALI").Rows.Count, Integer) = 0 Then
                    '    tbComun.Rows(1).Cells(0).Text = Replace(CType(ds.Tables("NEWSGENERALI").Rows(0).Item("NEWS") & "", String), Chr(13), "<br>")

                    'End If
                    ''End With
                    'lblError.Visible = False
                    ''If Not Session("USERNAME") = "btadmin" Then
                    'If Not Session("USERNAME") = "btadmin" Then
                    '    If Session("PROFILO1") Then lblAZIONI.Visible = True
                    '    If Session("PROFILO2") Then lblOBBLIGAZIONI.Visible = True
                    'Else
                    '    lblAZIONI.Visible = True
                    '    lblOBBLIGAZIONI.Visible = True
                    'End If
                    'lblINFOVARIE.Visible = True
                    'lblUsername.Visible = False
                    'txtUsername.Visible = False
                    'lblPassword.Visible = False
                    'txtPassword.Visible = False
                    'lblLastLogin.Visible = True
                    'lbDal.Visible = False
                    'imgBollettino.Visible = False
                    'lblLastLogin.Text = Session("LASTLOGIN")
                    'btnLogin.Visible = False
                    'imgBtnInfo.Visible = False
                End If
                ds.Dispose()
            End Try
        End With
    End Sub

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim ds As New System.Data.DataSet
        Dim cdt As New AccessDBManager
        Dim sql As String
        Me.Response.CacheControl = "no-cache"
        Me.Response.AddHeader("Pragma", "no-cache")
        Me.Response.Expires = -1

        strServerVersion = GetEnvValue(configHelper.pathXML & "\DBConn.Config", "VERSION")
        'tbCom.Rows(0).Cells(0).Text = "Comunicazione agli Utenti:" & vbLf & getComunic()
        If Session("LOGIN_VALIDATE") = "ABILITATO_BT" Then
            'Response.Redirect("IDXMenuIn.aspx")
            'FormsAuthentication.SetAuthCookie(Session("USERNAME"), False)
            lblError.Visible = False
            'If Not Session("USERNAME") = "btadmin" Then
            '    If Session("PROFILO1") Then lblAZIONI.Visible = True
            '    If Session("PROFILO2") Then lblOBBLIGAZIONI.Visible = True
            'Else
            '    lblAZIONI.Visible = True
            '    lblOBBLIGAZIONI.Visible = True
            'End If
            'lblINFOVARIE.Visible = True
            lblUsername.Visible = False
            txtUsername.Visible = False
            lblPassword.Visible = False
            txtPassword.Visible = False
            lblLastLogin.Visible = True

            lblLastLogin.Text = Session("LASTLOGIN")
            btnLogin.Visible = False
            btnGotoHome.Visible = True

            'imgBtnInfo1.Visible = False
            'imgBtnInfo2.Visible = False
            'With cdt
            '    sql = "SELECT * FROM NEWSGENERALI WHERE TITOLO = 'COMUNICAZIONE' ORDER BY DMODIFICA DESC"
            '    .ReadGenericQuery(ds, sql, "NEWSGENERALI")
            '    tbComun.Visible = True
            '    If Not CType(ds.Tables("NEWSGENERALI").Rows.Count, Integer) = 0 Then
            '        tbComun.Rows(1).Cells(0).Text = ds.Tables("NEWSGENERALI").Rows(0).Item("NEWS")
            '    End If
            'End With
        Else
            Session("MACADDRESSSTATUS") = ""
            MacAddressClient = ""
            btnGotoHome.Visible = False
        End If
    End Sub

    'Private Sub lblAZIONI_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblAZIONI.Click
    '    Response.Redirect("AZIONI/AZMenu.aspx")
    'End Sub

    'Private Sub lblINFOVARIE_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblINFOVARIE.Click
    '    Response.Redirect("FindNews.aspx")
    'End Sub

    Private Sub imgBtnInfo1_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("infoDoc/Informazioni.htm")
    End Sub

    Private Sub imgBtnInfo2_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("infoDoc/Comeabbonarsi.htm")
    End Sub

    Private Sub btnGotoHome_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnGotoHome.Click
        Response.Redirect("IDXMenuIn.aspx")
    End Sub
End Class
