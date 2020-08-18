Attribute VB_Name = "Module"
Public TabRam(0 To 4095)
Public TabBr(1 To 2, 1 To 10)
Public Pc As Integer
Public Arret As Boolean
Function Bin2hex(bin)
b = 0
For i = 1 To Len(bin)
    b = b + (Mid(bin, i, 1) * 2 ^ (Len(bin) - i))
Next i
If Len(Hex(b)) = 1 Then Bin2hex = "0" & Hex(b) Else Bin2hex = Hex(b)
End Function
Function Ajoutcar(ch, n)
Ajoutcar = ""
For i = 1 To n
    Ajoutcar = Ajoutcar & ch
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
Public Sub IncPC(n)
Pc = Pc + n
End Sub
Public Sub ToRam(Tr, Donnee)
For v = 0 To 3968 Step 128
    For u = 0 To 127
        If Tr = v + u Then
            FrmRam.Vscroll.Value = v
            FrmRam.TxtRam(u) = Donnee
            Exit Sub
        End If
    Next u
Next v
End Sub
Function PlusB8(NB1, NB2)
PlusB8 = ""
r = 0
For i = 8 To 1 Step -1
    res = Val(Mid(NB1, i, 1)) + Val(Mid(NB2, i, 1)) + Val(r)
    If res = 2 Then
        r = 1
        res = 0
    ElseIf res = 3 Then
        res = 1
        r = 1
    Else
        r = 0
    End If
    If i = 7 Then b6 = r
    If i = 8 Then b7 = r
    PlusB8 = res & PlusB8
    With FrmRegistres
        If (i = 4) And (r = 1) Then .LblCC(5) = 1 Else .LblCC(5) = 0
        If (i = 8) And (r = 1) Then .LblCC(0) = 1 Else .LblCC(0) = 0
        If (i = 8) And (res = 1) Then .LblCC(3) = 1 Else .LblCC(3) = 0
        If PlusB8 = "00000000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If b6 <> b7 Then .LblCC(1) = 1 Else .LblCC(1) = 0
    End With
Next i
End Function
Function MoinB8(NB1, NB2)
MoinB8 = ""
r = 0
NB2 = CompA2(NB2)
NB2 = Mid(NB2, 25, 32)
For i = 8 To 1 Step -1
    res = Val(Mid(NB1, i, 1)) + Val(Mid(NB2, i, 1)) + Val(r)
    If res = 2 Then
        r = 1
        res = 0
    ElseIf res = 3 Then
        res = 1
        r = 1
    Else
        r = 0
    End If
    If i = 7 Then b6 = r
    If i = 8 Then b7 = r
    MoinB8 = res & MoinB8
    With FrmRegistres
        If (i = 8) And (r = 1) Then .LblCC(0) = 0 Else .LblCC(0) = 1
        If (i = 8) And (res = 1) Then .LblCC(3) = 1 Else .LblCC(3) = 0
        If MoinB8 = "00000000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If b6 <> b7 Then .LblCC(1) = 1 Else .LblCC(1) = 0
    End With
Next i
End Function
Function PlusB16(NB1, NB2)
PlusB16 = ""
r = 0
For i = 16 To 1 Step -1
    res = Val(Mid(NB1, i, 1)) + Val(Mid(NB2, i, 1)) + Val(r)
    If res = 2 Then
        r = 1
        res = 0
    ElseIf res = 3 Then
        res = 1
        r = 1
    Else
        r = 0
    End If
    If i = 15 Then b14 = r
    If i = 16 Then b15 = r
    PlusB16 = res & PlusB16
    With FrmRegistres
        If (i = 16) And (r = 1) Then .LblCC(0) = 1 Else .LblCC(0) = 0
        If (i = 16) And (res = 1) Then .LblCC(3) = 1 Else .LblCC(3) = 0
        If PlusB16 = "0000000000000000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If b14 <> b15 Then .LblCC(1) = 1 Else .LblCC(1) = 0
    End With
Next i
End Function
Function MoinB16(NB1, NB2)
MoinB16 = ""
r = 0
NB2 = CompA2(NB2)
NB2 = Mid(NB2, 17, 32)
For i = 16 To 1 Step -1
    res = Val(Mid(NB1, i, 1)) + Val(Mid(NB2, i, 1)) + Val(r)
    If res = 2 Then
        r = 1
        res = 0
    ElseIf res = 3 Then
        res = 1
        r = 1
    Else
        r = 0
    End If
    If i = 15 Then b14 = r
    If i = 16 Then b15 = r
    MoinB16 = res & MoinB16
    With FrmRegistres
        If (i = 16) And (r = 1) Then .LblCC(0) = 0 Else .LblCC(0) = 1
        If (i = 16) And (res = 1) Then .LblCC(3) = 1 Else .LblCC(3) = 0
        If MoinB16 = "0000000000000000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If b14 <> b15 Then .LblCC(1) = 1 Else .LblCC(1) = 0
    End With
Next i
End Function
