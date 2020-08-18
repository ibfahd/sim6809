VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form frmsimulation 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Simulation CPU Motorola 6809"
   ClientHeight    =   6975
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5520
   ControlBox      =   0   'False
   Icon            =   "interface.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6975
   ScaleWidth      =   5520
   Begin MSDBGrid.DBGrid Gridcode 
      Bindings        =   "interface.frx":030A
      Height          =   4035
      Left            =   0
      Negotiate       =   -1  'True
      OleObjectBlob   =   "interface.frx":0324
      TabIndex        =   1
      Top             =   2640
      Width           =   5535
   End
   Begin RichTextLib.RichTextBox txtasm 
      Height          =   2055
      Left            =   0
      TabIndex        =   0
      Top             =   480
      Width           =   5535
      _ExtentX        =   9763
      _ExtentY        =   3625
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   3
      TextRTF         =   $"interface.frx":0D10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier New"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   420
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   5520
      _ExtentX        =   9737
      _ExtentY        =   741
      ButtonWidth     =   609
      ButtonHeight    =   582
      Appearance      =   1
      ImageList       =   "imlToolbarIcons"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   19
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Nouveau"
            Object.ToolTipText     =   "Nouveau programme assembleur"
            ImageKey        =   "New"
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Ouvrir"
            Object.ToolTipText     =   "Ouvrir"
            ImageKey        =   "Open"
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Enregistrer"
            Object.ToolTipText     =   "Enregistrer"
            ImageKey        =   "Save"
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Couper"
            Object.ToolTipText     =   "Couper"
            ImageKey        =   "Cut"
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Copier"
            Object.ToolTipText     =   "Copier"
            ImageKey        =   "Copy"
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Coller"
            Object.ToolTipText     =   "Coller"
            ImageKey        =   "Paste"
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "BRamEdit"
            Object.ToolTipText     =   "Editeur Héxadécimale de Ram"
            ImageKey        =   "TEXTEDIT"
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Saisir"
            Object.ToolTipText     =   "Saisir l'adresse de dépard"
            ImageKey        =   "FormatEdit"
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Compilation"
            Object.ToolTipText     =   "Compiler le programme mnémonique en héxadécimale"
            ImageKey        =   "WRITE3"
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Exe"
            Object.ToolTipText     =   "Executer"
            ImageKey        =   "Run"
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Exepasapas"
            Object.ToolTipText     =   "Executer pas à pas"
            ImageKey        =   "RUNNER"
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Arrêter"
            Object.ToolTipText     =   "Arrêterl'execution"
            ImageKey        =   "TRFFC14"
         EndProperty
         BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Quitter"
            Object.ToolTipText     =   "Quitter le simulateur"
            ImageKey        =   "sortie"
         EndProperty
         BeginProperty Button18 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button19 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Aide"
            Object.ToolTipText     =   "Aide de 6809"
            ImageKey        =   "Help"
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList imlToolbarIcons 
      Left            =   960
      Top             =   3960
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   19
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":0DF2
            Key             =   "New"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":0F04
            Key             =   "Open"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":1016
            Key             =   "Save"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":1128
            Key             =   "Cut"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":123A
            Key             =   "Copy"
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":134C
            Key             =   "Paste"
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":145E
            Key             =   "Forward"
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":1570
            Key             =   "Camera"
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":1682
            Key             =   "sortie"
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":28A4
            Key             =   "Help"
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":29B6
            Key             =   "Sans titre"
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":3608
            Key             =   "Button"
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":371A
            Key             =   "Spell Check"
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":382C
            Key             =   "FormatEdit"
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":4046
            Key             =   "TEXTEDIT"
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":4360
            Key             =   "WRITE3"
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":467A
            Key             =   "Run"
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":4994
            Key             =   "RUNNER"
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "interface.frx":4CAE
            Key             =   "TRFFC14"
         EndProperty
      EndProperty
   End
   Begin VB.Data datanewfile 
      Caption         =   "data new file"
      Connect         =   "Access"
      DatabaseName    =   ""
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   900
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   0  'Table
      RecordSource    =   ""
      Top             =   4560
      Visible         =   0   'False
      Width           =   2655
   End
   Begin VB.Data datacode 
      Caption         =   "data code"
      Connect         =   "Access"
      DatabaseName    =   ""
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   900
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   ""
      Top             =   4890
      Visible         =   0   'False
      Width           =   2655
   End
   Begin MSComDlg.CommonDialog dlgCommonDialog 
      Left            =   1560
      Top             =   4080
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.StatusBar Sbar 
      Align           =   2  'Align Bottom
      Height          =   270
      Left            =   0
      TabIndex        =   5
      Top             =   6705
      Width           =   5520
      _ExtentX        =   9737
      _ExtentY        =   476
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   2
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   7117
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label Label9 
      BackColor       =   &H00C0C000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label7"
      Height          =   300
      Left            =   1600
      TabIndex        =   4
      Top             =   0
      Width           =   1400
   End
   Begin VB.Label Label8 
      BackColor       =   &H00C0C000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label6"
      Height          =   300
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   1400
   End
End
Attribute VB_Name = "frmsimulation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim adr, codehex As Variant
Dim Ins(0 To 16)
Dim creg(1 To 8) As Byte
Sub Separer(T)
For i = 0 To 16
    Ins(i) = ""
Next i
chaine = "#$[],<+-"
pos = InStr(T, ":")
If pos <> 0 Then
    For i = 1 To 10
        If TabBr(1, i) = 0 Then
            TabBr(1, i) = Mid(T, 1, pos - 1)
            TabBr(2, i) = adr
            Exit For
        End If
    Next i
T = Mid(T, pos + 1, Len(T))
End If
pos = InStr(T, " ")
If pos <> 0 Then
    Ins(0) = Mid(T, 1, pos - 1)
Else
    Ins(0) = T
    Exit Sub
End If
T = Mid(T, pos, Len(T))
p = 1
For i = 1 To Len(T)
If Mid(T, i, 1) <> " " Then
    If InStr(chaine, Mid(T, i, 1)) <> 0 Then
        If Ins(p) <> "" Then p = p + 1
        Ins(p) = Mid(T, i, 1)
        p = p + 1
    Else
        Ins(p) = Ins(p) & Mid(T, i, 1)
    End If
End If
Next i
End Sub
Private Sub Form_Load()
On Error GoTo erreur
Load frmSplash
frmSplash.Show
os = DoEvents()
FileCopy App.Path & "\newfile.md_", App.Path & "\newfile.mdb"
datacode.DatabaseName = App.Path & "\code.mdb"
datacode.RecordSource = "code"
datanewfile.DatabaseName = App.Path & "\newfile.mdb"
datanewfile.RecordSource = "Prog"
adr = "0000"
Sbar.Panels(2).Text = "Adp:" & adr
Sbar.Panels(1).Text = "Nouveau"
Load FrmRam
Load FrmRegistres
Unload frmSplash
FrmRam.Show
FrmRegistres.Show
Exit Sub
erreur:
Unload frmSplash
MsgBox "Erreur de Chargement, Réinstaller le programme de puis le CD!", vbOKOnly + vbCritical, "ERREUR"
Unload Me
End Sub
Private Sub Gridcode_DblClick()
Dim rep As Byte
    If datanewfile.Recordset.RecordCount = 0 Then Exit Sub
    rep = MsgBox("Voulez vous charger le programme dans l'editeur?", vbQuestion + vbYesNo)
    If rep = 7 Then Exit Sub
    txtasm.Text = ""
    datanewfile.Recordset.MoveFirst
    For i = 0 To datanewfile.Recordset.RecordCount - 1
        txtasm.Text = txtasm.Text & datanewfile.Recordset!Mnemonique & Chr(13) & Chr(10)
        datanewfile.Recordset.MoveNext
        If datanewfile.Recordset.EOF Then
            datanewfile.Recordset.MoveLast
            Exit For
        End If
    Next i
End Sub
Private Sub Gridcode_KeyPress(KeyAscii As Integer)
If Gridcode.Col = 0 Or Gridcode.Col = 1 Or Gridcode.Col = 2 Then KeyAscii = 0
End Sub
Private Sub Toolbar1_ButtonClick(ByVal Button As MSComCtlLib.Button)
    On Error Resume Next
    Select Case Button.Key
        Case "Arrêter"
            Arret = True
        Case "Compilation"
                If txtasm.Text = "" Then
                    MsgBox "Il faut saisir un Programme", vbOKOnly + vbExclamation
                    txtasm.SetFocus
                    Exit Sub
                End If
                sh = ""
                For i = 1 To Len(txtasm.Text)
                ch = Mid(txtasm.Text, i, 1)
                If ch <> Chr(13) Then sh = sh & ch
                If ch = Chr(13) Or i = Len(txtasm.Text) Then
                h = mne2hex(sh)
                If h = "erreur" Then
                    txtasm.SetFocus
                    Exit Sub
                End If
                datanewfile.Recordset.Index = "Adresse"
                datanewfile.Recordset.Seek "=", adr
                If datanewfile.Recordset.NoMatch Then
                    datanewfile.Recordset.AddNew
                Else
                    datanewfile.Recordset.Edit
                End If
                datanewfile.Recordset!Adresse = adr
                datanewfile.Recordset!Hexadecimal = h
                datanewfile.Recordset!Mnemonique = sh
                datanewfile.Recordset.Update
                Gridcode.Refresh
                For j = 1 To Len(h) Step 2
                    If j = 1 Then ad = Hex2dec(adr) Else ad = ad + 1
                        For v = 0 To 3968 Step 128
                            For u = 0 To 127
                                If ad = v + u Then
                                    FrmRam.Vscroll.Value = v
                                    FrmRam.TxtRam(u) = Mid(h, j, 2)
                                    GoTo 3
                                End If
                            Next u
                        Next v
3:
                Next j
                adr = zero(Hex(Hex2dec(adr) + (Len(h) / 2)))
                programme = programme & sh & Chr(13) & Chr(10)
                sh = ""
                ch = ""
                txtasm.Text = Mid(txtasm.Text, i + 1, Len(txtasm.Text))
                i = 1
                End If
                Next i
                txtasm.Text = programme
                Gridcode.Columns(0).Width = 800
                Gridcode.Columns(1).Width = 1800
                Gridcode.Columns(2).Width = 2620
                Sbar.Panels(2).Text = "Adp:" & adr
        Case "BRamEdit"
                FrmRam.Show
        Case "Saisir"
                Oadr = adr
0:              adr = UCase(InputBox("Donnez l'adresse de dépard!", "Simulation 6809"))
                If adr = "" Then adr = Oadr
                If Len(adr) < 4 Then adr = zero(adr)
                For i = 1 To Len(adr)
                    If i > 4 Or InStr("0123456789ABCDEF", Mid(adr, i, 1)) = 0 Or Hex2dec(adr) > 4095 Or Hex2dec(adr) < 0 Then
                        MsgBox "vous devez saisir une valeur comprise entre 0000 et 0FFF", vbOKOnly + vbExclamation, "Simulation 6809"
                        GoTo 0
                    End If
                Next i
                Sbar.Panels(2).Text = "Adp:" & adr
        Case "Nouveau"
                For i = 0 To datanewfile.Recordset.RecordCount
                    datanewfile.Recordset.Delete
                    datanewfile.Refresh
                    Gridcode.Refresh
                Next i
                txtasm.Text = ""
                txtasm.SetFocus
                Sbar.Panels(1).Text = "Nouveau"
        Case "Ouvrir"
            Dim oFile As String
            With dlgCommonDialog
                .DialogTitle = "Ouvrir"
                .CancelError = True
                .Filter = "Fichier Assembleur 6809 (*.a68)|*.a68"
                .ShowOpen
                If Len(.FileName) = 0 Or Err.Number <> 0 Then
                    Exit Sub
                End If
                oFile = .FileName
            End With
            txtasm.LoadFile oFile
            If Err.Number = 75 Then
                MsgBox "Fichier " & oFile & " Introuvable", vbOKOnly + vbCritical
                Exit Sub
            End If
            Sbar.Panels(1).Text = oFile
        Case "Enregistrer"
            Dim sFile As String
            With dlgCommonDialog
                .DialogTitle = "Enregistrer sous"
                .CancelError = True
                .Filter = "Fichier Assembleur 6809 (*.a68)|*.a68"
                .ShowSave
                If Len(.FileName) = 0 Or Err.Number <> 0 Then
                    Exit Sub
                End If
                sFile = .FileName
            End With
            Sbar.Panels(1).Text = sFile
            txtasm.SaveFile sFile
        Case "Couper"
            On Error Resume Next
            Clipboard.SetText txtasm.SelRTF
            txtasm.SelText = vbNullString
        Case "Copier"
            On Error Resume Next
            Clipboard.SetText txtasm.SelRTF
        Case "Coller"
            On Error Resume Next
            txtasm.SelRTF = Clipboard.GetText
        Case "Exe"
            Arret = False
            Do
                DoEvents
                Execution
            Loop Until (Pc = 4095) Or (Arret = True)
        Case "Exepasapas"
                Execution
        Case "Quitter"
            q = MsgBox("Voullez vous Quitter?", vbYesNo + vbQuestion)
            If q = 7 Then Exit Sub
            datacode.Recordset.Close
            datacode.Database.Close
            datanewfile.Recordset.Close
            datanewfile.Database.Close
            Kill App.Path & "\newfile.mdb"
            Unload FrmRam
            Unload FrmRegistres
            End
        Case "Aide"
            Shell "C:\Program Files\Adobe\Acrobat 5.0\Reader\AcroRd32.exe " & App.Path & "\help.pdf", vbMaximizedFocus
    End Select
End Sub
Function mne2hex(mne)
Separer (UCase(mne))
    '************** Implicite ***************
strsql = "Select hex,Type from code where mne='" & Ins(0) & "'"
datacode.RecordSource = strsql
datacode.Refresh
If datacode.Recordset.RecordCount = 0 Then
    MsgBox "code " & Ins(0) & " introuvable!", vbOKOnly + vbExclamation
    mne2hex = "erreur"
    Exit Function
End If
If datacode.Recordset!Type = "IP" Then
    Select Case datacode.Recordset!Hex
        Case "1F", "1E"
            If NRegistre(Ins(1)) = "erreur" Then
                MsgBox Ins(1) & " n'est pas un registre valide", vbOKOnly + vbExclamation
                mne2hex = "erreur"
                Exit Function
           End If
           If Ins(2) <> "," Then
                MsgBox ", manquante", vbOKOnly + vbExclamation, "Erreur"
                mne2hex = "erreur"
                Exit Function
          End If
          If NRegistre(Ins(3)) = "erreur" Then
                MsgBox Ins(3) & " n'est pas un registre valide", vbOKOnly + vbExclamation, "Erreur"
                mne2hex = "erreur"
                Exit Function
         End If
    opr = NRegistre(Ins(1)) & NRegistre(Ins(3))
'**********************pshs & puls***************************
        Case "34", "35"
            For i = 1 To 8
                creg(i) = 0
            Next i
            test = ""
            For i = 1 To 16
                test = test & Ins(i)
            Next i
            If InStr(test, "S") <> 0 Then
                MsgBox Ins(0) & " n'accepte pas le registre S", vbOKOnly + vbExclamation, "Erreur"
                mne2hex = "erreur"
                Exit Function
            End If
            If Ins(1) = "" Then
                MsgBox "Manque de paramétres!", vbOKOnly + vbExclamation, "Erreur"
                mne2hex = "erreur"
                Exit Function
            End If
            For i = 1 To 15
                If Ins(i) = "" Then
                    If Ins(i - 1) = "," Then
                        MsgBox "Registre attendu", vbOKOnly + vbExclamation, "Erreur"
                        mne2hex = "erreur"
                        Exit Function
                    End If
                    Exit For
                End If
                If i Mod 2 = 1 Then
                    Select Case Ins(i)
                        Case "PC"
                            creg(1) = 1
                        Case "U"
                            creg(2) = 1
                        Case "Y"
                            creg(3) = 1
                        Case "X"
                            creg(4) = 1
                        Case "DP"
                            creg(5) = 1
                        Case "B"
                            creg(6) = 1
                        Case "A"
                            creg(7) = 1
                        Case "CC"
                            creg(8) = 1
                        Case Else
                            MsgBox "Le registre " & Ins(i) & " est invalide.", vbOKOnly + vbExclamation, "Erreur"
                            mne2hex = "erreur"
                            Exit Function
                    End Select
                Else
                    If Ins(i) <> "," Then
                        MsgBox "Erreur dans " & Ins(i) & " : , attendu", vbOKOnly + vbExclamation, "Erreur"
                        mne2hex = "erreur"
                        Exit Function
                    End If
                End If
            Next i
            bin = 0
            For i = 1 To 8
                bin = bin & creg(i)
            Next i
            opr = Bin2hex(bin)
'***************************** pshu & pulu *****************
        Case "36", "37"
            For i = 1 To 8
                creg(i) = 0
            Next i
            test = ""
            For i = 1 To 16
                test = test & Ins(i)
            Next i
            If InStr(test, "U") <> 0 Then
                MsgBox Ins(0) & " n'accepte pas le registre U", vbOKOnly + vbExclamation, "Erreur"
                mne2hex = "erreur"
                Exit Function
            End If
            If Ins(1) = "" Then
                MsgBox "Manque de paramétres!", vbOKOnly + vbExclamation, "Erreur"
                mne2hex = "erreur"
                Exit Function
            End If
            For i = 1 To 15
                If Ins(i) = "" Then
                    If Ins(i - 1) = "," Then
                        MsgBox "Registre attendu", vbOKOnly + vbExclamation, "Erreur"
                        mne2hex = "erreur"
                        Exit Function
                    End If
                    Exit For
                End If
                If i Mod 2 = 1 Then
                    Select Case Ins(i)
                        Case "PC"
                            creg(1) = 1
                        Case "S"
                            creg(2) = 1
                        Case "Y"
                            creg(3) = 1
                        Case "X"
                            creg(4) = 1
                        Case "DP"
                            creg(5) = 1
                        Case "B"
                            creg(6) = 1
                        Case "A"
                            creg(7) = 1
                        Case "CC"
                            creg(8) = 1
                        Case Else
                            MsgBox "Le registre " & Ins(i) & " est invalide.", vbOKOnly + vbExclamation, "Erreur"
                            mne2hex = "erreur"
                            Exit Function
                    End Select
                Else
                    If Ins(i) <> "," Then
                        MsgBox "Erreur dans " & Ins(i) & " : , attendu", vbOKOnly + vbExclamation, "Erreur"
                        mne2hex = "erreur"
                        Exit Function
                    End If
                End If
            Next i
            bin = 0
            For i = 1 To 8
                bin = bin & creg(i)
            Next i
            opr = Bin2hex(bin)
        End Select
    codehex = datacode.Recordset!Hex & opr
    GoTo fin
End If
If datacode.Recordset!Type = "RE" Then
    codehex = datacode.Recordset!Hex & Br()
    GoTo fin
End If
Select Case Ins(1)
    '***Fin implicite ************ immediat **********************
    Case "#"
        Mode = "IM"
        strsql = "Select hex,dep from code where mne='" & Ins(0) & "' and type='" & Mode & "'"
        datacode.RecordSource = strsql
        datacode.Refresh
        If datacode.Recordset.RecordCount = 0 Then
            MsgBox "L'instruction " & Ins(0) & " n'a pas de mode immediat", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        Select Case Ins(2)
            Case "$"
                opr = Ins(3)
                For i = 1 To Len(opr)
                    p = InStr("0123456789ABCDEF", Mid(UCase(opr), i, 1))
                    If p = 0 Then
                        MsgBox "Erreur Dans la partie " & opr & ": valeur hexadecimale", vbOKOnly + vbExclamation, "Erreur"
                        mne2hex = "erreur"
                        Exit Function
                    End If
                Next i
                l = Len(datacode.Recordset!Hex) + Len(opr)
                If l <= datacode.Recordset!dep * 2 Then
                    codehex = datacode.Recordset!Hex & Ajoutcar("0", datacode.Recordset!dep * 2 - l) & opr
               End If
            Case Else
                If Not IsNumeric(Ins(2)) And Ins(2) <> "" Then
                    MsgBox "Erreur dans la partie " & Ins(2) & ": valeur décimale", vbOKOnly + vbExclamation, "Erreur"
                    mne2hex = "erreur"
                    Exit Function
                End If
                l = Len(datacode.Recordset!Hex) + Len(Hex(Val(Ins(2))))
                If l <= datacode.Recordset!dep * 2 Then
                    codehex = datacode.Recordset!Hex & Ajoutcar("0", datacode.Recordset!dep * 2 - l) & Hex(Val(Ins(2)))
               End If
        End Select
    '***Fin immediat ************ Etendu **********************
    Case "$"
        Mode = "ET"
        strsql = "Select hex,dep from code where mne='" & Ins(0) & "' and type='" & Mode & "'"
        datacode.RecordSource = strsql
        datacode.Refresh
        If datacode.Recordset.RecordCount = 0 Then
            MsgBox "L'instruction " & Ins(0) & " n'a pas de mode etendu", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        opr = Ins(2)
        If Len(opr) <> 4 Then
            MsgBox "l'instruction " & Ins(0) & " en mode etendu doit avoir un operande sur 2 octets", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        For i = 1 To Len(opr)
            p = InStr("0123456789ABCDEF", Mid(UCase(opr), i, 1))
            If p = 0 Then
                MsgBox "Erreur Dans la partie " & opr & ": valeur hexadecimale", vbOKOnly + vbExclamation, "Erreur"
                mne2hex = "erreur"
                Exit Function
            End If
        Next i
        l = Len(datacode.Recordset!Hex) + Len(opr)
        If l <= datacode.Recordset!dep * 2 Then
            codehex = datacode.Recordset!Hex & Ajoutcar("0", datacode.Recordset!dep * 2 - l) & opr
       End If
    '***Fin etendu ************ direct **********************
    Case "<"
        Mode = "DI"
        strsql = "Select hex,dep from code where mne='" & Ins(0) & "' and type='" & Mode & "'"
        datacode.RecordSource = strsql
        datacode.Refresh
        If datacode.Recordset.RecordCount = 0 Then
            MsgBox "L'instruction " & Ins(0) & " n'a pas de mode direct", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        If Ins(2) <> "$" Then
            MsgBox "le symbole < doit être suivi par $", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        opr = Ins(3)
        If Len(opr) <> 2 Then
            MsgBox "l'instruction " & Ins(0) & " en mode direct doit avoir un operande sur 1 octet", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        For i = 1 To Len(opr)
            p = InStr("0123456789ABCDEF", Mid(UCase(opr), i, 1))
            If p = 0 Then
                MsgBox "Erreur Dans la partie " & opr & ": valeur hexadecimale", vbOKOnly + vbExclamation, "Erreur"
                mne2hex = "erreur"
                Exit Function
            End If
        Next i
        l = Len(datacode.Recordset!Hex) + Len(opr)
        If l <= datacode.Recordset!dep * 2 Then
            codehex = datacode.Recordset!Hex & Ajoutcar("0", datacode.Recordset!dep * 2 - l) & opr
       End If
    '***Fin direct ************ indirect **********************
     Case "["
        Mode = "IN"
        strsql = "Select hex,dep from code where mne='" & Ins(0) & "' and type='" & Mode & "'"
        datacode.RecordSource = strsql
        datacode.Refresh
        If datacode.Recordset.RecordCount = 0 Then
            MsgBox "L'instruction " & Ins(0) & " n'a pas de mode direct", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        If Ins(2) <> "$" Then
            MsgBox "le symbole [ doit être suivi par $", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        opr = Ins(3)
        For i = 1 To Len(opr)
            p = InStr("0123456789ABCDEF", Mid(UCase(opr), i, 1))
            If p = 0 Then
                MsgBox "Erreur Dans la partie " & opr & ": valeur hexadecimale", vbOKOnly + vbExclamation, "Erreur"
                mne2hex = "erreur"
                Exit Function
            End If
        Next i
         If Len(Ins(3)) <> 4 Then
            MsgBox "l'adresse doit être écrite sur 4 caractéres", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        If Ins(4) <> "]" Then
            MsgBox "] manquant", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        If Ins(5) <> "" Then
            MsgBox "trop de paramétres", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        codehex = datacode.Recordset!Hex & "9F" & opr
     
     '***Fin indirect ************ indexé **********************
                
                'mode indexé sans deplacement
   Case ","
        Mode = "IN"
        strsql = "Select hex,dep from code where mne='" & Ins(0) & "' and type='" & Mode & "'"
        datacode.RecordSource = strsql
        datacode.Refresh
        If datacode.Recordset.RecordCount = 0 Then
            MsgBox "L'instruction " & Ins(0) & " n'a pas de mode indexé", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
     If Ins(2) = "-" Then    '***auto decrementation par 1***
            If Ins(3) = "-" Then   '*** decrementation par 2 ****
                Select Case Ins(4)
                    Case "X"
                        depl = "83"
                    Case "Y"
                        depl = "A3"
                    Case "U"
                        depl = "C3"
                    Case "S"
                        depl = "E3"
                    Case Else
                        lblerr = "registre invalid"
                        mne2hex = "erreur"
                        Exit Function
                End Select
             Else
                Select Case Ins(3)
                    Case "X"
                        depl = "82"
                    Case "Y"
                        depl = "A2"
                    Case "U"
                        depl = "C2"
                    Case "S"
                        depl = "E2"
                    Case Else
                        lblerr = "registre invalid"
                        mne2hex = "erreur"
                        Exit Function
                End Select
            End If
            codehex = datacode.Recordset!Hex & depl
         End If
         
        If Ins(3) = "" Then  ' ***** sans depllacement
            Select Case Ins(2)
                Case "X"
                    depl = "84"
                Case "Y"
                    depl = "A4"
                Case "U"
                    depl = "C4"
                Case "S"
                    depl = "E4"
                Case Else
                    lblerr = "registre invalid"
                    mne2hex = "erreur"
                    Exit Function
            End Select
         ElseIf Ins(3) = "+" Then
                If Ins(4) = "" Then   '********  auto incrementaion par 1 *****
                    Select Case Ins(2)
                          Case "X"
                              depl = "80"
                          Case "Y"
                              depl = "A0"
                          Case "U"
                              depl = "C0"
                          Case "S"
                              depl = "E0"
                          Case Else
                              lblerr = "registre invalid"
                              mne2hex = "erreur"
                              Exit Function
                      End Select
                  ElseIf Ins(4) = "+" Then    '**** auto incrementation par 2 ****
                         Select Case Ins(2)
                            Case "X"
                                depl = "81"
                            Case "Y"
                                depl = "A1"
                            Case "U"
                                depl = "C1"
                            Case "S"
                                depl = "E1"
                            Case Else
                                lblerr = "registre invalid"
                                mne2hex = "erreur"
                                Exit Function
                        End Select
                End If
            End If
            codehex = datacode.Recordset!Hex & depl
  
      '*********** mode indexé avec déplacement positif********
    
    Case "+"
        Mode = "IN"
        strsql = "Select hex,dep from code where mne='" & Ins(0) & "' and type='" & Mode & "'"
        datacode.RecordSource = strsql
        datacode.Refresh
        If datacode.Recordset.RecordCount = 0 Then
            MsgBox "L'instruction " & Ins(0) & " n'a pas de mode indexé", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        If Ins(3) = "," Then
            If Ins(2) <= 15 Then   'depllacement sur 5 bits
                 depl = Hex(Ins(2))
                Select Case Ins(4)
                    Case "X"
                        If depl = "0" Then depl = "84" Else depl = "0" & depl
                    Case "Y"
                        If depl = "0" Then depl = "A4" Else depl = "2" & depl
                    Case "U"
                        If depl = "0" Then depl = "C4" Else depl = "4" & depl
                    Case "S"
                        If depl = "0" Then depl = "E4" Else depl = "6" & depl
                    Case Else
                        MsgBox "registre invalid", vbOKOnly + vbExclamation, "Erreur"
                        mne2hex = "erreur"
                        Exit Function
                End Select
            ElseIf Ins(2) <= 127 Then '  depllacement sur 8 bits
                   depl = Hex(Ins(2))
                   Select Case Ins(4)
                    Case "X"
                        depl = "88" & depl
                    Case "Y"
                        depl = "A8" & depl
                    Case "U"
                        depl = "C8" & depl
                    Case "S"
                        depl = "E8" & depl
                    Case Else
                        MsgBox "registre invalid", vbOKOnly + vbExclamation, "Erreur"
                        mne2hex = "erreur"
                        Exit Function
                End Select
                ElseIf Ins(2) <= 32767 Then  '  depllacement sur 16 bits
                       depl = zero(Hex(Ins(2)))
                     Select Case Ins(4)
                        Case "X"
                            depl = "89" & depl
                        Case "Y"
                            depl = "A9" & depl
                        Case "U"
                            depl = "C9" & depl
                        Case "S"
                            depl = "E9" & depl
                        Case Else
                            MsgBox "registre invalid", vbOKOnly + vbExclamation, "Erreur"
                            mne2hex = "erreur"
                            Exit Function
                    End Select
                End If
         Else
            MsgBox "paramétre manquant", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
          End If
       codehex = datacode.Recordset!Hex & depl
       
   ' *********** mode indexé avec depllacement negatif ***************
    
    Case "-"
        Mode = "IN"
        strsql = "Select hex,dep from code where mne='" & Ins(0) & "' and type='" & Mode & "'"
        datacode.RecordSource = strsql
        datacode.Refresh
        If datacode.Recordset.RecordCount = 0 Then
            MsgBox "L'instruction " & Ins(0) & " n'a pas de mode indexé", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        If Ins(3) = "," Then
            If Ins(2) <= 16 Then            ' depllacement sur 5 bits
                depl = Mid(Hex(-Ins(2)), 8, 1)
                Select Case Ins(4)
                    Case "X"
                        If depl = "" Then depl = "84" Else depl = "1" & depl
                    Case "Y"
                        If depl = "" Then depl = "A4" Else depl = "3" & depl
                    Case "U"
                        If depl = "" Then depl = "C4" Else depl = "5" & depl
                    Case "S"
                        If depl = "" Then depl = "E4" Else depl = "7" & depl
                    Case Else
                        MsgBox "registre invalid", vbOKOnly + vbExclamation, "Erreur"
                        mne2hex = "erreur"
                        Exit Function
                End Select
            ElseIf Ins(2) <= 128 Then       ' depllacement sur 5 bits
                    depl = Mid(Hex(-Ins(2)), 7, 2)
                   Select Case Ins(4)
                    Case "X"
                        depl = "88" & depl
                    Case "Y"
                        depl = "A8" & depl
                    Case "U"
                        depl = "C8" & depl
                    Case "S"
                        depl = "E8" & depl
                    Case Else
                        MsgBox "registre invalid", vbOKOnly + vbExclamation, "Erreur"
                        mne2hex = "erreur"
                        Exit Function
                End Select
                ElseIf Ins(2) <= 32768 Then    ' depllacement sur 5 bits
                        depl = Mid(Hex(-Ins(2)), 5, 4)
                     Select Case Ins(4)
                        Case "X"
                            depl = "89" & depl
                        Case "Y"
                            depl = "A9" & depl
                        Case "U"
                            depl = "C9" & depl
                        Case "S"
                            depl = "E9" & depl
                        Case Else
                            MsgBox "registre invalid", vbOKOnly + vbExclamation, "Erreur"
                            mne2hex = "erreur"
                            Exit Function
                    End Select
                End If
         Else
            MsgBox "paramétre manquant", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
          End If
       codehex = datacode.Recordset!Hex & depl
       
       '***** depllacement avec accumulateur *********
       
Case "A"
        Mode = "IN"
        strsql = "Select hex,dep from code where mne='" & Ins(0) & "' and type='" & Mode & "'"
        datacode.RecordSource = strsql
        datacode.Refresh
        If datacode.Recordset.RecordCount = 0 Then
            MsgBox "L'instruction " & Ins(0) & " n'a pas de mode indexé", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        If Ins(2) = "," Then
            Select Case Ins(3)
                Case "X"
                    depl = "86"
                Case "Y"
                    depl = "A6"
                Case "U"
                    depl = "C6"
                Case "S"
                    depl = "E6"
                Case Else
                    MsgBox ", doit être suivi de X,Y,U ou S", vbOKOnly + vbExclamation, "Erreur"
                    mne2hex = "erreur"
                    Exit Function
           End Select
        Else
            MsgBox "A doit être suivi de la virgule", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        codehex = datacode.Recordset!Hex & depl
        
        '******
        
Case "B"
        Mode = "IN"
        strsql = "Select hex,dep from code where mne='" & Ins(0) & "' and type='" & Mode & "'"
        datacode.RecordSource = strsql
        datacode.Refresh
        If datacode.Recordset.RecordCount = 0 Then
            MsgBox "L'instruction " & Ins(0) & " n'a pas de mode indexé", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        If Ins(2) = "," Then
            Select Case Ins(3)
                Case "X"
                    depl = "85"
                Case "Y"
                    depl = "A5"
                Case "U"
                    depl = "C5"
                Case "S"
                    depl = "E5"
                Case Else
                     MsgBox ", doit être suivi de X,Y,U ou S", vbOKOnly + vbExclamation, "Erreur"
                     mne2hex = "erreur"
                     Exit Function
           End Select
        Else
            MsgBox "B doit être suivi de la virgule", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
         codehex = datacode.Recordset!Hex & depl
         
         '*********
         
Case "D"
        Mode = "IN"
        strsql = "Select hex,dep from code where mne='" & Ins(0) & "' and type='" & Mode & "'"
        datacode.RecordSource = strsql
        datacode.Refresh
        If datacode.Recordset.RecordCount = 0 Then
            MsgBox "L'instruction " & Ins(0) & " n'a pas de mode indexé", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        If Ins(2) = "," Then
            Select Case Ins(3)
                Case "X"
                    depl = "8B"
                Case "Y"
                    depl = "AB"
                Case "U"
                    depl = "CB"
                Case "S"
                    depl = "EB"
                Case Else
                     MsgBox ", doit être suivi de X,Y,U ou S", vbOKOnly + vbExclamation, "Erreur"
                     mne2hex = "erreur"
                     Exit Function
            End Select
        Else
            MsgBox "D doit être suivi de la virgule", vbOKOnly + vbExclamation, "Erreur"
            mne2hex = "erreur"
            Exit Function
        End If
        codehex = datacode.Recordset!Hex & depl
       Case Else
            MsgBox "ecriture non validé"
            mne2hex = "erreur"
            Exit Function
End Select
fin:
mne2hex = codehex
End Function
Private Sub txtasm_KeyPress(KeyAscii As Integer)
KeyAscii = Asc(UCase(Chr(KeyAscii)))
End Sub
Public Sub Execution()
    Select Case TabRam(Pc)
        Case "3F"
            SWI
        Case "3D"
            MUL
        Case "86", "C6", "CC", "CE", "8E", "B6", "F6", "FC", "FE", "BE", "96", "D6", "DC", "DE", "9E", "A6", "E6", "EC", "EE", "AE", "10"
            If TabRam(Pc) = "10" Then
                Select Case TabRam(Pc + 1)
                    Case "DF", "FF", "EF", "9F", "BF", "AF"
                        GoTo 10
                End Select
            End If
            LD
        Case "97", "D7", "DD", "DF", "9F", "B7", "F7", "FD", "FF", "BF", "A7", "E7", "ED", "EF", "AF"
10:            ST
        Case "24"
            BCC
            IncPC (-1)
        Case "25"
            BCS
            IncPC (-1)
        Case "26"
            BNE
            IncPC (-1)
        Case "27"
            BNQ
            IncPC (-1)
        Case "8B", "9B", "BB", "AB", "CB", "DB", "FB", "C3", "EB", "D3", "F3", "E3"
            ADD
        Case "80", "C0", "83", "90", "D0", "93", "B0", "F0", "B3", "A0", "E0", "A3"
            PSUB
     End Select
     IncPC (1)
    FrmRegistres.lblPC = zero(Hex(Pc))
End Sub
Function Br()
For i = 1 To 10
    DoEvents
    If Ins(1) = TabBr(1, i) Then
        Br = Hex2dec(TabBr(2, i)) - Hex2dec(adr)
        If (Br >= -128) And (Br <= 127) Then
            Br = Right(Hex(Br), 2)
        Else
            Br = Right(Hex(Br), 4)
        End If
        Exit Function
    Else
        Br = "00"
    End If
Next i
End Function
