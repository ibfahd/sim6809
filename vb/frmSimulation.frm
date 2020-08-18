VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4770
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6390
   LinkTopic       =   "Form1"
   ScaleHeight     =   4770
   ScaleWidth      =   6390
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   255
      Left            =   3600
      TabIndex        =   5
      Top             =   4320
      Width           =   1335
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "C:\WINDOWS\Bureau\simulation.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   300
      Left            =   1080
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "etendu"
      Top             =   4440
      Width           =   1815
   End
   Begin MSDBGrid.DBGrid DBGrid1 
      Bindings        =   "frmSimulation.frx":0000
      Height          =   3615
      Left            =   480
      OleObjectBlob   =   "frmSimulation.frx":0014
      TabIndex        =   4
      Top             =   480
      Width           =   5535
   End
   Begin VB.TextBox Text5 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   1
      Top             =   720
      Width           =   1695
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   3360
      TabIndex        =   0
      Top             =   600
      Width           =   3615
   End
   Begin VB.Label lblerr 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   1080
      TabIndex        =   3
      Top             =   3600
      Width           =   4575
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   615
      Left            =   1800
      TabIndex        =   2
      Top             =   1680
      Width           =   4095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rsEtendu As ADODB.Recordset
Dim Ins(0 To 10) As String
Private Sub cmdNext_Click()
rsEtendu.MoveNext
Text1 = rsEtendu.Fields("hex")
Text2 = rsEtendu![mne]
End Sub
Sub Separer(T)
For i = 0 To 10
    Ins(i) = ""
Next i
chaine = "#$[]ABDXYSU,<+-"
pos = InStr(T, " ")
If pos <> 0 Then
    Ins(0) = Mid(T, 1, pos - 1)
Else
Exit Sub
End If
T = Mid(T, pos, Len(T))
p = 0
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
Private Sub cmdSearch_Click()
strsql = "Select * from Etendu where mne='" & Text3 & "'"
Set rsEtendu = Nothing
Set rsEtendu = New ADODB.Recordset
rsEtendu.Open strsql, deSumulation.cnSimulation, adOpenKeyset, adLockOptimistic
Text1 = rsEtendu.Fields("hex")
Text2 = rsEtendu![mne]
End Sub


Private Sub Command1_Click()
DBGrid1.Row = 2
MsgBox DBGrid1.Columns(1)
End Sub

Private Sub DBGrid1_Change()
DBGrid1.Columns(3) = DBGrid1.Columns(1)
End Sub

Private Sub Form_Load()
deSumulation.cnSimulation.Open
Set rsEtendu = New ADODB.Recordset
rsEtendu.Open "select * from Etendu", deSumulation.cnSimulation, adOpenKeyset, adLockOptimistic
Text1 = rsEtendu.Fields("hex")
Text2 = rsEtendu![mne]
End Sub
Function ajoutcar(ch, n)
ajoutcar = ""
For i = 1 To n
    ajoutcar = ajoutcar & ch
Next i
End Function

Private Sub Text4_Change()
Separer (UCase(Text4))
'Label1 = ""
'lblerr = ""
'For i = 0 To 10
'    Label1 = Label1 & "/" & Ins(i)
'Next i
Select Case Ins(1)
    Case "#"
        Mode = "IM"
        strsql = "Select hex,dep from simulation where mne='" & Ins(0) & "' and type='" & Mode & "'"
'        Set rsEtendu = Nothing
'        Set rsEtendu = New ADODB.Recordset
'        rsEtendu.Open strsql, deSumulation.cnSimulation, adOpenKeyset, adLockOptimistic
        Data1.RecordSource = strsql
        Data1.Refresh
        Select Case Ins(2)
            Case "$"
                For i = 1 To Len(Ins(3))
                    p = InStr("0123456789ABCDEF", Mid(UCase(Ins(3)), i, 1))
                    If p = 0 Then
                        lblerr = "Erreur Dans la partie " & Ins(3) & ": valeur hexadecimale"
                        Exit Sub
                    End If
                Next i
                l = Len(Data1.Recordset!Hex) + Len(Ins(3))
                If l <= rsEtendu!dep * 2 Then
                    Text5 = rsEtendu!Hex & ajoutcar("0", rsEtendu!dep * 2 - l) & Ins(3)
               End If
                    
            Case Else
                If Not IsNumeric(Ins(2)) And Ins(2) <> "" Then
                    lblerr = "Erreur dans la partie " & Ins(2) & ": valeur décimale"
                    Exit Sub
                End If
                l = Len(rsEtendu!Hex) + Len(Hex(Val(Ins(2))))
                If l <= rsEtendu!dep * 2 Then
                    Text5 = rsEtendu!Hex & ajoutcar("0", rsEtendu!dep * 2 - l) & Hex(Val(Ins(2)))
               End If
               ' Text5 = rsEtendu!Hex & Hex(Val(Ins(2)))
        End Select
End Select
End Sub
