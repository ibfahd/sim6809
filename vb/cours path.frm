VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.FileListBox File1 
      Height          =   2625
      Left            =   2520
      TabIndex        =   2
      Top             =   240
      Width           =   2055
   End
   Begin VB.DirListBox Dir1 
      Height          =   2115
      Left            =   240
      TabIndex        =   1
      Top             =   720
      Width           =   2175
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Dir1_Change()
File1.Path = Dir1.Path
End Sub
Private Sub Drive1_Change()
Dir1.Path = Drive1.Drive
End Sub
Private Sub File1_DblClick()
m = Dir1.Path & "\" & File1.List(File1.ListIndex)
m = Replace(m, "\\", "\")
MsgBox m
End Sub
