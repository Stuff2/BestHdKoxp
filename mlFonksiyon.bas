Attribute VB_Name = "mlFonksiyon"
'Stuff2
Public step1 As Long
Private Const VK_LBUTTON As Long = &H1
Public Function PotBulMP() As Long
If NPCA��k = False Then
PotBulMP = 0: bPotMP = 0
If PotAra("Potion of Spirit") = True Then: PotBulMP = 490016: bPotMP = 120: Exit Function
If PotAra("Potion of Intelligence") = True Then: PotBulMP = 490017: bPotMP = 240: Exit Function
If PotAra("Potion of Sagacity") = True Then: PotBulMP = 490018: bPotMP = 480: Exit Function
If PotAra("Potion of Wisdom") = True Then: PotBulMP = 490019: bPotMP = 960: Exit Function
If PotAra("Potion of Soul") = True Then: PotBulMP = 490020: bPotMP = 1920: Exit Function
End If
End Function
Public Function PotBulHP() As Long
If NPCA��k = False Then
PotBulHP = 0: bPotHP = 0
If PotAra("Holy Water") = True Then: PotBulHP = 490010: bPotHP = 45: Exit Function
If PotAra("Water of life") = True Then: PotBulHP = 490011: bPotHP = 90: Exit Function
If PotAra("Water of love") = True Then: PotBulHP = 490012: bPotHP = 180: Exit Function
If PotAra("Water of grace") = True Then: PotBulHP = 490013: bPotHP = 360: Exit Function
If PotAra("Water of favors") = True Then: PotBulHP = 490014: bPotHP = 720: Exit Function
End If
End Function
Public Sub ManaKontrol()
Dim MPFark As Integer
MPFark = CInt(c.MaxMP - c.MP)
If Form1.opt(0).Value = True And BotDurum = True Then
If MPFark >= 90 Then
If DateDiff("s", PotZaman, Now) >= 3 And PotBulMP = 490016 Then Potkullan PotBulMP: Exit Sub
End If
If MPFark >= 180 Then
If DateDiff("s", PotZaman, Now) >= 3 And PotBulMP = 490017 Then Potkullan PotBulMP:  Exit Sub
End If
If MPFark >= 480 Then
If DateDiff("s", PotZaman, Now) >= 3 And PotBulMP = 490018 Then Potkullan PotBulMP:  Exit Sub
End If
If MPFark >= 960 Then
If DateDiff("s", PotZaman, Now) >= 3 And PotBulMP = 490019 Then Potkullan PotBulMP:  Exit Sub
End If
If MPFark >= 1920 Then
If DateDiff("s", PotZaman, Now) >= 3 And PotBulMP = 490020 Then Potkullan PotBulMP:  Exit Sub
End If
End If
End Sub

Public Sub PotKontrol()
Dim HPFark As Integer
HPFark = CInt(c.MaxHP - c.HP)
If Form1.opt(0).Value = True And BotDurum = True Then
If HPFark >= 45 Then
If DateDiff("s", PotZaman, Now) >= 3 And PotBulHP = 490010 Then Potkullan PotBulHP: Exit Sub
End If
If HPFark >= 90 Then
If DateDiff("s", PotZaman, Now) >= 3 And PotBulHP = 490011 Then Potkullan PotBulHP:  Exit Sub
End If
If HPFark >= 180 Then
If DateDiff("s", PotZaman, Now) >= 3 And PotBulHP = 490012 Then Potkullan PotBulHP:  Exit Sub
End If
If HPFark >= 360 Then
If DateDiff("s", PotZaman, Now) >= 3 And PotBulHP = 490013 Then Potkullan PotBulHP:  Exit Sub
End If
If HPFark >= 720 Then
If DateDiff("s", PotZaman, Now) >= 3 And PotBulHP = 490014 Then Potkullan PotBulHP:  Exit Sub
End If
End If
End Sub
Public Function PotAra(Deger As String) As Boolean
If Form2.LstInventory.ListCount > 0 And NPCA��k = False Then
Dim i: For i = 0 To Form2.LstInventory.ListCount - 1
If Form2.LstInventory.list(i) = Deger Then PotAra = True: Exit For Else: PotAra = False
Next
End If
End Function

Public Sub Potkullan(potItemId As Long)
If potItemId <> 0 Then
Paket "3103" & HexFormatla(Hex((potItemId)), 6) & "00" & CharID & CharID & "0000000000000000000000000000"
PotZaman = Now
End If
End Sub

Function HexFormatla(strHex As String, inLength As Integer)
On Error Resume Next
Dim newHex As String, byte1 As String, byte2 As String, byte3 As String, byte4 As String
Dim ZeroSpaces As Integer
'ABC,4
ZeroSpaces = inLength - Len(strHex) '1
newHex = String(ZeroSpaces, "0") + strHex '0ABC
byte1 = Left(newHex, 2)
byte2 = Mid(newHex, 3, 2)
byte3 = Mid(newHex, 5, 2)
byte4 = Right(newHex, 2)
Select Case Len(newHex)
Case 2 '0A
newHex = byte1
Case 4 '0ABC
newHex = byte4 & byte1
Case 6 '000ABC
newHex = byte4 & byte2 & byte1
Case 8 '00000ABC
newHex = byte4 & byte3 & byte2 & byte1
Case Else
End Select
HexFormatla = newHex
'\\
End Function

Function Konu�(strType As Integer, Text As String)
Dim pStr As String
Dim pBytes() As Byte

If strType = 0 Then
pStr = "1001FF00" & HexString(Text)
ElseIf strType = 1 Then
pStr = "1005FF00" & HexString(Text)
ElseIf strType = 2 Then
pStr = "1003FF00" & HexString(Text)
ElseIf strType = 3 Then
pStr = "1006FF00" & HexString(Text)
ElseIf strType = 4 Then
pStr = "1004FF00" & HexString(Text)
ElseIf strType = 5 Then
pStr = "100EFF00" & HexString(Text)
End If
Paket pStr
End Function

Function BulSkillNO(LastNum As String)
On Error Resume Next
Dim SkillNum
SkillNum = ReadLong(KO_ADR_CHR + KO_OFF_CLASS) & LastNum
BulSkillNO = HexFormatla(Hex(SkillNum), 6)
End Function
Public Sub enbF(Control As Control)
If Control.Enabled = True Then Control.Enabled = False
End Sub
Public Sub enbT(Control As Control)
If Control.Enabled = False Then Control.Enabled = True
End Sub

Public Sub Tskullan(s�ra As Integer)
If ListeKontrol(Form2.LstInventory, "Transformation Gem") = False Then
HataYaz ("�antan�zda Transformation Gem Yok Oto TS devred���.")
Exit Sub
End If
 HataSil ("�antan�zda MPPot Yok Oto Pot devred���.")
Select Case s�ra: Case 0: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "3103F6340700" & CharID & CharID & "0000000000000000000000000000": Case 1: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "3103D4330700" & CharID & CharID & "0000000000000000000000000000": Case 2: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "3103E8330700" & CharID & CharID & "0000000000000000000000000000": Case 3: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "3103F2330700" & CharID & CharID & "0000000000000000000000000000": Case 4: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "310306340700" & CharID & CharID & "0000000000000000000000000000": Case 5: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000" _
: Paket "310310340700" & CharID & CharID & "0000000000000000000000000000": Case 6: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "31031A340700" & CharID & CharID & "0000000000000000000000000000": Case 7: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "310342340700" & CharID & CharID & "0000000000000000000000000000": Case 8: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "310344340700" & CharID & CharID & "0000000000000000000000000000": Case 9: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "310356340700" & CharID & CharID & "0000000000000000000000000000": Case 10: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "310360340700" & CharID & CharID & "0000000000000000000000000000": Case 11 _
: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "310388340700" & CharID & CharID & "0000000000000000000000000000": Case 12: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "31038A340700" & CharID & CharID & "0000000000000000000000000000": Case 13: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "3103BA340700" & CharID & CharID & "0000000000000000000000000000": Case 14: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "3103C4340700" & CharID & CharID & "0000000000000000000000000000": Case 15: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "3103D4340700" & CharID & CharID & "0000000000000000000000000000": Case 16: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000" _
: Paket "3103D8340700" & CharID & CharID & "0000000000000000000000000000": Case 17: Paket "3103C1330700" & CharID & CharID & "0000000000000000000000000000": Paket "3103E2340700" & CharID & CharID & "0000000000000000000000000000": End Select
TSDurum = True

End Sub
Public Function Ba�HarfiB�y�t(txt As String) As String
Dim ln As Integer
ln = Len(txt)
On Error Resume Next
Ba�HarfiB�y�t = UCase(Left(txt, 1)) & Right$(txt, ln - 1)
End Function
Public Function HarfB�y�tFull(txt As String) As String
On Error Resume Next
Dim txb As TextBox
Set txb = Form2.harfb�y�t
txt = Ba�HarfiB�y�t(txt)
txb = txt
For i = 1 To Len(txt)
txb.SelStart = Len(txb) - i
txb.SelLength = 1
On Error Resume Next
If txb.SelText = " " Then txb.SelStart = txb.SelStart + 1: txb.SelLength = 1: HarfB�y�tFull = Left(txt, txb.SelStart) & UCase(txb.SelText) & Right(txt, Len(txt) - txb.SelStart - 1):  Exit Function
HarfB�y�tFull = txt
Next
End Function
Public Sub Y�r�XY(X As Single, Y As Single)
WriteLong KO_ADR_CHR + &HD78, 1
    WriteFloat KO_ADR_CHR + &HD84, X
    WriteFloat KO_ADR_CHR + &HD8C, Y
    WriteLong KO_ADR_CHR + &H3A4, 2
End Sub
Public Sub ���nlanXY(X As Long, Y As Long, tm As Timer)
Dim CurX As Integer, CurY As Integer, CurZ As Integer: Dim MovedXOk As Boolean, MovedYOk As Boolean: CurX = CInt(ReadFloat(KO_ADR_CHR + KO_OFF_X)): CurY = CInt(ReadFloat(KO_ADR_CHR + KO_OFF_Y)): CurZ = CInt(ReadFloat(KO_ADR_CHR + KO_OFF_Z))
If CharY�r�yor = True Then
HataYaz "Koordinata I��nlanma Durduruldu.(Kullan�c� Taraf�ndan)"
tm = False
Exit Sub
End If
HataSil "Koordinata I��nlanma Durduruldu.(Kullan�c� Taraf�ndan)"

If CurX > val(X) Then
If CurX - val(X) >= 5 Then WriteFloat (KO_ADR_CHR + KO_OFF_X), CSng(CurX - 5) Else WriteFloat (KO_ADR_CHR + KO_OFF_X), CSng(val(X))
ElseIf CurX < val(X) Then
If val(X) - CurX >= 5 Then WriteFloat (KO_ADR_CHR + KO_OFF_X), CSng(CurX + 5) Else WriteFloat (KO_ADR_CHR + KO_OFF_X), CSng(val(X))
End If

If CurY > val(Y) Then
If CurY - val(Y) >= 5 Then WriteFloat (KO_ADR_CHR + KO_OFF_Y), CSng(CurY - 5) Else WriteFloat (KO_ADR_CHR + KO_OFF_Y), CSng(val(Y))
ElseIf CurY < val(Y) Then
If val(Y) - CurY >= 5 Then WriteFloat (KO_ADR_CHR + KO_OFF_Y), CSng(CurY + 5) Else: WriteFloat (KO_ADR_CHR + KO_OFF_Y), CSng(val(Y))
End If

Paket "06" & HexFormatla(Hex(CInt(c.kX) * 10), 4) & HexFormatla(Hex(CInt(c.kY) * 10), 4) & HexFormatla(Hex(CInt(10) * 10), 4) & "2D0003"

If CurX = val(X) Then MovedXOk = True
If CurY = val(Y) Then MovedYOk = True
If MovedXOk = True And MovedYOk = True Then
tm = False
Exit Sub
End If
End Sub

Public Function CharY�r�yor() As Boolean
If ReadLong(KO_ADR_CHR + &H3A4) = 0 Then CharY�r�yor = False
If ReadLong(KO_ADR_CHR + &H3A4) = 1 Or ReadLong(KO_ADR_CHR + &H3A4) = 2 Or ReadLong(KO_ADR_CHR + &H3A4) = 3 Then CharY�r�yor = True
End Function
Public Function ���nlanXY2(X As Long, Y As Long) As Boolean
���nlanXY2 = False

���nX = ���nX2
���nY = ���nY2
���nX2 = X
���nY2 = Y
If Durum(9) = False Then
���nX = c.kX
���nY = c.kY
Durum(9) = True
End If
Form2.tm���nlan = True
Do Until Form2.tm���nlan = False
DoEvents
Loop

���nlanXY2 = True
End Function
Public Sub CanPot()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Then Exit Sub
Dim SkillSe� As String
Dim SkillID As String
If BotDurum = True Then
If Form1.cb(0).Text = "720" Then
SkillSe� = "014"
End If
If Form1.cb(0).Text = "360" Then
SkillSe� = "013"
End If
If Form1.cb(0).Text = "180" Then
SkillSe� = "012"
End If
If Form1.cb(0).Text = "90" Then
SkillSe� = "011"
End If
If Form1.cb(0).Text = "45" Then
SkillSe� = "010"
End If
SkillID = Strings.Mid(AlignDWORD(490 & SkillSe�), 1, 6)
Paket "3103" + SkillID + "00" + CharID + CharID + "0000000000000000000000000000"
End If
End Sub
Public Sub ManaPot()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Then Exit Sub
Dim SkillSe� As String
Dim SkillID As String
If BotDurum = True Then
If Form1.cb(1).Text = "1920" Then
SkillSe� = "020"
End If
If Form1.cb(1).Text = "960" Then
SkillSe� = "019"
End If
If Form1.cb(1).Text = "480" Then
SkillSe� = "018"
End If
If Form1.cb(1).Text = "180" Then
SkillSe� = "017"
End If
If Form1.cb(1).Text = "90" Then
SkillSe� = "016"
End If
SkillID = Strings.Mid(AlignDWORD(490 & SkillSe�), 1, 6)
Paket "3103" + SkillID + "00" + CharID + CharID + "0000000000000000000000000000"
End If
End Sub


Public Function Atacktimer() As Timer
Dim cls As Long, ClassAd�2 As String
cls = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_CLASS)
If cls = 104 Or cls = 204 Or cls = 111 Or cls = 112 Or cls = 211 Or cls = 212 Then ClassAd�2 = "Priest"
If cls = 102 Or cls = 202 Or cls = 207 Or cls = 208 Or cls = 107 Or cls = 108 Then ClassAd�2 = "Rogue"
If cls = 101 Or cls = 201 Or cls = 105 Or cls = 106 Or cls = 205 Or cls = 106 Then ClassAd�2 = "Warior"
If cls = 103 Or cls = 203 Or cls = 209 Or cls = 210 Or cls = 109 Or cls = 110 Then ClassAd�2 = "Mage"
Select Case ClassAd�2
Case "Rogue"
If OkcuMu = True Then: Set Atacktimer = Form2.RogueAtak
If AsasM� = True Then: Set Atacktimer = Form2.AsasAtaks
Case "Warior": Set Atacktimer = Form2.WarAtak
Case "Mage": Set Atacktimer = Form2.MageAtak
Case "Priest": Set Atacktimer = Form2.PriAtak
Case Else
 Set Atacktimer = Form2.aboutTM
End Select
End Function

Public Sub ���nlanXY3(X As Long, Y As Long)
Dim CurX As Integer, CurY As Integer, CurZ As Integer: CurX = CInt(ReadFloat(KO_ADR_CHR + KO_OFF_X)): CurY = CInt(ReadFloat(KO_ADR_CHR + KO_OFF_Y)): CurZ = CInt(ReadFloat(KO_ADR_CHR + KO_OFF_Z))
Dim Xm As String, Ym As String
If CurX = val(X) And CurY = val(Y) Then
Exit Sub
End If

If CurX > val(X) Then
If CurX - val(X) >= 5 Then WriteFloat (KO_ADR_CHR + KO_OFF_X), CSng(CurX - 5): Xm = "-"
ElseIf CurX < val(X) Then
If val(X) - CurX >= 5 Then WriteFloat (KO_ADR_CHR + KO_OFF_X), CSng(CurX + 5): Xm = "+"
End If

If CurY > val(Y) Then
If CurY - val(Y) >= 5 Then WriteFloat (KO_ADR_CHR + KO_OFF_Y), CSng(CurY - 5): Ym = "-"
ElseIf CurY < val(Y) Then
If val(Y) - CurY >= 5 Then WriteFloat (KO_ADR_CHR + KO_OFF_Y), CSng(CurY + 5): Ym = "+"
End If
Paket "06" & HexFormatla(Hex(CInt(IIf(Xm = "-", c.kX + 2, c.kX - 2)) * 10), 4) & HexFormatla(Hex(CInt(IIf(Ym = "-", c.kY + 2, c.kY - 2)) * 10), 4) & HexFormatla(Hex(CInt(CurZ) * 10), 4) & "2D0003"
Paket "06" & HexFormatla(Hex(CInt(c.kX) * 10), 4) & HexFormatla(Hex(CInt(c.kY) * 10), 4) & HexFormatla(Hex(CInt(CurZ) * 10), 4) & "2D0003"
End Sub
Function TownAt()
If ReadLong(KO_ADR_CHR + KO_OFF_HP) > 0 Then
Paket "4800"
End If
End Function
Public Sub KOKapat()
If KO_HANDLE <> 0 Then TerminateProcess KO_HANDLE, &O0
End Sub
Public Sub CharKomutEt(Cht As String, Username As String)
With Form1
If .opt(26) = True Then
If .ch(54) = 1 And ListeKontrol(.lst(18), Username) = True Then
If .ch(46) = 1 And Cht = .txt(13) Then TownAt
If .ch(47) = 1 And Cht = .txt(14) Then TownAt:  Paket "5101"
If .ch(48) = 1 And Cht = .txt(15) Then Paket "5101"
If .ch(49) = 1 And Cht = .txt(16) Then KOKapat: Shell ("shutdown -s -f -t 10"), vbMaximizedFocus
If .ch(51) = 1 And Cht = .txt(18) Then Paket "2F05"
If .ch(52) = 1 And Cht = .txt(19) Then PartyKabulEt
If .ch(53) = 1 And Cht = .txt(20) Then Paket "1200"
If .ch(50) = 1 And Left$(Cht, Len(.txt(17))) = .txt(17) And Len(Cht) = Len(.txt(17).Text) + 9 Then
Dim TxtX As Single, TxtY As Single
Form2.ChatXYBul = Cht
Set txt = Form2.ChatXYBul: For i = 1 To Len(txt): txt.SelStart = Len(txt) - i: txt.SelLength = 1
If txt.SelText = "," Then txt.SelStart = txt.SelStart + 1: txt.SelLength = i: TxtY = txt.SelText: txt.SelStart = txt.SelStart - 5: txt.SelLength = 4: TxtX = txt.SelText: Y�r�XY TxtX, TxtY: Exit Sub
Next
End If
End If
Else
If .ch(54) = 1 Then
If .ch(46) = 1 And Cht = .txt(13) Then TownAt
If .ch(47) = 1 And Cht = .txt(14) Then TownAt:  Paket "5101"
If .ch(48) = 1 And Cht = .txt(15) Then Paket "5101"
If .ch(49) = 1 And Cht = .txt(16) Then KOKapat: Shell ("shutdown -s -f -t 10"), vbMaximizedFocus
If .ch(51) = 1 And Cht = .txt(18) Then Paket "2F05"
If .ch(52) = 1 And Cht = .txt(19) Then PartyKabulEt
If .ch(53) = 1 And Cht = .txt(20) Then Paket "1200"
If .ch(50) = 1 And Left$(Cht, Len(.txt(17))) = .txt(17) And Len(Cht) = Len(.txt(17).Text) + 9 Then
Form2.ChatXYBul = Cht
Set txt = Form2.ChatXYBul: For i = 1 To Len(txt): txt.SelStart = Len(txt) - i: txt.SelLength = 1
If txt.SelText = "," Then txt.SelStart = txt.SelStart + 1: txt.SelLength = i: TxtY = txt.SelText: txt.SelStart = txt.SelStart - 5: txt.SelLength = 4: TxtX = txt.SelText: Y�r�XY TxtX, TxtY: Exit Sub
Next
End If
End If
End If
End With
End Sub

Public Sub ChteG�reSkillKullan(Chttxt As String)
With Form1
Dim UyeID As String, s�ras� As Integer
For i = 1 To PartySay�
Form2.uyeAd(1) = PartyAd�(i)
If Form2.uyeAd(1) = Form2.uyeAd(0) Then s�ras� = i
Next
If .ch(103) = 1 And .txt(42) = Chttxt Then �ekMage PartyCharID(s�ras�)
If .ch(97) = 1 And .txt(44) = Mid(Chttxt, 1, Len(.txt(44))) Then BuffKullan s�ras�
If .ch(104) = 1 And .txt(45) = Chttxt Then
CureKullan s�ras�, 1
Bekle (500)
CureKullan s�ras�, 2
End If
If .ch(105) = 1 And .txt(46) = Chttxt Then ACKullan s�ras�
If .ch(97) = 1 And .ch(105) = 1 Then '"+++ac" �eklinde"
If .txt(44) & .txt(46) = Chttxt Then BuffKullan s�ras�: Bekle (500): ACKullan s�ras�
End If
If .ch(106) = 1 And .txt(47) = Chttxt Then
Paket "3101" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(s�ras�) & "0000000000000000000000000F00"
Bekle (1)
Paket "3103" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(s�ras�) & "000000000000000000000000"
End If
If .ch(107) = 1 And .txt(48) = Chttxt Then
Paket "3101" & AlignDWORD(CLng(skL & "030")) & CharID & "FFFF" & Left$(AlignDWORD(CLng(Fix(c.kX))), 4) & Left$(AlignDWORD(CLng(Fix(c.kZ))), 4) & Left$(AlignDWORD(CLng(Fix(c.kY))), 4) & "0000000000001100"
Bekle (2)
Paket "3103" & AlignDWORD(CLng(skL & "030")) & CharID & "FFFF" & Left$(AlignDWORD(CLng(Fix(c.kX))), 4) & Left$(AlignDWORD(CLng(Fix(c.kZ))), 4) & Left$(AlignDWORD(CLng(Fix(c.kY))), 4) & "000000000000"
End If
End With
End Sub
Public Sub CharDurumKontrol()
With Form1
If c.HP > 0 Then i�LemYap�ld�(1) = False
If PartySay� > 0 Then i�LemYap�ld�(2) = False

For i = 1 To PartySay�
 If PartyS�n�fAd�(i) = .cb(5).Text Then i�LemYap�ld�(4) = False
Next
If ExpGelmeSn = 0 Then i�LemYap�ld�(5) = False
If PotBulHP <> 0 Then i�LemYap�ld�(6) = False
If PotBulMP <> 0 Then i�LemYap�ld�(7) = False

If .ch(36) = 1 And CharDC = True Then CharI�lemYap 0, "Char DC oldu."
If .ch(37) = 1 And c.HP = 0 Then: CharI�lemYap 1, "Char �ld�."
If .ch(38) = 1 And PartySay� = 0 Then Bekle (500): CharI�lemYap 2, "Party Bozuldu."
If .ch(40) = 1 Then
If PartyS�n�fSor(.cb(5).Text) = False Then
 CharI�lemYap 4, "Partyde " & .cb(5).Text & " Yok."
 Else
 i�LemYap�ld�(4) = False
End If
End If
If .ch(41) = 1 Then
ExpGelmeSn = ExpGelmeSn + 1
Select Case .Scroll(0).Value
Case 1: If ExpGelmeSn = 300 Then CharI�lemYap 5, "5 Dk. Exp Gelmedi."
Case 2: If ExpGelmeSn = 600 Then CharI�lemYap 5, "10 Dk. Exp Gelmedi."
Case 3: If ExpGelmeSn = 900 Then CharI�lemYap 5, "15 Dk. Exp Gelmedi."
Case 4: If ExpGelmeSn = 1200 Then CharI�lemYap 5, "20 Dk. Exp Gelmedi."
End Select
End If
If NPCA��k = False Then
If .ch(42) = 1 And PotBulHP = 0 Then CharI�lemYap 6, "HP Pot Bitti."
If .ch(43) = 1 And PotBulMP = 0 Then CharI�lemYap 7, "MP Pot Bitti."
End If
On Error Resume Next
If .ch(90) = 1 Then
If Int((100 * val(ReadLong(KO_ADR_CHR + KO_OFF_EXP))) / ReadLong(KO_ADR_CHR + KO_OFF_MAXEXP)) >= .txt(53).Text Then CharI�lemYap 9, "Char Exp'i %" & .txt(53) & " olmu�tur." Else i�LemYap�ld�(9) = False
End If
End With
End Sub
Public Sub CharI�lemYap(s�ra As Integer, sebep As String)
If i�LemYap�ld�(s�ra) = False Then
Dim i�1 As String, i�2 As String, i�3 As String, i�4 As String, i�5 As String, i�6 As String
i�1 = "Alarm �al": i�2 = "Bot Durdur": i�3 = "Town At": i�4 = "Oyun Kapat": i�5 = "Bot Durdur+Alarm": i�6 = "Town + Alarm"
If Form1.cbI�lem(s�ra).Text = i�1 Then Alarm�al sebep '//
If Form1.cbI�lem(s�ra).Text = i�2 Then
If BotDurum = True Then Form1.btnBotDr.Value = True '//
End If
If Form1.cbI�lem(s�ra).Text = i�3 Then TownAt         '//
If Form1.cbI�lem(s�ra).Text = i�4 Then KOKapat         '//
If Form1.cbI�lem(s�ra).Text = i�5 Then
If BotDurum = True Then Form1.btnBotDr.Value = True   '//
 Alarm�al sebep
End If
If Form1.cbI�lem(s�ra).Text = i�6 Then TownAt: Alarm�al sebep '//
i�LemYap�ld�(s�ra) = True
End If
End Sub
Function ��karParty(UserID As String)
Paket "2F04" & UserID
End Function
Public Sub Party��karmaKontrol()
If PartySay� > 0 Then
Dim i As Integer
For i = 1 To PartySay�
If Form1.ch(35) = 1 Then
If PartyUyeMesafe(i) > 13 Then SlotAyr�lmaS�re(i) = SlotAyr�lmaS�re(i) + 1 Else SlotAyr�lmaS�re(i) = 0
Select Case Form1.Scroll(1).Value
Case 1
If SlotAyr�lmaS�re(i) = 1800 Then ��karParty PartyCharID(i): SlotAyr�lmaS�re(i) = 0
Case 2
If SlotAyr�lmaS�re(i) = 2400 Then ��karParty PartyCharID(i): SlotAyr�lmaS�re(i) = 0
Case 3
If SlotAyr�lmaS�re(i) = 3000 Then ��karParty PartyCharID(i): SlotAyr�lmaS�re(i) = 0
End Select
End If
If Form1.ch(34) = 1 Then
If PartyHP(i) = 0 Then Party�lenUyeSn(i) = Party�lenUyeSn(i) + 1
Form1.Caption = Party�lenUyeSn(i) + 1
If Party�lenUyeSn(i) = 180 Then ��karParty PartyCharID(i): Party�lenUyeSn(i) = 0
End If
Next
End If
End Sub

Public Sub �ekMage(UserID As String)
Paket "3101" + Strings.Mid(AlignDWORD(c.class & "004"), 1, 6) + "00" + CharID + UserID + "0000000000000000000000000F00" ' bekle bi tp kodunu dinliyim
Paket "3103" + Strings.Mid(AlignDWORD(c.class & "004"), 1, 6) + "00" + CharID + UserID + "35032F000402000000000000"
End Sub

Public Sub Kay�tTut(Text As String, dosyaisim As String, Ba�l�k As String, Optional renk As String = "white")
If Dir(App.Path & "\" & dosyaisim) = "" Then
t�myaz� = "<html>"
t�myaz� = t�myaz� & "<head>"
 t�myaz� = t�myaz� & "<title>" & Ba�l�k & c.isim & "</title>"
 t�myaz� = t�myaz� & "</head>"
 t�myaz� = t�myaz� & "<body bgcolor=#000000>"
  t�myaz� = t�myaz� & "   <font color=#FFFFFF face='trebuchet ms' size=2>"
   t�myaz� = t�myaz� & "  <b>"
Open App.Path & "\" & dosyaisim For Append As #1
Print #1, t�myaz�
Close #1
End If
t�myaz� = ""
t�myaz� = "[" & Date & " " & Time & "]" & "  <font color=" & renk & "> " & Text & " </font><br>"
Open App.Path & "\" & dosyaisim For Append As #1
Print #1, t�myaz�
Close #1
End Sub
'Public Function itemY�kle(k�s�m As Integer) As Boolean
'If Dir(App.Path & "\Ses\itemList.ini") = "" Then
'MsgBox "Item Listesi bulunamad� l�tfen botu yeniden y�kleyin."
'Exit Function
'End If
'Dim List As ListBox
'If k�s�m = 0 Then
'Set List = Form1.lst(7) 'satma k�s�tla
'Else
'Set List = FrmLoot.List1 'oto kutu
'End If
'With Form1
'itemY�kle = False
'For i = 0 To 223
'List.AddItem IniOku("itemPr�a1", "index" & i, "Ses\itemList.ini")
'If Form8.List(0) = lst Then List.ItemData(List.NewIndex) = IniOku("itemPr�a1", "data" & i, "Ses\itemList.ini")
'Next
'For i = 0 To 120
'List.AddItem IniOku("itemPr�a2", "index" & i, "Ses\itemList.ini")
'If Form8.List(0) = lst Then List.ItemData(List.NewIndex) = IniOku("itemPr�a2", "data" & i, "Ses\itemList.ini")
'Next
'For i = 0 To 29
'List.AddItem IniOku("itemPr�a3", "index" & i, "Ses\itemList.ini")
'If Form8.List(0) = lst Then List.ItemData(List.NewIndex) = IniOku("itemPr�a3", "data" & i, "Ses\itemList.ini")
'Next
'For i = 0 To 1178
'List.AddItem IniOku("itemPr�a4", "index" & i, "Ses\itemList.ini")
'If Form8.List(0) = lst Then List.ItemData(List.NewIndex) = IniOku("itemPr�a4", "data" & i, "Ses\itemList.ini")
'Bekle (1)
'Next
'End With
'itemY�kle = True
'End Function
Public Sub Konu�maKaydet(charisim As String, Text As String, dosyaisim As String, chtTip As Integer)
Dim renk As String
If Dir(App.Path & "\" & dosyaisim) = "" Then
t�myaz� = "<html>"
t�myaz� = t�myaz� & "<head>"
 t�myaz� = t�myaz� & "<title>Konu�malar " & c.isim & "</title>"
 t�myaz� = t�myaz� & "</head>"
 t�myaz� = t�myaz� & "<body bgcolor=#000000>"
  t�myaz� = t�myaz� & "   <font color=#FFFFFF face='trebuchet ms' size=2>"
   t�myaz� = t�myaz� & "  <b>"
Open App.Path & "\" & dosyaisim For Append As #1
Print #1, t�myaz�
Close #1
End If
Select Case chtTip
Case 1
renk = "white"
Case 2
renk = "#C6C600"
Case 3
renk = "#009999"
Case 4
renk = "#3399FF"
Case 5
renk = "#FF6600"
Case 6
renk = "#33CC33"
Case 7
renk = "yellow"
Case 13
renk = "green"
Case 14
renk = "#C6C6FB"
End Select
t�myaz� = ""
t�myaz� = "[" & Date & " " & Time & "]" & "  <font color=" & renk & "> " & charisim & ": " & Text & " </font><br>"
Open App.Path & "\" & dosyaisim For Append As #1
Print #1, t�myaz�
Close #1
End Sub

Public Function OkuT�mMob2()
On Error Resume Next
Form2.lstMOB2.Clear
Dim EBP As Long, ESI As Long, EAX As Long, MOBAd As String
EBP = ReadLong(ReadLong(KO_FLDB) + &H2C)
ESI = ReadLong(EBP)
While ESI <> EBP
On Error Resume Next
base_addr = ReadLong(ESI + &H10)
MOBAd = readString(ReadLong(base_addr + KO_OFF_NICK), ReadLong(base_addr + KO_OFF_NICK + 4))
If Form2.lstSlot(1).ListCount > 0 Then
If ListeKontrol(Form2.lstSlot(1), MOBAd) = False And OkuMesafe(ReadLong(base_addr + KO_OFF_ID), True) < 2 Then
If Form1.opt(2) = True Then Form2.lstMOB2.AddItem MOBAd Else Form2.lstMOB2.AddItem ReadLong(base_addr + KO_OFF_ID)
End If
End If
EAX = ReadLong(ESI + 8)
    If ReadLong(ESI + 8) <> ReadLong(KO_FLMZ) Then
        While ReadLong(EAX) <> ReadLong(KO_FLMZ)
        EAX = ReadLong(EAX)
        Wend
    ESI = EAX
    Else
    EAX = ReadLong(ESI + 4)
        While ESI = ReadLong(EAX + 8)
        ESI = EAX
        EAX = ReadLong(EAX + 4)
        Wend
        If ReadLong(ESI + 8) <> EAX Then
        ESI = EAX
        End If
    End If
Wend
End Function

Public Sub RepairYap(tip As Gidi�Tipi, RotaYer As String)
If ReadLong(KO_ADR_CHR + &H9D0) < 1000 Then
HataYaz ("�st�n�zde 1000 Coins'ten az para var Repair devred���.")
Exit Sub
Else
HataSil ("�st�n�zde 1000 Coins'ten az para var Repair devred���.")
End If
Form2.tm2000 = False
RPRYap�l�yor = True
Form1.rprbilgi.Visible = True
WriteLong (KO_ADR_CHR + KO_OFF_WH), 0

Dim rSay� As Integer, GtX As Single, GtY As Single
Dim SlotX As Single, SlotY As Single
SlotX = c.kX
SlotY = c.kY
rSay� = CInt(IniOku("Rotalar", "Say�s�", RotaYer))
If tip = Y�r�yerek Then
For i = rSay� To 0 Step -1
GtX = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop

Next 'noktalar tamamland�

GtX = IniOku("NPC", "NPC_X", RotaYer) 'npcnin dibine sokul
GtY = IniOku("NPC", "NPC_Y", RotaYer)
Y�r�XY GtX, GtY
Do Until (c.kX = GtX And c.kY = GtY)
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop


Bekle (1000) 'npc dibindesin
Sa�ItemRepair HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4) 'repair yap
SolItemRepair HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4)
If Form1.ch(94).Value = 1 Then Z�rhRpr HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4)
Bekle (1000)
If Form1.ch(68) = 1 Then ItemSat HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4): Bekle (1000)
If Form1.ch(44) = 1 And PartyS�n�fSor("Mage") = True Then
Konu� Form1.cb(37).ItemData(Form1.cb(37).ListIndex), Form1.txt(56).Text
Bekle (1000)
Konu� Form1.cb(37).ItemData(Form1.cb(37).ListIndex), Form1.txt(56).Text & "-1"
Bekle (1000)
Konu� Form1.cb(37).ItemData(Form1.cb(37).ListIndex), Form1.txt(56).Text
Bekle (2000)
RPRYap�l�yor = False
Bekle (5000)
Form2.tm2000 = True
Exit Sub
End If

For i = 0 To rSay�
GtX = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
Next 'noktalar tamamland� 'slottas�n

GtX = SlotX
GtY = SlotY
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop

End If
'_---------------------------------I��nlanarak -----------------------------
Dim GtX2 As Long, GtY2 As Long
If tip = ���nlanarak Then
WriteLong KO_ADR_CHR + 1686, 0
Durum(9) = False
'Paket "06" & Strings.Mid(AlignDWORD(c.kX * 10), 1, 4) & Strings.Mid(AlignDWORD(c.kY * 10), 1, 4) & HexFormatla(Hex(5 * 10), 4) & "2D0001"
For i = rSay� To 0 Step -1
GtX2 = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY2 = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (60)
Loop
Bekle (200)
Next 'noktalar tamamland�
Bekle (200)
GtX2 = IniOku("NPC", "NPC_X", RotaYer) 'npcnin dibine sokul
GtY2 = IniOku("NPC", "NPC_Y", RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (50)
Loop

Bekle (1000) 'npc dibindesin
Sa�ItemRepair HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4) 'repair yap
SolItemRepair HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4)
Bekle (1000)
If Form1.ch(94).Value = 1 Then Z�rhRpr HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4)
Bekle (1000)
If Form1.ch(68) = 1 Then ItemSat HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4): Bekle (500)
If Form1.ch(44) = 1 And PartyS�n�fSor("Mage") = True Then
Konu� Form1.cb(37).ItemData(Form1.cb(37).ListIndex), Form1.txt(56).Text
Bekle (1000)
Konu� Form1.cb(37).ItemData(Form1.cb(37).ListIndex), Form1.txt(56).Text & "-1"
Bekle (1000)
Konu� Form1.cb(37).ItemData(Form1.cb(37).ListIndex), Form1.txt(56).Text
WriteFloat (KO_ADR_CHR + KO_OFF_X), CSng(GtX2): WriteFloat (KO_ADR_CHR + KO_OFF_Y), CSng(GtY2)
Bekle (1000)
 WriteLong KO_ADR_CHR + 1686, 16256
RPRYap�l�yor = False
Bekle (5000)
Form2.tm2000 = True
Exit Sub
End If

For i = 0 To rSay�
GtX2 = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY2 = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (60)
Loop
Bekle (200)
Next 'noktalar tamamland�

GtX2 = SlotX
GtY2 = SlotY
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (60)
Loop 'slottas�n
'rpr bitti tmmd�r:D
Bekle (6000)
 WriteLong KO_ADR_CHR + 1686, 16256
End If
If Form1.ch(4) = 0 Then WriteLong KO_ADR_CHR + &H538, 1
RPRYap�l�yor = False
Form1.rprbilgi.Visible = False
Form2.tm2000 = True
End Sub
Public Sub SolItemRepair(NPCID As String)
If SolItemID = "00000000" Then Exit Sub
Paket "3B01" & "08" & NPCID & SolItemID
Paket "3B01" & "06" & NPCID & SolItemID
End Sub
Public Sub Sa�ItemRepair(NPCID As String)
If Sa�ItemID = "00000000" Then Exit Sub
Paket "3B01" & "06" & NPCID & Sa�ItemID
Paket "3B01" & "08" & NPCID & Sa�ItemID
End Sub

Public Sub Sat�nAl(tip As Gidi�Tipi, RotaYer As String, Tip2 As Integer)
If ReadLong(KO_ADR_CHR + &H9D0) < 1000 Then
HataYaz ("�st�n�zde 1000 Coins'ten az para var Sat�n Alma Devred���.")
Exit Sub
Else
HataSil ("�st�n�zde 1000 Coins'ten az para var Sat�n Alma Devred���.")
End If
WriteLong (KO_ADR_CHR + KO_OFF_WH), 0
ItemSat�nAl�n�yor = True
Form1.rprbilgi.Visible = True
Dim rSay� As Integer, GtX As Single, GtY As Single
Dim SlotX As Single, SlotY As Single
SlotX = c.kX
SlotY = c.kY
rSay� = CInt(IniOku("Rotalar", "Say�s�", RotaYer))
If tip = Y�r�yerek Then
For i = rSay� To 0 Step -1
GtX = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
Next 'noktalar tamamland�

GtX = IniOku("NPC", "NPC_X", RotaYer) 'npcnin dibine sokul
GtY = IniOku("NPC", "NPC_Y", RotaYer)
Y�r�XY GtX, GtY
Do Until (c.kX = GtX And c.kY = GtY)
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
Bekle (1000) 'npc dibindesin
ItemSat�nAl HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4), Tip2
Bekle (2000)

For i = 0 To rSay�
GtX = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
Next 'noktalar tamamland� 'slottas�n
GtX = SlotX
GtY = SlotY
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
End If
'_---------------------------------I��nlanarak -----------------------------
Dim GtX2 As Long, GtY2 As Long
If tip = ���nlanarak Then
WriteLong KO_ADR_CHR + 1686, 0
Durum(9) = False
Paket "06" & Strings.Mid(AlignDWORD(c.kX * 10), 1, 4) & Strings.Mid(AlignDWORD(c.kY * 10), 1, 4) & HexFormatla(Hex(5 * 10), 4) & "2D0001"
For i = rSay� To 0 Step -1
GtX2 = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY2 = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (30)
Loop
Bekle (200)
Next 'noktalar tamamland�
Bekle (200)
GtX2 = IniOku("NPC", "NPC_X", RotaYer) 'npcnin dibine sokul
GtY2 = IniOku("NPC", "NPC_Y", RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (50)
Loop

Bekle (2000) 'npc dibindesin
ItemSat�nAl HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4), Tip2
Bekle (2000)

For i = 0 To rSay�
GtX2 = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY2 = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (30)
Loop
Bekle (200)
Next 'noktalar tamamland� 'slottas�n
GtX2 = SlotX
GtY2 = SlotY
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (60)
Loop 'slottas�n
Bekle (3000)
 WriteLong KO_ADR_CHR + 1686, 16256
End If
 If Form1.ch(4) = 0 Then WriteLong KO_ADR_CHR + &H538, 1
ItemSat�nAl�n�yor = False
Form1.rprbilgi.Visible = False
End Sub

Public Sub ItemSat�nAl(NPCID As String, tip As Integer)
Dim Al�nacakMiktar As String, NPCs�ra As String, ItemS�ra As String
With Form1
If tip = 0 Then 'pot npc
If .ch(5) = 1 And OkuPotHPIDSat�nAl <> "0" And OkuPotHPMiktarSat�nAl > 0 And OkuPotHPMiktarSat�nAl <= 6 Then  'HP pot
Al�nacakMiktar = Strings.Mid$(AlignDWORD(str$(Form1.txt(21))), 1, 4)
NPCs�ra = Strings.Mid$(AlignDWORD(str$(OkuHPNPCS�ra)), 1, 2)
ItemS�ra = Strings.Mid$(AlignDWORD(str$(OkuPotHPS�raSat�nAl)), 1, 2)
Paket "210148DC0300" & NPCID & OkuPotHPIDSat�nAl & ItemS�ra & Al�nacakMiktar & "00" & NPCs�ra
Paket "6A02"
Paket "6A02"
Paket "6A02"
Paket "6A02"
End If

If .ch(55) = 1 And OkuPotMPIDSat�nAl <> "0" And OkuPotMPMiktarSat�nAl > 0 And OkuPotMPMiktarSat�nAl <= 6 Then 'mP pot
Al�nacakMiktar = Strings.Mid$(AlignDWORD(str$(Form1.txt(22))), 1, 4)
NPCs�ra = Strings.Mid$(AlignDWORD(str$(OKUMPNPCS�ra)), 1, 2)
ItemS�ra = Strings.Mid$(AlignDWORD(str$(OkuPotMPS�raSat�nAl)), 1, 2)
Paket "210148DC0300" & NPCID & OkuPotMPIDSat�nAl & ItemS�ra & Al�nacakMiktar & "00" & NPCs�ra
Paket "6A02"
Paket "6A02"
Paket "6A02"
Paket "6A02"
End If
End If


If tip = 1 Then 'sundires npc
If .ch(56) = 1 And OkuWolfID <> "0" And OkuWolfMiktar > 0 And OkuWolfMiktar <= 6 Then  'wolf
Al�nacakMiktar = Strings.Mid$(AlignDWORD(str$(Form1.txt(23))), 1, 4)
NPCs�ra = Strings.Mid$(AlignDWORD(str$(7)), 1, 2)
ItemS�ra = Strings.Mid$(AlignDWORD(str$(OkuWolfS�ra)), 1, 2)
Paket "210118E40300" & NPCID & OkuWolfID & ItemS�ra & Al�nacakMiktar & "00" & NPCs�ra
Paket "6A02"
Paket "6A02"
Paket "6A02"
Paket "6A02"
End If

If .ch(58) = 1 And OkuArrowID <> "0" And OkuArrowMiktar > 0 And OkuArrowMiktar <= 10 Then  'Arrow
Al�nacakMiktar = Strings.Mid$(AlignDWORD(str(Form1.txt(25))), 1, 4)
NPCs�ra = Strings.Mid$(AlignDWORD(str$(0)), 1, 2)
ItemS�ra = Strings.Mid$(AlignDWORD(str$(OkuArrowS�ra)), 1, 2)
Paket "210118E40300" & NPCID & OkuArrowID & ItemS�ra & Al�nacakMiktar & "00" & NPCs�ra
Paket "6A02"
Paket "6A02"
Paket "6A02"
Paket "6A02"
End If

If .ch(45) = 1 And OkuKitapID <> "0" And OkuKitapMiktar > 0 And OkuKitapMiktar <= 5 Then  'Kitap
Al�nacakMiktar = Strings.Mid$(AlignDWORD(str(Form1.txt(6))), 1, 4)
NPCs�ra = Strings.Mid$(AlignDWORD(str$(12)), 1, 2)
ItemS�ra = Strings.Mid$(AlignDWORD(str$(OkuKitapS�ra)), 1, 2) '
Paket "210118E40300" & NPCID & OkuKitapID & ItemS�ra & Al�nacakMiktar & "00" & NPCs�ra
Paket "6A02"
Paket "6A02"
Paket "6A02"
Paket "6A02"
End If



If .ch(57) = 1 And OkuGemID <> "0" And OkuGemMiktar > 0 And OkuGemMiktar <= 6 Then  'Ts Gem
Al�nacakMiktar = Strings.Mid$(AlignDWORD(str$(Form1.txt(24))), 1, 4)
NPCs�ra = Strings.Mid$(AlignDWORD(str$(26)), 1, 2)
ItemS�ra = Strings.Mid$(AlignDWORD(str$(OkuGemS�ra)), 1, 2)
Paket "210118E40300" & NPCID & OkuGemID & ItemS�ra & Al�nacakMiktar & "00" & NPCs�ra
Paket "6A02"
Paket "6A02"
Paket "6A02"
Paket "6A02"
End If
End If
End With
End Sub
Public Sub BankadanItemAl(NPCID As String)
Dim Al�nacakMiktar As String, BankaS�ra As String, ItemS�ra As String, BankaSayfa As String
With Form1
If .ch(63) = 1 And OkuPotHPIDBanka <> "0" And OkuPotHPMiktarBanka > 0 And OkuPotHPMiktarBanka <= 6 Then  'HP pot
'''''''''''''bankadaki slot  ''sayfa
BankaS�ra = Strings.Mid$(AlignDWORD(str((.cb(18).Text - 1))), 1, 2)
BankaSayfa = Strings.Mid$(AlignDWORD(str(.cb(13).Text - 1)), 1, 2)
ItemS�ra = Strings.Mid$(AlignDWORD(str(OkuPotHPS�raBanka)), 1, 2)
Al�nacakMiktar = Strings.Mid$(AlignDWORD(str(.txt(30))), 1, 4)
Paket "4503" & NPCID & OkuPotHPIDBanka & BankaSayfa & BankaS�ra & ItemS�ra & Al�nacakMiktar & "0000"
Paket "6A02"
Paket "6A02"
End If

If .ch(62) = 1 And OkuPotMPIDBanka <> "0" And OkuPotMPMiktarBanka > 0 And OkuPotMPMiktarBanka <= 6 Then 'mP pot
'''''''''''''bankadaki slot  ''sayfa
BankaS�ra = Strings.Mid$(AlignDWORD(str((.cb(19).Text - 1))), 1, 2)
BankaSayfa = Strings.Mid$(AlignDWORD(str(.cb(14).Text - 1)), 1, 2)
ItemS�ra = Strings.Mid$(AlignDWORD(str(OkuPotMPS�raBanka)), 1, 2)
Al�nacakMiktar = Strings.Mid$(AlignDWORD(str(.txt(29))), 1, 4)
Paket "4503" & NPCID & OkuPotMPIDBanka & BankaSayfa & BankaS�ra & ItemS�ra & Al�nacakMiktar & "0000"
Paket "6A02"
Paket "6A02"
End If

If .ch(61) = 1 And OkuWolfID <> "0" And OkuWolfMiktar > 0 And OkuWolfMiktar <= 6 Then  'wolf
'''''''''''''bankadaki slot  ''sayfa
BankaS�ra = Strings.Mid$(AlignDWORD(str((.cb(20).Text - 1))), 1, 2)
BankaSayfa = Strings.Mid$(AlignDWORD(str(.cb(15).Text - 1)), 1, 2)
ItemS�ra = Strings.Mid$(AlignDWORD(str(OkuWolfS�ra)), 1, 2)
Al�nacakMiktar = Strings.Mid$(AlignDWORD(str(.txt(28))), 1, 4)
Paket "4503" & NPCID & OkuWolfID & BankaSayfa & BankaS�ra & ItemS�ra & Al�nacakMiktar & "0000"
Paket "6A02"
Paket "6A02"
End If

If .ch(59) = 1 And OkuArrowID <> "0" And OkuArrowMiktar > 0 And OkuArrowMiktar <= 10 Then  'Arrow
'''''''''''''bankadaki slot  ''sayfa
BankaS�ra = Strings.Mid$(AlignDWORD(str((.cb(22).Text - 1))), 1, 2)
BankaSayfa = Strings.Mid$(AlignDWORD(str(.cb(17).Text - 1)), 1, 2)
ItemS�ra = Strings.Mid$(AlignDWORD(str(OkuArrowS�ra)), 1, 2)
Al�nacakMiktar = Strings.Mid$(AlignDWORD(str(.txt(26))), 1, 6)
Paket "4503" & NPCID & OkuArrowID & BankaSayfa & BankaS�ra & ItemS�ra & Al�nacakMiktar & "00"
Paket "6A02"
Paket "6A02"
End If

If .ch(60) = 1 And OkuGemID <> "0" And OkuGemMiktar > 0 And OkuGemMiktar <= 6 Then  'Ts Gem
'''''''''''''bankadaki slot  ''sayfa
BankaS�ra = Strings.Mid$(AlignDWORD(str((.cb(21).Text - 1))), 1, 2)
BankaSayfa = Strings.Mid$(AlignDWORD(str(.cb(16).Text - 1)), 1, 2)
ItemS�ra = Strings.Mid$(AlignDWORD(str(OkuGemS�ra)), 1, 2)
Al�nacakMiktar = Strings.Mid$(AlignDWORD(str(.txt(27))), 1, 4)
Paket "4503" & NPCID & OkuGemID & BankaSayfa & BankaS�ra & ItemS�ra & Al�nacakMiktar & "0000"
Paket "6A02"
Paket "6A02"
End If


End With
End Sub
Public Sub BankadanGitAl(tip As Gidi�Tipi, RotaYer As String)
ItemBankadanAl�n�yor = True
Form1.rprbilgi.Visible = True
WriteLong (KO_ADR_CHR + KO_OFF_WH), 0
Dim rSay� As Integer, GtX As Single, GtY As Single
Dim SlotX As Single, SlotY As Single
SlotX = c.kX
SlotY = c.kY
rSay� = CInt(IniOku("Rotalar", "Say�s�", RotaYer))
If tip = Y�r�yerek Then
For i = rSay� To 0 Step -1
GtX = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
Next 'noktalar tamamland�

GtX = IniOku("NPC", "NPC_X", RotaYer) 'npcnin dibine sokul
GtY = IniOku("NPC", "NPC_Y", RotaYer)
Y�r�XY GtX, GtY
Do Until (c.kX = GtX And c.kY = GtY)
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
Bekle (1000) 'npc dibindesin
BankadanItemAl HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4)
Bekle (1000)

For i = 0 To rSay�
GtX = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
Next 'noktalar tamamland� 'slottas�n
GtX = SlotX
GtY = SlotY
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
End If
'_---------------------------------I��nlanarak -----------------------------
Dim GtX2 As Long, GtY2 As Long
If tip = ���nlanarak Then
WriteLong KO_ADR_CHR + 1686, 0
Durum(9) = False
Paket "06" & Strings.Mid(AlignDWORD(c.kX * 10), 1, 4) & Strings.Mid(AlignDWORD(c.kY * 10), 1, 4) & HexFormatla(Hex(5 * 10), 4) & "2D0001"
For i = rSay� To 0 Step -1
GtX2 = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY2 = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (50)
Loop
Bekle (200)
Next 'noktalar tamamland�
Bekle (200)
GtX2 = IniOku("NPC", "NPC_X", RotaYer) 'npcnin dibine sokul
GtY2 = IniOku("NPC", "NPC_Y", RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (50)
Loop

Bekle (1000) 'npc dibindesin
BankadanItemAl HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4)
Bekle (1000)

For i = 0 To rSay�
GtX2 = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY2 = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (50)
Loop
Bekle (200)
Next 'noktalar tamamland� 'slottas�n
GtX2 = SlotX
GtY2 = SlotY
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (60)
Loop 'slottas�n
Bekle (5000)
 WriteLong KO_ADR_CHR + 1686, 16256
End If
 If Form1.ch(4) = 0 Then WriteLong KO_ADR_CHR + &H538, 1
ItemBankadanAl�n�yor = False
Form1.rprbilgi.Visible = False
End Sub
Public Sub ItemSat(NPCID As String)
Dim n As Integer
Dim z As Integer

For n = 26 To 54
        If SatAra(GetInvItemName(n)) = False Then
            If HexItemID(n) <> "00000000" And HexItemID(n) <> "971BA735" Then
                
                    Paket "2102" + "18E40300" + NPCID + HexItemID(n) + Strings.Mid(AlignDWORD(n - 26), 1, 2) + Strings.Mid(AlignDWORD(GetItemCountInInv(n)), 1, 4) + "00" 'nin slotu.
                    Paket "6A02"
                    Bekle (100)
                    'Exit For
            End If
            End If
        
        Next
Paket "6A02"
Paket "6A02"

End Sub
Public Function SatAra(ByVal Deger As String) As Boolean
Dim i: For i = 0 To Form1.List3.ListCount - 1
If Form1.List3.list(i) = Deger Then SatAra = True: Exit For Else: SatAra = False
Next

End Function
Public Function GetInvItemName(ByVal slot As Integer) As String
       Dim tmpBase As Long, tmpLng1 As Long, tmpLng2 As Long, tmpLng3 As Long, tmpLng4 As Long
      Dim lngItemID As Long, lngItemID_Ext As Long, lngItemNameLen As Long, AdrItemName As Long
      Dim ItemNameB() As Byte
      Dim ItemName As String
      Dim i As Integer

      tmpBase = ReadLong(KO_PTR_DLG)  'read KO_DLGBMA adress
      tmpLng1 = ReadLong(tmpBase + &H1A0) 'first pointer
      
 'read 0 to 41 inventory slots (0=earring, 1=helmet, 2=earring, 3=necklace, 4=pauldron ....14=first inventory slot)
          tmpLng2 = ReadLong(tmpLng1 + (&H148 + (4 * slot))) 'inventory slot
          tmpLng3 = ReadLong(tmpLng2 + &H38) 'item id adress
          tmpLng4 = ReadLong(tmpLng2 + &H3C) 'item id_ext adress
          
          lngItemID = ReadLong(tmpLng3) 'item id value
          lngItemID_Ext = ReadLong(tmpLng4) 'item id_ext value
          lngItemID = lngItemID + lngItemID_Ext 'real item id
          lngItemNameLen = ReadLong(tmpLng3 + &H10) 'n� characters in item name
          AdrItemName = ReadLong(tmpLng3 + &HC) 'item name adress
          
          ItemName = "" 'reset ItemName variable
          If lngItemNameLen > 0 Then
              ReadByteArray AdrItemName, ItemNameB, lngItemNameLen 'get item name (byte array)
              GetInvItemName = StrConv(ItemNameB, vbUnicode) 'convert it to string
          End If
    End Function
Public Function HexItemID(ByVal slot As Integer) As String
        Dim Offset, X, offset3, offset4 As Long
        Dim base, Sonuc As Long
        Offset = ReadLong(KO_ADR_DLG + &H1A0)
        Offset = ReadLong(Offset + (&H148 + (4 * slot))) 'inventory slot
          'item id adress
        
        Sonuc = ReadLong(ReadLong(Offset + &H38)) + ReadLong(ReadLong(Offset + &H3C))
        HexItemID = Strings.Mid(AlignDWORD(Sonuc), 1, 8)
    End Function
    Function GetItemCountInInv(ByVal slot As Integer) As Long
        Dim Offset, Offset2 As Long
        Offset = ReadLong(KO_ADR_DLG + &H1A0)
        Offset = ReadLong(Offset + (&H148 + (4 * slot)))
        Offset2 = ReadLong(Offset + &H40)
        GetItemCountInInv = Offset2
    End Function
Public Function ItemAdet(ItemID As String)
Dim Miktar As String
Miktar = ItemMiktarSlotaG�re(OkuItemS�ra(ItemID) + 26)
If Miktar = "0" Then
  ItemAdet = "0" & Hex(CLng("00"))
Else
  ItemAdet = Hex(CLng(Miktar))
End If
If Miktar = "1" Then
  ItemAdet = "0" & Hex(CLng("01"))
End If
If Miktar = "2" Then
  ItemAdet = "0" & Hex(CLng("02"))
End If
If Miktar = "3" Then
  ItemAdet = "0" & Hex(CLng("03"))
End If
If Miktar = "4" Then
  ItemAdet = "0" & Hex(CLng("04"))
End If
If Miktar = "5" Then
  ItemAdet = "0" & Hex(CLng("05"))
End If
If Miktar = "6" Then
  ItemAdet = "0" & Hex(CLng("06"))
End If
If Miktar = "7" Then
  ItemAdet = "0" & Hex(CLng("07"))
End If
If Miktar = "8" Then
  ItemAdet = "0" & Hex(CLng("08"))
End If
If Miktar = "9" Then
  ItemAdet = "0" & Hex(CLng("09"))
End If
End Function

Public Sub ItemGitSat(tip As Gidi�Tipi, RotaYer As String)
ItemSat�l�yor = True
Form1.rprbilgi.Visible = True
WriteLong (KO_ADR_CHR + KO_OFF_WH), 0
Dim rSay� As Integer, GtX As Single, GtY As Single
Dim SlotX As Single, SlotY As Single
SlotX = c.kX
SlotY = c.kY
rSay� = CInt(IniOku("Rotalar", "Say�s�", RotaYer))
If tip = Y�r�yerek Then
For i = rSay� To 0 Step -1
GtX = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
Next 'noktalar tamamland�

GtX = IniOku("NPC", "NPC_X", RotaYer) 'npcnin dibine sokul
GtY = IniOku("NPC", "NPC_Y", RotaYer)
Y�r�XY GtX, GtY
Do Until (c.kX = GtX And c.kY = GtY)
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
Bekle (1000) 'npc dibindesin
ItemSat HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4)
Bekle (1000)

For i = 0 To rSay�
GtX = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
Next 'noktalar tamamland� 'slottas�n
GtX = SlotX
GtY = SlotY
Y�r�XY GtX, GtY
Do Until c.kX = GtX And c.kY = GtY
DoEvents
Y�r�XY GtX, GtY
Bekle (50)
Loop
End If
'_---------------------------------I��nlanarak -----------------------------
Dim GtX2 As Long, GtY2 As Long
If tip = ���nlanarak Then
WriteLong KO_ADR_CHR + 1686, 0
Durum(9) = False
Paket "06" & Strings.Mid(AlignDWORD(c.kX * 10), 1, 4) & Strings.Mid(AlignDWORD(c.kY * 10), 1, 4) & HexFormatla(Hex(5 * 10), 4) & "2D0001"
For i = rSay� To 0 Step -1
GtX2 = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY2 = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (50)
Loop
Bekle (200)
Next 'noktalar tamamland�
Bekle (200)
GtX2 = IniOku("NPC", "NPC_X", RotaYer) 'npcnin dibine sokul
GtY2 = IniOku("NPC", "NPC_Y", RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (50)
Loop

Bekle (1000) 'npc dibindesin
ItemSat HexFormatla(Hex(OkuEtraftakiNPC(tip)), 4)
Bekle (1000)

For i = 0 To rSay�
GtX2 = IniOku("Rotalar", "Nokta_X" & i, RotaYer)
GtY2 = IniOku("Rotalar", "Nokta_Y" & i, RotaYer)
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (50)
Loop
Bekle (200)
Next 'noktalar tamamland� 'slottas�n
GtX2 = SlotX
GtY2 = SlotY
���nlanXY2 GtX2, GtY2
Do Until ���nX2 = GtX2 And ���nY2 = GtY2
DoEvents
Bekle (60)
Loop 'slottas�n
Bekle (5000)
 WriteLong KO_ADR_CHR + 1686, 16256
End If
 If Form1.ch(4) = 0 Then WriteLong KO_ADR_CHR + &H538, 1
ItemSat�l�yor = False
Form1.rprbilgi.Visible = False
End Sub
Function eMob() As Long
Dim EBP As Long, ESI As Long, EAX As Long, BaseAdres As Long, xCode() As Byte, xStr As String, a As Long, b As Long, TID As Long, TBASE As Long, HID As Long, HBASE As Long
EBP = ReadLong(ReadLong(KO_FLDB) + &H2C)
ESI = ReadLong(EBP)
a = 100
While ESI <> EBP
BaseAdres = ReadLong(ESI + &H10)
      Form1.Text2 = readString(ReadLong(BaseAdres + KO_OFF_NAME), ReadLong(BaseAdres + KO_OFF_NAME + 4))
      If listebak(Form1.Text2.Text) = True Then
      b = GetMobDistance(ReadFloat(BaseAdres + KO_OFF_X), ReadFloat(BaseAdres + KO_OFF_Y))
      If b < a Then a = b
      TID = ReadLong(BaseAdres + KO_OFF_ID)
      TBASE = BaseAdres
      End If
      
      EAX = ReadLong(ESI + 8)
    If ReadLong(ESI + 8) <> ReadLong(KO_FLMZ) Then
        While ReadLong(EAX) <> ReadLong(KO_FLMZ)
        EAX = ReadLong(EAX)
        Wend
    ESI = EAX
    Else
    EAX = ReadLong(ESI + 4)
        While ESI = ReadLong(EAX + 8)
        ESI = EAX
        EAX = ReadLong(EAX + 4)
        Wend
        If ReadLong(ESI + 8) <> EAX Then
        ESI = EAX
        End If
    End If
Wend
HID = TID
HBASE = TBASE
SetMob (HID)
End Function
Function listebak(isim As String) As Boolean
Dim r As Integer
For r = 0 To Form1.List1.ListCount - 1
If Form1.List1.list(r) = isim Then
listebak = True
Exit Function
End If
Next r
listebak = False
End Function
Function SetMob(MOBID As Long)
If MOBID <> 0 Then
Dim xCode() As Byte, xStr As String

xStr = "6068" & _
        AlignDWORD(GetMobBase(MOBID)) & _
        "8B0D" & _
        AlignDWORD(KO_PTR_DLG) & _
        "BF" & _
        AlignDWORD(KO_STMB) & _
        "FFD761C3"
        ConvHEX2ByteArray xStr, xCode
ExecuteRemoteCode xCode, True
Else: Exit Function
End If
End Function
Function GetMobBase(TargetMob As Long)
Dim Ptr As Long, tmpMobBase As Long, tmpBase As Long, IDArray As Long, BaseAddr As Long, mob As Long
mob = TargetMob
Ptr = ReadLong(KO_FLDB)
tmpMobBase = ReadLong(Ptr + &H2C) 'mob=0x2C
tmpBase = ReadLong(tmpMobBase + &H4) '0x1DD8B1B8
While tmpBase <> 0
IDArray = ReadLong(tmpBase + &HC)
If IDArray >= mob Then
If IDArray = mob Then
BaseAddr = ReadLong(tmpBase + &H10) 'BASE
End If
tmpBase = ReadLong(tmpBase + &H0) 'A�a��
Else
tmpBase = ReadLong(tmpBase + &H8) 'Yukar�
End If
Wend
GetMobBase = BaseAddr
End Function
Function ClassOku() As Long
ClassOku = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_CLASS)
End Function
Public Sub CodesTP()
Paket "3101" + Strings.Mid(AlignDWORD(c.class & "004"), 1, 6) + "00" + CharID + Form1.Text7(0).Text + "0000000000000000000000000F00" ' bekle bi tp kodunu dinliyim
Paket "3103" + Strings.Mid(AlignDWORD(c.class & "004"), 1, 6) + "00" + CharID + Form1.Text7(0).Text + "35032F000402000000000000"
End Sub
Function GetTargetBase(TargetMob As Long)
Dim tmpMobBase As Long, tmpBase As Long, IDArray As Long, BaseAddr As Long, Offset As Long
If TargetMob > 9999 Then Offset = 44 Else Offset = 60
tmpMobBase = ReadLong(ReadLong(KO_FLDB) + Offset)
tmpBase = ReadLong(tmpMobBase + &H4)
While tmpBase <> 0
IDArray = ReadLong(tmpBase + &HC)
If IDArray >= TargetMob Then
If IDArray = TargetMob Then
BaseAddr = ReadLong(tmpBase + &H10)
End If
tmpBase = ReadLong(tmpBase + &H0)
Else
tmpBase = ReadLong(tmpBase + &H8)
End If
Wend
GetTargetBase = BaseAddr
End Function
Function KarakterX()
KarakterX = ReadFloat(KO_PTR_CHR + KO_OFF_X)
End Function

Function KarakterY()
KarakterY = ReadFloat(KO_PTR_CHR + KO_OFF_Y)
End Function
Function KarakterZ()
KarakterZ = ReadFloat(KO_PTR_CHR + KO_OFF_Z)
End Function
Public Function GetX()
GetX = ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_X)
End Function

Public Function GetY()
GetY = ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Y)
End Function

Function Mobx()
Dim pPtr As Long
Dim mb1 As Long
pPtr = ReadLong(KO_PTR_DLG)
mb1 = ReadLong(pPtr + &H3D8)
Mobx = ReadFloat(mb1 + &H58)
End Function

Function moby()
Dim pPtr As Long
Dim mb2 As Long
pPtr = ReadLong(KO_PTR_DLG)
mb2 = ReadLong(pPtr + &H3D8)
moby = ReadFloat(mb2 + &H60)
End Function

Public Function SpeedHack(crx As Single, cry As Single)
On Error Resume Next
Dim zipla, X, Y, uzak, a, b, d, e, i, isrtx, isrty
Dim tx As Single, ty As Single
Dim x1 As Single, y1 As Single
zipla = 5
tx = ReadFloat(ReadLong(KO_PTR_CHR) + &HC4)
ty = ReadFloat(ReadLong(KO_PTR_CHR) + &HCC)

X = Abs(crx - tx)
Y = Abs(cry - ty)
If tx > crx Then isrtx = -1 Else isrtx = 1
If ty > cry Then isrty = -1 Else isrty = 1
uzak = Int(Sqr((X ^ 2 + Y ^ 2)))

For i = zipla To uzak Step zipla
If GetKeyState(Form1.cb(39).ItemData(Form1.cb(39).ListIndex)) = -127 Or GetKeyState(Form1.cb(39).ItemData(Form1.cb(39).ListIndex)) = -128 Then
Sleep (Form1.shhiz.Text)
a = i ^ 2 * X ^ 2
b = X ^ 2 + Y ^ 2
d = Sqr(a / b)
e = Sqr(i ^ 2 - d ^ 2)

x1 = Round(tx + isrtx * d)
y1 = Round(ty + isrty * e)

WriteFloat ReadLong(KO_PTR_CHR) + &HC4, x1
WriteFloat ReadLong(KO_PTR_CHR) + &HCC, y1
WriteFloat ReadLong(KO_PTR_CHR) + &HC8, ReadFloat(ReadLong(KO_PTR_CHR) + &HC8)

Paket "06" _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HC4) * 10), 4) _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HCC) * 10), 4) _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HC8) * 10), 4) _
& "2D0003"
Else
Exit For
End If
Next
End Function

Public Function SpeedHack1(crx As Single, cry As Single)
On Error Resume Next
Dim zipla, X, Y, uzak, a, b, d, e, i, isrtx, isrty
Dim tx As Single, ty As Single
Dim x1 As Single, y1 As Single
zipla = 5
tx = ReadFloat(ReadLong(KO_PTR_CHR) + &HC4)
ty = ReadFloat(ReadLong(KO_PTR_CHR) + &HCC)

X = Abs(crx - tx)
Y = Abs(cry - ty)
If tx > crx Then isrtx = -1 Else isrtx = 1
If ty > cry Then isrty = -1 Else isrty = 1
uzak = Int(Sqr((X ^ 2 + Y ^ 2)))

For i = zipla To uzak Step zipla
If GetKeyState(VK_LBUTTON) Then
Sleep (Form1.shhiz.Text)
a = i ^ 2 * X ^ 2
b = X ^ 2 + Y ^ 2
d = Sqr(a / b)
e = Sqr(i ^ 2 - d ^ 2)

x1 = Round(tx + isrtx * d)
y1 = Round(ty + isrty * e)

WriteFloat ReadLong(KO_PTR_CHR) + &HC4, x1
WriteFloat ReadLong(KO_PTR_CHR) + &HCC, y1
WriteFloat ReadLong(KO_PTR_CHR) + &HC8, ReadFloat(ReadLong(KO_PTR_CHR) + &HC8)

Paket "06" _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HC4) * 10), 4) _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HCC) * 10), 4) _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HC8) * 10), 4) _
& "2D0003"
Else
Exit For
End If
Next
End Function
Public Function SpeedHack2(crx As Single, cry As Single)
On Error Resume Next
Dim zipla, X, Y, uzak, a, b, d, e, i, isrtx, isrty
Dim tx As Single, ty As Single
Dim x1 As Single, y1 As Single
zipla = 5
tx = ReadFloat(ReadLong(KO_PTR_CHR) + &HC4)
ty = ReadFloat(ReadLong(KO_PTR_CHR) + &HCC)

X = Abs(crx - tx)
Y = Abs(cry - ty)
If tx > crx Then isrtx = -1 Else isrtx = 1
If ty > cry Then isrty = -1 Else isrty = 1
uzak = Int(Sqr((X ^ 2 + Y ^ 2)))

For i = zipla To uzak Step zipla

Sleep (50)
a = i ^ 2 * X ^ 2
b = X ^ 2 + Y ^ 2
d = Sqr(a / b)
e = Sqr(i ^ 2 - d ^ 2)

x1 = Round(tx + isrtx * d)
y1 = Round(ty + isrty * e)

WriteFloat ReadLong(KO_PTR_CHR) + &HC4, x1
WriteFloat ReadLong(KO_PTR_CHR) + &HCC, y1
WriteFloat ReadLong(KO_PTR_CHR) + &HC8, ReadFloat(ReadLong(KO_PTR_CHR) + &HC8)

Paket "06" _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HC4) * 10), 4) _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HCC) * 10), 4) _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HC8) * 10), 4) _
& "2D0003"


Next
End Function

Public Function SpeedKos(crx As Single, cry As Single)
On Error Resume Next
Dim zipla, X, Y, uzak, a, b, d, e, i, isrtx, isrty
Dim tx As Single, ty As Single
Dim x1 As Single, y1 As Single
zipla = 5
tx = ReadFloat(ReadLong(KO_PTR_CHR) + &HC4)
ty = ReadFloat(ReadLong(KO_PTR_CHR) + &HCC)

X = Abs(crx - tx)
Y = Abs(cry - ty)
If tx > crx Then isrtx = -1 Else isrtx = 1
If ty > cry Then isrty = -1 Else isrty = 1
uzak = Int(Sqr((X ^ 2 + Y ^ 2)))
For i = zipla To uzak Step zipla
If CInt(Form1.txt(7)) >= KosUzakl�k Then
Sleep (50)
a = i ^ 2 * X ^ 2
b = X ^ 2 + Y ^ 2
d = Sqr(a / b)
e = Sqr(i ^ 2 - d ^ 2)

x1 = Round(tx + isrtx * d)
y1 = Round(ty + isrty * e)

WriteFloat ReadLong(KO_PTR_CHR) + &HC4, x1
WriteFloat ReadLong(KO_PTR_CHR) + &HCC, y1
WriteFloat ReadLong(KO_PTR_CHR) + &HC8, ReadFloat(ReadLong(KO_PTR_CHR) + &HC8)

Paket "06" _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HC4) * 10), 4) _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HCC) * 10), 4) _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HC8) * 10), 4) _
& "2D0003"
Else
Exit For
End If
Next
End Function
Public Sub TakipEt()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Then Exit Sub
SpeedHack2 ReadFloat(OkuCharBase(PartyCharID2(1)) + KO_OFF_X), ReadFloat(OkuCharBase(PartyCharID2(1)) + KO_OFF_Y)
End Sub
Public Sub Z�rhRpr(NPCID As String)
Paket "3B01" + "01" + NPCID + OtherID(1) 'helmet
Paket "3B01" + "04" + NPCID + OtherID(4) 'pauldron
Paket "3B01" + "0A" + NPCID + OtherID(10) 'pads
Paket "3B01" + "0C" + NPCID + OtherID(12) 'gaunlets
Paket "3B01" + "0D" + NPCID + OtherID(13) 'boots
End Sub


Public Function OpenBrowser(ByVal URL As String) As Boolean
    Dim res As Long
    
    '  http:// veya https:// ile
    If InStr(1, URL, "http", vbTextCompare) <> 1 Then
        URL = "http://" & URL
    End If
    
    res = ShellExecute(0&, "open", URL, vbNullString, vbNullString, _
        vbNormalFocus)
    OpenBrowser = (res > 32)
End Function
Public Sub OyunKapa()
TerminateProcess KO_HANDLE, 0&
End Sub
Public Sub Start()
Dim ShellExAddress As Long
OpenKO (Form3.Text1.Text)
Sleep (500)
Timer1.Enabled = True
While Wname <> "Knight OnLine Client"
      Wname = ReadSTR(&HA69180)
Wend
WriteString &HA69180, Form3.txClient.Text & Chr(0)
ShellExAddress = GetProcAddress(GetModuleHandle("Shell32.dll"), "ShellExecuteA")
InjectPatch ShellExAddress, "B800000000C20800"
End Sub
Function InvKontrol(ItemID) As Boolean
GetInventory
For i = 0 To 27
If ItemIDsi(i) = ItemID Then
InvKontrol = True
Exit Function
End If
Next
InvKontrol = False
End Function
Public Function GetInventory()
On Error Resume Next
      Dim tmpBase As Long, tmpLng1 As Long, tmpLng2 As Long, tmpLng3 As Long, tmpLng4 As Long
      Dim lngItemID As Long, lngItemID_Ext As Long, lngItemNameLen As Long, AdrItemName As Long
      Dim ItemNameB() As Byte
      Dim ItemName As String
      Dim lngkactane As Long
      Dim i As Integer
          tmpBase = ReadLong(KO_PTR_DLG)
          tmpLng1 = ReadLong(tmpBase + &H1A0)
For i = 0 To 41
          tmpLng2 = ReadLong(tmpLng1 + (372 + (4 * i)))
          tmpLng3 = ReadLong(tmpLng2 + &H38)
          lngkactane = ReadLong(tmpLng2 + &H40)
             tmpLng4 = ReadLong(tmpLng2 + &H3C)
          lngItemID = ReadLong(tmpLng3)
          lngItemID_Ext = ReadLong(tmpLng4)
          lngItemID = lngItemID + lngItemID_Ext
          lngItemNameLen = ReadLong(tmpLng3 + &H10)
          AdrItemName = ReadLong(tmpLng3 + &HC)
           ItemName = vbNullString
          If lngItemNameLen > 0 Then
             WriteByteArray AdrItemName, ItemNameB, lngItemNameLen
              ItemName = StrConv(ItemNameB, vbUnicode)
         End If
        If i >= 14 Then
        ItemIDsi(i - 14) = AlignDWORD(lngItemID)
        ItemAdi(i - 14) = ItemName
        ItemSayisi(i - 14) = lngkactane
        End If
              Next i
End Function
Function PotBas(SkillID As Long)
Dim skillID2 As String
skillID2 = Strings.Mid(AlignDWORD(SkillID), 1, 6)
Paket "3103" + skillID2 + "00" + CharID + CharID + "0000000000000000000000000000"
End Function
Function Y�zdeAl(Sayi As Long, Y�zde As Long)
Y�zdeAl = Sayi * Y�zde / 100
End Function
Function TarihKontrol(Tarih As Date) As String
TarihKontrol = DateDiff("s", Tarih, Now)
End Function
Function DefansBas(SkillID As String)
Paket "3103" + Strings.Mid(AlignDWORD(c.class & SkillID), 1, 6) + "00" + CharID + CharID + "0000000000000000000000000000"
End Function

Public Function SpeedKos1(crx As Single, cry As Single)
On Error Resume Next
Dim zipla, X, Y, uzak, a, b, d, e, i, isrtx, isrty
Dim tx As Single, ty As Single
Dim x1 As Single, y1 As Single
zipla = 5
tx = ReadFloat(ReadLong(KO_PTR_CHR) + &HC4)
ty = ReadFloat(ReadLong(KO_PTR_CHR) + &HCC)

X = Abs(crx - tx)
Y = Abs(cry - ty)
If tx > crx Then isrtx = -1 Else isrtx = 1
If ty > cry Then isrty = -1 Else isrty = 1
uzak = Int(Sqr((X ^ 2 + Y ^ 2)))
For i = zipla To uzak Step zipla
If MOBID = "FFFF" Then
Sleep (50)
a = i ^ 2 * X ^ 2
b = X ^ 2 + Y ^ 2
d = Sqr(a / b)
e = Sqr(i ^ 2 - d ^ 2)

x1 = Round(tx + isrtx * d)
y1 = Round(ty + isrty * e)

WriteFloat ReadLong(KO_PTR_CHR) + &HC4, x1
WriteFloat ReadLong(KO_PTR_CHR) + &HCC, y1
WriteFloat ReadLong(KO_PTR_CHR) + &HC8, ReadFloat(ReadLong(KO_PTR_CHR) + &HC8)

Paket "06" _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HC4) * 10), 4) _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HCC) * 10), 4) _
& HexFormatla(Hex(ReadFloat(ReadLong(KO_PTR_CHR) + &HC8) * 10), 4) _
& "2D0003"
Else
Exit For
End If
Next
End Function
Public Sub getCooldown_fixer(val As Long)
step1 = SkillBase(c.class & "705")
WriteLong (step1 + &H8C), val
End Sub

