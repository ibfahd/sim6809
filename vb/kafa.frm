VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3045
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5385
   LinkTopic       =   "Form1"
   ScaleHeight     =   3045
   ScaleWidth      =   5385
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdva 
      Caption         =   "valider ajout"
      Height          =   300
      Left            =   3960
      TabIndex        =   21
      Top             =   1800
      Width           =   1215
   End
   Begin VB.TextBox txtn 
      DataField       =   "nom_client"
      DataSource      =   "Data1"
      Height          =   300
      Left            =   1680
      TabIndex        =   13
      Top             =   0
      Width           =   1215
   End
   Begin VB.TextBox txtd 
      DataField       =   "date_vente"
      DataSource      =   "Data1"
      Height          =   300
      Left            =   1680
      TabIndex        =   12
      Top             =   360
      Width           =   1215
   End
   Begin VB.TextBox txtds 
      DataField       =   "designation_produit"
      DataSource      =   "Data1"
      Height          =   300
      Left            =   1680
      TabIndex        =   11
      Top             =   720
      Width           =   1215
   End
   Begin VB.TextBox txtq 
      DataField       =   "quantite"
      DataSource      =   "Data1"
      Height          =   300
      Left            =   1680
      TabIndex        =   10
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox txtpu 
      DataField       =   "prix_unitaire"
      DataSource      =   "Data1"
      Height          =   300
      Left            =   1680
      TabIndex        =   9
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton cmdp 
      Caption         =   "premier"
      Height          =   300
      Left            =   0
      TabIndex        =   8
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton cmds 
      Caption         =   "suivant"
      Height          =   300
      Left            =   2640
      TabIndex        =   7
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton cmdpr 
      Caption         =   "precedent"
      Height          =   300
      Left            =   1320
      TabIndex        =   6
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton cmdf 
      Caption         =   "dernier"
      Height          =   300
      Left            =   3960
      TabIndex        =   5
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton cmdsu 
      Caption         =   "supprimer"
      Height          =   300
      Left            =   2640
      TabIndex        =   4
      Top             =   2520
      Width           =   1215
   End
   Begin VB.CommandButton cmdaj 
      Caption         =   "ajouter"
      Height          =   300
      Left            =   3960
      TabIndex        =   3
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "rechercher client"
      Height          =   300
      Left            =   0
      TabIndex        =   2
      Top             =   2520
      Width           =   2535
   End
   Begin VB.CommandButton cmdcal 
      Caption         =   "calculer"
      Height          =   300
      Left            =   3000
      TabIndex        =   1
      Top             =   1800
      Width           =   855
   End
   Begin VB.CommandButton cmdquitter 
      Caption         =   "Quitter"
      Height          =   300
      Left            =   3960
      TabIndex        =   0
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label Label1 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "nom_client"
      Height          =   300
      Left            =   0
      TabIndex        =   20
      Top             =   0
      Width           =   1575
   End
   Begin VB.Label Label2 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "date_vente"
      Height          =   300
      Left            =   0
      TabIndex        =   19
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label Label3 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "designation_produit"
      Height          =   300
      Left            =   0
      TabIndex        =   18
      Top             =   720
      Width           =   1575
   End
   Begin VB.Label Label4 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "quantite"
      Height          =   300
      Left            =   0
      TabIndex        =   17
      Top             =   1080
      Width           =   1575
   End
   Begin VB.Label Label5 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "prix_unitaire"
      Height          =   300
      Left            =   0
      TabIndex        =   16
      Top             =   1440
      Width           =   1575
   End
   Begin VB.Label Label6 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "montant"
      Height          =   300
      Left            =   0
      TabIndex        =   15
      Top             =   1800
      Width           =   1575
   End
   Begin VB.Label lblmt 
      BorderStyle     =   1  'Fixed Single
      Height          =   300
      Left            =   1680
      TabIndex        =   14
      Top             =   1800
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim BDarticle As Database
Dim RSV As Recordset
Private Sub cmdaj_Click()
vider
RSV.AddNew
End Sub
Private Sub cmdcal_Click()
lblmt = Val(txtq) * Val(txtpu)
End Sub
Private Sub cmdf_Click()
RSV.MoveLast
afficher
End Sub
Private Sub cmdp_Click()
RSV.MoveFirst
afficher
End Sub
Private Sub cmdpr_Click()
RSV.MovePrevious
If RSV.BOF Then
    RSV.MoveFirst
End If
afficher
End Sub
Private Sub cmdquitter_Click()
End
End Sub
Private Sub cmds_Click()
RSV.MoveNext
If RSV.EOF Then
    RSV.MoveLast
End If
afficher
End Sub
Private Sub cmdsu_Click()
On Error Resume Next
If Not (RSV.BOF = True And RSV.EOF = True) Then
RSV.Delete
RSV.MoveNext
End If
vider
afficher
End Sub
Private Sub cmdva_Click()
transfert
RSV.Update
End Sub
Private Sub Command1_Click()
x = InputBox("donner le nom de client", "recherche")
RSV.Index = "nom_client"
RSV.Seek "=", x
afficher
End Sub
Private Sub Form_Load()
On Error Resume Next
Set BDarticle = OpenDatabase(App.Path & "\produit1.mdb")
Set RSV = BDarticle.OpenRecordset("vente")
afficher
End Sub
Public Sub afficher()
txtn = RSV("nom_client")
txtd = RSV("date_vente")
txtds = RSV("designation_produit")
txtq = RSV("quantite")
txtpu = RSV("prix_unitaire")
End Sub
Public Sub transfert()
RSV("nom_client") = txtn
RSV("date_vente") = txtd
RSV("designation_produit") = txtds
RSV("quantite") = txtq
RSV("prix_unitaire") = txtpu
End Sub
Public Sub vider()
txtn = ""
txtd = ""
txtds = ""
txtq = ""
txtpu = ""
End Sub
