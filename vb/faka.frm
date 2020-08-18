VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form Form1 
   Caption         =   "vente"
   ClientHeight    =   5685
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7515
   LinkTopic       =   "Form1"
   ScaleHeight     =   5685
   ScaleWidth      =   7515
   StartUpPosition =   3  'Windows Default
   Begin MSDBGrid.DBGrid DBGrid1 
      Bindings        =   "faka.frx":0000
      Height          =   2535
      Left            =   240
      OleObjectBlob   =   "faka.frx":0014
      TabIndex        =   21
      Top             =   3120
      Width           =   7215
   End
   Begin VB.CommandButton cmdquitter 
      Caption         =   "Quitter"
      Height          =   300
      Left            =   4200
      TabIndex        =   20
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton cmdcal 
      Caption         =   "calculer"
      Height          =   300
      Left            =   3240
      TabIndex        =   19
      Top             =   2040
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "rechercher client"
      Height          =   300
      Left            =   240
      TabIndex        =   16
      Top             =   2760
      Width           =   2535
   End
   Begin VB.CommandButton cmdaj 
      Caption         =   "ajouter"
      Height          =   300
      Left            =   4200
      TabIndex        =   15
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton cmdsu 
      Caption         =   "supprimer"
      Height          =   300
      Left            =   2880
      TabIndex        =   14
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton cmdf 
      Caption         =   "dernier"
      Height          =   300
      Left            =   4200
      TabIndex        =   13
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton cmdpr 
      Caption         =   "precedent"
      Height          =   300
      Left            =   1560
      TabIndex        =   12
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton cmds 
      Caption         =   "suivant"
      Height          =   300
      Left            =   2880
      TabIndex        =   11
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton cmdp 
      Caption         =   "premier"
      Height          =   300
      Left            =   240
      TabIndex        =   10
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox txtpu 
      DataField       =   "prix_unitaire"
      DataSource      =   "Data1"
      Height          =   300
      Left            =   1920
      TabIndex        =   9
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox txtq 
      DataField       =   "quantite"
      DataSource      =   "Data1"
      Height          =   300
      Left            =   1920
      TabIndex        =   8
      Top             =   1320
      Width           =   1215
   End
   Begin VB.TextBox txtds 
      DataField       =   "designation_produit"
      DataSource      =   "Data1"
      Height          =   300
      Left            =   1920
      TabIndex        =   7
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox txtd 
      DataField       =   "date_vente"
      DataSource      =   "Data1"
      Height          =   300
      Left            =   1920
      TabIndex        =   6
      Top             =   600
      Width           =   1215
   End
   Begin VB.TextBox txtn 
      DataField       =   "nom_client"
      DataSource      =   "Data1"
      Height          =   300
      Left            =   1920
      TabIndex        =   5
      Top             =   240
      Width           =   1215
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "C:\Documents and Settings\Administrateur\Bureau\vb\produit1.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      EOFAction       =   2  'Add New
      Exclusive       =   0   'False
      Height          =   345
      Left            =   3240
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   0  'Table
      RecordSource    =   "vente"
      Top             =   1680
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.Label lblmt 
      BorderStyle     =   1  'Fixed Single
      Height          =   300
      Left            =   1920
      TabIndex        =   18
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Label Label6 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "montant"
      Height          =   300
      Left            =   240
      TabIndex        =   17
      Top             =   2040
      Width           =   1575
   End
   Begin VB.Label Label5 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "prix_unitaire"
      Height          =   300
      Left            =   240
      TabIndex        =   4
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Label Label4 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "quantite"
      Height          =   300
      Left            =   240
      TabIndex        =   3
      Top             =   1320
      Width           =   1575
   End
   Begin VB.Label Label3 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "designation_produit"
      Height          =   300
      Left            =   240
      TabIndex        =   2
      Top             =   960
      Width           =   1575
   End
   Begin VB.Label Label2 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "date_vente"
      Height          =   300
      Left            =   240
      TabIndex        =   1
      Top             =   600
      Width           =   1575
   End
   Begin VB.Label Label1 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "nom_client"
      Height          =   300
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdaj_Click()
Data1.Recordset.AddNew
txtn.SetFocus
lblmt = ""
End Sub
Private Sub cmdcal_Click()
lblmt = Val(txtq) * Val(txtpu)
End Sub
Private Sub cmdf_Click()
Data1.Recordset.MoveLast
lblmt = ""
End Sub
Private Sub cmdp_Click()
Data1.Recordset.MoveFirst
lblmt = ""
End Sub
Private Sub cmdpr_Click()
Data1.Recordset.MovePrevious
If Data1.Recordset.BOF Then
    Data1.Recordset.MoveFirst
End If
lblmt = ""
End Sub
Private Sub cmdquitter_Click()
End
End Sub
Private Sub cmds_Click()
Data1.Recordset.MoveNext
If Data1.Recordset.EOF Then
    Data1.Recordset.MoveLast
End If
lblmt = ""
End Sub
Private Sub cmdsu_Click()
If Not (Data1.Recordset.BOF = True And Data1.Recordset.EOF = True) Then
Data1.Recordset.Delete
Data1.Recordset.MoveNext
'If Data1.Recordset.EOF Then
    'Data1.Recordset.MoveLast
'End If
End If
lblmt = ""
End Sub
Private Sub Command1_Click()
x = InputBox("donner le nom de client", "recherche")
Data1.Recordset.Index = "nom_client"
Data1.Recordset.Seek "=", x
lblmt = ""
End Sub

Private Sub Form_Load()

End Sub
