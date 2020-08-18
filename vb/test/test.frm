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
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   1560
      TabIndex        =   1
      Top             =   1680
      Width           =   2295
   End
   Begin VB.TextBox txt 
      Height          =   735
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Function Bin2hex(bin)
b = 0
For i = 1 To Len(bin)
    b = b + (Mid(bin, i, 1) * 2 ^ (Len(bin) - i))
Next i
If Len(Hex(b)) = 1 Then Bin2hex = "0" & Hex(b) Else Bin2hex = Hex(b)
End Function
Function ajoutcar(ch, n)
ajoutcar = ""
For i = 1 To n
    ajoutcar = ajoutcar & ch
Next i
End Function
Function zero(n)
zero = ""
For i = 1 To 4 - Len(n)
    n = "0" & n
Next i
zero = n
End Function
Function Hex2dec(nh)
Hex2dec = 0
If nh = "80" Then
    Hex2dec = -128
    Exit Function
ElseIf nh = "8000" Then
    Hex2dec = -32768
    Exit Function
ElseIf Mid(hex2bin(nh), 1, 1) = 1 Then
    Hex2dec = -bin2dec(CompA2(hex2bin(nh)))
    Exit Function
End If
Nhex = "0123456789ABCDEF"
nh = zero(nh)
For i = 1 To 4
Hex2dec = Hex2dec + (InStr(Nhex, Mid(nh, i, 1)) - 1) * 16 ^ (4 - i)
Next i
End Function
Function NRegistre(strRegistre)
Select Case UCase(strRegistre)
    Case "D"
        NRegistre = "0"
    Case "X"
        NRegistre = "1"
    Case "Y"
        NRegistre = "2"
    Case "U"
        NRegistre = "3"
    Case "S"
        NRegistre = "4"
    Case "PC"
        NRegistre = "5"
    Case "A"
        NRegistre = "8"
    Case "B"
        NRegistre = "9"
    Case "CC"
        NRegistre = "A"
    Case "DP"
        NRegistre = "B"
    Case Else
        NRegistre = "erreur"
End Select
End Function
Function hex2bin(hb)
hex2bin = ""
For i = 1 To Len(hb)
    Select Case Mid(hb, i, 1)
        Case "0"
            hex2bin = hex2bin & "0000"
        Case "1"
            hex2bin = hex2bin & "0001"
        Case "2"
            hex2bin = hex2bin & "0010"
        Case "3"
            hex2bin = hex2bin & "0011"
        Case "4"
            hex2bin = hex2bin & "0100"
        Case "5"
            hex2bin = hex2bin & "0101"
        Case "6"
            hex2bin = hex2bin & "0110"
        Case "7"
            hex2bin = hex2bin & "0111"
        Case "8"
            hex2bin = hex2bin & "1000"
        Case "9"
            hex2bin = hex2bin & "1001"
        Case "A"
            hex2bin = hex2bin & "1010"
        Case "B"
            hex2bin = hex2bin & "1011"
        Case "C"
            hex2bin = hex2bin & "1100"
        Case "D"
            hex2bin = hex2bin & "1101"
        Case "E"
            hex2bin = hex2bin & "1110"
        Case "F"
            hex2bin = hex2bin & "1111"
    End Select
Next i
End Function
Function bin2dec(nb)
    bin2dec = Hex2dec(Bin2hex(nb))
End Function
Function CompA1(nb)
    CompA1 = ""
    For i = 1 To Len(nb)
        If Mid(nb, i, 1) = 0 Then b = 1 Else b = 0
        CompA1 = CompA1 & b
    Next i
End Function
Function PlusB(bA, bB)
    PlusB = hex2bin(Hex(bin2dec(bA) + bin2dec(bB)))
End Function
Function CompA2(nb)
    CompA2 = PlusB(CompA1(nb), 1)
End Function
Private Sub Command1_Click()
MsgBox Hex2dec(txt)
End Sub
