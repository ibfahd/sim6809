VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "richtx32.ocx"
Begin VB.Form FrmRam 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ram"
   ClientHeight    =   1545
   ClientLeft      =   5640
   ClientTop       =   615
   ClientWidth     =   5655
   ControlBox      =   0   'False
   Icon            =   "FrmRam.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1545
   ScaleMode       =   0  'User
   ScaleWidth      =   5655
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox TxtRam 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      Height          =   195
      Index           =   0
      Left            =   600
      MaxLength       =   2
      TabIndex        =   0
      Text            =   "00"
      Top             =   0
      Width           =   300
   End
   Begin VB.VScrollBar Vscroll 
      Height          =   1550
      LargeChange     =   128
      Left            =   5400
      Max             =   3968
      SmallChange     =   128
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   0
      Width           =   255
   End
   Begin RichTextLib.RichTextBox RichRam 
      Height          =   375
      Left            =   5640
      TabIndex        =   2
      Top             =   360
      Visible         =   0   'False
      Width           =   495
      _ExtentX        =   873
      _ExtentY        =   661
      _Version        =   393217
      TextRTF         =   $"FrmRam.frx":030A
   End
   Begin MSComDlg.CommonDialog CommonDialog 
      Left            =   5640
      Top             =   1080
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblcuad 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   195
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   600
   End
   Begin VB.Label lbladr 
      Alignment       =   2  'Center
      Caption         =   "0070"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   7
      Left            =   0
      TabIndex        =   11
      Top             =   1365
      Width           =   600
   End
   Begin VB.Label lbladr 
      Alignment       =   2  'Center
      Caption         =   "0060"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   6
      Left            =   0
      TabIndex        =   10
      Top             =   1170
      Width           =   600
   End
   Begin VB.Label lbladr 
      Alignment       =   2  'Center
      Caption         =   "0050"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   5
      Left            =   0
      TabIndex        =   9
      Top             =   975
      Width           =   600
   End
   Begin VB.Label lbladr 
      Alignment       =   2  'Center
      Caption         =   "0040"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   4
      Left            =   0
      TabIndex        =   8
      Top             =   780
      Width           =   600
   End
   Begin VB.Label lbladr 
      Alignment       =   2  'Center
      Caption         =   "0030"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   3
      Left            =   0
      TabIndex        =   7
      Top             =   600
      Width           =   600
   End
   Begin VB.Label lbladr 
      Alignment       =   2  'Center
      Caption         =   "0020"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   2
      Left            =   0
      TabIndex        =   6
      Top             =   390
      Width           =   600
   End
   Begin VB.Label lbladr 
      Alignment       =   2  'Center
      Caption         =   "0010"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   1
      Left            =   0
      TabIndex        =   5
      Top             =   195
      Width           =   600
   End
   Begin VB.Label lbladr 
      Alignment       =   2  'Center
      Caption         =   "0000"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Index           =   0
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   600
   End
   Begin VB.Menu MnuOpen 
      Caption         =   "&Ouvrir"
   End
   Begin VB.Menu MnuSave 
      Caption         =   "&Enregistrer"
   End
   Begin VB.Menu MnuHideWindow 
      Caption         =   "&Cacher Fenêtre"
   End
End
Attribute VB_Name = "FrmRam"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cache As String
Private Sub Form_Load()
x = 600
y = 0
frmSplash.Pbar.Min = 1
frmSplash.Pbar.Max = 127
For i = 1 To 127
    frmSplash.Pbar.Value = i
    x = x + 300
    If Mid(Hex(i), Len(Hex(i)), 1) = "0" Then
        x = 600
        y = y + 195
    End If
    Load TxtRam(i)
    TxtRam(i).Left = x
    TxtRam(i).Top = y
    TxtRam(i).Visible = True
    TxtRam(i).TabIndex = i
    os = DoEvents()
Next i
frmSplash.Pbar.Min = 0
frmSplash.Pbar.Max = 4095
For i = 0 To 4095
    frmSplash.Pbar.Value = i
    TabRam(i) = "00"
Next i
End Sub
Private Sub MnuHideWindow_Click()
FrmRam.Hide
End Sub
Private Sub MnuOpen_Click()
    Dim hFile As String
    On Error GoTo erreur
    With CommonDialog
        .DialogTitle = "Ouvrir"
        .CancelError = True
        .Filter = "Fichier Héxadécimal (*.hex)|*.hex"
        .ShowOpen
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        hFile = .FileName
    End With
    RichRam.LoadFile hFile
    If Len(RichRam.Text) <> 8192 Then
        MsgBox "Fichier Déféctueux, chargement impossible", vbOKOnly + vbCritical
        RichRam.Text = ""
        Exit Sub
    End If
    j = 0
    frmSplash.Show
    frmSplash.Pbar.Min = 1
    frmSplash.Pbar.Max = 8191
    frmSplash.lblloading = "Chargement du fichier Héxa dans la Ram..."
    For i = 1 To 8191 Step 2
        os = DoEvents()
        frmSplash.Pbar.Value = i
        j = j + 1
        For v = 0 To 3968 Step 128
            For u = 0 To 127
                If i - j = v + u Then
                    frmSplash.Pbar.Value = i
                    Vscroll.Value = v
                    TxtRam(u) = Mid(RichRam.Text, i, 2)
                    GoTo 0
                End If
            Next u
        Next v
0:
    Next i
    Unload frmSplash
    FrmRam.Caption = "Ram -" & hFile
    Vscroll.Value = 0
Exit Sub
erreur:
    If Err.Number = 75 Then MsgBox "Fichier " & hFile & " Introuvable", vbOKOnly + vbCritical
End Sub
Private Sub MnuSave_Click()
    Dim hFile As String
    On Error GoTo erreur
    With CommonDialog
        .DialogTitle = "Enregistrer sous"
        .CancelError = True
        .Filter = "Fichier Héxadécimal (*.hex)|*.hex"
        .ShowSave
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        hFile = .FileName
    End With
    RichRam.Text = ""
    frmSplash.Show
    frmSplash.Pbar.Min = 0
    frmSplash.Pbar.Max = 4095
    frmSplash.lblloading = "Enregistrement du fichier Héxa sur disque..."
    For i = 0 To 4095
        os = DoEvents()
        frmSplash.Pbar.Value = i
        RichRam.Text = RichRam.Text & TabRam(i)
    Next i
    RichRam.SaveFile hFile
    FrmRam.Caption = "Ram -" & hFile
    Unload frmSplash
    Vscroll.Value = 0
erreur:
End Sub
Private Sub TxtRam_Change(Index As Integer)
TabRam(Index + Vscroll.Value) = TxtRam(Index)
End Sub
Private Sub txtram_Click(Index As Integer)
TxtRam(Index).SelStart = 0
TxtRam(Index).SelLength = 2
lblcuad.Top = TxtRam(Index).Top
lblcuad = zero(Hex(Index + Vscroll.Value))
End Sub
Private Sub txtram_GotFocus(Index As Integer)
cache = TxtRam(Index)
TxtRam(Index).SelStart = 0
TxtRam(Index).SelLength = 2
lblcuad.Top = TxtRam(Index).Top
lblcuad = zero(Hex(Index + Vscroll.Value))
End Sub
Private Sub txtram_KeyPress(Index As Integer, KeyAscii As Integer)
KeyAscii = Asc(UCase(Chr(KeyAscii)))
If KeyAscii <> 8 Then If InStr("0123456789ABCDEF", Chr(KeyAscii)) = 0 Then KeyAscii = 0
End Sub
Private Sub txtram_LostFocus(Index As Integer)
If Len(TxtRam(Index)) = 0 Then
    TxtRam(Index) = cache
ElseIf Len(TxtRam(Index)) = 1 Then
    TxtRam(Index) = "0" & TxtRam(Index)
End If
End Sub
Private Sub Vscroll_Change()
For i = 0 To 127
    TxtRam(i) = TabRam(i + Vscroll.Value)
Next i
lbladr(0) = zero(Hex(Vscroll.Value))
If lbladr(0).Top = lblcuad.Top Then lblcuad = lbladr(0)
For i = 1 To 7
    lbladr(i) = zero(Hex(Hex2dec(lbladr(i - 1)) + 16))
    If lbladr(i).Top = lblcuad.Top Then lblcuad = lbladr(i)
Next i
End Sub
Private Sub Vscroll_Scroll()
Call Vscroll_Change
End Sub
