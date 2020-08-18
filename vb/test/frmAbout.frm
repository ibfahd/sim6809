VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "À propos de Simulateur6809"
   ClientHeight    =   3630
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5865
   ClipControls    =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3630
   ScaleWidth      =   5865
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Tag             =   "1036"
   Begin VB.PictureBox picIcon 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      ClipControls    =   0   'False
      Height          =   540
      Left            =   240
      Picture         =   "frmAbout.frx":0000
      ScaleHeight     =   480
      ScaleMode       =   0  'User
      ScaleWidth      =   480
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   240
      Width           =   540
   End
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   345
      Left            =   4245
      TabIndex        =   0
      Tag             =   "1038"
      Top             =   2625
      Width           =   1467
   End
   Begin VB.CommandButton cmdSysInfo 
      Caption         =   "Infos &système..."
      Height          =   345
      Left            =   4260
      TabIndex        =   1
      Tag             =   "1037"
      Top             =   3075
      Width           =   1452
   End
   Begin VB.Label lblDescription 
      Caption         =   "Description de l'application"
      ForeColor       =   &H00000000&
      Height          =   1170
      Left            =   1050
      TabIndex        =   6
      Tag             =   "1042"
      Top             =   1125
      Width           =   4092
   End
   Begin VB.Label lblTitle 
      Caption         =   "Titre de l'application"
      ForeColor       =   &H00000000&
      Height          =   480
      Left            =   1050
      TabIndex        =   5
      Tag             =   "1041"
      Top             =   240
      Width           =   4092
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      BorderStyle     =   6  'Inside Solid
      Index           =   1
      X1              =   225
      X2              =   5657
      Y1              =   2430
      Y2              =   2430
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      Index           =   0
      X1              =   240
      X2              =   5657
      Y1              =   2445
      Y2              =   2445
   End
   Begin VB.Label lblVersion 
      Caption         =   "Version"
      Height          =   225
      Left            =   1050
      TabIndex        =   4
      Tag             =   "1040"
      Top             =   780
      Width           =   4092
   End
   Begin VB.Label lblDisclaimer 
      Caption         =   "Avertissement: ..."
      ForeColor       =   &H00000000&
      Height          =   825
      Left            =   255
      TabIndex        =   3
      Tag             =   "1039"
      Top             =   2625
      Width           =   3870
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Options de sécurité des clés de registre...
Const KEY_ALL_ACCESS = &H2003F
                                          

' Types de clés de registre ROOT...
Const HKEY_LOCAL_MACHINE = &H80000002
Const ERROR_SUCCESS = 0
Const REG_SZ = 1                         ' Chaîne Unicode terminée par Null
Const REG_DWORD = 4                      ' Nombre 32 bits


Const gREGKEYSYSINFOLOC = "SOFTWARE\Microsoft\Shared Tools Location"
Const gREGVALSYSINFOLOC = "MSINFO"
Const gREGKEYSYSINFO = "SOFTWARE\Microsoft\Shared Tools\MSINFO"
Const gREGVALSYSINFO = "PATH"


Private Declare Function RegOpenKeyEx Lib "advapi32" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, ByRef phkResult As Long) As Long
Private Declare Function RegQueryValueEx Lib "advapi32" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, ByRef lpType As Long, ByVal lpData As String, ByRef lpcbData As Long) As Long
Private Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long

Private Sub Form_Load()
    LoadResStrings Me
    lblVersion.Caption = "Version " & App.Major & "." & App.Minor & "." & App.Revision
    lblTitle.Caption = App.Title
End Sub



Private Sub cmdSysInfo_Click()
        Call StartSysInfo
End Sub


Private Sub cmdOK_Click()
        Unload Me
End Sub


Public Sub StartSysInfo()
    On Error GoTo SysInfoErr


        Dim rc As Long
        Dim SysInfoPath As String
        

        ' Lit dans le registre le chemin\nom du programme d'infos système...
        If GetKeyValue(HKEY_LOCAL_MACHINE, gREGKEYSYSINFO, gREGVALSYSINFO, SysInfoPath) Then
        ' Lit dans le registre le chemin uniquement du programme d'infos système...
        ElseIf GetKeyValue(HKEY_LOCAL_MACHINE, gREGKEYSYSINFOLOC, gREGVALSYSINFOLOC, SysInfoPath) Then
                ' Valide l'existence d'une version de fichier 32 bits connue
                If (Dir(SysInfoPath & "\MSINFO32.EXE") <> "") Then
                        SysInfoPath = SysInfoPath & "\MSINFO32.EXE"
                        

                ' Erreur - fichier introuvable...
                Else
                        GoTo SysInfoErr
                End If
        ' Erreur - entrée de registre introuvable...
        Else
                GoTo SysInfoErr
        End If
        

        Call Shell(SysInfoPath, vbNormalFocus)
        

        Exit Sub
SysInfoErr:
        MsgBox "Les informations système ne sont pas disponibles pour l'instant", vbOKOnly
End Sub


Public Function GetKeyValue(KeyRoot As Long, KeyName As String, SubKeyRef As String, ByRef KeyVal As String) As Boolean
        Dim i As Long                  ' Compteur de boucle
        Dim rc As Long                 ' Code de retour
        Dim hKey As Long               ' Pointeur vers une clé du registre ouverte
        Dim hDepth As Long             '
        Dim KeyValType As Long         ' Type de données d'une clé de registre
        Dim tmpVal As String           ' Stockage temporaire d'une valeur de clé de registre
        Dim KeyValSize As Long         ' Taille de la variable de clé de registre
        '------------------------------------------------------------
        ' Ouvre la clé de registre sous la clé racine {HKEY_LOCAL_MACHINE...}
        '------------------------------------------------------------
        rc = RegOpenKeyEx(KeyRoot, KeyName, 0, KEY_ALL_ACCESS, hKey) ' Ouvre la clé de registre
        

        If (rc <> ERROR_SUCCESS) Then GoTo GetKeyError          ' Gère l'erreur...
        

        tmpVal = String$(1024, 0)     ' Alloue l'espace pour la variable
        KeyValSize = 1024             ' Marque la taille de la variable
        

        '------------------------------------------------------------
        ' Extrait la valeur de la clé de registre...
        '------------------------------------------------------------
        rc = RegQueryValueEx(hKey, SubKeyRef, 0, KeyValType, tmpVal, KeyValSize)    ' Lit/Crée la valeur de clé
                                                

        If (rc <> ERROR_SUCCESS) Then GoTo GetKeyError    ' Gérer les erreurs
        

        tmpVal = VBA.Left(tmpVal, InStr(tmpVal, VBA.Chr(0)) - 1)
        '------------------------------------------------------------
        ' Détermine le type de la valeur de la clé pour conversion...
        '------------------------------------------------------------
        Select Case KeyValType          ' Recherche les types de données...
        Case REG_SZ                     ' Type de données de clé de registre chaîne
                KeyVal = tmpVal             ' Copie la valeur de la chaîne
        Case REG_DWORD                  ' Type de données de clé de registre double mot
                For i = Len(tmpVal) To 1 Step -1        ' Convertit chaque bit
                        KeyVal = KeyVal + Hex(Asc(Mid(tmpVal, i, 1)))   ' Construit la valeur octet par octet.
                Next
                KeyVal = Format$("&h" + KeyVal)   ' Convertit le double mot en chaîne
        End Select
        

        GetKeyValue = True                    ' Retourne Réussi
        rc = RegCloseKey(hKey)                ' Ferme la clé de registre
        Exit Function                         ' Quitte
        

GetKeyError:    ' Nettoyer suite à erreur...
        KeyVal = ""                           ' Affecte une chaîne vide à la valeur de retour
        GetKeyValue = False                   ' Retourne Échec
        rc = RegCloseKey(hKey)                ' Ferme la clé de registre
End Function

