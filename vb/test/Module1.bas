Attribute VB_Name = "Module1"
Public fMainForm As frmMain


Sub Main()
    frmSplash.Show
    frmSplash.Refresh
    Set fMainForm = New frmMain
    Load fMainForm
    Unload frmSplash


    fMainForm.Show
End Sub



Sub LoadResStrings(frm As Form)
    On Error Resume Next


    Dim ctl As Control
    Dim obj As Object
    Dim fnt As Object
    Dim sCtlType As String
    Dim nVal As Integer


    'D�finit la l�gende de la feuille
    frm.Caption = LoadResString(CInt(frm.Tag))
    

    'D�finit la police
    Set fnt = frm.Font
    fnt.Name = LoadResString(20)
    fnt.Size = CInt(LoadResString(21))
    

    'D�finit les l�gendes des contr�les en utilisant la
    'propri�t� caption pour les �l�ments de menu et la propri�t� Tag
    'pour tous les autres contr�les
    For Each ctl In frm.Controls
        Set ctl.Font = fnt
        sCtlType = TypeName(ctl)
        If sCtlType = "Label" Then
            ctl.Caption = LoadResString(CInt(ctl.Tag))
        ElseIf sCtlType = "Menu" Then
            ctl.Caption = LoadResString(CInt(ctl.Caption))
        ElseIf sCtlType = "TabStrip" Then
            For Each obj In ctl.Tabs
                obj.Caption = LoadResString(CInt(obj.Tag))
                obj.ToolTipText = LoadResString(CInt(obj.ToolTipText))
            Next
        ElseIf sCtlType = "Toolbar" Then
            For Each obj In ctl.Buttons
                obj.ToolTipText = LoadResString(CInt(obj.ToolTipText))
            Next
        ElseIf sCtlType = "ListView" Then
            For Each obj In ctl.ColumnHeaders
                obj.Text = LoadResString(CInt(obj.Tag))
            Next
        Else
            nVal = 0
            nVal = Val(ctl.Tag)
            If nVal > 0 Then ctl.Caption = LoadResString(nVal)
            nVal = 0
            nVal = Val(ctl.ToolTipText)
            If nVal > 0 Then ctl.ToolTipText = LoadResString(nVal)
        End If
    Next


End Sub

