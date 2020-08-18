VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "cours"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   3000
      TabIndex        =   11
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton cmdsel 
      Caption         =   "selection"
      Height          =   300
      Left            =   3000
      TabIndex        =   10
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox txtc 
      Height          =   300
      Index           =   4
      Left            =   1560
      TabIndex        =   4
      Top             =   1680
      Width           =   1335
   End
   Begin VB.TextBox txtc 
      Height          =   300
      Index           =   3
      Left            =   1560
      TabIndex        =   3
      Top             =   1320
      Width           =   1335
   End
   Begin VB.TextBox txtc 
      Height          =   300
      Index           =   2
      Left            =   1560
      TabIndex        =   2
      Top             =   960
      Width           =   1335
   End
   Begin VB.TextBox txtc 
      Height          =   300
      Index           =   1
      Left            =   1560
      TabIndex        =   1
      Top             =   600
      Width           =   1335
   End
   Begin VB.TextBox txtc 
      Height          =   300
      Index           =   0
      Left            =   1560
      TabIndex        =   0
      Top             =   240
      Width           =   1335
   End
   Begin VB.Label lblc 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "prix unitaire"
      Height          =   300
      Index           =   4
      Left            =   240
      TabIndex        =   9
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Label lblc 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "désignation"
      Height          =   300
      Index           =   3
      Left            =   240
      TabIndex        =   8
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Label lblc 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "quentité"
      Height          =   300
      Index           =   2
      Left            =   240
      TabIndex        =   7
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblc 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "date de vente"
      Height          =   300
      Index           =   1
      Left            =   240
      TabIndex        =   6
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lblc 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Nom client"
      Height          =   300
      Index           =   0
      Left            =   240
      TabIndex        =   5
      Top             =   240
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim BD1 As Database
Dim RS1 As Recordset
Private Sub cmdsel_Click()
masque
Set RS1 = BD1.OpenRecordset("SELECT vente.date_vente,vente.designation_produit, vente.quantite FROM vente;")
apparait
affiche
End Sub
Private Sub Command1_Click()
masque
Set RS1 = BD1.OpenRecordset("vente")
apparait
affiche
End Sub
Private Sub Form_Load()
On Error Resume Next
Set BD1 = OpenDatabase(App.Path & "\produit1.mdb")
Set RS1 = BD1.OpenRecordset("vente")
affiche
End Sub
Public Sub affiche()
'txtc(0) = RS1("nom_client")
'txtc(1) = RS1("date_vente")
'txtc(2) = RS1("quantite")
'txtc(3) = RS1("designation_produit")
'txtc(4) = RS1("prix_unitaire")
'txtc(0) = RS1.Fields(0)
'txtc(1) = RS1.Fields(1)
'txtc(2) = RS1.Fields(2)
'txtc(3) = RS1.Fields(3)
'txtc(4) = RS1.Fields(4)
For i = 0 To RS1.Fields.Count - 1
    txtc(i) = RS1.Fields(i)
Next i
End Sub
Public Sub masque()
For i = 0 To 4
    txtc(i).Visible = False
    lblc(i).Visible = False
Next i
End Sub
Public Sub apparait()
For i = 0 To RS1.Fields.Count - 1
    lblc(i).Visible = True
    txtc(i).Visible = True
    lblc(i) = RS1.Fields(i).Name
Next i
End Sub
