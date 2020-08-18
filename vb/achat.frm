VERSION 5.00
Begin VB.Form produit 
   Caption         =   "Form1"
   ClientHeight    =   5985
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7440
   LinkTopic       =   "Form1"
   ScaleHeight     =   5985
   ScaleWidth      =   7440
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   315
      Left            =   5640
      TabIndex        =   27
      Top             =   4200
      Width           =   1215
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   4320
      TabIndex        =   26
      Text            =   "Combo2"
      Top             =   4200
      Width           =   1215
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   3000
      TabIndex        =   25
      Text            =   "Combo1"
      Top             =   4200
      Width           =   1215
   End
   Begin VB.CommandButton cmdsele 
      Caption         =   "Selection"
      Height          =   300
      Left            =   360
      TabIndex        =   24
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton cmdlc 
      Caption         =   "List champ"
      Height          =   300
      Left            =   1680
      TabIndex        =   23
      Top             =   3120
      Width           =   1215
   End
   Begin VB.ListBox List1 
      Height          =   1425
      ItemData        =   "achat.frx":0000
      Left            =   360
      List            =   "achat.frx":0002
      MultiSelect     =   2  'Extended
      TabIndex        =   21
      Top             =   4200
      Width           =   2535
   End
   Begin VB.CommandButton cmdrestorer 
      Caption         =   "restorer"
      Height          =   300
      Left            =   4320
      TabIndex        =   20
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton cmdselect 
      Caption         =   "select"
      Height          =   300
      Left            =   3000
      TabIndex        =   19
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton cmdquiter 
      Caption         =   "Quitter"
      Height          =   300
      Left            =   4320
      TabIndex        =   18
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton cmdva 
      Caption         =   "Valider aj"
      Height          =   300
      Left            =   1680
      TabIndex        =   17
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton cmdajouter 
      Caption         =   "Ajouter"
      Height          =   300
      Left            =   360
      TabIndex        =   16
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton cmddernier 
      Caption         =   "Dernier"
      Height          =   300
      Left            =   4320
      TabIndex        =   15
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton cmdsuivant 
      Caption         =   "Suivant"
      Height          =   300
      Left            =   3000
      TabIndex        =   14
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton cmdprecedent 
      Caption         =   "Precedent"
      Height          =   300
      Left            =   1680
      TabIndex        =   13
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton cmdpremier 
      Caption         =   "Premier"
      Height          =   300
      Left            =   360
      TabIndex        =   12
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox txtc 
      Height          =   300
      Index           =   5
      Left            =   2640
      TabIndex        =   11
      Top             =   2040
      Width           =   2895
   End
   Begin VB.TextBox txtc 
      Height          =   300
      Index           =   4
      Left            =   2640
      TabIndex        =   10
      Top             =   1680
      Width           =   2895
   End
   Begin VB.TextBox txtc 
      Height          =   300
      Index           =   3
      Left            =   2640
      TabIndex        =   9
      Top             =   1320
      Width           =   2895
   End
   Begin VB.TextBox txtc 
      Height          =   300
      Index           =   2
      Left            =   2640
      TabIndex        =   8
      Top             =   960
      Width           =   2895
   End
   Begin VB.TextBox txtc 
      Height          =   300
      Index           =   1
      Left            =   2640
      TabIndex        =   7
      Top             =   600
      Width           =   2895
   End
   Begin VB.TextBox txtc 
      Height          =   300
      Index           =   0
      Left            =   2640
      TabIndex        =   6
      Top             =   240
      Width           =   2895
   End
   Begin VB.Label Label1 
      BorderStyle     =   1  'Fixed Single
      Height          =   660
      Left            =   360
      TabIndex        =   22
      Top             =   3480
      Width           =   6495
   End
   Begin VB.Label lblc 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "date_expiratuion"
      Height          =   300
      Index           =   5
      Left            =   360
      TabIndex        =   5
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Label lblc 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "quantite"
      Height          =   300
      Index           =   4
      Left            =   360
      TabIndex        =   4
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Label lblc 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "date_production"
      Height          =   300
      Index           =   3
      Left            =   360
      TabIndex        =   3
      Top             =   1320
      Width           =   1695
   End
   Begin VB.Label lblc 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "pu"
      Height          =   300
      Index           =   2
      Left            =   360
      TabIndex        =   2
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label lblc 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "designation"
      Height          =   300
      Index           =   1
      Left            =   360
      TabIndex        =   1
      Top             =   600
      Width           =   1695
   End
   Begin VB.Label lblc 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "referance"
      Height          =   300
      Index           =   0
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
End
Attribute VB_Name = "produit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim BD1 As Database
Dim RS1 As Recordset
Private Sub cmdajouter_Click()
vider
RS1.AddNew
End Sub
Private Sub cmddernier_Click()
RS1.MoveLast
affiche
End Sub
Private Sub cmdlc_Click()
For i = 0 To RS1.Fields.Count - 1
    List1.AddItem RS1.Fields(i).Name
    Combo1.AddItem RS1.Fields(i).Name
Next i
    Combo2.AddItem "="
    Combo2.AddItem "<>"
    Combo2.AddItem "<"
    Combo2.AddItem ">"
End Sub
Private Sub cmdprecedent_Click()
RS1.MovePrevious
If RS1.BOF Then
    RS1.MoveFirst
End If
affiche
End Sub
Private Sub cmdpremier_Click()
RS1.MoveFirst
affiche
End Sub
Private Sub cmdquiter_Click()
End
End Sub
Private Sub cmdrestorer_Click()
masquer
Set RS1 = BD1.OpenRecordset("achat")
apparait
affiche
End Sub
Private Sub cmdsele_Click()
Label1 = "select "
For i = 0 To List1.ListCount - 1
    If List1.Selected(i) Then
        Label1 = Label1 + List1.List(i) + ","
   End If
   Next i
   Label1 = Left(Label1, Len(Label1) - 1) + " FROM Achat"
   Label1 = Label1 + " where " + Combo1.Text + " "
   Label1 = Label1 + Combo2.Text + " " + Text1 + ";"
End Sub
Private Sub cmdselect_Click()
masquer
Set RS1 = BD1.OpenRecordset(Label1)
apparait
affiche
End Sub
Private Sub cmdsuivant_Click()
RS1.MoveNext
If RS1.EOF Then
    RS1.MoveLast
End If
affiche
End Sub
Private Sub cmdva_Click()
transfert
RS1.Update
End Sub
Private Sub Form_Load()
On Error Resume Next
Set BD1 = OpenDatabase(App.Path & "\produit0.mdb")
Set RS1 = BD1.OpenRecordset("achat")
affiche
End Sub
Public Sub affiche()
For i = 0 To RS1.Fields.Count - 1
    txtc(i) = RS1.Fields(i)
Next i
End Sub
Public Sub vider()
For i = 0 To RS1.Fields.Count - 1
    txtc(i) = ""
Next i
End Sub
Public Sub transfert()
For i = 0 To RS1.Fields.Count - 1
    RS1.Fields(i) = txtc(i)
Next i
End Sub
Public Sub masquer()
For i = 0 To 5
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

