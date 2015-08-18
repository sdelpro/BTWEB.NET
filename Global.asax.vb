Imports System.Web
Imports System.Web.SessionState

Public Class Global
    Inherits System.Web.HttpApplication

#Region " Codice generato da Progettazione componenti "

    Public Sub New()
        MyBase.New()

        'Chiamata richiesta da Progettazione componenti.
        InitializeComponent()

        'Aggiungere le eventuali istruzioni di inizializzazione dopo la chiamata a InitializeComponent()

    End Sub

    'Richiesto da Progettazione componenti
    Private components As System.ComponentModel.IContainer

    'NOTA: la procedura che segue � richiesta da Progettazione componenti.
    'Pu� essere modificata in Progettazione componenti.  
    'Non modificarla nell'editor del codice.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        components = New System.ComponentModel.Container()
    End Sub

#End Region

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        'Application("CONNECTION_STRING") = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\BT.mdb;Persist Security Info=False"
        ' Generato all'avvio dell'applicazione
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        Dim ii As Integer
        ii = 0
        ' Generato all'apertura della sessione
    End Sub

    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Generato all'inizio di ogni richiesta
    End Sub

    Sub Application_AuthenticateRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Generato durante il tentativo di autenticazione dell'utente
    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        Dim ii As Integer
        ii = 0
        ' Generato in caso di errore
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        If Session("USERNAME") <> "" Then
            Dim cdt As New AccessDBManager()
            Call cdt.UpdateGenericTable(" UPDATE CLIENTI SET CONNESSIONE = 'INATTIVA',LOGOUTTIME='" & Format(Now, "HH:mm:ss") & "' WHERE USERNAME = '" & Session("USERNAME") & "'")
            cdt.Dispose()
        End If
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        If Session("USERNAME") <> "" Then
            Dim cdt As New AccessDBManager()
            Call cdt.UpdateGenericTable(" UPDATE CLIENTI SET CONNESSIONE = 'INATTIVA'")
            cdt.Dispose()
        End If
    End Sub

End Class
