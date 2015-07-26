Imports System.Data.OleDb
Imports System.Data
Imports System.Data.SqlClient

Public Class AccessDBManager

    Private c_ConnectionString As String
    Private m_SqlConnection As New OleDbConnection
    Private m_commandTimeOut As Integer = 1800


    Public Property CommandTimeout() As Integer
        Get
            Return m_commandTimeOut
        End Get
        Set(ByVal Value As Integer)
            m_commandTimeOut = Value
        End Set
    End Property

    Public Sub New()
        Dim m_dsReadConnString As New DataSet
        Dim m_Row As DataRow
        Try

            m_dsReadConnString.ReadXml(configHelper.pathXML & "\DBConn.Config")

#If DEBUG Then
            m_Row = m_dsReadConnString.Tables(0).Select("Env = 'DEV'")(0)
#Else
            m_Row = m_dsReadConnString.Tables(0).Select("Env = 'PROD'")(0)
#End If

            m_SqlConnection.ConnectionString = m_Row("String")

            m_SqlConnection.Open()
        Catch ex As Exception
            Call Dispose()
            Throw ex
        Finally
            m_dsReadConnString.Dispose()
        End Try

    End Sub

    Public Function Dispose()
        m_SqlConnection.Close()
        m_SqlConnection.Dispose()
    End Function


#Region "ReadGenericTable"

    Public Overloads Sub ReadGenericTable(ByRef _DataSet_ As DataSet, ByVal _TableName As String)

        Dim m_NewDataAdapter As New OleDbDataAdapter("SELECT * FROM " & _TableName, m_SqlConnection)
        m_NewDataAdapter.SelectCommand.CommandTimeout = Me.CommandTimeout
        'm_NewDataAdapter.DeleteCommand.CommandTimeout = Me.CommandTimeout
        'm_NewDataAdapter.UpdateCommand.CommandTimeout = Me.CommandTimeout
        Try

            m_NewDataAdapter.FillSchema(_DataSet_, SchemaType.Source, _TableName)
            m_NewDataAdapter.Fill(_DataSet_)

        Catch ex As SqlException
            Throw ex
        Finally
            m_NewDataAdapter.Dispose()
        End Try

    End Sub

    Public Overloads Sub ReadGenericTable(ByRef _DataTable_ As DataTable, ByVal _TableName As String)

        Dim m_NewDataAdapter As New OleDbDataAdapter("SELECT * FROM " & _TableName, m_SqlConnection)
        m_NewDataAdapter.SelectCommand.CommandTimeout = Me.CommandTimeout
        'm_NewDataAdapter.DeleteCommand.CommandTimeout = Me.CommandTimeout
        'm_NewDataAdapter.UpdateCommand.CommandTimeout = Me.CommandTimeout
        Try
            _DataTable_.TableName = _TableName
            m_NewDataAdapter.FillSchema(_DataTable_, SchemaType.Source)
            m_NewDataAdapter.Fill(_DataTable_)
        Catch ex As SqlException
            Throw ex
        Finally
            m_NewDataAdapter.Dispose()
        End Try

    End Sub

#End Region

#Region "ReadGenericQuery"

    Public Overloads Sub ReadGenericQuery(ByRef _DataSet_ As DataSet, ByVal _Query As String, ByVal _TableName As String)

        Dim m_NewDataAdapter As New OleDbDataAdapter(_Query, m_SqlConnection)
        m_NewDataAdapter.SelectCommand.CommandTimeout = Me.CommandTimeout
        'm_NewDataAdapter.DeleteCommand.CommandTimeout = Me.CommandTimeout
        'm_NewDataAdapter.UpdateCommand.CommandTimeout = Me.CommandTimeout

        Try
            m_NewDataAdapter.FillSchema(_DataSet_, SchemaType.Source, _TableName)
            m_NewDataAdapter.Fill(_DataSet_, _TableName)

        Catch ex As SqlException
            Throw ex
        Finally
            m_NewDataAdapter.Dispose()
        End Try

    End Sub

    Public Overloads Sub ReadGenericQuery(ByRef _DataSet_ As DataSet, ByVal _Query As String)

        Dim m_NewDataAdapter As New OleDbDataAdapter(_Query, m_SqlConnection)
        m_NewDataAdapter.SelectCommand.CommandTimeout = Me.CommandTimeout
        'm_NewDataAdapter.DeleteCommand.CommandTimeout = Me.CommandTimeout
        'm_NewDataAdapter.UpdateCommand.CommandTimeout = Me.CommandTimeout
        Try

            m_NewDataAdapter.Fill(_DataSet_)

        Catch ex As SqlException
            Throw ex
        Finally
            m_NewDataAdapter.Dispose()
        End Try

    End Sub

    Public Overloads Sub ReadGenericQuery(ByRef _DataTable_ As DataTable, ByVal _Query As String)

        Dim m_NewDataAdapter As New OleDbDataAdapter(_Query, m_SqlConnection)
        m_NewDataAdapter.SelectCommand.CommandTimeout = Me.CommandTimeout
        'm_NewDataAdapter.DeleteCommand.CommandTimeout = Me.CommandTimeout
        'm_NewDataAdapter.UpdateCommand.CommandTimeout = Me.CommandTimeout
        Try

            m_NewDataAdapter.Fill(_DataTable_)

        Catch ex As SqlException
            Throw ex
        Finally
            m_NewDataAdapter.Dispose()
        End Try

    End Sub

#End Region

    Public Function CleanUpFullTable(ByVal _TableName As String) As Boolean

        Try
            Dim m_SqlCommand As New OleDbCommand("", m_SqlConnection)

            With m_SqlCommand
                .CommandType = CommandType.Text
                .CommandText = "Delete from " & _TableName
                .CommandTimeout = Me.CommandTimeout
                .ExecuteNonQuery()

            End With

            CleanUpFullTable = True

        Catch ex As OleDbException
            CleanUpFullTable = False

        End Try

    End Function


    Public Function CleanUpTableWithCondition(ByVal _TableName As String, ByVal _columnCondition As String) As Boolean

        Try
            Dim m_SqlCommand As New OleDbCommand("", m_SqlConnection)

            With m_SqlCommand
                .CommandType = CommandType.Text
                .CommandText = "Delete from " & _TableName & " WHERE " & _columnCondition
                .CommandTimeout = Me.CommandTimeout

                .ExecuteNonQuery()

            End With

            CleanUpTableWithCondition = True

        Catch ex As OleDbException
            CleanUpTableWithCondition = False

        End Try

    End Function

    Public Overloads Function UpdateGenericTable(ByVal _dts As DataSet, ByVal _TableName As String) As Boolean

        Try
            Dim cmdUpdate As OleDbCommand = CreateUpdateCommand(_dts, _TableName)
            cmdUpdate.CommandTimeout = Me.CommandTimeout
            Dim cmdInsert As OleDbCommand = CreateInsertCommand(_dts, _TableName)
            cmdInsert.CommandTimeout = Me.CommandTimeout
            'Dim cmdDelete As OleDbCommand = CreateDeleteCommand(_dts, _TableName)

            Dim row As DataRow
            Dim intRowsAffected As Integer
            Dim dvrs As DataViewRowState

            dvrs = DataViewRowState.ModifiedCurrent _
                               Or DataViewRowState.Deleted Or DataViewRowState.Added

            For Each row In _dts.Tables(_TableName).Select("", "", dvrs)
                Select Case row.RowState
                    Case DataRowState.Modified
                        intRowsAffected = LoadValuesIntoParameterAndExecute(row, cmdUpdate)
                    Case DataRowState.Added
                        intRowsAffected = LoadValuesIntoParameterAndExecute(row, cmdInsert)
                    Case DataRowState.Deleted
                        'intRowsAffected = LoadValuesIntoParameterAndExecute(row, cmdDelete)
                End Select
                If intRowsAffected = 1 Then
                    row.AcceptChanges()
                Else
                    row.RowError = "Update attempt failed"
                End If
            Next row

            Return True

        Catch ex As OleDbException

            Throw ex

            Return False
        End Try

    End Function
    Public Overloads Function UpdateGenericTable(ByVal _sql As String) As Boolean

        Try
            Dim cmqUpdateOleDB As New OleDbCommand(_sql)

            cmqUpdateOleDB.Connection = m_SqlConnection
            cmqUpdateOleDB.CommandTimeout = Me.CommandTimeout

            cmqUpdateOleDB.ExecuteNonQuery()

            Return True

        Catch ex As OleDbException

            Throw ex

            Return False
        End Try

    End Function

    Private Function CreateInsertCommand(ByVal _dts As DataSet, ByVal _TableName As String) As OleDbCommand

        Dim strSQL As String = "INSERT INTO " & _TableName & " ("
        Dim strSQL2 As String = ""
        Dim col As DataColumn

        For Each col In _dts.Tables(_TableName).Columns
            If Not col.AutoIncrement Then
                strSQL += col.ColumnName & ","
                strSQL2 += "?,"
            End If
        Next

        strSQL2 = Left(strSQL2, Len(strSQL2) - 1) & ")"
        strSQL = Left(strSQL, Len(strSQL) - 1) & ") VALUES (" & strSQL2

        Dim cmd As New OleDbCommand(strSQL, m_SqlConnection)
        Dim ColumnLenght As Integer
        For Each col In _dts.Tables(_TableName).Columns
            If Not col.AutoIncrement Then
                With cmd.Parameters
                    Select Case col.DataType.FullName
                        Case "System.String"
                            ColumnLenght = col.MaxLength
                            If ColumnLenght < 0 Then ColumnLenght = 255
                            .Add("@" & col.ColumnName, OleDbType.VarChar, 255, col.ColumnName)
                        Case "System.DateTime"
                            .Add("@" & col.ColumnName, OleDbType.DBDate, 100, col.ColumnName)
                        Case "System.Decimal"
                            .Add("@" & col.ColumnName, OleDbType.Currency, 100, col.ColumnName)
                        Case "System.Int32"
                            .Add("@" & col.ColumnName, OleDbType.Integer, 100, col.ColumnName)
                        Case "System.Boolean"
                            .Add("@" & col.ColumnName, OleDbType.Boolean, 100, col.ColumnName)
                    End Select
                End With
            End If
        Next

        Return cmd

    End Function

    Private Function CreateUpdateCommand(ByVal _dts As DataSet, ByVal _TableName As String) As OleDbCommand
        Dim strSQL As String
        Dim comadel As String = ""
        Dim col As DataColumn

        strSQL = "UPDATE " & _TableName & " Set "
        For Each col In _dts.Tables(_TableName).Columns
            If Not col.Unique Then
                strSQL += comadel & col.ColumnName & " = ? "
                comadel = ","
            End If
        Next

        strSQL += " WHERE "
        comadel = ""

        For Each col In _dts.Tables(_TableName).Columns
            If col.Unique Then
                strSQL += comadel & col.ColumnName & " = ? "
                comadel = " AND "
            End If
        Next

        Dim cmd As New OleDbCommand(strSQL, m_SqlConnection)
        Dim ColumnLenght As Integer
        For Each col In _dts.Tables(_TableName).Columns
            With cmd.Parameters
                Select Case col.DataType.FullName
                    Case "System.String"
                        .Add("@" & col.ColumnName, OleDbType.VarChar, 255, col.ColumnName)
                    Case "System.DateTime"
                        .Add("@" & col.ColumnName, OleDbType.DBDate, 100, col.ColumnName)
                    Case "System.Decimal"
                        .Add("@" & col.ColumnName, OleDbType.Currency, 100, col.ColumnName)
                    Case "System.Int32"
                        .Add("@" & col.ColumnName, OleDbType.Integer, 100, col.ColumnName)
                    Case "System.Boolean"
                        .Add("@" & col.ColumnName, OleDbType.Boolean, 100, col.ColumnName)
                End Select
            End With
        Next

        Return cmd

    End Function

    'Private Function CreateUpdateCommand_(ByVal _dts As DataSet, ByVal _TableName As String) As OleDbCommand
    '    Dim strSQL As String
    '    Dim comadel As String = ""
    '    Dim col As DataColumn


    '    strSQL = "UPDATE " & _TableName & " Set "

    '    For Each col In _dts.Tables(_TableName).Columns
    '        If Not col.Unique Then
    '            strSQL += comadel & col.ColumnName & " = ? "
    '            comadel = ","
    '        End If
    '    Next


    '    strSQL += " WHERE "
    '    comadel = ""

    '    For Each col In _dts.Tables(_TableName).Columns
    '        If col.Unique Then
    '            strSQL += comadel & col.ColumnName & " = ? "
    '            comadel = " AND "
    '        End If
    '    Next


    '    Dim cmd As New OleDbCommand(strSQL, m_SqlConnection)
    '    Dim ColumnLenght As Integer
    '    For Each col In _dts.Tables(_TableName).Columns
    '        If Not col.Unique Then
    '            With cmd.Parameters
    '                Select Case col.DataType.FullName
    '                    Case "System.String"
    '                        ColumnLenght = col.MaxLength
    '                        If ColumnLenght < 0 Then ColumnLenght = 255
    '                        .Add("@" & col.ColumnName, OleDbType.VarChar, 255, col.ColumnName)
    '                    Case "System.DateTime"
    '                        .Add("@" & col.ColumnName, OleDbType.DBDate, 100, col.ColumnName)
    '                    Case "System.Decimal"
    '                        .Add("@" & col.ColumnName, OleDbType.Currency, 100, col.ColumnName)
    '                    Case "System.Int32"
    '                        .Add("@" & col.ColumnName, OleDbType.Integer, 100, col.ColumnName)
    '                    Case "System.Boolean"
    '                        .Add("@" & col.ColumnName, OleDbType.Boolean, 100, col.ColumnName)
    '                End Select
    '            End With
    '        End If
    '    Next
    '    For Each col In _dts.Tables(_TableName).PrimaryKey
    '        With cmd.Parameters
    '            Select Case col.DataType.FullName
    '                Case "System.String"
    '                    ColumnLenght = col.MaxLength
    '                    If ColumnLenght < 0 Then ColumnLenght = 255
    '                    .Add("@" & col.ColumnName, OleDbType.VarChar, 255, col.ColumnName)
    '                Case "System.DateTime"
    '                    .Add("@" & col.ColumnName, OleDbType.DBDate, 100, col.ColumnName)
    '                Case "System.Decimal"
    '                    .Add("@" & col.ColumnName, OleDbType.Currency, 100, col.ColumnName)
    '                Case "System.Int32"
    '                    .Add("@" & col.ColumnName, OleDbType.Integer, 100, col.ColumnName)
    '                Case "System.Boolean"
    '                    .Add("@" & col.ColumnName, OleDbType.Boolean, 100, col.ColumnName)
    '            End Select
    '        End With
    '    Next

    '    Return cmd

    'End Function


    'Private Function CreateDeleteCommand(ByVal _dts As DataSet, ByVal _TableName As String) As OleDbCommand
    '    Dim strSQL As String
    '    Dim comadel As String = ""
    '    Dim col As DataColumn


    '    strSQL = "DELETE FROM " & _TableName & " "

    '    For Each col In _dts.Tables(_TableName).Columns
    '        If col.Unique Then
    '            strSQL += comadel & col.ColumnName & " = ?"
    '            comadel = " AND "
    '        End If
    '    Next


    '    Dim cmd As New OleDbCommand(strSQL, m_SqlConnection)


    '    For Each col In _dts.Tables(_TableName).PrimaryKey
    '        If col.Unique Then
    '            With cmd.Parameters
    '                .Add("@" & col.ColumnName, OleDbType.VarChar, 100, col.ColumnName)
    '            End With
    '        End If
    '    Next

    '    Return cmd

    'End Function

    Private Function LoadValuesIntoParameterAndExecute(ByVal row As DataRow, _
                                                       ByVal cmd As OleDbCommand) As Integer

        Dim m_ParameterCollection As OleDbParameterCollection = cmd.Parameters
        Dim m_Parameter As OleDbParameter

        For Each m_Parameter In m_ParameterCollection
            m_Parameter.Value = row(m_Parameter.SourceColumn)
        Next
        cmd.CommandTimeout = Me.CommandTimeout


        Return cmd.ExecuteNonQuery

    End Function


End Class
