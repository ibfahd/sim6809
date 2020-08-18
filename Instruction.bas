Attribute VB_Name = "Instruction"
Public Sub LD()
With FrmRegistres
.LblCC(1) = 0
Select Case TabRam(Pc)
    Case "86"
        IncPC (1)
        .lblA = TabRam(Pc)
        If .lblA = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "C6"
        IncPC (1)
        .lblB = TabRam(Pc)
        If .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblB), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "CC"
        IncPC (1)
        .lblA = TabRam(Pc)
        IncPC (1)
        .lblB = TabRam(Pc)
        If .lblA = "00" And .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "CE"
        IncPC (1)
        .lblU = TabRam(Pc) & TabRam(Pc + 1)
        IncPC (1)
        If .lblU = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblU), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "8E"
        IncPC (1)
        .lblX = TabRam(Pc) & TabRam(Pc + 1)
        IncPC (1)
        If .lblX = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblX), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "B6"
        IncPC (1)
        .lblA = TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1)))
        IncPC (1)
        If .lblA = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "F6"
        IncPC (1)
        .lblB = TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1)))
        IncPC (1)
        If .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblB), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "FC"
        IncPC (1)
        .lblA = TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1)))
        .lblB = TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1)) + 1)
        IncPC (1)
        If .lblA = "00" And .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "FE"
        IncPC (1)
        .lblU = TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1))) & TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1)) + 1)
        IncPC (1)
        If .lblU = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblU), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "BE"
        IncPC (1)
        .lblX = TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1))) & TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1)) + 1)
        IncPC (1)
        If .lblX = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblX), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "96"
        IncPC (1)
        .lblA = TabRam(Hex2dec(.lblDP & TabRam(Pc)))
        If .lblA = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "D6"
        IncPC (1)
        .lblB = TabRam(Hex2dec(.lblDP & TabRam(Pc)))
        If .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblB), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "DC"
        IncPC (1)
        .lblA = TabRam(Hex2dec(.lblDP & TabRam(Pc)))
        .lblB = TabRam(Hex2dec(.lblDP & TabRam(Pc)) + 1)
        If .lblA = "00" And .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "DE"
        IncPC (1)
        .lblU = TabRam(Hex2dec(.lblDP & TabRam(Pc))) & TabRam(Hex2dec(.lblDP & TabRam(Pc)) + 1)
        If .lblU = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblU), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "9E"
        IncPC (1)
        .lblX = TabRam(Hex2dec(.lblDP & TabRam(Pc))) & TabRam(Hex2dec(.lblDP & TabRam(Pc)) + 1)
        If .lblX = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblX), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "A6"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "84"
                .lblA = TabRam(Hex2dec(.lblX))
            Case "A4"
                .lblA = TabRam(Hex2dec(.lblY))
            Case "C4"
                .lblA = TabRam(Hex2dec(.lblU))
            Case "E4"
                .lblA = TabRam(Hex2dec(.lblS))
            Case "80"
                .lblA = TabRam(Hex2dec(.lblX))
                .lblX = zero(Hex(Hex2dec(.lblX) + 1))
            Case "81"
                .lblA = TabRam(Hex2dec(.lblX))
                .lblX = zero(Hex(Hex2dec(.lblX) + 2))
            Case "82"
                .lblA = TabRam(Hex2dec(.lblX))
                .lblX = zero(Hex(Hex2dec(.lblX) - 1))
            Case "83"
                .lblA = TabRam(Hex2dec(.lblX))
                .lblX = zero(Hex(Hex2dec(.lblX) - 2))
            Case "A0"
                .lblA = TabRam(Hex2dec(.lblY))
                .lblY = zero(Hex(Hex2dec(.lblY) + 1))
            Case "A1"
                .lblA = TabRam(Hex2dec(.lblY))
                .lblY = zero(Hex(Hex2dec(.lblY) + 2))
            Case "A2"
                .lblA = TabRam(Hex2dec(.lblY))
                .lblY = zero(Hex(Hex2dec(.lblY) - 1))
            Case "A3"
                .lblA = TabRam(Hex2dec(.lblY))
                .lblY = zero(Hex(Hex2dec(.lblY) - 2))
            Case "E0"
                .lblA = TabRam(Hex2dec(.lblS))
                .lblS = zero(Hex(Hex2dec(.lblS) + 1))
            Case "E1"
                .lblA = TabRam(Hex2dec(.lblS))
                .lblS = zero(Hex(Hex2dec(.lblS) + 2))
            Case "E2"
                .lblA = TabRam(Hex2dec(.lblS))
                .lblS = zero(Hex(Hex2dec(.lblS) - 1))
            Case "E3"
                .lblA = TabRam(Hex2dec(.lblS))
                .lblS = zero(Hex(Hex2dec(.lblS) - 2))
            Case "C0"
                .lblA = TabRam(Hex2dec(.lblU))
                .lblU = zero(Hex(Hex2dec(.lblU) + 1))
            Case "C1"
                .lblA = TabRam(Hex2dec(.lblU))
                .lblU = zero(Hex(Hex2dec(.lblU) + 2))
            Case "C2"
                .lblA = TabRam(Hex2dec(.lblU))
                .lblU = zero(Hex(Hex2dec(.lblU) - 1))
            Case "C3"
                .lblA = TabRam(Hex2dec(.lblU))
                .lblU = zero(Hex(Hex2dec(.lblU) - 2))
            Case "00" To "0F"
                .lblA = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc)))
            Case "20" To "2F"
                .lblA = TabRam(Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "40" To "4F"
                .lblA = TabRam(Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "60" To "6F"
                .lblA = TabRam(Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "10" To "1F"
                .lblA = TabRam(Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "30" To "3F"
                .lblB = TabRam(Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "50" To "5F"
                .lblA = TabRam(Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "70" To "7F"
                .lblA = TabRam(Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "88"
                .lblA = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "A8"
                .lblA = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "E8"
                .lblA = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "C8"
                .lblA = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "89"
                .lblA = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "A9"
                .lblA = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "C9"
                .lblA = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "E9"
                .lblA = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
        End Select
        If .lblA = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "E6"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "84"
                .lblB = TabRam(Hex2dec(.lblX))
            Case "A4"
                .lblB = TabRam(Hex2dec(.lblY))
            Case "C4"
                .lblB = TabRam(Hex2dec(.lblU))
            Case "E4"
                .lblB = TabRam(Hex2dec(.lblS))
            Case "80"
                .lblB = TabRam(Hex2dec(.lblX))
                .lblX = zero(Hex(Hex2dec(.lblX) + 1))
            Case "81"
                .lblB = TabRam(Hex2dec(.lblX))
                .lblX = zero(Hex(Hex2dec(.lblX) + 2))
            Case "82"
                .lblB = TabRam(Hex2dec(.lblX))
                .lblX = zero(Hex(Hex2dec(.lblX) - 1))
            Case "83"
                .lblB = TabRam(Hex2dec(.lblX))
                .lblX = zero(Hex(Hex2dec(.lblX) - 2))
            Case "A0"
                .lblB = TabRam(Hex2dec(.lblY))
                .lblY = zero(Hex(Hex2dec(.lblY) + 1))
            Case "A1"
                .lblB = TabRam(Hex2dec(.lblY))
                .lblY = zero(Hex(Hex2dec(.lblY) + 2))
            Case "A2"
                .lblB = TabRam(Hex2dec(.lblY))
                .lblY = zero(Hex(Hex2dec(.lblY) - 1))
            Case "A3"
                .lblB = TabRam(Hex2dec(.lblY))
                .lblY = zero(Hex(Hex2dec(.lblY) - 2))
            Case "E0"
                .lblB = TabRam(Hex2dec(.lblS))
                .lblS = zero(Hex(Hex2dec(.lblS) + 1))
            Case "E1"
                .lblB = TabRam(Hex2dec(.lblS))
                .lblS = zero(Hex(Hex2dec(.lblS) + 2))
            Case "E2"
                .lblB = TabRam(Hex2dec(.lblS))
                .lblS = zero(Hex(Hex2dec(.lblS) - 1))
            Case "E3"
                .lblB = TabRam(Hex2dec(.lblS))
                .lblS = zero(Hex(Hex2dec(.lblS) - 2))
            Case "C0"
                .lblB = TabRam(Hex2dec(.lblU))
                .lblU = zero(Hex(Hex2dec(.lblU) + 1))
            Case "C1"
                .lblB = TabRam(Hex2dec(.lblU))
                .lblU = zero(Hex(Hex2dec(.lblU) + 2))
            Case "C2"
                .lblB = TabRam(Hex2dec(.lblU))
                .lblU = zero(Hex(Hex2dec(.lblU) - 1))
            Case "C3"
                .lblB = TabRam(Hex2dec(.lblU))
                .lblU = zero(Hex(Hex2dec(.lblU) - 2))
            Case "00" To "0F"
                .lblB = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc)))
            Case "20" To "2F"
                .lblB = TabRam(Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "40" To "4F"
                .lblB = TabRam(Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "60" To "6F"
                .lblB = TabRam(1 + Hex2dec(.lblX) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "10" To "1F"
                .lblB = TabRam(Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "30" To "3F"
                .lblB = TabRam(Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "50" To "5F"
                .lblB = TabRam(Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "70" To "7F"
                .lblB = TabRam(Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "88"
                .lblB = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "A8"
                .lblB = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "E8"
                .lblB = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "C8"
                .lblB = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "89"
                .lblB = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "A9"
                .lblB = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "C9"
                .lblB = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "E9"
                .lblB = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
        End Select
        If .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblB), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "EC"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "84"
                .lblA = TabRam(Hex2dec(.lblX))
                .lblB = TabRam(Hex2dec(.lblX) + 1)
            Case "A4"
                .lblA = TabRam(Hex2dec(.lblY))
                .lblB = TabRam(Hex2dec(.lblY) + 1)
            Case "C4"
                .lblA = TabRam(Hex2dec(.lblU))
                .lblB = TabRam(Hex2dec(.lblU) + 1)
            Case "E4"
                .lblA = TabRam(Hex2dec(.lblS))
                .lblB = TabRam(Hex2dec(.lblS) + 1)
            Case "80"
                .lblA = TabRam(Hex2dec(.lblX))
                .lblB = TabRam(Hex2dec(.lblX) + 1)
                .lblX = zero(Hex(Hex2dec(.lblX) + 1))
            Case "81"
                .lblA = TabRam(Hex2dec(.lblX))
                .lblB = TabRam(Hex2dec(.lblX) + 1)
                .lblX = zero(Hex(Hex2dec(.lblX) + 2))
            Case "82"
                .lblA = TabRam(Hex2dec(.lblX))
                .lblB = TabRam(Hex2dec(.lblX) + 1)
                .lblX = zero(Hex(Hex2dec(.lblX) - 1))
            Case "83"
                .lblA = TabRam(Hex2dec(.lblX))
                .lblB = TabRam(Hex2dec(.lblX) + 1)
                .lblX = zero(Hex(Hex2dec(.lblX) - 2))
            Case "A0"
                .lblA = TabRam(Hex2dec(.lblY))
                .lblB = TabRam(Hex2dec(.lblY) + 1)
                .lblY = zero(Hex(Hex2dec(.lblY) + 1))
            Case "A1"
                .lblA = TabRam(Hex2dec(.lblY))
                .lblB = TabRam(Hex2dec(.lblY) + 1)
                .lblY = zero(Hex(Hex2dec(.lblY) + 2))
            Case "A2"
                .lblA = TabRam(Hex2dec(.lblY))
                .lblB = TabRam(Hex2dec(.lblY) + 1)
                .lblY = zero(Hex(Hex2dec(.lblY) - 1))
            Case "A3"
                .lblA = TabRam(Hex2dec(.lblY))
                .lblB = TabRam(Hex2dec(.lblY) + 1)
                .lblY = zero(Hex(Hex2dec(.lblY) - 2))
            Case "E0"
                .lblA = TabRam(Hex2dec(.lblS))
                .lblB = TabRam(Hex2dec(.lblS) + 1)
                .lblS = zero(Hex(Hex2dec(.lblS) + 1))
            Case "E1"
                .lblA = TabRam(Hex2dec(.lblS))
                .lblB = TabRam(Hex2dec(.lblS) + 1)
                .lblS = zero(Hex(Hex2dec(.lblS) + 2))
            Case "E2"
                .lblA = TabRam(Hex2dec(.lblS))
                .lblB = TabRam(Hex2dec(.lblS) + 1)
                .lblS = zero(Hex(Hex2dec(.lblS) - 1))
            Case "E3"
                .lblA = TabRam(Hex2dec(.lblS))
                .lblB = TabRam(Hex2dec(.lblS) + 1)
                .lblS = zero(Hex(Hex2dec(.lblS) - 2))
            Case "C0"
                .lblA = TabRam(Hex2dec(.lblU))
                .lblB = TabRam(Hex2dec(.lblU) + 1)
                .lblU = zero(Hex(Hex2dec(.lblU) + 1))
            Case "C1"
                .lblA = TabRam(Hex2dec(.lblU))
                .lblB = TabRam(Hex2dec(.lblU) + 1)
                .lblU = zero(Hex(Hex2dec(.lblU) + 2))
            Case "C2"
                .lblA = TabRam(Hex2dec(.lblU))
                .lblB = TabRam(Hex2dec(.lblU) + 1)
                .lblU = zero(Hex(Hex2dec(.lblU) - 1))
            Case "C3"
                .lblA = TabRam(Hex2dec(.lblU))
                .lblB = TabRam(Hex2dec(.lblU) + 1)
                .lblU = zero(Hex(Hex2dec(.lblU) - 2))
            Case "00" To "0F"
                .lblA = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc)))
                .lblB = TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc)))
            Case "20" To "2F"
                .lblA = TabRam(Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
                .lblB = TabRam(1 + Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "40" To "4F"
                .lblA = TabRam(Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
                .lblB = TabRam(1 + Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "60" To "6F"
                .lblA = TabRam(Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
                .lblB = TabRam(1 + Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "10" To "1F"
                .lblA = TabRam(Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                .lblB = TabRam(1 + Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "30" To "3F"
                .lblA = TabRam(Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                .lblB = TabRam(1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "50" To "5F"
                .lblA = TabRam(Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                .lblB = TabRam(1 + Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "70" To "7F"
                .lblA = TabRam(Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                .lblB = TabRam(1 + Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "88"
                .lblA = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)))
                .lblB = TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "A8"
                .lblA = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)))
                .lblB = TabRam(1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "E8"
                .lblA = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)))
                .lblB = TabRam(1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "C8"
                .lblA = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)))
                .lblB = TabRam(1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "89"
                .lblA = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                .lblB = TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "A9"
                .lblA = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                .lblB = TabRam(1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "C9"
                .lblA = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                .lblB = TabRam(1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "E9"
                .lblA = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                .lblB = TabRam(1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
        End Select
        If .lblA = "00" And .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "EE"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "84"
                .lblU = TabRam(Hex2dec(.lblX)) & TabRam(Hex2dec(.lblX) + 1)
            Case "A4"
                .lblU = TabRam(Hex2dec(.lblY)) & TabRam(Hex2dec(.lblY) + 1)
            Case "C4"
                .lblU = TabRam(Hex2dec(.lblU)) & TabRam(Hex2dec(.lblU) + 1)
            Case "E4"
                .lblU = TabRam(Hex2dec(.lblS)) & TabRam(Hex2dec(.lblS) + 1)
            Case "80"
                .lblU = TabRam(Hex2dec(.lblX) + 1) & TabRam(Hex2dec(.lblX) + 2)
            Case "81"
                .lblU = TabRam(Hex2dec(.lblX) + 2) & TabRam(Hex2dec(.lblX) + 3)
            Case "82"
                .lblU = TabRam(Hex2dec(.lblX) - 1) & TabRam(Hex2dec(.lblX))
            Case "83"
                .lblU = TabRam(Hex2dec(.lblX) - 2) & TabRam(Hex2dec(.lblX) - 1)
            Case "A0"
                .lblU = TabRam(Hex2dec(.lblY) + 1) & TabRam(Hex2dec(.lblY) + 2)
            Case "A1"
                .lblU = TabRam(Hex2dec(.lblY) + 2) & TabRam(Hex2dec(.lblY) + 3)
            Case "A2"
                .lblU = TabRam(Hex2dec(.lblY) - 1) & TabRam(Hex2dec(.lblY))
            Case "A3"
                .lblU = TabRam(Hex2dec(.lblY) - 2) & TabRam(Hex2dec(.lblY) - 1)
            Case "E0"
                .lblU = TabRam(Hex2dec(.lblS) + 1) & TabRam(Hex2dec(.lblS) + 2)
            Case "E1"
                .lblU = TabRam(Hex2dec(.lblS) + 2) & TabRam(Hex2dec(.lblS) + 3)
            Case "E2"
                .lblU = TabRam(Hex2dec(.lblS) - 1) & TabRam(Hex2dec(.lblS))
            Case "E3"
                .lblU = TabRam(Hex2dec(.lblS) - 2) & TabRam(Hex2dec(.lblS) - 1)
            Case "C0"
                .lblU = TabRam(Hex2dec(.lblU) + 1) & TabRam(Hex2dec(.lblU) + 2)
            Case "C1"
                .lblU = TabRam(Hex2dec(.lblU) + 2) & TabRam(Hex2dec(.lblU) + 3)
            Case "C2"
                .lblU = TabRam(Hex2dec(.lblU) - 1) & TabRam(Hex2dec(.lblU))
            Case "C3"
                .lblU = TabRam(Hex2dec(.lblU) - 2) & TabRam(Hex2dec(.lblU) - 1)
            Case "00" To "0F"
                .lblU = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc)))
            Case "20" To "2F"
                .lblU = TabRam(Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "40" To "4F"
                .lblU = TabRam(Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "60" To " 6F"
                .lblU = TabRam(Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "10" To "1F"
                .lblU = TabRam(Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "30" To "3F"
                .lblU = TabRam(Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "50" To "5F"
                .lblU = TabRam(Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "70" To " 7F"
                .lblU = TabRam(Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "88"
                .lblU = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "A8"
                .lblU = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "E8"
                .lblU = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "C8"
                .lblU = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "89"
                .lblU = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "A9"
                .lblU = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "C9"
                .lblU = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "E9"
                .lblU = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
        End Select
        If .lblU = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblU), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "AE"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "84"
                .lblX = TabRam(Hex2dec(.lblX)) & TabRam(Hex2dec(.lblX) + 1)
            Case "A4"
                .lblX = TabRam(Hex2dec(.lblY)) & TabRam(Hex2dec(.lblY) + 1)
            Case "C4"
                .lblX = TabRam(Hex2dec(.lblU)) & TabRam(Hex2dec(.lblU) + 1)
            Case "E4"
                .lblX = TabRam(Hex2dec(.lblS)) & TabRam(Hex2dec(.lblS) + 1)
            Case "80"
                .lblX = TabRam(Hex2dec(.lblX) + 1) & TabRam(Hex2dec(.lblX) + 2)
            Case "81"
                .lblX = TabRam(Hex2dec(.lblX) + 2) & TabRam(Hex2dec(.lblX) + 3)
            Case "82"
                .lblX = TabRam(Hex2dec(.lblX) - 1) & TabRam(Hex2dec(.lblX))
            Case "83"
                .lblX = TabRam(Hex2dec(.lblX) - 2) & TabRam(Hex2dec(.lblX) - 1)
            Case "A0"
                .lblX = TabRam(Hex2dec(.lblY) + 1) & TabRam(Hex2dec(.lblY) + 2)
            Case "A1"
                .lblX = TabRam(Hex2dec(.lblY) + 2) & TabRam(Hex2dec(.lblY) + 3)
            Case "A2"
                .lblX = TabRam(Hex2dec(.lblY) - 1) & TabRam(Hex2dec(.lblY))
            Case "A3"
                .lblX = TabRam(Hex2dec(.lblY) - 2) & TabRam(Hex2dec(.lblY) - 1)
            Case "E0"
                .lblX = TabRam(Hex2dec(.lblS) + 1) & TabRam(Hex2dec(.lblS) + 2)
            Case "E1"
                .lblX = TabRam(Hex2dec(.lblS) + 2) & TabRam(Hex2dec(.lblS) + 3)
            Case "E2"
                .lblX = TabRam(Hex2dec(.lblS) - 1) & TabRam(Hex2dec(.lblS))
            Case "E3"
                .lblX = TabRam(Hex2dec(.lblS) - 2) & TabRam(Hex2dec(.lblS) - 1)
            Case "C0"
                .lblX = TabRam(Hex2dec(.lblU) + 1) & TabRam(Hex2dec(.lblU) + 2)
            Case "C1"
                .lblX = TabRam(Hex2dec(.lblU) + 2) & TabRam(Hex2dec(.lblU) + 3)
            Case "C2"
                .lblX = TabRam(Hex2dec(.lblU) - 1) & TabRam(Hex2dec(.lblU))
            Case "C3"
                .lblX = TabRam(Hex2dec(.lblU) - 2) & TabRam(Hex2dec(.lblU) - 1)
            Case "00" To "0F"
                .lblX = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc)))
            Case "20" To "2F"
                .lblX = TabRam(Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "40" To "4F"
                .lblX = TabRam(Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "60" To " 6F"
                .lblX = TabRam(Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
            Case "10" To "1F"
                .lblX = TabRam(Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "30" To "3F"
                .lblX = TabRam(Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "50" To "5F"
                .lblX = TabRam(Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "70" To " 7F"
                .lblX = TabRam(Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "88"
                .lblX = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "A8"
                .lblX = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "E8"
                .lblX = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "C8"
                .lblX = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)))
                IncPC (1)
            Case "89"
                .lblX = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "A9"
                .lblX = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "C9"
                .lblX = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
            Case "E9"
                .lblX = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                IncPC (2)
        End Select
        If .lblX = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblX), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "10"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "CE"
                IncPC (1)
                .lblS = TabRam(Pc) & TabRam(Pc + 1)
                IncPC (1)
                If .lblS = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblS), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "8E"
                IncPC (1)
                .lblY = TabRam(Pc) & TabRam(Pc + 1)
                IncPC (1)
                If .lblY = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblY), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "FE"
                IncPC (1)
                .lblS = TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1))) & TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1)) + 1)
                IncPC (1)
                If .lblS = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblS), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "BE"
                IncPC (1)
                .lblY = TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1))) & TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1)) + 1)
                IncPC (1)
                If .lblY = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblY), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "DE"
                IncPC (1)
                .lblS = TabRam(Hex2dec(.lblDP & TabRam(Pc))) & TabRam(Hex2dec(.lblDP & TabRam(Pc)) + 1)
                If .lblS = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblS), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "9E"
                IncPC (1)
                .lblY = TabRam(Hex2dec(.lblDP & TabRam(Pc))) & TabRam(Hex2dec(.lblDP & TabRam(Pc)) + 1)
                If .lblY = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblY), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "EE"
                IncPC (1)
                Select Case TabRam(Pc)
                    Case "84"
                        .lblS = TabRam(Hex2dec(.lblX)) & TabRam(Hex2dec(.lblX) + 1)
                    Case "A4"
                        .lblS = TabRam(Hex2dec(.lblY)) & TabRam(Hex2dec(.lblY) + 1)
                    Case "C4"
                        .lblS = TabRam(Hex2dec(.lblU)) & TabRam(Hex2dec(.lblU) + 1)
                    Case "E4"
                        .lblS = TabRam(Hex2dec(.lblS)) & TabRam(Hex2dec(.lblS) + 1)
                    Case "80"
                        .lblS = TabRam(Hex2dec(.lblX) + 1) & TabRam(Hex2dec(.lblX) + 2)
                    Case "81"
                        .lblS = TabRam(Hex2dec(.lblX) + 2) & TabRam(Hex2dec(.lblX) + 3)
                    Case "82"
                        .lblS = TabRam(Hex2dec(.lblX) - 1) & TabRam(Hex2dec(.lblX))
                    Case "83"
                        .lblS = TabRam(Hex2dec(.lblX) - 2) & TabRam(Hex2dec(.lblX) - 1)
                    Case "A0"
                        .lblS = TabRam(Hex2dec(.lblY) + 1) & TabRam(Hex2dec(.lblY) + 2)
                    Case "A1"
                        .lblS = TabRam(Hex2dec(.lblY) + 2) & TabRam(Hex2dec(.lblY) + 3)
                    Case "A2"
                        .lblS = TabRam(Hex2dec(.lblY) - 1) & TabRam(Hex2dec(.lblY))
                    Case "A3"
                        .lblS = TabRam(Hex2dec(.lblY) - 2) & TabRam(Hex2dec(.lblY) - 1)
                    Case "E0"
                        .lblS = TabRam(Hex2dec(.lblS) + 1) & TabRam(Hex2dec(.lblS) + 2)
                    Case "E1"
                        .lblS = TabRam(Hex2dec(.lblS) + 2) & TabRam(Hex2dec(.lblS) + 3)
                    Case "E2"
                        .lblS = TabRam(Hex2dec(.lblS) - 1) & TabRam(Hex2dec(.lblS))
                    Case "E3"
                        .lblS = TabRam(Hex2dec(.lblS) - 2) & TabRam(Hex2dec(.lblS) - 1)
                    Case "C0"
                        .lblS = TabRam(Hex2dec(.lblU) + 1) & TabRam(Hex2dec(.lblU) + 2)
                    Case "C1"
                        .lblS = TabRam(Hex2dec(.lblU) + 2) & TabRam(Hex2dec(.lblU) + 3)
                    Case "C2"
                        .lblS = TabRam(Hex2dec(.lblU) - 1) & TabRam(Hex2dec(.lblU))
                    Case "C3"
                        .lblS = TabRam(Hex2dec(.lblU) - 2) & TabRam(Hex2dec(.lblU) - 1)
                    Case "00" To "0F"
                        .lblS = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc)))
                    Case "20" To "2F"
                        .lblS = TabRam(Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
                    Case "40" To "4F"
                        .lblS = TabRam(Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
                    Case "60" To " 6F"
                        .lblS = TabRam(Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
                    Case "10" To "1F"
                        .lblS = TabRam(Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                    Case "30" To "3F"
                        .lblS = TabRam(Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                    Case "50" To "5F"
                        .lblS = TabRam(Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                    Case "70" To " 7F"
                        .lblS = TabRam(Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                    Case "88"
                        .lblS = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)))
                        IncPC (1)
                    Case "A8"
                        .lblS = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)))
                        IncPC (1)
                    Case "E8"
                        .lblS = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)))
                        IncPC (1)
                    Case "C8"
                        .lblS = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)))
                        IncPC (1)
                    Case "89"
                        .lblS = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                        IncPC (2)
                    Case "A9"
                        .lblS = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                        IncPC (2)
                    Case "C9"
                        .lblS = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                        IncPC (2)
                    Case "E9"
                        .lblS = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                        IncPC (2)
                End Select
                If .lblS = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblX), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "AE"
                IncPC (1)
                Select Case TabRam(Pc)
                    Case "84"
                        .lblY = TabRam(Hex2dec(.lblX)) & TabRam(Hex2dec(.lblX) + 1)
                    Case "A4"
                        .lblY = TabRam(Hex2dec(.lblY)) & TabRam(Hex2dec(.lblY) + 1)
                    Case "C4"
                        .lblY = TabRam(Hex2dec(.lblU)) & TabRam(Hex2dec(.lblU) + 1)
                    Case "E4"
                        .lblY = TabRam(Hex2dec(.lblS)) & TabRam(Hex2dec(.lblS) + 1)
                    Case "80"
                        .lblY = TabRam(Hex2dec(.lblX) + 1) & TabRam(Hex2dec(.lblX) + 2)
                    Case "81"
                        .lblY = TabRam(Hex2dec(.lblX) + 2) & TabRam(Hex2dec(.lblX) + 3)
                    Case "82"
                        .lblY = TabRam(Hex2dec(.lblX) - 1) & TabRam(Hex2dec(.lblX))
                    Case "83"
                        .lblY = TabRam(Hex2dec(.lblX) - 2) & TabRam(Hex2dec(.lblX) - 1)
                    Case "A0"
                        .lblY = TabRam(Hex2dec(.lblY) + 1) & TabRam(Hex2dec(.lblY) + 2)
                    Case "A1"
                        .lblY = TabRam(Hex2dec(.lblY) + 2) & TabRam(Hex2dec(.lblY) + 3)
                    Case "A2"
                        .lblY = TabRam(Hex2dec(.lblY) - 1) & TabRam(Hex2dec(.lblY))
                    Case "A3"
                        .lblY = TabRam(Hex2dec(.lblY) - 2) & TabRam(Hex2dec(.lblY) - 1)
                    Case "E0"
                        .lblY = TabRam(Hex2dec(.lblS) + 1) & TabRam(Hex2dec(.lblS) + 2)
                    Case "E1"
                        .lblY = TabRam(Hex2dec(.lblS) + 2) & TabRam(Hex2dec(.lblS) + 3)
                    Case "E2"
                        .lblY = TabRam(Hex2dec(.lblS) - 1) & TabRam(Hex2dec(.lblS))
                    Case "E3"
                        .lblY = TabRam(Hex2dec(.lblS) - 2) & TabRam(Hex2dec(.lblS) - 1)
                    Case "C0"
                        .lblY = TabRam(Hex2dec(.lblU) + 1) & TabRam(Hex2dec(.lblU) + 2)
                    Case "C1"
                        .lblY = TabRam(Hex2dec(.lblU) + 2) & TabRam(Hex2dec(.lblU) + 3)
                    Case "C2"
                        .lblY = TabRam(Hex2dec(.lblU) - 1) & TabRam(Hex2dec(.lblU))
                    Case "C3"
                        .lblY = TabRam(Hex2dec(.lblU) - 2) & TabRam(Hex2dec(.lblU) - 1)
                    Case "00" To "0F"
                        .lblY = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc)))
                    Case "20" To "2F"
                        .lblY = TabRam(Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
                    Case "40" To "4F"
                        .lblY = TabRam(Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
                    Case "60" To " 6F"
                        .lblY = TabRam(Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)))
                    Case "10" To "1F"
                        .lblY = TabRam(Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                    Case "30" To "3F"
                        .lblY = TabRam(Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                    Case "50" To "5F"
                        .lblY = TabRam(Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                    Case "70" To " 7F"
                        .lblY = TabRam(Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
                    Case "88"
                        .lblY = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)))
                        IncPC (1)
                    Case "A8"
                        .lblY = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)))
                        IncPC (1)
                    Case "E8"
                        .lblY = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)))
                        IncPC (1)
                    Case "C8"
                        .lblY = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)))
                        IncPC (1)
                    Case "89"
                        .lblY = TabRam(Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                        IncPC (2)
                    Case "A9"
                        .lblY = TabRam(Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                        IncPC (2)
                    Case "C9"
                        .lblY = TabRam(Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                        IncPC (2)
                    Case "E9"
                        .lblY = TabRam(Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2))) & TabRam(1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)))
                        IncPC (2)
                End Select
                If .lblY = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblY), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
        End Select
End Select
End With
End Sub
Public Sub SWI()
Arret = True
End Sub
Public Sub ST()
With FrmRegistres
.LblCC(1) = 0
Select Case TabRam(Pc)
    Case "B7"
        IncPC (1)
        ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1)), .lblA
        IncPC (1)
        If .lblA = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "F7"
        IncPC (1)
        ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1)), .lblB
        IncPC (1)
        If .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblB), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "FD"
        IncPC (1)
        ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1)), .lblA
        ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1) + 1), .lblB
        IncPC (1)
        If .lblA = "00" And .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "FF"
        IncPC (1)
        ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1)), Mid(.lblU, 1, 2)
        ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1) + 1), Mid(.lblU, 3, 2)
        IncPC (1)
        If .lblU = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblU), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "BF"
        IncPC (1)
        ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1)), Mid(.lblX, 1, 2)
        ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1) + 1), Mid(.lblX, 3, 2)
        IncPC (1)
        If .lblX = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblX), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "97"
        IncPC (1)
        ToRam Hex2dec(.lblDP & TabRam(Pc)), .lblA
        If .lblA = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "D7"
        IncPC (1)
        ToRam Hex2dec(.lblDP & TabRam(Pc)), .lblB
        If .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblB), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "DD"
        IncPC (1)
        ToRam Hex2dec(.lblDP & TabRam(Pc)), .lblA
        ToRam Hex2dec(.lblDP & TabRam(Pc)) + 1, .lblB
        If .lblA = "00" And .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "DF"
        IncPC (1)
        ToRam Hex2dec(.lblDP & TabRam(Pc)), Mid(.lblU, 1, 2)
        ToRam Hex2dec(.lblDP & TabRam(Pc)) + 1, Mid(.lblU, 3, 2)
        If .lblU = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblU), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "9F"
        IncPC (1)
        ToRam Hex2dec(.lblDP & TabRam(Pc)), Mid(.lblX, 1, 2)
        ToRam Hex2dec(.lblDP & TabRam(Pc)) + 1, Mid(.lblX, 3, 2)
        If .lblX = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblX), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "A7"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "84"
                 ToRam Hex2dec(.lblX), .lblA
            Case "A4"
                 ToRam Hex2dec(.lblY), .lblA
            Case "C4"
                 ToRam Hex2dec(.lblU), .lblA
            Case "E4"
                 ToRam Hex2dec(.lblS), .lblA
            Case "80"
                 ToRam Hex2dec(.lblX), .lblA
                .lblX = zero(Hex(Hex2dec(.lblX) + 1))
            Case "81"
                 ToRam Hex2dec(.lblX), .lblA
                .lblX = zero(Hex(Hex2dec(.lblX) + 2))
            Case "82"
                 ToRam Hex2dec(.lblX), .lblA
                .lblX = zero(Hex(Hex2dec(.lblX) - 1))
            Case "83"
                 ToRam Hex2dec(.lblX), .lblA
                .lblX = zero(Hex(Hex2dec(.lblX) - 2))
            Case "A0"
                 ToRam Hex2dec(.lblY), .lblA
                .lblY = zero(Hex(Hex2dec(.lblY) + 1))
            Case "A1"
                 ToRam Hex2dec(.lblY), .lblA
                .lblY = zero(Hex(Hex2dec(.lblY) + 2))
            Case "A2"
                 ToRam Hex2dec(.lblY), .lblA
                .lblY = zero(Hex(Hex2dec(.lblY) - 1))
            Case "A3"
                 ToRam Hex2dec(.lblY), .lblA
                .lblY = zero(Hex(Hex2dec(.lblY) - 2))
            Case "E0"
                 ToRam Hex2dec(.lblS) + 1, .lblA
                .lblS = zero(Hex(Hex2dec(.lblS) + 1))
            Case "E1"
                 ToRam Hex2dec(.lblS), .lblA
                .lblS = zero(Hex(Hex2dec(.lblS) + 2))
            Case "E2"
                 ToRam Hex2dec(.lblS), .lblA
                .lblS = zero(Hex(Hex2dec(.lblS) - 1))
            Case "E3"
                 ToRam Hex2dec(.lblS), .lblA
                .lblS = zero(Hex(Hex2dec(.lblS) - 2))
            Case "C0"
                 ToRam Hex2dec(.lblU), .lblA
                .lblU = zero(Hex(Hex2dec(.lblU) + 1))
            Case "C1"
                 ToRam Hex2dec(.lblU), .lblA
                .lblU = zero(Hex(Hex2dec(.lblU) + 2))
            Case "C2"
                 ToRam Hex2dec(.lblU), .lblA
                .lblU = zero(Hex(Hex2dec(.lblU) - 1))
            Case "C3"
                 ToRam Hex2dec(.lblU), .lblA
                .lblU = zero(Hex(Hex2dec(.lblU) - 2))
            Case "00" To "0F"
                 ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), .lblA
            Case "20" To "2F"
                 ToRam Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblA
            Case "40" To "4F"
                 ToRam Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblA
            Case "60" To "6F"
                 ToRam Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblA
            Case "10" To "1F"
                 ToRam Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblA
            Case "30" To "3F"
                 ToRam Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblA
            Case "50" To "5F"
                 ToRam Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblA
            Case "70" To "7F"
                 ToRam Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblA
            Case "88"
                 ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), .lblA
                IncPC (1)
            Case "A8"
                 ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)), .lblA
                IncPC (1)
            Case "E8"
                 ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), .lblA
                IncPC (1)
            Case "C8"
                 ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), .lblA
                IncPC (1)
            Case "89"
                 ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblA
                IncPC (2)
            Case "A9"
                 ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblA
                IncPC (2)
            Case "C9"
                 ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblA
                IncPC (2)
            Case "E9"
                 ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblA
                IncPC (2)
        End Select
        If .lblA = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "E7"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "84"
                 ToRam Hex2dec(.lblX), .lblB
            Case "A4"
                 ToRam Hex2dec(.lblY), .lblB
            Case "C4"
                 ToRam Hex2dec(.lblU), .lblB
            Case "E4"
                 ToRam Hex2dec(.lblS), .lblB
            Case "80"
                 ToRam Hex2dec(.lblX), .lblB
                .lblX = zero(Hex(Hex2dec(.lblX) + 1))
            Case "81"
                 ToRam Hex2dec(.lblX), .lblB
                .lblX = zero(Hex(Hex2dec(.lblX) + 2))
            Case "82"
                 ToRam Hex2dec(.lblX), .lblB
                .lblX = zero(Hex(Hex2dec(.lblX) - 1))
            Case "83"
                 ToRam Hex2dec(.lblX), .lblB
                .lblX = zero(Hex(Hex2dec(.lblX) - 2))
            Case "A0"
                 ToRam Hex2dec(.lblY), .lblB
                .lblY = zero(Hex(Hex2dec(.lblY) + 1))
            Case "A1"
                 ToRam Hex2dec(.lblY), .lblB
                .lblY = zero(Hex(Hex2dec(.lblY) + 2))
            Case "A2"
                 ToRam Hex2dec(.lblY), .lblB
                .lblY = zero(Hex(Hex2dec(.lblY) - 1))
            Case "A3"
                 ToRam Hex2dec(.lblY), .lblB
                .lblY = zero(Hex(Hex2dec(.lblY) - 2))
            Case "E0"
                 ToRam Hex2dec(.lblS), .lblB
                .lblS = zero(Hex(Hex2dec(.lblS) + 1))
            Case "E1"
                 ToRam Hex2dec(.lblS), .lblB
                .lblS = zero(Hex(Hex2dec(.lblS) + 2))
            Case "E2"
                 ToRam Hex2dec(.lblS), .lblB
                .lblS = zero(Hex(Hex2dec(.lblS) - 1))
            Case "E3"
                 ToRam Hex2dec(.lblS), .lblB
                .lblS = zero(Hex(Hex2dec(.lblS) - 2))
            Case "C0"
                 ToRam Hex2dec(.lblU), .lblB
                .lblU = zero(Hex(Hex2dec(.lblU) + 1))
            Case "C1"
                 ToRam Hex2dec(.lblU), .lblB
                .lblU = zero(Hex(Hex2dec(.lblU) + 2))
            Case "C2"
                ToRam Hex2dec(.lblU), .lblB
                .lblU = zero(Hex(Hex2dec(.lblU) - 1))
            Case "C3"
                 ToRam Hex2dec(.lblU), .lblB
                .lblU = zero(Hex(Hex2dec(.lblU) - 2))
            Case "00" To "0F"
                 ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), .lblB
            Case "20" To "2F"
                 ToRam Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "40" To "4F"
                 ToRam Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "60" To "6F"
                 ToRam 1 + Hex2dec(.lblX) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "10" To "1F"
                 ToRam Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "30" To "3F"
                 ToRam Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "50" To "5F"
                 ToRam Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "70" To "7F"
                 ToRam Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "88"
                 ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), .lblB
                IncPC (1)
            Case "A8"
                 ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)), .lblB
                IncPC (1)
            Case "E8"
                 ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), .lblB
                IncPC (1)
            Case "C8"
                 ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), .lblB
                IncPC (1)
            Case "89"
                 ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblB
                IncPC (2)
            Case "A9"
                 ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblB
                IncPC (2)
            Case "C9"
                 ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblB
                IncPC (2)
            Case "E9"
                 ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblB
                IncPC (2)
        End Select
        If .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblB), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "ED"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "84"
                ToRam Hex2dec(.lblX), .lblA
                ToRam Hex2dec(.lblX) + 1, .lblB
            Case "A4"
                 ToRam Hex2dec(.lblY), .lblA
                 ToRam Hex2dec(.lblY) + 1, .lblB
            Case "C4"
                 ToRam Hex2dec(.lblU), .lblA
                 ToRam Hex2dec(.lblU) + 1, .lblB
            Case "E4"
                 ToRam Hex2dec(.lblS), .lblA
                 ToRam Hex2dec(.lblS) + 1, .lblB
            Case "80"
                 ToRam Hex2dec(.lblX) + 1, .lblA
                 ToRam Hex2dec(.lblX) + 2, .lblB
            Case "81"
                 ToRam Hex2dec(.lblX) + 2, .lblA
                 ToRam Hex2dec(.lblX) + 3, .lblB
            Case "82"
                 ToRam Hex2dec(.lblX) - 1, .lblA
                 ToRam Hex2dec(.lblX), .lblB
            Case "83"
                 ToRam Hex2dec(.lblX) - 2, .lblA
                 ToRam Hex2dec(.lblX) - 1, .lblB
            Case "A0"
                 ToRam Hex2dec(.lblY) + 1, .lblA
                 ToRam Hex2dec(.lblY) + 2, .lblB
            Case "A1"
                 ToRam Hex2dec(.lblY) + 2, .lblA
                 ToRam Hex2dec(.lblY) + 3, .lblB
            Case "A2"
                 ToRam Hex2dec(.lblY) - 1, .lblA
                 ToRam Hex2dec(.lblY), .lblB
            Case "A3"
                 ToRam Hex2dec(.lblY) - 2, .lblA
                 ToRam Hex2dec(.lblY) - 1, .lblB
            Case "E0"
                 ToRam Hex2dec(.lblS) + 1, .lblA
                 ToRam Hex2dec(.lblS) + 2, .lblB
            Case "E1"
                 ToRam Hex2dec(.lblS) + 2, .lblA
                 ToRam Hex2dec(.lblS) + 3, .lblB
            Case "E2"
                 ToRam Hex2dec(.lblS) - 1, .lblA
                 ToRam Hex2dec(.lblS), .lblB
            Case "E3"
                 ToRam Hex2dec(.lblS) - 2, .lblA
                 ToRam Hex2dec(.lblS) - 1, .lblB
            Case "C0"
                 ToRam Hex2dec(.lblU) + 1, .lblA
                 ToRam Hex2dec(.lblU) + 2, .lblB
            Case "C1"
                ToRam Hex2dec(.lblU) + 2, .lblA
                ToRam Hex2dec(.lblU) + 3, .lblB
            Case "C2"
                ToRam Hex2dec(.lblU) - 1, .lblA
                ToRam Hex2dec(.lblU), .lblB
            Case "C3"
                ToRam Hex2dec(.lblU) - 2, .lblA
                ToRam Hex2dec(.lblU) - 1, .lblB
            Case "00" To "0F"
                ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), .lblA
                ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), .lblB
            Case "20" To "2F"
                ToRam Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblA
                ToRam 1 + Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "40" To "4F"
                ToRam Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblA
                ToRam 1 + Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "60" To "6F"
                ToRam Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblA
                ToRam 1 + Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "10" To "1F"
                ToRam Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblA
                ToRam 1 + Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "30" To "3F"
                ToRam Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblA
                ToRam 1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "50" To "5F"
                ToRam Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblA
                ToRam 1 + Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "70" To "7F"
                ToRam Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblA
                ToRam 1 + Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), .lblB
            Case "88"
                ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), .lblA
                ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), .lblB
                IncPC (1)
            Case "A8"
                ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)), .lblA
                ToRam 1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)), .lblB
                IncPC (1)
            Case "E8"
                ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), .lblA
                ToRam 1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), .lblB
                IncPC (1)
            Case "C8"
                ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), .lblA
                ToRam 1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), .lblB
                IncPC (1)
            Case "89"
                ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblA
                ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblB
                IncPC (2)
            Case "A9"
                ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblA
                ToRam 1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblB
                IncPC (2)
            Case "C9"
                ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblA
                ToRam 1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblB
                IncPC (2)
            Case "E9"
                ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblA
                ToRam 1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), .lblB
                IncPC (2)
        End Select
        If .lblA = "00" And .lblB = "00" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblA), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "EF"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "84"
                ToRam Hex2dec(.lblX), Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblX) + 1, Mid(.lblU, 1, 2)
            Case "A4"
                ToRam Hex2dec(.lblY), Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblY) + 1, Mid(.lblU, 1, 2)
            Case "C4"
                ToRam Hex2dec(.lblU), Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblU) + 1, Mid(.lblU, 1, 2)
            Case "E4"
                ToRam Hex2dec(.lblS), Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblS) + 1, Mid(.lblU, 1, 2)
            Case "80"
                ToRam Hex2dec(.lblX) + 1, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblX) + 2, Mid(.lblU, 1, 2)
            Case "81"
                ToRam Hex2dec(.lblX) + 2, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblX) + 3, Mid(.lblU, 1, 2)
            Case "82"
                ToRam Hex2dec(.lblX) - 1, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblX), Mid(.lblU, 1, 2)
            Case "83"
                ToRam Hex2dec(.lblX) - 2, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblX) - 1, Mid(.lblU, 1, 2)
            Case "A0"
                ToRam Hex2dec(.lblY) + 1, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblY) + 2, Mid(.lblU, 1, 2)
            Case "A1"
                ToRam Hex2dec(.lblY) + 2, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblY) + 3, Mid(.lblU, 1, 2)
            Case "A2"
                ToRam Hex2dec(.lblY) - 1, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblY), Mid(.lblU, 1, 2)
            Case "A3"
                ToRam Hex2dec(.lblY) - 2, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblY) - 1, Mid(.lblU, 1, 2)
            Case "E0"
                ToRam Hex2dec(.lblS) + 1, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblS) + 2, Mid(.lblU, 1, 2)
            Case "E1"
                ToRam Hex2dec(.lblY) + 2, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblY) + 3, Mid(.lblU, 1, 2)
            Case "E2"
                ToRam Hex2dec(.lblY) - 1, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblY), Mid(.lblU, 1, 2)
            Case "E3"
                ToRam Hex2dec(.lblY) - 2, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblY) - 1, Mid(.lblU, 1, 2)
            Case "C0"
                ToRam Hex2dec(.lblU) + 1, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblU) + 2, Mid(.lblU, 1, 2)
            Case "C1"
                ToRam Hex2dec(.lblU) + 2, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblU) + 3, Mid(.lblU, 1, 2)
            Case "C2"
                ToRam Hex2dec(.lblU) - 1, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblU), Mid(.lblU, 1, 2)
            Case "C3"
                ToRam Hex2dec(.lblU) - 2, Mid(.lblU, 1, 2)
                ToRam Hex2dec(.lblU) - 1, Mid(.lblU, 1, 2)
            Case "00" To "0F"
                ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), Mid(.lblU, 1, 2)
            Case "20" To "2F"
                ToRam Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
            Case "40" To "4F"
                ToRam Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
            Case "60" To " 6F"
                ToRam Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
                ToRam 0 & Mid(TabRam(Pc), 2, 1), Mid(.lblU, 1, 2)
            Case "10" To "1F"
                ToRam Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
            Case "30" To "3F"
                ToRam Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
            Case "50" To "5F"
                ToRam Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
            Case "70" To " 7F"
                ToRam Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblU, 1, 2)
            Case "88"
                ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), Mid(.lblU, 1, 2)
                IncPC (1)
            Case "A8"
                ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)), Mid(.lblU, 1, 2)
                IncPC (1)
            Case "E8"
                ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), Mid(.lblU, 1, 2)
                IncPC (1)
            Case "C8"
                ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), Mid(.lblU, 1, 2)
                IncPC (1)
            Case "89"
                ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblU, 1, 2)
                IncPC (2)
            Case "A9"
                ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblU, 1, 2)
                IncPC (2)
            Case "C9"
                ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblU, 1, 2)
                IncPC (2)
            Case "E9"
                ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblU, 1, 2)
                ToRam 1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblU, 1, 2)
                IncPC (2)
        End Select
        If .lblU = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblU), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "AF"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "84"
                ToRam Hex2dec(.lblX), Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblX) + 1, Mid(.lblX, 1, 2)
            Case "A4"
                ToRam Hex2dec(.lblY), Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblY) + 1, Mid(.lblX, 1, 2)
            Case "C4"
                ToRam Hex2dec(.lblU), Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblU) + 1, Mid(.lblX, 1, 2)
            Case "E4"
                ToRam Hex2dec(.lblS), Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblS) + 1, Mid(.lblX, 1, 2)
            Case "80"
                ToRam Hex2dec(.lblX) + 1, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblX) + 2, Mid(.lblX, 1, 2)
            Case "81"
                ToRam Hex2dec(.lblX) + 2, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblX) + 3, Mid(.lblX, 1, 2)
            Case "82"
                ToRam Hex2dec(.lblX) - 1, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblX), Mid(.lblX, 1, 2)
            Case "83"
                ToRam Hex2dec(.lblX) - 2, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblX) - 1, Mid(.lblX, 1, 2)
            Case "A0"
                ToRam Hex2dec(.lblY) + 1, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblY) + 2, Mid(.lblX, 1, 2)
            Case "A1"
                ToRam Hex2dec(.lblY) + 2, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblY) + 3, Mid(.lblX, 1, 2)
            Case "A2"
                ToRam Hex2dec(.lblY) - 1, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblY), Mid(.lblX, 1, 2)
            Case "A3"
                ToRam Hex2dec(.lblY) - 2, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblY) - 1, Mid(.lblX, 1, 2)
            Case "E0"
                ToRam Hex2dec(.lblS) + 1, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblS) + 2, Mid(.lblX, 1, 2)
            Case "E1"
                ToRam Hex2dec(.lblS) + 2, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblS) + 3, Mid(.lblX, 1, 2)
            Case "E2"
                ToRam Hex2dec(.lblS) - 1, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblS), Mid(.lblX, 1, 2)
            Case "E3"
                ToRam Hex2dec(.lblS) - 2, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblS) - 1, Mid(.lblX, 1, 2)
            Case "C0"
                ToRam Hex2dec(.lblU) + 1, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblU) + 2, Mid(.lblX, 1, 2)
            Case "C1"
                ToRam Hex2dec(.lblU) + 2, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblU) + 3, Mid(.lblX, 1, 2)
            Case "C2"
                ToRam Hex2dec(.lblU) - 1, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblU), Mid(.lblX, 1, 2)
            Case "C3"
                ToRam Hex2dec(.lblU) - 2, Mid(.lblX, 1, 2)
                ToRam Hex2dec(.lblU) - 1, Mid(.lblX, 1, 2)
            Case "00" To "0F"
                ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), Mid(.lblX, 1, 2)
            Case "20" To "2F"
                ToRam Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
            Case "40" To "4F"
                ToRam Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
            Case "60" To " 6F"
                ToRam Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
            Case "10" To "1F"
                ToRam Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
            Case "30" To "3F"
                ToRam Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
            Case "50" To "5F"
                .lblX = TabRam(Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1))) & TabRam(1 + Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)))
            Case "70" To " 7F"
                ToRam Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
            Case "88"
                ToRam Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblX, 1, 2)
                IncPC (1)
            Case "A8"
                ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), Mid(.lblX, 1, 2)
                IncPC (1)
            Case "E8"
                ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), Mid(.lblX, 1, 2)
                IncPC (1)
            Case "C8"
                ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), Mid(.lblX, 1, 2)
                IncPC (1)
            Case "89"
                ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblX, 1, 2)
                IncPC (2)
            Case "A9"
                ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblX, 1, 2)
                IncPC (2)
            Case "C9"
                ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblX, 1, 2)
                IncPC (2)
            Case "E9"
                ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblX, 1, 2)
                ToRam 1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblX, 1, 2)
                IncPC (2)
        End Select
        If .lblX = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
        If Mid(hex2bin(.lblX), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
    Case "10"
        IncPC (1)
        Select Case TabRam(Pc)
            Case "FF"
                IncPC (1)
                ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1)), Mid(.lblS, 1, 2)
                ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1) + 1), Mid(.lblS, 3, 2)
                IncPC (1)
                If .lblS = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblS), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "BF"
                IncPC (1)
                ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1)), Mid(.lblY, 1, 2)
                ToRam Hex2dec(TabRam(Pc) & TabRam(Pc + 1) + 1), Mid(.lblY, 3, 2)
                IncPC (1)
                If .lblY = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblY), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "DF"
                IncPC (1)
                ToRam Hex2dec(.lblDP & TabRam(Pc)), Mid(.lblS, 1, 2)
                ToRam Hex2dec(.lblDP & TabRam(Pc)) + 1, Mid(.lblS, 3, 2)
                If .lblS = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblS), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "9F"
                IncPC (1)
                ToRam Hex2dec(.lblDP & TabRam(Pc)), Mid(.lblY, 1, 2)
                ToRam Hex2dec(.lblDP & TabRam(Pc)) + 1, Mid(.lblY, 3, 2)
                If .lblY = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblY), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "EF"
                IncPC (1)
                Select Case TabRam(Pc)
                    Case "84"
                        ToRam Hex2dec(.lblX), Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblX) + 1, Mid(.lblS, 1, 2)
                    Case "A4"
                        ToRam Hex2dec(.lblY), Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblY) + 1, Mid(.lblS, 1, 2)
                    Case "C4"
                        ToRam Hex2dec(.lblU), Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblU) + 1, Mid(.lblS, 1, 2)
                    Case "E4"
                        ToRam Hex2dec(.lblS), Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblS) + 1, Mid(.lblS, 1, 2)
                    Case "80"
                        ToRam Hex2dec(.lblX) + 1, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblX) + 2, Mid(.lblS, 1, 2)
                    Case "81"
                        ToRam Hex2dec(.lblX) + 2, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblX) + 3, Mid(.lblS, 1, 2)
                    Case "82"
                        ToRam Hex2dec(.lblX) - 1, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblX), Mid(.lblS, 1, 2)
                    Case "83"
                        ToRam Hex2dec(.lblX) - 2, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblX) - 1, Mid(.lblS, 1, 2)
                    Case "A0"
                        ToRam Hex2dec(.lblY) + 1, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblY) + 2, Mid(.lblS, 1, 2)
                    Case "A1"
                        ToRam Hex2dec(.lblY) + 2, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblY) + 3, Mid(.lblS, 1, 2)
                    Case "A2"
                        ToRam Hex2dec(.lblY) - 1, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblY), Mid(.lblS, 1, 2)
                    Case "A3"
                        ToRam Hex2dec(.lblY) - 2, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblY) - 1, Mid(.lblS, 1, 2)
                    Case "E0"
                        ToRam Hex2dec(.lblS) + 1, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblS) + 2, Mid(.lblS, 1, 2)
                    Case "E1"
                        ToRam Hex2dec(.lblS) + 2, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblS) + 3, Mid(.lblS, 1, 2)
                    Case "E2"
                        ToRam Hex2dec(.lblS) - 1, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblS), Mid(.lblS, 1, 2)
                    Case "E3"
                        ToRam Hex2dec(.lblS) - 2, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblS) - 1, Mid(.lblS, 1, 2)
                    Case "C0"
                        ToRam Hex2dec(.lblU) + 1, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblU) + 2, Mid(.lblS, 1, 2)
                    Case "C1"
                        ToRam Hex2dec(.lblU) + 2, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblU) + 3, Mid(.lblS, 1, 2)
                    Case "C2"
                        ToRam Hex2dec(.lblU) - 1, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblU), Mid(.lblS, 1, 2)
                    Case "C3"
                        ToRam Hex2dec(.lblU) - 2, Mid(.lblS, 1, 2)
                        ToRam Hex2dec(.lblU) - 1, Mid(.lblS, 1, 2)
                    Case "00" To "0F"
                        ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), Mid(.lblS, 1, 2)
                    Case "20" To "2F"
                        ToRam Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                    Case "40" To "4F"
                        ToRam Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                    Case "60" To " 6F"
                        ToRam Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                    Case "10" To "1F"
                        ToRam Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                    Case "30" To "3F"
                        ToRam Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                    Case "50" To "5F"
                        ToRam Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                    Case "70" To " 7F"
                        ToRam Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblS, 1, 2)
                    Case "88"
                        ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), Mid(.lblS, 1, 2)
                        IncPC (1)
                    Case "A8"
                        ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)), Mid(.lblS, 1, 2)
                        IncPC (1)
                    Case "E8"
                        ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), Mid(.lblS, 1, 2)
                        IncPC (1)
                    Case "C8"
                        ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), Mid(.lblS, 1, 2)
                        IncPC (1)
                    Case "89"
                        ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblS, 1, 2)
                        IncPC (2)
                    Case "A9"
                        ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblS, 1, 2)
                        IncPC (2)
                    Case "C9"
                        ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblS, 1, 2)
                        IncPC (2)
                    Case "E9"
                        ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblS, 1, 2)
                        ToRam 1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblS, 1, 2)
                        IncPC (2)
                End Select
                If .lblS = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblX), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
            Case "AF"
                IncPC (1)
                Select Case TabRam(Pc)
                    Case "84"
                        ToRam Hex2dec(.lblX), Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblX) + 1, Mid(.lblY, 1, 2)
                    Case "A4"
                        ToRam Hex2dec(.lblY), Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblY) + 1, Mid(.lblY, 1, 2)
                    Case "C4"
                        ToRam Hex2dec(.lblU), Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblU) + 1, Mid(.lblY, 1, 2)
                    Case "E4"
                        ToRam Hex2dec(.lblS), Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblS) + 1, Mid(.lblY, 1, 2)
                    Case "80"
                        ToRam Hex2dec(.lblX) + 1, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblX) + 2, Mid(.lblY, 1, 2)
                    Case "81"
                        ToRam Hex2dec(.lblX) + 2, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblX) + 3, Mid(.lblY, 1, 2)
                    Case "82"
                        ToRam Hex2dec(.lblX) - 1, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblX), Mid(.lblY, 1, 2)
                    Case "83"
                        ToRam Hex2dec(.lblX) - 2, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblX) - 1, Mid(.lblY, 1, 2)
                    Case "A0"
                        ToRam Hex2dec(.lblY) + 1, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblY) + 2, Mid(.lblY, 1, 2)
                    Case "A1"
                        ToRam Hex2dec(.lblY) + 2, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblY) + 3, Mid(.lblY, 1, 2)
                    Case "A2"
                        ToRam Hex2dec(.lblY) - 1, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblY), Mid(.lblY, 1, 2)
                    Case "A3"
                        ToRam Hex2dec(.lblY) - 2, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblY) - 1, Mid(.lblY, 1, 2)
                    Case "E0"
                        ToRam Hex2dec(.lblS) + 1, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblS) + 2, Mid(.lblY, 1, 2)
                    Case "E1"
                        ToRam Hex2dec(.lblS) + 2, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblS) + 3, Mid(.lblY, 1, 2)
                    Case "E2"
                        ToRam Hex2dec(.lblS) - 1, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblS), Mid(.lblY, 1, 2)
                    Case "E3"
                        ToRam Hex2dec(.lblS) - 2, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblS) - 1, Mid(.lblY, 1, 2)
                    Case "C0"
                        ToRam Hex2dec(.lblU) + 1, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblU) + 2, Mid(.lblY, 1, 2)
                    Case "C1"
                        ToRam Hex2dec(.lblU) + 2, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblU) + 3, Mid(.lblY, 1, 2)
                    Case "C2"
                        ToRam Hex2dec(.lblU) - 1, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblU), Mid(.lblY, 1, 2)
                    Case "C3"
                        ToRam Hex2dec(.lblU) - 2, Mid(.lblY, 1, 2)
                        ToRam Hex2dec(.lblU) - 1, Mid(.lblY, 1, 2)
                    Case "00" To "0F"
                        ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc)), Mid(.lblY, 1, 2)
                    Case "20" To "2F"
                        ToRam Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblY) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                    Case "40" To "4F"
                        ToRam Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblU) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                    Case "60" To " 6F"
                        ToRam Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblS) + Hex2dec(0 & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                    Case "10" To "1F"
                        ToRam Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblX) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                    Case "30" To "3F"
                        ToRam Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblY) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                    Case "50" To "5F"
                        ToRam Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblU) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                    Case "70" To " 7F"
                        ToRam Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblS) + Hex2dec("F" & Mid(TabRam(Pc), 2, 1)), Mid(.lblY, 1, 2)
                    Case "88"
                        ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1)), Mid(.lblY, 1, 2)
                        IncPC (1)
                    Case "A8"
                        ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1)), Mid(.lblY, 1, 2)
                        IncPC (1)
                    Case "E8"
                        ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1)), Mid(.lblY, 1, 2)
                        IncPC (1)
                    Case "C8"
                        ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1)), Mid(.lblY, 1, 2)
                        IncPC (1)
                    Case "89"
                        ToRam Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblX) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblY, 1, 2)
                        IncPC (2)
                    Case "A9"
                        ToRam Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblY) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblY, 1, 2)
                        IncPC (2)
                    Case "C9"
                        ToRam Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblU) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblY, 1, 2)
                        IncPC (2)
                    Case "E9"
                        ToRam Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblY, 1, 2)
                        ToRam 1 + Hex2dec(.lblS) + Hex2dec(TabRam(Pc + 1) & TabRam(Pc + 2)), Mid(.lblY, 1, 2)
                        IncPC (2)
                End Select
                If .lblY = "0000" Then .LblCC(2) = 1 Else .LblCC(2) = 0
                If Mid(hex2bin(.lblY), 1, 1) = 1 Then .LblCC(3) = 1 Else .LblCC(3) = 0
        End Select
End Select
End With
End Sub
Public Sub MUL()
With FrmRegistres
    ab = Hex2dec("00" & .lblA) * Hex2dec("00" & .lblB)
    .lblA = Mid(zero(Hex(ab)), 1, 2)
    .lblB = Mid(zero(Hex(ab)), 3, 2)
    .LblCC(0) = Mid(hex2bin(.lblB), 1, 1)
    If ab = 0 Then .LblCC(2) = 1 Else .LblCC(2) = 0
End With
End Sub
Public Sub BCC()
With FrmRegistres
If .LblCC(0) = 0 Then
    IncPC (Hex2dec(TabRam(Pc + 1)))
Else
    IncPC (1)
End If
End With
End Sub
Public Sub BCS()
With FrmRegistres
If .LblCC(0) = 1 Then
    IncPC (Hex2dec(TabRam(Pc + 1)))
Else
    IncPC (1)
End If
End With
End Sub
Public Sub BNE()
With FrmRegistres
If .LblCC(2) = 0 Then
    IncPC (Hex2dec(TabRam(Pc + 1)))
Else
    IncPC (1)
End If
End With
End Sub
Public Sub BNQ()
With FrmRegistres
If .LblCC(2) = 1 Then
    IncPC (Hex2dec(TabRam(Pc + 1)))
Else
    IncPC (1)
End If
End With
End Sub
Public Sub ADD()
With FrmRegistres
Select Case TabRam(Pc)
    Case "8B"
        IncPC (1)
        .lblA = Bin2hex(PlusB8(hex2bin(.lblA), hex2bin(TabRam(Pc))))
    Case "CB"
        IncPC (1)
        .lblB = Bin2hex(PlusB8(hex2bin(.lblB), hex2bin(TabRam(Pc))))
    Case "C3"
        IncPC (1)
        d = zero(Bin2hex(PlusB16(hex2bin(.lblA & .lblB), hex2bin(TabRam(Pc) & TabRam(Pc + 1)))))
        .lblA = Mid(d, 1, 2)
        .lblB = Mid(d, 3, 2)
        IncPC (1)
    Case "9B"
        IncPC (1)
        .lblA = Bin2hex(PlusB8(hex2bin(.lblA), hex2bin(TabRam(Hex2dec(.lblDP & TabRam(Pc))))))
    Case "DB"
        IncPC (1)
        .lblB = Bin2hex(PlusB8(hex2bin(.lblA), hex2bin(TabRam(Hex2dec(.lblDP & TabRam(Pc))))))
    Case "D3"
        IncPC (1)
        x = hex2bin(TabRam(Hex2dec(.lblDP & TabRam(Pc))))
        y = hex2bin(TabRam(Hex2dec(.lblDP & TabRam(Pc) + 1)))
        d = zero(Bin2hex(PlusB16(hex2bin(.lblA & .lblB), x & y)))
        .lblA = Mid(d, 1, 2)
        .lblB = Mid(d, 3, 2)
    Case "BB"
        IncPC (1)
        .lblA = Bin2hex(PlusB8(hex2bin(.lblA), hex2bin(TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1))))))
        IncPC (1)
    Case "FB"
        IncPC (1)
        .lblB = Bin2hex(PlusB8(hex2bin(.lblB), hex2bin(TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1))))))
        IncPC (1)
    Case "F3"
        IncPC (1)
        x = hex2bin(TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1))))
        y = hex2bin(TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1) + 1)))
        d = zero(Bin2hex(PlusB16(hex2bin(.lblA & .lblB), x & y)))
        .lblA = Mid(d, 1, 2)
        .lblB = Mid(d, 3, 2)
        IncPC (1)
End Select
End With
End Sub
Public Sub PSUB()
With FrmRegistres
Select Case TabRam(Pc)
    Case "80"
        IncPC (1)
        .lblA = Bin2hex(MoinB8(hex2bin(.lblA), hex2bin(TabRam(Pc))))
    Case "C0"
        IncPC (1)
        .lblB = Bin2hex(MoinB8(hex2bin(.lblB), hex2bin(TabRam(Pc))))
    Case "83"
        IncPC (1)
        d = zero(Bin2hex(MoinB16(hex2bin(.lblA & .lblB), hex2bin(TabRam(Pc) & TabRam(Pc + 1)))))
        .lblA = Mid(d, 1, 2)
        .lblB = Mid(d, 3, 2)
        IncPC (1)
    Case "90"
        IncPC (1)
        .lblA = Bin2hex(MoinB8(hex2bin(.lblA), hex2bin(TabRam(Hex2dec(.lblDP & TabRam(Pc))))))
    Case "D0"
        IncPC (1)
        .lblB = Bin2hex(MoinB8(hex2bin(.lblA), hex2bin(TabRam(Hex2dec(.lblDP & TabRam(Pc))))))
    Case "93"
        IncPC (1)
        x = hex2bin(TabRam(Hex2dec(.lblDP & TabRam(Pc))))
        y = hex2bin(TabRam(Hex2dec(.lblDP & TabRam(Pc) + 1)))
        d = zero(Bin2hex(MoinB16(hex2bin(.lblA & .lblB), x & y)))
        .lblA = Mid(d, 1, 2)
        .lblB = Mid(d, 3, 2)
    Case "B0"
        IncPC (1)
        .lblA = Bin2hex(MoinB8(hex2bin(.lblA), hex2bin(TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1))))))
        IncPC (1)
    Case "F0"
        IncPC (1)
        .lblB = Bin2hex(MoinB8(hex2bin(.lblB), hex2bin(TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1))))))
        IncPC (1)
    Case "B3"
        IncPC (1)
        x = hex2bin(TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1))))
        y = hex2bin(TabRam(Hex2dec(TabRam(Pc) & TabRam(Pc + 1) + 1)))
        d = zero(Bin2hex(MoinB16(hex2bin(.lblA & .lblB), x & y)))
        .lblA = Mid(d, 1, 2)
        .lblB = Mid(d, 3, 2)
        IncPC (1)
End Select
End With
End Sub
