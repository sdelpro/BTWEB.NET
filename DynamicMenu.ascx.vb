Public Class DynamicMenu
    Inherits System.Web.UI.UserControl

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents pnlObbligazioni As System.Web.UI.WebControls.PlaceHolder
    Protected WithEvents pnlRicercheObbligazioni As System.Web.UI.WebControls.PlaceHolder
    Protected WithEvents pnlRicercheAzioni As System.Web.UI.WebControls.PlaceHolder
    Protected WithEvents pnlAzioni As System.Web.UI.WebControls.PlaceHolder
    Protected WithEvents pnlTitoli As System.Web.UI.WebControls.PlaceHolder

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Public Enum enTypeMenu
        Obbligazioni
        Azioni
        RicercheObbligazioni
        RicercheAzioni
        Titoli
    End Enum

    Private m_TypeMenu As enTypeMenu
    Public Property TypeMenu() As enTypeMenu
        Get
            Return m_TypeMenu
        End Get
        Set(ByVal Value As enTypeMenu)
            m_TypeMenu = Value
        End Set
    End Property

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here

        For Each ctrl As Control In Me.Controls
            If TypeOf ctrl Is PlaceHolder Then
                ctrl.Visible = False
            End If
        Next

        Select Case m_TypeMenu
            Case enTypeMenu.Azioni
                Me.pnlAzioni.Visible = True
            Case enTypeMenu.Obbligazioni
                Me.pnlObbligazioni.Visible = True
            Case enTypeMenu.RicercheAzioni
                Me.pnlRicercheAzioni.Visible = True
            Case enTypeMenu.RicercheObbligazioni
                Me.pnlRicercheObbligazioni.Visible = True
            Case enTypeMenu.Titoli
                Me.pnlTitoli.Visible = True
        End Select

    End Sub

End Class
