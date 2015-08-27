Option Strict On
Option Explicit On 

Imports System.ComponentModel
Imports System.Diagnostics
Imports System
Imports System.Collections
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Configuration

Namespace BTWEB.DHTML.MenuControl

    Public Class DHTMLMenuControl
        Inherits System.Web.UI.UserControl
        Private m_strScriptMenu As String = ""
        Private isTheFirstTime As Boolean = True
        Private m_TypeMenu As enTypeMenu
        Private m_ImagePath As String = ""
        Private m_ColorItemSelect As Boolean
        Private Const COLORSELECT As String = "#00547d"
        Public Enum enTypeMenu
            Generale = 0
            Obbligazioni
            Azioni
            RicercheObbligazioni
            TopMenuHome
            TopMenuLogin
            TopMenuOB
            TopMenuAZ
            TopMenu
            TopTuttoTitoli
            RicercheAzioni
            Titoli
        End Enum

#Region " Web Form Designer Generated Code "

        'This call is required by the Web Form Designer.
        <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

        End Sub

        Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
            'CODEGEN: This method call is required by the Web Form Designer
            'Do not modify it using the code editor.
            InitializeComponent()

        End Sub

#End Region

        <Bindable(True), _
        Category("TypeMenu"), _
        Description("Specifica il nome del Menu"), _
        DefaultValue("")> _
        Public Property TypeMenu() As enTypeMenu
            Get
                Return m_TypeMenu
            End Get
            Set(ByVal Value As enTypeMenu)
                m_TypeMenu = Value
            End Set
        End Property

        <Bindable(True), _
        Category("ImagePath"), _
        Description("Specifica il path della cartella contenente le immagini"), _
        DefaultValue("")> _
        Public Property ImagePath() As String
            Get
                Return m_ImagePath
            End Get
            Set(ByVal Value As String)
                m_ImagePath = Value
            End Set
        End Property

        <Bindable(True), _
        Category("ColorItemSelect"), _
        Description("Specifica se l'items selezionato deve avere colore differente"), _
        DefaultValue("")> _
        Public Property ColorItemSelect() As Boolean
            Get
                Return m_ColorItemSelect
            End Get
            Set(ByVal Value As Boolean)
                m_ColorItemSelect = Value
            End Set
        End Property


        Private Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load

            Controls.Clear()
            If Not isTheFirstTime Then
                Select Case m_TypeMenu
                    Case enTypeMenu.Generale
                        CreateMenuGenerale(m_ImagePath)
                    Case enTypeMenu.Obbligazioni
                        CreateMenuObbligazioni(m_ImagePath)
                        'CreateMenuRicercheObbligazioni(m_ImagePath)
                    Case enTypeMenu.RicercheObbligazioni
                        CreateMenuRicercheObbligazioni(m_ImagePath)
                    Case enTypeMenu.RicercheAzioni
                        CreateMenuRicercheAzioni(m_ImagePath)
                    Case enTypeMenu.TopMenuAZ
                        CreateTopSixMenuAZ(m_ImagePath)
                    Case enTypeMenu.TopMenuHome
                        CreateTopSixMenuHome(m_ImagePath)
                    Case enTypeMenu.TopTuttoTitoli
                        CreateTopTuttoTitoli(m_ImagePath)
                    Case enTypeMenu.TopMenuLogin
                        CreateTopMenuLogin(m_ImagePath)
                    Case enTypeMenu.TopMenuOB
                        CreateTopSixMenuOB(m_ImagePath)
                    Case enTypeMenu.TopMenu
                        CreateTopSixMenu(m_ImagePath)
                    Case enTypeMenu.Azioni
                        CreateMenuAzioni(m_ImagePath)
                        'CreateMenuRicercheAzioni(m_ImagePath)
                    Case enTypeMenu.Titoli
                        CreateMenuTitoli(m_ImagePath)
                End Select

            End If

            isTheFirstTime = False
        End Sub

        Private Sub CreateMenuGenerale(ByVal _PathImage As String)

            Dim ctrl As System.Web.UI.WebControls.WebControl

            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,"""","""",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,0,7,100,"""",-2,"""",-2,50,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,""Brambilla Titoli Milano  "","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#ffff99"",""#ffff99"",""8pt Arial"" ,""8pt Arial""  ,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i1"",""p0i0"",[0,""Home  "","""","""",-1,-1,0,"""",""_self"","""",""Home Page"","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#b5bed6"",0,"""","""",3,3,1,1,""#00547d"",""#ffffff"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i2"",""p0i1"",[0,""Società"","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",7,7]);" & vbCrLf
            m_strScriptMenu += " stm_bpx(""p1"",""p0"",[1,4,0,0,0,0,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i0"",""p0i1"",[0,""Chi Siamo"","""","""",-1,-1,0,"""",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i1"",""p1i0"",[0,""Contatti""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i2"",""p1i0"",[0,""Scrivi""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i3"",""p0i2"",[0,""Obbligazioni"","""","""",-1,-1,0,"""",""_self"","""",""Titoli Obbligazionari""]);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p2"",[1,4,0,0,0,0,0,0,100,""progid:DXImageTransform.Microsoft.Fade(overlap=.5,enabled=0,Duration=0.60)"",-2,"""",-2,50,0,0,""#fffff7"",""#ffffff"","""",3,1,1,""#ffffff""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p2i0"",""p0i1"",[0,""Visualizza Obbligazioni"","""","""",-1,-1,0,""OBLista.aspx"",""_self"","""",""Visualizza Obbligazione""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p2i1"",""p0i1"",[0,""Ricerca per Descrizione"","""","""",-1,-1,0,""OBFindDesc.aspx"",""left"","""",""Ricerca Per Descrizione""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p2i2"",""p0i1"",[0,""Ricerca News"","""","""",-1,-1,0,"""",""_self"","""",""Ricerca per News""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p2i3"",""p0i1"",[0,""Ricerca Piano Indicizzazione"","""","""",-1,-1,0,"""",""_self"","""",""Ricerca Piano Indicizzato""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p2i4"",""p0i1"",[0,""Ricerca per Data Scadenza"","""","""",-1,-1,0,"""",""_self"","""",""Ricerca per Data Scadenza""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i4"",""p0i2"",[0,""Azioni"","""","""",-1,-1,0,"""",""_self"","""",""Titoli Azionari""]);" & vbCrLf
            m_strScriptMenu += " stm_bpx(""p3"",""p2"",[1,4,0,0,0,0,0,0,100,""progid:DXImageTransform.Microsoft.Fade(overlap=.5,enabled=0,Duration=0.60)"",-2,"""",-2,50,0,0,""#fffff7"",""#fffff7""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p3i0"",""p0i1"",[0,""Visualizza Società"","""","""",-1,-1,0,""ViewSocieta.aspx"",""_self"","""",""Visualizza Società""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p3i1"",""p0i1"",[0,""Ricerca Titoli"","""","""",-1,-1,0,"""",""_self"","""",""Ricerca Titoli""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i5"",""p0i2"",[0,""Strumenti"","""","""",-1,-1,0,"""",""_self"","""",""Strumenti""]);" & vbCrLf
            m_strScriptMenu += " stm_bpx(""p4"",""p3"",[]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p4i0"",""p0i1"",[0,""Cambia Password"","""","""",-1,-1,0,"""",""_self"","""",""Cambia la Password personale""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p4i1"",""p0i1"",[0,""Logout"","""","""",-1,-1,0,""Logout.aspx"",""_self"","""",""Disconnessione sicura""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i6"",""p1i0"",[0,""Abbonamento  ""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf

            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)
        End Sub




        Private Sub CreateTopSixMenuOB(ByVal _PathImage As String)

            Dim ctrl As System.Web.UI.WebControls.WebControl


            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,""stgcl()"",""stgct()"",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,0,7,100,"""",-2,"""",-2,32,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,""Copyright Brambilla & C. Servizi Telematici Srl - Riproduzione Vietata"","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#00ff00"",""#ffffff"",""8pt Arial"" ,""8pt Arial""  ,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i1"",""p0i0"",[0,""     <BR>"","""","""",-1,-1,0,"""","""","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#ffff99"",""#ffff99"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i2"",""p0i0"",[0,""Menu"","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",7,7,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#ffffff"",""#ffffff"",""8pt Arial"" ,""8pt Arial"" ]);" & vbCrLf
            m_strScriptMenu += " stm_bpx(""p1"",""p0"",[1,4,-10,1,0,0,0,0,100,"""",-2,"""",-2,50]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i0"",""p0i0"",[0,""Menu Principale"","""","""",-1,-1,0,""../IDXMenuIn.aspx"",""_self"","""",""Home Page"","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00ff00"",0,"""","""",3,3,1,1,""#00547d"",""#00ff00"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i1"",""p1i0"",[0,""Menu Ricerche Obbligazioni"","""","""",-1,-1,0,""OBMenu.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i2"",""p1i0"",[0,""Logout"","""","""",-1,-1,0,""../Logout.aspx"",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,1,1,""#00547d"",0,""#ff0000"",0,"""","""",3,3,1,1,""#00547d"",""#ff0000"",""#ffffff"",""#ffffff""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf

            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)

        End Sub

        Private Sub CreateTopMenuLogin(ByVal _PathImage As String)

            Dim ctrl As System.Web.UI.WebControls.WebControl


            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,""stgcl()"",""stgct()"",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,0,0,100,"""",-2,"""",-2,32,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,""Copyright Brambilla & C. Servizi Telematici Srl - Riproduzione Vietata"","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#00ff00"",""#ffffff"",""8pt Arial"" ,""8pt Arial""  ,0,0]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p0i1"",""p0i0"",[0,""   <BR>"","""","""",-1,-1,0,"""","""","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#ffff99"",""#ffff99"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p0i2"",""p0i0"",[0,""Logout"","""","""",-1,-1,0,""Logout.aspx"",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,1,1,""#00547d"",0,""#ff0000"",0,"""","""",3,3,1,1,""#00547d"",""#ff0000"",""#ffffff"",""#ffffff"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf
            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)

        End Sub

        Private Sub CreateTopTuttoTitoli(ByVal _PathImage As String)

            Dim ctrl As System.Web.UI.WebControls.WebControl


            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,""stgcl()"",""stgct()"",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,0,0,100,"""",-2,"""",-2,32,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,""Tuttotitoli® di Brambilla & C. Servizi Telematici Srl - via Giardino 4 - 20123 Milano  - tel. 02 72022440 - fax 02 809571 "","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#00ff00"",""#ffffff"",""8pt Arial"" ,""8pt Arial""  ,0,0]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p0i1"",""p0i0"",[0,""   <BR>"","""","""",-1,-1,0,"""","""","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#ffff99"",""#ffff99"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p0i2"",""p0i0"",[0,""Logout"","""","""",-1,-1,0,""Logout.aspx"",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,1,1,""#00547d"",0,""#ff0000"",0,"""","""",3,3,1,1,""#00547d"",""#ff0000"",""#ffffff"",""#ffffff"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf
            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)

        End Sub
        Private Sub CreateTopSixMenu(ByVal _PathImage As String)

            Dim ctrl As System.Web.UI.WebControls.WebControl


            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,""stgcl()"",""stgct()"",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,0,7,100,"""",-2,"""",-2,32,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,""Copyright Brambilla & C. Servizi Telematici Srl - Riproduzione Vietata"","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#00ff00"",""#ffffff"",""8pt Arial"" ,""8pt Arial""  ,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i1"",""p0i0"",[0,""     <BR>"","""","""",-1,-1,0,"""","""","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#ffff99"",""#ffff99"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i2"",""p0i0"",[0,""Menu"","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",7,7,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#ffffff"",""#ffffff"",""8pt Arial"" ,""8pt Arial"" ]);" & vbCrLf
            m_strScriptMenu += " stm_bpx(""p1"",""p0"",[1,4,-10,1,0,0,0,0,100,"""",-2,"""",-2,50]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i0"",""p0i0"",[0,""Menu Principale"","""","""",-1,-1,0,""IDXMenuIn.aspx"",""_self"","""",""Home Page"","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00ff00"",0,"""","""",3,3,1,1,""#00547d"",""#00ff00"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i2"",""p1i0"",[0,""Logout"","""","""",-1,-1,0,""Logout.aspx"",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,1,1,""#00547d"",0,""#ff0000"",0,"""","""",3,3,1,1,""#00547d"",""#ff0000"",""#ffffff"",""#ffffff""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf

            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)

        End Sub


        Private Sub CreateTopSixMenuAZ(ByVal _PathImage As String)

            Dim ctrl As System.Web.UI.WebControls.WebControl


            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,""stgcl()"",""stgct()"",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,0,7,100,"""",-2,"""",-2,32,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,""Copyright Brambilla & C. Servizi Telematici Srl - Riproduzione Vietata"","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#00ff00"",""#ffffff"",""8pt Arial"" ,""8pt Arial""  ,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i1"",""p0i0"",[0,""     <BR>"","""","""",-1,-1,0,"""","""","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#ffff99"",""#ffff99"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i2"",""p0i0"",[0,""Menu"","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",7,7,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#ffffff"",""#ffffff"",""8pt Arial"" ,""8pt Arial"" ]);" & vbCrLf
            m_strScriptMenu += " stm_bpx(""p1"",""p0"",[1,4,-10,1,0,0,0,0,100,"""",-2,"""",-2,50]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i0"",""p0i0"",[0,""Menu Principale"","""","""",-1,-1,0,""../IDXMenuIn.aspx"",""_self"","""",""Home Page"","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00ff00"",0,"""","""",3,3,1,1,""#00547d"",""#00ff00"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i1"",""p1i0"",[0,""Menu Ricerche Azioni"","""","""",-1,-1,0,""AZMenu.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i2"",""p1i0"",[0,""Logout"","""","""",-1,-1,0,""../Logout.aspx"",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,1,1,""#00547d"",0,""#ff0000"",0,"""","""",3,3,1,1,""#00547d"",""#ff0000"",""#ffffff"",""#ffffff""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf
            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)

        End Sub
        Private Sub CreateTopSixMenuHome(ByVal _PathImage As String)

            Dim ctrl As System.Web.UI.WebControls.WebControl


            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,""stgcl()"",""stgct()"",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,0,0,100,"""",-2,"""",-2,32,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,""Copyright Brambilla & C. Servizi Telematici Srl - Riproduzione Vietata"","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#00ff00"",""#ffffff"",""8pt Arial"" ,""8pt Arial""  ,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i1"",""p0i0"",[0,""   <BR>"","""","""",-1,-1,0,"""","""","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#00547d"",0,"""","""",3,3,1,1,""#00547d"",""#00547d"",""#ffff99"",""#ffff99"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i2"",""p0i0"",[0,""Logout"","""","""",-1,-1,0,""Logout.aspx"",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,1,1,""#00547d"",0,""#ff0000"",0,"""","""",3,3,1,1,""#00547d"",""#ff0000"",""#ffffff"",""#ffffff"",""8pt Arial"" ,""8pt Arial""  ]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf
            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)

        End Sub


        Private Sub CreateMenuRicercheObbligazioni(ByVal _PathImage As String)

            Dim ctrl As System.Web.UI.WebControls.WebControl


            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,"""","""",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,0,7,100,"""",-2,"""",-2,50,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            'm_strScriptMenu += " stm_ai(""p0i0"",[0,"""","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",7,7,0,0,1,""#00547d"",0,""#b5bed6"",0,"""","""",3,3,1,1,""#00547d"",""#ffffff"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial"" ,0,0]);" & vbCrLf
            'm_strScriptMenu += " stm_bp(""p1"",[1,4,0,0,0,0,0,0,100,"""",-2,"""",-2,50,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#ffffff""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,"""","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#b5bed6"",0,"""","""",3,3,1,1,""#00547d"",""#ffffff"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial"" ,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i0"",""p0i0"",[0,""Caratteristiche Principali - "","""","""",-1,-1,0,""OBFindDesc.aspx"",""_self"","""",""Ricerca per descrizione e isincode"","""","""",0,0,0,"""","""",0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i1"",""p1i0"",[0,""Data Scadenza - "","""","""",-1,-1,0,""OBFindScad.aspx"",""_self"","""",""Ricerca obbligazioni in scadenza""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i2"",""p1i0"",[0,""Aggiornamento Cedole - "","""","""",-1,-1,0,""OBFindCedole.aspx"",""_self"","""",""Ricerca delle cedole per data aggiornamento""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i3"",""p1i0"",[0,""Cedole in Scadenza - "","""","""",-1,-1,0,""OBFindCedScad.aspx"",""_self"","""",""Ricerca delle cedole per data scadenza""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i4"",""p1i0"",[0,""Piani Ammortamento - "","""","""",-1,-1,0,""OBFindPAmm.aspx"",""_self"","""",""Ricerca piani di ammortamento per data""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i5"",""p1i0"",[0,""News - "","""","""",-1,-1,0,""OBFindNews.aspx"",""_self"","""",""Ricerca news obbligazioni""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i6"",""p1i5"",[0,""Convertibili - "","""","""",-1,-1,0,""OBFindConv.aspx"",""_self"","""",""Ricerca convertibili""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i7"",""p1i5"",[0,""Regolamenti - "","""","""",-1,-1,0,""OBFindRegol.aspx"",""_self"","""",""Ricerca regolamenti""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i8"",""p1i0"",[0,""Maggiorazioni - "","""","""",-1,-1,0,""OBFindMagg.aspx"",""_self"","""",""Ricerca maggiorazioni""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p1i9"",""p1i5"",[0,""Quotazioni"","""","""",-1,-1,0,""OBFindQuot.aspx"",""_self"","""",""Ricerca quotazioni""]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p1i10"",""p1i5"",[0,""Obbligazioni estratte""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf

            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)

        End Sub

        Private Sub CreateMenuRicercheAzioni(ByVal _PathImage As String)


            Dim ctrl As System.Web.UI.WebControls.WebControl


            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,"""","""",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,0,7,100,"""",-2,"""",-2,50,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            'm_strScriptMenu += " stm_ai(""p0i0"",[0,""Ricerche Azioni"","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",7,7,0,0,1,""#00547d"",0,""#b5bed6"",0,"""","""",3,3,1,1,""#00547d"",""#ffffff"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial"" ,0,0]);" & vbCrLf
            'm_strScriptMenu += " stm_bp(""p0"",[1,4,0,0,0,0,0,0,100,"""",-2,"""",-2,50,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#ffffff""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,"""","""","""",-1,-1,0,"""",""_self"","""","""","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#b5bed6"",0,"""","""",3,3,1,1,""#00547d"",""#ffffff"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial"" ,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i0"",""p0i0"",[0,""Anagrafica Società - "","""","""",-1,-1,0,""AZFindSocieta.aspx"",""_self"","""",""Ricerca per descrizione e Isincode"","""","""",0,0,0,"""","""",0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i1"",""p0i0"",[0,""Titoli Società - "","""","""",-1,-1,0,""AZFindTitoli.aspx"",""_self"","""",""Ricerca Titoli di una Società""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i2"",""p0i0"",[0,""Convocazioni Assemblee - "","""","""",-1,-1,0,""AZFindAssemblee.aspx"",""_self"","""",""Ricerca delle assemblee per data""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i3"",""p0i0"",[0,""CDA - "","""","""",-1,-1,0,""AZFindCDA.aspx"",""_self"","""",""Ricerca dei CDA per data""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i4"",""p0i0"",[0,""Dividendi - "","""","""",-1,-1,0,""AZFindDIV.aspx"",""_self"","""",""Ricerca dividendi per stato per data""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i5"",""p0i0"",[0,""News Azioni - "","""","""",-1,-1,0,""AZFindNEWS.aspx"",""_self"","""",""Ricerca News Società""]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p0i6"",""p0i5"",[0,""Azioni Convertibili - "","""","""",-1,-1,0,""AZFindCONV.aspx"",""_self"","""",""Ricerca Covertibili in Corso""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i7"",""p0i5"",[0,""Operazioni sul Capitale"","""","""",-1,-1,0,""AZFindOPCAP.aspx"",""_self"","""",""Ricerca Op. sul Capitale""]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p0i8"",""p0i0"",[0,""Tabella Warrant in circolazione - "","""","""",-1,-1,0,""AZFindWARR.aspx"",""_self"","""",""Ricerca warrant""]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p0i9"",""p0i5"",[0,""Quotazioni"","""","""",-1,-1,0,""AZFindQuot.aspx"",""_self"","""",""Ricerca quotazioni titolo""]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p0i10"",""p0i5"",[0,""Obbligazioni estratte""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf

            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)
        End Sub

        Private Sub CreateMenuObbligazioni(ByVal _PathImage As String)

            Dim ctrl As System.Web.UI.WebControls.WebControl

            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,"""","""",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,22,0,100,"""",-2,"""",-2,50,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,""Elenco Obbligazioni  "","""","""",-1,-1,0,""OBLista.aspx"",""_self"","""",""Visualizza Obbligazione"","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#b5bed6"",0,"""","""",3,3,1,1,""#00547d"",""#ffffff"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial""  ,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i1"",""p0i0"",[0,""Caratteristiche Principali  "","""","""",-1,-1,0,""OBView.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i2"",""p0i1"",[0,""Piano Ammortamento  "","""","""",-1,-1,0,""OBPianoAmm.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i3"",""p0i2"",[0,""Maggiorazioni  "","""","""",-1,-1,0,""OBMaggiorazioni.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i4"",""p0i2"",[0,""Convertibili  "","""","""",-1,-1,0,""OBConvertibili.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i5"",""p0i2"",[0,""Piano Cedole  "","""","""",-1,-1,0,""OBPianoInd.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i6"",""p0i2"",[0,""Regolamento  "","""","""",-1,-1,0,""OBRegolamento.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i7"",""p0i2"",[0,""Quotazioni  "","""","""",-1,-1,0,""OBQuotazioni.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i8"",""p0i2"",[0,""News  "","""","""",-1,-1,0,""OBNews.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf

            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)

        End Sub

        Private Sub CreateMenuAzioni(ByVal _PathImage As String)

            Dim ctrl As System.Web.UI.WebControls.WebControl

            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,"""","""",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,22,0,100,"""",-2,"""",-2,50,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,""Risultati Ricerca - "","""","""",-1,-1,0,""AZLista.aspx"",""_self"","""",""Visualizza Titoli"","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#b5bed6"",0,"""","""",3,3,1,1,""#00547d"",""#ffffff"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial""  ,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,""Titoli Associati - "","""","""",-1,-1,0,""AZTitoli.aspx"",""_self"","""",""Visualizza Titoli"","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#b5bed6"",0,"""","""",3,3,1,1,""#00547d"",""#ffffff"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial""  ,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i1"",""p0i0"",[0,""Dividendi - "","""","""",-1,-1,0,""AZDividendi.aspx"",""_self"","""",""""]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p0i2"",""p0i1"",[0,""Quotazioni  "","""","""",-1,-1,0,""AZQuotazioni.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i2"",""p0i1"",[0,""Operazioni sul Capitale - "","""","""",-1,-1,0,""AZOpCapitale.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i3"",""p0i2"",[0,""News - "","""","""",-1,-1,0,""AZNews.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i4"",""p0i2"",[0,""Assemblee - "","""","""",-1,-1,0,""AZAssemblee.aspx"",""_self"","""",""""]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p0i6"",""p0i2"",[0,""Warrant  "","""","""",-1,-1,0,""AZWarrant.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i5"",""p0i2"",[0,""CDA"","""","""",-1,-1,0,""AZCda.aspx"",""_self"","""",""""]);" & vbCrLf
            'm_strScriptMenu += " stm_aix(""p0i8"",""p0i2"",[0,""Convertibili  "","""","""",-1,-1,0,""AZConvertibili.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf

            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)

        End Sub

        Private Sub CreateMenuTitoli(ByVal _PathImage As String)

            Dim ctrl As System.Web.UI.WebControls.WebControl

            m_strScriptMenu += " 	<script language=""JavaScript"" src=""stm31.js""></script>" & vbCrLf
            m_strScriptMenu += " 	<script language=""JavaScript"">" & vbCrLf
            m_strScriptMenu += " <!--" & vbCrLf
            m_strScriptMenu += " stm_bm([""menu0544"",400,"""","""",0,"""","""",0,0,250,0,1000,1,0,0,""""],this);" & vbCrLf
            m_strScriptMenu += " stm_bp(""p0"",[0,4,0,0,0,0,22,0,100,"""",-2,"""",-2,50,0,0,""#fffff7"",""#00547d"","""",3,1,1,""#00547d""]);" & vbCrLf
            m_strScriptMenu += " stm_ai(""p0i0"",[0,""Risultati Ricerca - "","""","""",-1,-1,0,""AZLista.aspx"",""_self"","""",""Visualizza Titoli"","""","""",0,0,0,"""","""",0,0,0,0,1,""#00547d"",0,""#b5bed6"",0,"""","""",3,3,1,1,""#00547d"",""#ffffff"",""#ffffff"",""#000000"",""8pt Arial"" ,""8pt Arial"" ,0,0]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i1"",""p0i0"",[0,""Società - "","""","""",-1,-1,0,""AZSocieta.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_aix(""p0i2"",""p0i1"",[0,""Titoli Associati "","""","""",-1,-1,0,""AZTitoli.aspx"",""_self"","""",""""]);" & vbCrLf
            m_strScriptMenu += " stm_ep();" & vbCrLf
            m_strScriptMenu += " stm_em();" & vbCrLf
            m_strScriptMenu += " //-->" & vbCrLf
            m_strScriptMenu += " 	</script>" & vbCrLf

            Dim linebreak As Label

            linebreak = New Label
            linebreak.Text = m_strScriptMenu
            Controls.Add(linebreak)

        End Sub

    End Class

End Namespace