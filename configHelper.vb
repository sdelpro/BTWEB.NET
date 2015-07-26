Imports System.Configuration

Public Class configHelper

    Public Shared ReadOnly Property pathEstrazioni() As String
        Get
            Return System.Configuration.ConfigurationSettings.AppSettings("pathEstrazioni")
        End Get
    End Property


    Public Shared ReadOnly Property pathScarichiA() As String
        Get
            Return System.Configuration.ConfigurationSettings.AppSettings("pathScarichiA")
        End Get
    End Property


    Public Shared ReadOnly Property pathScarichiB() As String
        Get
            Return System.Configuration.ConfigurationSettings.AppSettings("pathScarichiB")
        End Get
    End Property

    Public Shared ReadOnly Property pathXML() As String
        Get
            Return System.Configuration.ConfigurationSettings.AppSettings("pathXML")
        End Get
    End Property

End Class

'Public Class btDownloat
'    Inherits Button

'    Private m_FullFileName
'    Private m_ContentType



'    Public Property FullFileName() As String
'        Get
'            Return m_FullFileName
'        End Get
'        Set(ByVal Value As String)
'            m_FullFileName = Value
'        End Set
'    End Property


'    Public Property ContentType() As String
'        Get
'            Return m_ContentType
'        End Get
'        Set(ByVal Value As String)
'            m_ContentType = Value
'        End Set
'    End Property

'End Class
