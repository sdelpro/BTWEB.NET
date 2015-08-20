Public Class AZSocieta
    Inherits System.Web.UI.Page
    Dim strIsinDes As String

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents tbCarPrinc As System.Web.UI.WebControls.Table
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblLastLogin As System.Web.UI.WebControls.Label
    Protected WithEvents lblTitoloForm As System.Web.UI.WebControls.Label
    Protected WithEvents lblAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblOBBLIGAZIONI As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblINFOVARIE As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lbEstrazioni As System.Web.UI.WebControls.LinkButton
    Protected WithEvents lbl_codisi As System.Web.UI.WebControls.Label
    Protected WithEvents casse As System.Web.UI.WebControls.Label
    Protected WithEvents spn_ragsoc As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_ragsoc As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_sedamm As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_sedleg As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_telefo As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_fax As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_quotat As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_valuta As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_capsoc As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_pivacf As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_stato As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_tipsoc As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_prdeso As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_iniese As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_finese As System.Web.UI.WebControls.Label
    Protected WithEvents lbl_casse As System.Web.UI.WebControls.Label

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
        Session("SORT_VERSO") = 0
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

        Dim dt As New System.Data.DataTable
        Dim dtHis As New System.Data.DataTable
        Dim cdt As New AccessDBManager()
        Dim sql As String = ""
        Dim LastRecord As Boolean = False
        Dim kCol As Integer = -1
        Dim kCol2
        Dim TableString As String = ""

        With cdt
            Try

                If Session("ISINCODE") <> "" Then
                    sql = "SELECT  A.*,CONVERT(VARCHAR,CONVERT (MONEY, CAPSOCIALE),1) AS CAPSOC FROM SOCIETA A, TITOLOAZIONARIO B WHERE B.ISINCODE = '" & Session("ISINCODE") & "' AND A.ISINCODE=B.ISINCODERIF"
                Else
                    Response.Redirect("AZLista.aspx")
                End If

                .ReadGenericQuery(dt, sql)

                If CType(dt.Rows.Count, Boolean) Then
                    Session("ISINCODE") = CType(dt.Rows(0).Item("ISINCODE") & "", String)
                    strIsinDes = CType(dt.Rows(0).Item("ISINCODE") & "", String) & CType(dt.Rows(0).Item("RAGSOC") & "", String)
                    kCol += 1
                    kCol += 1

                    'tbCarPrinc.Rows(kCol).Cells(0).Text = "CODICE ISIN"
                    lbl_codisi.Text = CType(dt.Rows(0).Item("ISINCODE") & "", String)

                    'tbCarPrinc.Rows(kCol).Cells(2).Text = "RAGIONE SOCIALE"
                    Dim ragSoc As String = Trim(CType(dt.Rows(0).Item("RAGSOC") & "", String))
                    If (ragSoc = ".") Then
                        ragSoc = ""
                    End If
                    lbl_ragsoc.Text = IIf(ragSoc <> "", ragSoc, "")
                    spn_ragsoc.Visible = (ragSoc <> "")

                    kCol += 1

                    'tbCarPrinc.Rows(kCol).Cells(0).Text = "SEDE AMMINISTRATIVA"
                    lbl_sedamm.Text = IIf(CType(dt.Rows(0).Item("SEDEAMM") & "", String) <> "", CType(dt.Rows(0).Item("SEDEAMM") & "", String), ".")
                    'tbCarPrinc.Rows(kCol).Cells(2).Text = "SEDE LEGALE"
                    lbl_sedleg.Text = IIf(CType(dt.Rows(0).Item("SEDELEG") & "", String) <> "", CType(dt.Rows(0).Item("SEDELEG") & "", String), ".")

                    kCol += 1

                    'tbCarPrinc.Rows(kCol).Cells(0).Text = "TELEFONO"
                    lbl_telefo.Text = IIf(CType(dt.Rows(0).Item("TEL") & "", String) <> "", CType(dt.Rows(0).Item("TEL") & "", String), ".")
                    'tbCarPrinc.Rows(kCol).Cells(2).Text = "FAX"
                    lbl_fax.Text = IIf(CType(dt.Rows(0).Item("FAX") & "", String) <> "", CType(dt.Rows(0).Item("FAX") & "", String), ".")
                    'tbCarPrinc.Rows(kCol).Cells(4).Text = "QUOTATA"
                    lbl_quotat.Text = IIf(dt.Rows(0).Item("SOCQUOTATA"), "SI", "NO")

                    kCol += 1

                    'tbCarPrinc.Rows(kCol).Cells(0).Text = "VALUTA"
                    lbl_valuta.Text = CType(dt.Rows(0).Item("VALUTA") & "", String)
                    'tbCarPrinc.Rows(kCol).Cells(2).Text = "CAP. SOCIALE"
                    lbl_capsoc.Text = Replace(Replace(Replace(dt.Rows(0).Item("CAPSOC"), ",", "#"), ".", ","), "#", ".")
                    'tbCarPrinc.Rows(kCol).Cells(3).Text = Format(CType(dt.Rows(0).Item("CAPSOCIALE") & "", Double), "###,###,###,###.00")
                    'tbCarPrinc.Rows(kCol).Cells(4).Text = "ESERC. SOCIALE DA"
                    If IsDate(CType(dt.Rows(0).Item("INIZIOESERCIZIO") & "", String)) Then
                        lbl_iniese.Text = CType(Format(dt.Rows(0).Item("INIZIOESERCIZIO"), "dd MMM") & "", String)
                    Else
                        lbl_iniese.Text = "."
                    End If
                    'tbCarPrinc.Rows(kCol).Cells(5).Text = IIf(CType(dt.Rows(0).Item("INIZIOESERCIZIO") & "", String) <> "", CType(Format(dt.Rows(0).Item("INIZIOESERCIZIO"), "dd MMM") & "", String), ".")
                    'tbCarPrinc.Rows(kCol).Cells(6).Text = "A"
                    If IsDate(CType(dt.Rows(0).Item("FINEESERCIZIO") & "", String)) Then
                        lbl_finese.Text = CType(Format(dt.Rows(0).Item("FINEESERCIZIO"), "dd MMM") & "", String)
                    Else
                        lbl_finese.Text = "."
                    End If
                    'tbCarPrinc.Rows(kCol).Cells(7).Text = IIf(IsDate(CType(dt.Rows(0).Item("FINEESERCIZIO") & "", String)), CType(Format(dt.Rows(0).Item("FINEESERCIZIO"), "dd MMM") & "", String), ".")

                    kCol += 1

                    'tbCarPrinc.Rows(kCol).Cells(0).Text = "P.IVA/C.FISCALE"
                    lbl_pivacf.Text = IIf(CType(dt.Rows(0).Item("PIVA") & "", String) = "", ".", CType(dt.Rows(0).Item("PIVA") & "", String))
                    'tbCarPrinc.Rows(kCol).Cells(2).Text = "STATO"
                    lbl_stato.Text = CType(dt.Rows(0).Item("STATO") & "", String)
                    'tbCarPrinc.Rows(kCol).Cells(4).Text = "TIPO SOCIETA'"
                    lbl_tipsoc.Text = IIf(CType(dt.Rows(0).Item("NOTA") & "", String) = "SOCIETA'", "SOCIETA' DIVERSA", CType(dt.Rows(0).Item("NOTA") & "", String))
                    If dt.Rows(0).Item("STATOTITOLO") = "ATTIVO" Then
                        lbl_tipsoc.Text = "SOCIETA' ATTIVA"
                        'tbCarPrinc.Rows(kCol).Cells(6).ForeColor = Color.Blue
                    Else
                        lbl_tipsoc.Text = "SOCIETA' NON PIU' ATTIVA"
                        'tbCarPrinc.Rows(kCol).Cells(6).ForeColor = Color.Red
                    End If
                    kCol += 1
                    kCol += 1
                    'tbCarPrinc.Rows(kCol).Cells(0).Text = "CASSE"

                    kCol += 1
                    lbl_casse.Text = CType(dt.Rows(0).Item("CASSE") & "", String)

                End If

                    'If CType(dt.Rows.Count, Boolean) Then
                    '    Session("ISINCODE") = CType(dt.Rows(0).Item("ISINCODE") & "", String)
                    '    strIsinDes = CType(dt.Rows(0).Item("ISINCODE") & "", String) & CType(dt.Rows(0).Item("RAGSOC") & "", String)
                    '    kCol += 1
                    '    kCol += 1

                    '    tbCarPrinc.Rows(kCol).Cells(0).Text = "CODICE ISIN"
                    '    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("ISINCODE") & "", String)
                    '    tbCarPrinc.Rows(kCol).Cells(2).Text = "RAGIONE SOCIALE"
                    '    tbCarPrinc.Rows(kCol).Cells(3).Text = IIf(CType(dt.Rows(0).Item("RAGSOC") & "", String) <> "", CType(dt.Rows(0).Item("RAGSOC") & "", String), ".")

                    '    kCol += 1

                    '    tbCarPrinc.Rows(kCol).Cells(0).Text = "SEDE AMMINISTRATIVA"
                    '    tbCarPrinc.Rows(kCol).Cells(1).Text = IIf(CType(dt.Rows(0).Item("SEDEAMM") & "", String) <> "", CType(dt.Rows(0).Item("SEDEAMM") & "", String), ".")
                    '    tbCarPrinc.Rows(kCol).Cells(2).Text = "SEDE LEGALE"
                    '    tbCarPrinc.Rows(kCol).Cells(3).Text = IIf(CType(dt.Rows(0).Item("SEDELEG") & "", String) <> "", CType(dt.Rows(0).Item("SEDELEG") & "", String), ".")

                    '    kCol += 1

                    '    tbCarPrinc.Rows(kCol).Cells(0).Text = "TELEFONO"
                    '    tbCarPrinc.Rows(kCol).Cells(1).Text = IIf(CType(dt.Rows(0).Item("TEL") & "", String) <> "", CType(dt.Rows(0).Item("TEL") & "", String), ".")
                    '    tbCarPrinc.Rows(kCol).Cells(2).Text = "FAX"
                    '    tbCarPrinc.Rows(kCol).Cells(3).Text = IIf(CType(dt.Rows(0).Item("FAX") & "", String) <> "", CType(dt.Rows(0).Item("FAX") & "", String), ".")
                    '    tbCarPrinc.Rows(kCol).Cells(4).Text = "QUOTATA"
                    '    tbCarPrinc.Rows(kCol).Cells(5).Text = IIf(dt.Rows(0).Item("SOCQUOTATA"), "SI", "NO")

                    '    kCol += 1

                    '    tbCarPrinc.Rows(kCol).Cells(0).Text = "VALUTA"
                    '    tbCarPrinc.Rows(kCol).Cells(1).Text = CType(dt.Rows(0).Item("VALUTA") & "", String)
                    '    tbCarPrinc.Rows(kCol).Cells(2).Text = "CAP. SOCIALE"
                    '    tbCarPrinc.Rows(kCol).Cells(3).Text = Replace(Replace(Replace(dt.Rows(0).Item("CAPSOC"), ",", "#"), ".", ","), "#", ".")
                    '    'tbCarPrinc.Rows(kCol).Cells(3).Text = Format(CType(dt.Rows(0).Item("CAPSOCIALE") & "", Double), "###,###,###,###.00")
                    '    tbCarPrinc.Rows(kCol).Cells(4).Text = "ESERC. SOCIALE DA"
                    '    If IsDate(CType(dt.Rows(0).Item("INIZIOESERCIZIO") & "", String)) Then
                    '        tbCarPrinc.Rows(kCol).Cells(5).Text = CType(Format(dt.Rows(0).Item("INIZIOESERCIZIO"), "dd MMM") & "", String)
                    '    Else
                    '        tbCarPrinc.Rows(kCol).Cells(5).Text = "."
                    '    End If
                    '    'tbCarPrinc.Rows(kCol).Cells(5).Text = IIf(CType(dt.Rows(0).Item("INIZIOESERCIZIO") & "", String) <> "", CType(Format(dt.Rows(0).Item("INIZIOESERCIZIO"), "dd MMM") & "", String), ".")
                    '    tbCarPrinc.Rows(kCol).Cells(6).Text = "A"
                    '    If IsDate(CType(dt.Rows(0).Item("FINEESERCIZIO") & "", String)) Then
                    '        tbCarPrinc.Rows(kCol).Cells(7).Text = CType(Format(dt.Rows(0).Item("FINEESERCIZIO"), "dd MMM") & "", String)
                    '    Else
                    '        tbCarPrinc.Rows(kCol).Cells(7).Text = "."
                    '    End If
                    '    'tbCarPrinc.Rows(kCol).Cells(7).Text = IIf(IsDate(CType(dt.Rows(0).Item("FINEESERCIZIO") & "", String)), CType(Format(dt.Rows(0).Item("FINEESERCIZIO"), "dd MMM") & "", String), ".")

                    '    kCol += 1

                    '    tbCarPrinc.Rows(kCol).Cells(0).Text = "P.IVA/C.FISCALE"
                    '    tbCarPrinc.Rows(kCol).Cells(1).Text = IIf(CType(dt.Rows(0).Item("PIVA") & "", String) = "", ".", CType(dt.Rows(0).Item("PIVA") & "", String))
                    '    tbCarPrinc.Rows(kCol).Cells(2).Text = "STATO"
                    '    tbCarPrinc.Rows(kCol).Cells(3).Text = CType(dt.Rows(0).Item("STATO") & "", String)
                    '    tbCarPrinc.Rows(kCol).Cells(4).Text = "TIPO SOCIETA'"
                    '    tbCarPrinc.Rows(kCol).Cells(5).Text = IIf(CType(dt.Rows(0).Item("NOTA") & "", String) = "SOCIETA'", "SOCIETA' DIVERSA", CType(dt.Rows(0).Item("NOTA") & "", String))
                    '    If dt.Rows(0).Item("STATOTITOLO") = "ATTIVO" Then
                    '        tbCarPrinc.Rows(kCol).Cells(6).Text = "SOCIETA' ATTIVA"
                    '        tbCarPrinc.Rows(kCol).Cells(6).ForeColor = Color.Blue
                    '    Else
                    '        tbCarPrinc.Rows(kCol).Cells(6).Text = "SOCIETA' NON PIU' ATTIVA"
                    '        tbCarPrinc.Rows(kCol).Cells(6).ForeColor = Color.Red
                    '    End If
                    '    kCol += 1
                    '    kCol += 1
                    '    tbCarPrinc.Rows(kCol).Cells(0).Text = "CASSE"

                    '    kCol += 1
                    '    tbCarPrinc.Rows(kCol).Cells(0).Text = CType(dt.Rows(0).Item("CASSE") & "", String)

                    'End If



                    If Session("ISINCODE") <> "" Then
                        sql = "SELECT  * FROM HISTORYSOCIETA WHERE ISINCORRENTE = '" & Session("ISINCODE") & "' ORDER BY DATAMODIFICA"
                    Else
                        Response.Redirect("AZLista.aspx")
                    End If
                    .ReadGenericQuery(dtHis, sql)
                    kCol += 1
                    'tbCarPrinc.Rows(kCol).Cells(0).Text = "PRECEDENTI DENOMINAZIONI SOCIETA'"                
                    kCol += 1
                    If dtHis.Rows.Count > 0 Then
                        For kCol2 = 0 To dtHis.Rows.Count - 1
                            Call CreaTabella()
                            lbl_prdeso.Text = CType(dtHis.Rows(kCol2).Item("DENOMINAZIONE") & "", String)
                        Next
                    Else
                        lbl_prdeso.Text() = "nessuna"
                    End If
            Catch ex As Exception
                Throw ex
            Finally
                dt.Dispose()
                dtHis.Dispose()
                .Dispose()
            End Try
        End With

    End Sub


    Private Sub CreaTabella()
        Dim zx As Int16
        Dim tr As TableRow
        Dim tch As TableCell

        'riga 1
        tr = New TableRow
        tch = New TableCell
        tch.BackColor = System.Drawing.Color.Transparent
        tch.BorderStyle = BorderStyle.Solid
        tch.BorderWidth = Unit.Pixel(1)
        tch.BorderColor = System.Drawing.Color.Black
        tch.Text = ""
        tch.ColumnSpan = 8
        tch.Font.Name = "Tahoma"
        tch.Font.Size = FontUnit.Point(10)
        tr.Cells.Add(tch)
        tch = Nothing

        tbCarPrinc.Rows.Add(tr)
        tr = Nothing




    End Sub




    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Session("ISINCODE") = strIsinDes
        Response.Redirect("AZTitoli.aspx")
    End Sub
End Class
