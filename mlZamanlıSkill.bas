Attribute VB_Name = "mlZamanlýSkill"
Public Healskillseç1 As String
Public HealskillseçParty As String
Public DefansMod As String, DefansSn(0 To 2) As Long, defansSýra As Integer, DefansSn2 As Long, SkZamanLýSn(0 To 20) As Long, PartyKiþiÇekildi(1 To 8) As Boolean
Public Sub MinorKullan(Skill As String)
Paket "3103" & HexFormatla(Hex((c.class & Skill)), 6) & "00" & CharID & CharID & "0000000000000000000000000000"
End Sub
Public Sub CharSkillKullan(Skill As String)
Paket "3101" & HexFormatla(Hex((c.class & Skill)), 6) & "00" & CharID & CharID & "0000000000000000000000000F00"
Paket "3103" & HexFormatla(Hex((c.class & Skill)), 6) & "00" & CharID & CharID & "000000000000000000000000"
End Sub
Public Sub ZamanlýSkillKontrol()
If RPRYapýlýyor = True Or ItemSatýnAlýnýyor = True Or ItemBankadanAlýnýyor = True Or ItemSatýlýyor = True Then Exit Sub
If CharIþýnlanýyor = False Then
Dim skL As Long, ls As ListBox
skL = c.class
Set ls = Form2.LstUseSkill
With Form1.lst(1)
'hepsi Meat Dumpling
If .List(.ListCount - 1) = "Meat Dumpling(Soðan)" And .Selected(.ListCount - 1) = True And ListeKontrol(ls, "490141") = False And SkZamanLýSn(i) = 0 Then
If ListeKontrol(Form2.LstInventory, "Meat Dumpling") = False And NPCAçýk = False Then
HataYaz "Çantanýzda hiç 'Meat Dumpling' Yok(Oto Meat(soðan) Devredýþý)"
Else
HataSil "Çantanýzda hiç 'Meat Dumpling' Yok(Oto Meat(soðan) Devredýþý)"
Paket "3103" & HexFormatla(Hex("490141"), 6) & "00" & CharID & CharID & "0000000000000000000000000000"
 Bekle (80)
SkZamanLýSn(i) = 4
End If
End If

ls.Clear
Dim j As Integer: For j = 1 To OkuBasýlanSkillSayýsý
ls.AddItem OkuBasýlanSkill(j)
Next
Select Case ClassAdý


Case "Warior" ' _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-*Warior_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
For i = 0 To .ListCount - 1 'gain
If .List(i) = "Gain" And .Selected(i) = True And ListeKontrol(ls, skL & "705") = False And SkZamanLýSn(i) = 0 Then
Paket "3103" & HexFormatla(Hex((c.class & "705")), 6) & "00" & CharID & CharID & "0000000000000000000000000000"
 SkZamanLýSn(i) = 3
End If
'defenseee
If .List(i) = "Defense" And .Selected(i) = True And ListeKontrol(ls, skL & "007") = False And SkZamanLýSn(i) = 0 Then
Paket "3103" & HexFormatla(Hex((c.class & "007")), 6) & "00" & CharID & CharID & "0000000000000000000000000000"
 SkZamanLýSn(i) = 3
End If
'sprint
If .List(i) = "Sprint" And .Selected(i) = True And ListeKontrol(ls, skL & "002") = False And SkZamanLýSn(i) = 0 Then
 Paket "3103" & HexFormatla(Hex((c.class & "002")), 6) & "00" & CharID & CharID & "0000000000000000000000000000"
 SkZamanLýSn(i) = 3
End If
Next



Case "Rogue" ' _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-*Rogue_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
For i = 0 To .ListCount - 1
'swifft
If .List(i) = "Swift" And .Selected(i) = True And ListeKontrol(ls, skL & "010") = False And SkZamanLýSn(i) = 0 Then
 CharSkillKullan "010"
 SkZamanLýSn(i) = 3
End If

'wolf

If .List(i) = "Strength of Wolf" And .Selected(i) = True And ListeKontrol(ls, skL & "030") = False And SkZamanLýSn(i) = 0 Then
If ListeKontrol(Form2.LstInventory, "Blood of wolf") = False And NPCAçýk = False Then
HataYaz "Çantanýzda hiç 'Blood of Wolf ' Yok(Oto Wolf Devredýþý)"
Else
HataSil "Çantanýzda hiç 'Blood of Wolf ' Yok(Oto Wolf Devredýþý)"
Paket "3101" & AlignDWORD(CLng(skL & "030")) & CharID & "FFFF" & Left$(AlignDWORD(CLng(Fix(c.kX))), 4) & Left$(AlignDWORD(CLng(Fix(c.kZ))), 4) & Left$(AlignDWORD(CLng(Fix(c.kY))), 4) & "0000000000001100"
Bekle (2)
Paket "3103" & AlignDWORD(CLng(skL & "030")) & CharID & "FFFF" & Left$(AlignDWORD(CLng(Fix(c.kX))), 4) & Left$(AlignDWORD(CLng(Fix(c.kZ))), 4) & Left$(AlignDWORD(CLng(Fix(c.kY))), 4) & "000000000000"
 Bekle (500)
 SkZamanLýSn(i) = 3
 End If
End If

'dEfansLarrr
ls.Clear
For j = 1 To OkuBasýlanSkillSayýsý
ls.AddItem OkuBasýlanSkill(j)
Next
DefansSkilleriKullan

'Lupine
If .List(i) = "Lupine Eyes" And .Selected(i) = True And ListeKontrol(ls, skL & "735") = False And SkZamanLýSn(i) = 0 Then
Paket "3101" & HexFormatla(Hex((c.class & "735")), 6) & "00" & CharID & CharID & "0000000000000000000000001400"
Paket "3103" & HexFormatla(Hex((c.class & "735")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 Bekle (500)
 SkZamanLýSn(i) = 3
End If
'Magic
If .List(i) = "Magic Shield" And .Selected(i) = True And ListeKontrol(ls, skL & "802") = False And SkZamanLýSn(i) = 0 Then
If ListeKontrol(Form2.LstInventory, "Stone of Rogue") = False Or ListeKontrol(Form2.LstInventory, "Magic Shield Scroll") = False And NPCAçýk = False Then
HataYaz "Çantanýzda hiç '" & IIf(ListeKontrol(Form2.LstInventory, "Stone of Rogue") = False And NPCAçýk = False, "Stone of Rogue", "Magic Shield Scroll") & "' Yok(Oto Magic Shield Devredýþý)"
Else
HataSil "Çantanýzda hiç 'Stone of Rogue' Yok(Oto Magic Shield Devredýþý)"
HataSil "Çantanýzda hiç 'Magic Shield Scroll' Yok(Oto Magic Shield Devredýþý)"
Paket "3101" & HexFormatla(Hex((c.class & "802")), 6) & "00" & CharID & CharID & "0000000000000000000000000A00"
Paket "3103" & HexFormatla(Hex((c.class & "802")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 Bekle (500)
 SkZamanLýSn(i) = 60
 End If
End If
'light feet
If .List(i) = "Light Feet" And .Selected(i) = True And ListeKontrol(ls, skL & "725") = False And SkZamanLýSn(i) = 0 Then
Paket "3103" & HexFormatla(Hex((c.class & "725")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 SkZamanLýSn(i) = 3
End If

'cure curse
If .List(i) = "Cure Curse" And .Selected(i) = True And SkZamanLýSn(i) = 0 And DebuffKontrol = True Then
If ListeKontrol(Form2.LstInventory, "Blessing Potion") = False And NPCAçýk = False Then
HataYaz "Çantanýzda hiç 'Blessing Potion' Yok(Oto Cure Devredýþý)"
Else
HataSil "Çantanýzda hiç 'Blessing Potion' Yok(Oto Cure Devredýþý)"
End If
Paket "3103" & HexFormatla(Hex((c.class & "736")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 Bekle (500)
 SkZamanLýSn(i) = 3
End If

If .List(i) = "Cure Disease" And .Selected(i) = True And SkZamanLýSn(i) = 0 And DebuffKontrol = True Then
If ListeKontrol(Form2.LstInventory, "Cure Potion") = False And NPCAçýk = False Then
HataYaz "Çantanýzda hiç 'Cure Potion' Yok(Oto Cure Devredýþý)"
Else
HataSil "Çantanýzda hiç 'Cure Potion' Yok(Oto Cure Devredýþý)"
Paket "3103" & HexFormatla(Hex((c.class & "748")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 Bekle (500)
 SkZamanLýSn(i) = 3
End If
End If
Next

Case "Mage" ' _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-*Mage_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
For i = 0 To .ListCount - 1
If .List(i) = "Resist Fire" And .Selected(i) = True And SkZamanLýSn(i) = 0 And ListeKontrol(ls, skL & "506") = False Then
Paket "3101" & HexFormatla(Hex((c.class & "506")), 6) & "00" & CharID & CharID & "0000000000000000000000000F00"
Paket "3103" & HexFormatla(Hex((c.class & "506")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 SkZamanLýSn(i) = 3
End If
If .List(i) = "Endure Fire" And .Selected(i) = True And SkZamanLýSn(i) = 0 And ListeKontrol(ls, skL & "524") = False Then
Paket "3101" & HexFormatla(Hex((c.class & "524")), 6) & "00" & CharID & CharID & "0000000000000000000000000F00"
Paket "3103" & HexFormatla(Hex((c.class & "524")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 SkZamanLýSn(i) = 3
End If

If .List(i) = "Immunity to Fire" And .Selected(i) = True And SkZamanLýSn(i) = 0 And ListeKontrol(ls, skL & "548") = False Then
Paket "3101" & HexFormatla(Hex((c.class & "548")), 6) & "00" & CharID & CharID & "0000000000000000000000000F00"
Paket "3103" & HexFormatla(Hex((c.class & "548")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 SkZamanLýSn(i) = 3
End If
If .List(i) = "Resist Cold" And .Selected(i) = True And SkZamanLýSn(i) = 0 And ListeKontrol(ls, skL & "606") = False Then
Paket "3101" & HexFormatla(Hex((c.class & "606")), 6) & "00" & CharID & CharID & "0000000000000000000000000F00"
Paket "3103" & HexFormatla(Hex((c.class & "606")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 SkZamanLýSn(i) = 3
End If
If .List(i) = "Endure Cold" And .Selected(i) = True And SkZamanLýSn(i) = 0 And ListeKontrol(ls, skL & "624") = False Then
Paket "3101" & HexFormatla(Hex((c.class & "624")), 6) & "00" & CharID & CharID & "0000000000000000000000000F00"
Paket "3103" & HexFormatla(Hex((c.class & "624")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 SkZamanLýSn(i) = 3
End If
If .List(i) = "Immunity to Cold" And .Selected(i) = True And SkZamanLýSn(i) = 0 And ListeKontrol(ls, skL & "648") = False Then
Paket "3101" & HexFormatla(Hex((c.class & "648")), 6) & "00" & CharID & CharID & "0000000000000000000000000F00"
Paket "3103" & HexFormatla(Hex((c.class & "648")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 SkZamanLýSn(i) = 3
End If
If .List(i) = "Resist Lightning" And .Selected(i) = True And SkZamanLýSn(i) = 0 And ListeKontrol(ls, skL & "706") = False Then
Paket "3101" & HexFormatla(Hex((c.class & "706")), 6) & "00" & CharID & CharID & "0000000000000000000000000F00"
Paket "3103" & HexFormatla(Hex((c.class & "706")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 SkZamanLýSn(i) = 3
End If
If .List(i) = "Endure Lightning" And .Selected(i) = True And SkZamanLýSn(i) = 0 And ListeKontrol(ls, skL & "724") = False Then
Paket "3101" & HexFormatla(Hex((c.class & "724")), 6) & "00" & CharID & CharID & "0000000000000000000000000F00"
Paket "3103" & HexFormatla(Hex((c.class & "724")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 SkZamanLýSn(i) = 3
End If
If .List(i) = "Immunity to Lightning" And .Selected(i) = True And SkZamanLýSn(i) = 0 And ListeKontrol(ls, skL & "748") = False Then
Paket "3101" & HexFormatla(Hex((c.class & "748")), 6) & "00" & CharID & CharID & "0000000000000000000000000F00"
Paket "3103" & HexFormatla(Hex((c.class & "748")), 6) & "00" & CharID & CharID & "000000000000000000000000"
 SkZamanLýSn(i) = 3
End If
Next
Case "Priest"
If Form1.ch(69) = 1 Then
'hepsi Meat Dumpling
If ListeKontrol(Form2.LstUseSkill, "490141") = False And SkZamanLýSn(i) = 0 Then
If ListeKontrol(Form2.LstInventory, "Meat Dumpling") = False And NPCAçýk = False Then
HataYaz "Çantanýzda hiç 'Meat Dumpling' Yok(Oto Meat(soðan) Devredýþý)"
Else
HataSil "Çantanýzda hiç 'Meat Dumpling' Yok(Oto Meat(soðan) Devredýþý)"
Paket "3103" & HexFormatla(Hex("490141"), 6) & "00" & CharID & CharID & "0000000000000000000000000000"
SkZamanLýSn(i) = 4
End If
End If
End If
End Select
End With
End If
End Sub

Public Sub DefansSkilleriKullan()
DefansMod = ""
For i = 0 To (Form1.lst(1).ListCount - 1)
With Form1.lst(1)
If .List(i) = "Evade" And .Selected(i) = True And DefansMod <> "E" Then DefansMod = DefansMod & "E"
If .List(i) = "Safety" And .Selected(i) = True Then DefansMod = DefansMod & "S"
If .List(i) = "Scaled Skin" And .Selected(i) = True Then DefansMod = DefansMod & "C"
End With
Next
If DefansMod <> "" Then
Form2.LstUseSkill.Clear
Dim j As Integer: For j = 1 To OkuBasýlanSkillSayýsý
Form2.LstUseSkill.AddItem OkuBasýlanSkill(j)
Next
For i = 0 To Form2.LstUseSkill.ListCount - 1
If Mid(Form2.LstUseSkill.List(i), 4, 3) = "603" Or Mid(Form2.LstUseSkill.List(i), 4, 3) = "612" Or Mid(Form2.LstUseSkill.List(i), 4, 3) = "621" Or Mid(Form2.LstUseSkill.List(i), 4, 3) = "630" Or Mid(Form2.LstUseSkill.List(i), 4, 3) = "639" Or Mid(Form2.LstUseSkill.List(i), 4, 3) = "651" Or Mid(Form2.LstUseSkill.List(i), 4, 3) = "660" Or Mid(Form2.LstUseSkill.List(i), 4, 3) = "674" Then: HataYaz "Üstünüzde 'A.C'(defans) bulunmaktadýr(Oto defans devredýþý)": Exit Sub
Next
HataSil "Üstünüzde 'A.C'(defans) bulunmaktadýr(Oto defans devredýþý)"
End If
'//////////
If DefansMod = "E" And DefansKontrol = False Then
If DefansSn(0) = 0 Then DefansKullan "evade": DefansSn(0) = 42
End If
'//////////
If DefansMod = "S" And DefansKontrol = False Then
If DefansSn(1) = 0 Then DefansKullan "safety": DefansSn(1) = 42
End If
'//////////
If DefansMod = "C" And DefansKontrol = False Then
If DefansSn(2) = 0 Then DefansKullan "scaled": DefansSn(2) = 42
End If
'/////////////////// Multi ////////////////
'//////Evade , Safety ///////////
If DefansMod = "ES" And DefansKontrol = False Then

If defansSýra = 0 And DefansSn(0) = 0 And DefansSn2 = 0 Then DefansKullan "evade": defansSýra = 1: DefansSn(0) = 42: DefansSn2 = 11
If defansSýra = 1 And DefansSn(1) = 0 And DefansSn2 = 0 Then DefansKullan "safety": defansSýra = 0: DefansSn(1) = 42: DefansSn2 = 11
End If
'//////Safety , Scaled ///////////
If DefansMod = "SC" And DefansKontrol = False Then
If defansSýra = 0 And DefansSn(0) = 0 And DefansSn2 = 0 Then DefansKullan "safety": DefansSn(0) = 42: defansSýra = 1: DefansSn2 = 11
If defansSýra = 1 And DefansSn(1) = 0 And DefansSn2 = 0 Then DefansKullan "scaled": DefansSn(1) = 42: defansSýra = 0: DefansSn2 = 11
End If
'//////Evade , Scaled ///////////
If DefansMod = "EC" And DefansKontrol = False Then
If defansSýra = 0 And DefansSn(0) = 0 And DefansSn2 = 0 Then DefansKullan "evade": DefansSn(0) = 42: defansSýra = 1: DefansSn2 = 11
If defansSýra = 1 And DefansSn(1) = 0 And DefansSn2 = 0 Then DefansKullan "scaled": DefansSn(1) = 42: defansSýra = 0: DefansSn2 = 11
End If
'//////Evade , Safety , Scaled ///////////
If DefansMod = "ESC" And DefansKontrol = False Then
If defansSýra = 0 And DefansSn(0) = 0 And DefansSn2 = 0 Then DefansKullan "evade": DefansSn(0) = 42: defansSýra = 1: DefansSn2 = 11
If defansSýra = 1 And DefansSn(1) = 0 And DefansSn2 = 0 Then DefansKullan "safety": DefansSn(1) = 42: defansSýra = 2: DefansSn2 = 11
If defansSýra = 2 And DefansSn(2) = 0 And DefansSn2 = 0 Then DefansKullan "scaled": DefansSn(2) = 42: defansSýra = 0: DefansSn2 = 11
End If

'zor oldu ama oldu sanýrým xD
End Sub

Public Function DefansKontrol() As Boolean
With Form2.LstUseSkill
For i = 0 To (Form1.lst(1).ListCount - 1)
If .List(i) = c.class & "710" Then DefansKontrol = True:  Exit Function
Next

For i = 0 To (Form1.lst(1).ListCount - 1)
If .List(i) = c.class & "730" Then DefansKontrol = True:  Exit Function
Next

For i = 0 To (Form1.lst(1).ListCount - 1)
If .List(i) = c.class & "760" Then DefansKontrol = True:  Exit Function
Next
 DefansKontrol = False
 End With
End Function
Public Sub DefansKullan(dfs As String)
Dim skillNo As String
If dfs = "evade" Then skillNo = "710"
If dfs = "safety" Then skillNo = "730"
If dfs = "scaled" Then skillNo = "760"
Paket "3103" & HexFormatla(Hex((c.class & skillNo)), 6) & "00" & CharID & CharID & "0000000000000000000000000000"
End Sub

'—————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
'//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
'////////////////////////////////////////////////////// Party Skill //////////////////////////////////////////////////////////////
'////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
'_______________________________________________________________________________________________________________________________

'///////////Priest////////////////
Public Sub BuffKullan(uyesýra As Integer)
If uyesýra <= PartySayý Then
Dim skillNo As String
Select Case IIf(uyesýra = 0, Form1.cb(23).ListIndex, Form1.cb(23).ListIndex)
Case 0: skillNo = "606"
Case 1: skillNo = "615"
Case 2: skillNo = "624"
Case 3: skillNo = "633"
Case 4: skillNo = "642"
Case 5: skillNo = "654"
Case 6: skillNo = "655"
Case 7: skillNo = "657"
Case 8: skillNo = "670"
Case 9: skillNo = "675"
Case Else
Exit Sub
End Select
BuffNo = skillNo
Paket "3101" & BulSkillNO(skillNo) & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO(skillNo) & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "000000000000000000000000"
End If
End Sub

Public Sub ACKullan(uyesýra As Integer)
If uyesýra <= PartySayý Then
Dim skillNo As String
Select Case IIf(uyesýra = 0, Form1.cb(24).ListIndex, Form1.cb(24).ListIndex)
Case 0: skillNo = "603"
Case 1: skillNo = "612"
Case 2: skillNo = "621"
Case 3: skillNo = "630"
Case 4: skillNo = "639"
Case 5: skillNo = "651"
Case 6: skillNo = "660"
Case 7: skillNo = "674"
Case Else
Exit Sub
End Select
Paket "3101" & BulSkillNO(skillNo) & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO(skillNo) & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "000000000000000000000000"
End If
End Sub
Public Sub RestoreKullan(uyesýra As Integer)
If uyesýra <= PartySayý Then
Dim skillNo As String
Select Case Form1.cb(26).ListIndex
Case 0: skillNo = "503"
Case 1: skillNo = "512"
Case 2: skillNo = "521"
Case 3: skillNo = "530"
Case 4: skillNo = "539"
Case 5: skillNo = "548"
Case 6: skillNo = "570"
Case 7: skillNo = "580"
Case Else
Exit Sub
End Select
Paket "3101" & BulSkillNO(skillNo) & "00" & CharID & PartyCharID(uyesýra) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO(skillNo) & "00" & CharID & PartyCharID(uyesýra) & "000000000000000000000000"
End If
End Sub
Public Sub ResistKullan(uyesýra As Integer)
If uyesýra <= PartySayý Then
Dim skillNo As String
Select Case IIf(uyesýra = 0, Form1.cb(25).ListIndex, Form1.cb(25).ListIndex)
Case 0
skillNo = "609"
Case 1
skillNo = "627"
Case 2
skillNo = "636"
Case 3
skillNo = "645"
Case Else
Exit Sub
End Select
Paket "3101" & BulSkillNO(skillNo) & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO(skillNo) & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "000000000000000000000000"
End If
End Sub

Public Sub CureKullan(uyesýra As Integer, cins As Integer)
If uyesýra <= PartySayý Then
Dim skillNo As String
Select Case cins
Case 1
skillNo = "525"
Case 2
skillNo = "535"
Case Else
Exit Sub
End Select
Paket "3101" & BulSkillNO(skillNo) & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO(skillNo) & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "000000000000000000000000"
End If
End Sub

Public Sub StrKullan(uyesýra As Integer)
If uyesýra <= PartySayý Then
Paket "3101" & BulSkillNO("004") & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO("004") & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "000000000000000000000000"
End If
End Sub

Public Function OtoHealKullan(uyesýra As Integer) As Boolean
'Süper Kodlama ' akLLý  Heal  'Tarih: 09.01.2011
'———————————————————————————————————————————————
OtoHealKullan = False
Dim skillNo As String, HPFark As Long
skillNo = ""
HPFark = IIf(uyesýra = 0, (c.MaxHP - c.HP), (PartyMaxHP(uyesýra) - PartyHP(uyesýra)))
Select Case HPFark
Case Is > 960
If Heal(1920) = True Then skillNo = "545" Else skillNo = "536"
Case 720 To 960
If Heal(960) = True Then skillNo = "536" Else skillNo = "527"
Case 360 To 720
If Heal(720) = True Then skillNo = "527" Else skillNo = "518"
Case 240 To 360
If Heal(360) = True Then skillNo = "518" Else skillNo = "509"
Case 60 To 240
If Heal(240) = True Then skillNo = "509" Else skillNo = "500"
Case 30 To 60
If Heal(60) = True Then skillNo = "500" Else skillNo = "005"
Case 15 To 30
If Heal(30) = True Then skillNo = "005" Else skillNo = "002"
Case 3 To 15
If Heal(15) = True Then skillNo = "002" Else skillNo = "002"
Case Else
Exit Function
End Select


If HPFark > 0 And skillNo <> "" And PartyUyeMesafe(uyesýra) <= 13 And uyesýra <= PartySayý Then
If skillNo <> "005" Then
Paket "3101" & BulSkillNO(skillNo) & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "0000000000000000000000000F00"
Else
Paket "3101" & BulSkillNO(skillNo) & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "0000000000000000000000001300"
End If
Paket "3103" & BulSkillNO(skillNo) & "00" & CharID & IIf(uyesýra = 0, CharID, PartyCharID(uyesýra)) & "000000000000000000000000"
OtoHealKullan = True
End If
End Function
'///////////Rogue////////////////
Public Sub PartyMinorKontrol()
If Form1.ch(79) = 1 Then
Dim i As Integer
For i = 1 To PartySayý
If PartyHP(i) <= CInt((PartyMaxHP(i) * Form1.txt(36)) / 100) And PartyUyeMesafe(i) <= 13 Then
Paket "3103" & HexFormatla(Hex((c.class & "705")), 6) & "00" & CharID & PartyCharID(i) & "0000000000000000000000000000"
Bekle (50)
End If
Next
End If
End Sub
Public Sub PartySwiftKontrol()
Dim i As Integer
If Form1.ch(75) = 1 Then
For i = 1 To PartySayý
If Form1.ch(76) = 1 Then
If PartySýnýfAdý(i) <> "Rogue" Then
If PartyHP(i) > 0 Then Paket "3101" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(i) & "0000000000000000000000000F00"
If PartyHP(i) > 0 Then Paket "3103" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(i) & "000000000000000000000000"
Bekle (300)
End If
Else
If PartyHP(i) > 0 Then Paket "3101" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(i) & "0000000000000000000000000F00"
If PartyHP(i) > 0 Then Paket "3103" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(i) & "000000000000000000000000"
Bekle (100)
End If
Next
End If
End Sub
Public Sub PartySwiftKontrol2(uyesýra As Integer)
If Form1.ch(75) = 1 Then
If Form1.ch(76) = 1 Then
If PartySýnýfAdý(uyesýra) <> "Rogue" Then
If PartyHP(uyesýra) > 0 Then Paket "3101" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(uyesýra) & "0000000000000000000000000F00"
If PartyHP(uyesýra) > 0 Then Paket "3103" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(uyesýra) & "000000000000000000000000"
Bekle (300)
End If
Else
If PartyHP(uyesýra) > 0 Then Paket "3101" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(uyesýra) & "0000000000000000000000000F00"
If PartyHP(uyesýra) > 0 Then Paket "3103" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(uyesýra) & "000000000000000000000000"
Bekle (300)
End If
End If
End Sub
'///////////Mage////////////////
Public Sub MageÇekHPyeGöre()
If Form1.ch(20) = 1 Then
For i = 1 To PartySayý
If PartyHP(i) <= CInt((PartyMaxHP(i) * Form1.txt(5)) / 100) Then
Paket "3101" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(i) & "0000000000000000000000000F00"
Bekle (1)
Paket "3103" & HexFormatla(Hex((c.class & "010")), 6) & "00" & CharID & PartyCharID(i) & "000000000000000000000000"
PartyKiþiÇekildi(i) = True
End If
Next
End If
End Sub
Sub CooldownFixle() '207
Dim base As Long
base = SkillBase(GetClass & "705")
WriteLong (base + &H8C), 0
End Sub
Function GetClass()
Dim base As Long
base = ReadLong(KO_PTR_CHR)
GetClass = ReadLong(base + KO_OFF_CLASS)
End Function
Function SkillBase(ByVal SkillID As Long) As Long
''11 Tane Çýkan JNZ SHORT _KnightO. ordaki EBP+D58 'in 4 Sýra Altý
'Thyke ...
' Faruk Eyw :D
  Dim MemAdy As Long
  Dim MevcutOffset As Long
  Dim tmpBase As Long
  Dim MevcutPointer As Long
  Dim MevcutID As Long
  MemAdy = ReadLong(&HC28BC8)
  MevcutAddress = ReadLong(MemAdy + &H18)
  MevcutPointer = ReadLong(MevcutAddress + &H4)
  While (MevcutPointer <> 0)
  MevcutID = ReadLong(MevcutPointer + &HC)
  If (MevcutID >= SkillID) Then
  If (MevcutID = SkillID) Then
  tmpBase = MevcutPointer
  End If
  MevcutPointer = ReadLong(MevcutPointer)
  Else
  MevcutPointer = ReadLong(MevcutPointer + &H8)
  End If
  Wend
  SkillBase = tmpBase
End Function
Public Function HealSkillSeçParty1(ByVal Distance As Long) As String
   
   
        Select Case Distance
            Case 1 To 15
                HealSkillSeçParty1 = "002"
                Exit Function
            Case 0 To 30
                If GetCharLevel() >= 5 Then
                    HealSkillSeçParty1 = "005"
                Else
                    HealSkillSeçParty1 = "002"
                End If
                Exit Function
            Case 0 To 60
                If GetCharLevel() < 10 Then
                    If GetCharLevel() >= 5 Then
                        HealSkillSeçParty1 = "005"
                    Else
                        HealSkillSeçParty1 = "002"
                    End If
                Else
                    HealSkillSeçParty1 = "500"
                End If
                Exit Function
            Case 0 To 240
                If Skills1 >= 9 Then
                    HealSkillSeçParty1 = "509"
                Else
                    If GetCharLevel() >= 10 Then
                        HealSkillSeçParty1 = "500"
                    Else
                        If GetCharLevel() >= 5 Then
                            HealSkillSeçParty1 = "005"
                        Else
                            HealSkillSeçParty1 = "002"
                        End If
                    End If
                End If
                Exit Function
            Case 0 To 360
                If Skills1 >= 18 Then
                    HealSkillSeçParty1 = "518"
                Else
                    If Skills1 >= 9 Then
                        HealSkillSeçParty1 = "509"
                    Else
                        If GetCharLevel() >= 10 Then
                            HealSkillSeçParty1 = "500"
                        Else
                            If GetCharLevel() >= 5 Then
                                HealSkillSeçParty1 = "005"
                            Else
                                HealSkillSeçParty1 = "002"
                            End If
                        End If
                    End If
                End If
                Exit Function
            Case 0 To 720
                If Skills1 >= 27 Then
                    HealSkillSeçParty1 = "527"
                Else
                    If Skills1 >= 18 Then
                        HealSkillSeçParty1 = "518"
                    ElseIf Skills1 >= 9 Then
                        HealSkillSeçParty1 = "509"
                    ElseIf GetCharLevel() >= 10 Then
                        HealSkillSeçParty1 = "500"
                    ElseIf GetCharLevel() >= 5 Then
                        HealSkillSeçParty1 = "005"
                    Else
                        HealSkillSeçParty1 = "002"
                    End If
                End If
                Exit Function
            Case 0 To 960
                If Skills1 >= 36 Then
                    HealSkillSeçParty1 = "536"
                ElseIf Skills1 >= 27 Then
                    HealSkillSeçParty1 = "527"
                ElseIf Skills1 >= 18 Then
                    HealSkillSeçParty1 = "518"
                ElseIf Skills1 >= 9 Then
                    HealSkillSeçParty1 = "509"
                ElseIf GetCharLevel() >= 10 Then
                    HealSkillSeçParty1 = "500"
                ElseIf GetCharLevel() >= 5 Then
                    HealSkillSeçParty1 = "005"
                Else
                    HealSkillSeçParty1 = "002"
                End If
                Exit Function
            Case 0 To 1920
                If Skills1 >= 45 Then
                    HealSkillSeçParty1 = "545"
                ElseIf Skills1 >= 36 Then
                    HealSkillSeçParty1 = "536"
                ElseIf Skills1 >= 27 Then
                    HealSkillSeçParty1 = "527"
                ElseIf Skills1 >= 18 Then
                    HealSkillSeçParty1 = "518"
                ElseIf Skills1 >= 9 Then
                    HealSkillSeçParty1 = "509"
                ElseIf GetCharLevel() >= 10 Then
                    HealSkillSeçParty1 = "500"
                ElseIf GetCharLevel() >= 5 Then
                    HealSkillSeçParty1 = "005"
                Else
                    HealSkillSeçParty1 = "002"
                End If
                Exit Function
            Case 0 To 20000
                If Skills1 >= 54 Then
                    HealSkillSeçParty1 = "554"
                ElseIf Skills1 >= 45 Then
                    HealSkillSeçParty1 = "545"
                ElseIf Skills1 >= 36 Then
                    HealSkillSeçParty1 = "536"
                ElseIf Skills1 >= 27 Then
                    HealSkillSeçParty1 = "527"
                ElseIf Skills1 >= 18 Then
                    HealSkillSeçParty1 = "518"
                ElseIf Skills1 >= 9 Then
                    HealSkillSeçParty1 = "509"
                ElseIf GetCharLevel() >= 10 Then
                    HealSkillSeçParty1 = "500"
                ElseIf GetCharLevel() >= 5 Then
                    HealSkillSeçParty1 = "005"
                Else
                    HealSkillSeçParty1 = "002"
                End If
                Exit Function
        End Select
        HealSkillSeçParty1 = "002"
    End Function
    Public Function HealSkillSeç12(ByVal Distance As Long) As String
   
   
        Select Case Distance
            Case 1 To 15
                HealSkillSeç12 = "002"
                Exit Function
            Case 0 To 30
                If GetCharLevel() >= 5 Then
                    HealSkillSeç12 = "005"
                Else
                    HealSkillSeç12 = "002"
                End If
                Exit Function
            Case 0 To 60
                If GetCharLevel() < 10 Then
                    If GetCharLevel() >= 5 Then
                        HealSkillSeç12 = "005"
                    Else
                        HealSkillSeç12 = "002"
                    End If
                Else
                    HealSkillSeç12 = "500"
                End If
                Exit Function
            Case 0 To 240
                If Skills1 >= 9 Then
                    HealSkillSeç12 = "509"
                Else
                    If GetCharLevel() >= 10 Then
                        HealSkillSeç12 = "500"
                    Else
                        If GetCharLevel() >= 5 Then
                            HealSkillSeç12 = "005"
                        Else
                            HealSkillSeç12 = "002"
                        End If
                    End If
                End If
                Exit Function
            Case 0 To 360
                If Skills1 >= 18 Then
                    HealSkillSeç12 = "518"
                Else
                    If Skills1 >= 9 Then
                        HealSkillSeç12 = "509"
                    Else
                        If GetCharLevel() >= 10 Then
                            HealSkillSeç12 = "500"
                        Else
                            If GetCharLevel() >= 5 Then
                                HealSkillSeç12 = "005"
                            Else
                                HealSkillSeç12 = "002"
                            End If
                        End If
                    End If
                End If
                Exit Function
            Case 0 To 720
                If Skills1 >= 27 Then
                    HealSkillSeç12 = "527"
                Else
                    If Skills1 >= 18 Then
                        HealSkillSeç12 = "518"
                    ElseIf Skills1 >= 9 Then
                        HealSkillSeç12 = "509"
                    ElseIf GetCharLevel() >= 10 Then
                        HealSkillSeç12 = "500"
                    ElseIf GetCharLevel() >= 5 Then
                        HealSkillSeç12 = "005"
                    Else
                        HealSkillSeç12 = "002"
                    End If
                End If
                Exit Function
            Case 0 To 960
                If Skills1 >= 36 Then
                    HealSkillSeç12 = "536"
                ElseIf Skills1 >= 27 Then
                    HealSkillSeç12 = "527"
                ElseIf Skills1 >= 18 Then
                    HealSkillSeç12 = "518"
                ElseIf Skills1 >= 9 Then
                    HealSkillSeç12 = "509"
                ElseIf GetCharLevel() >= 10 Then
                    HealSkillSeç12 = "500"
                ElseIf GetCharLevel() >= 5 Then
                    HealSkillSeç12 = "005"
                Else
                    HealSkillSeç12 = "002"
                End If
                Exit Function
            Case 0 To 1920
                If Skills1 >= 45 Then
                    HealSkillSeç12 = "545"
                ElseIf Skills1 >= 36 Then
                    HealSkillSeç12 = "536"
                ElseIf Skills1 >= 27 Then
                    HealSkillSeç12 = "527"
                ElseIf Skills1 >= 18 Then
                    HealSkillSeç12 = "518"
                ElseIf Skills1 >= 9 Then
                    HealSkillSeç12 = "509"
                ElseIf GetCharLevel() >= 10 Then
                    HealSkillSeç12 = "500"
                ElseIf GetCharLevel() >= 5 Then
                    HealSkillSeç12 = "005"
                Else
                    HealSkillSeç12 = "002"
                End If
                Exit Function
            Case 0 To 20000
                If Skills1 >= 54 Then
                    HealSkillSeç12 = "554"
                ElseIf Skills1 >= 45 Then
                    HealSkillSeç12 = "545"
                ElseIf Skills1 >= 36 Then
                    HealSkillSeç12 = "536"
                ElseIf Skills1 >= 27 Then
                    HealSkillSeç12 = "527"
                ElseIf Skills1 >= 18 Then
                    HealSkillSeç12 = "518"
                ElseIf Skills1 >= 9 Then
                    HealSkillSeç12 = "509"
                ElseIf GetCharLevel() >= 10 Then
                    HealSkillSeç12 = "500"
                ElseIf GetCharLevel() >= 5 Then
                    HealSkillSeç12 = "005"
                Else
                    HealSkillSeç12 = "002"
                End If
                Exit Function
        End Select
        HealSkillSeç12 = "002"
    End Function
    Function GetCharLevel() As Integer
        GetCharLevel = ReadLong(ReadLong(KO_PTR_CHR) + &H5EC)
    End Function

Function SkillsAna()
SkillsAna = ReadLong((ReadLong(KO_PTR_CHR) + 1516))
End Function
Function Skills1()
Skills1 = ReadLong((ReadLong((ReadLong(KO_PTR_DLG) + 464)) + 300))
End Function
Function Skills2()
Skills2 = ReadLong((ReadLong((ReadLong(KO_PTR_DLG) + 464)) + 304))
End Function
Function Skills3()
Skills3 = ReadLong((ReadLong((ReadLong(KO_PTR_DLG) + 464)) + 308))
End Function
Function SkillsMaster()
SkillsMaster = ReadLong((ReadLong((ReadLong(KO_PTR_DLG) + 464)) + 312))
End Function
Public Sub Heallkendines()
If RPRYapýlýyor = True Or ItemSatýnAlýnýyor = True Or ItemBankadanAlýnýyor = True Or ItemSatýlýyor = True Then Exit Sub
HealSkillSeç12 (c.MaxHP - c.HP)
Healskillseç1 = HealSkillSeç12(c.MaxHP - c.HP)
If c.HP < ((c.MaxHP * Form1.txt(60).Text) / 100) Then
HealSkills
End If
End Sub

Public Sub PartyHeal()
If RPRYapýlýyor = True Or ItemSatýnAlýnýyor = True Or ItemBankadanAlýnýyor = True Or ItemSatýlýyor = True Then Exit Sub
Dim n
For n = 0 To PartySayý
If PartyHP(n) < ((PartyMaxHP(n) * Form1.txt(33).Text) / 100) Then
HealSkillSeçParty1 (PartyMaxHP(n) - PartyHP(n))
HealskillseçParty = HealSkillSeçParty1(PartyMaxHP(n) - PartyHP(n))
HealSkill (PartyCharID(n))
End If
Next
    End Sub
Sub HealSkill(ByVal UyeID As String)
Paket ("3101" & Strings.Mid(AlignDWORD(c.class & HealskillseçParty), 1, 6) & "00" & CharID & UyeID & "0000000000000000000000000F00")
Paket ("3103" & Strings.Mid(AlignDWORD(c.class & HealskillseçParty), 1, 6) & "00" & CharID & UyeID & "000000000000000000000000")
End Sub
Public Sub HealSkills()
Paket "3101" + Strings.Mid(AlignDWORD(c.class & Healskillseç1), 1, 6) + "00" + CharID + CharID + "0000000000000000000000000F00"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & Healskillseç1), 1, 6) + "00" + CharID + CharID + "000000000000000000000000"
End Sub
Public Sub PriZaman()
Form1.lst(1).AddItem "Strength"
Form1.lst(1).AddItem "Prayer of god's power"
Form1.lst(1).AddItem "Blasting"
Form1.lst(1).AddItem "Wildness"
Form1.lst(1).AddItem "Eruption"
End Sub
Public Sub Strength()
If SkillBasýlýmý(c.class & "004") = False And SkillBasýlýmý(c.class & "529") = False And SkillBasýlýmý(c.class & "629") = False And SkillBasýlýmý(c.class & "729") = False Then
 Paket "3101" + Strings.Mid(AlignDWORD(ClassOku & "004"), 1, 6) + "00" + CharID + CharID + "0000000000000000000000000F00"
Paket "3103" + Strings.Mid(AlignDWORD(ClassOku & "004"), 1, 6) + "00" + CharID + CharID + "0000000000000000000000000000"
End If
End Sub

Public Sub Blasting()
If SkillBasýlýmý(c.class & "004") = False And SkillBasýlýmý(c.class & "529") = False And SkillBasýlýmý(c.class & "629") = False And SkillBasýlýmý(c.class & "729") = False Then
Paket ("3103" + Strings.Mid(AlignDWORD(ClassOku & "529"), 1, 6) + "00" + CharID + CharID + "000000000000000000000000")
End If
End Sub

Public Sub Wildness()
If SkillBasýlýmý(c.class & "004") = False And SkillBasýlýmý(c.class & "529") = False And SkillBasýlýmý(c.class & "629") = False And SkillBasýlýmý(c.class & "729") = False Then
Paket ("3103" + Strings.Mid(AlignDWORD(ClassOku & "629"), 1, 6) + "00" + KarakterID + CharID + "000000000000000000000000")
End If
End Sub

Public Sub Eruption()
If SkillBasýlýmý(c.class & "004") = False And SkillBasýlýmý(c.class & "529") = False And SkillBasýlýmý(c.class & "629") = False And SkillBasýlýmý(c.class & "729") = False Then
Paket ("3103" + Strings.Mid(AlignDWORD(ClassOku & "729"), 1, 6) + "00" + CharID + CharID + "000000000000000000000000")
End If
End Sub

Public Sub PriestKitap()
If SkillBasýlýmý("490026") = False And SkillBasýlýmý(c.class & "030") = False Then
Paket "3103" + "2A7A07" + "00" + CharID + CharID + "0000000000000000000000000000"
End If
End Sub
Function SkillBasýlýmý(skillNo As Long) As Boolean
Dim i As Integer
For i = 1 To GetSkillCount
If GetCurrentSkill(i) = skillNo Then SkillBasýlýmý = True: Exit For: Exit Function
If i = 20 Then SkillBasýlýmý = False
Next
End Function
Function GetSkillCount()
GetSkillCount = ReadLong(ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1B8) + &H4) + &HE4)
End Function
Function GetCurrentSkill(skillNo As Integer)
Dim i As Integer
Dim Ptr As Long, tmpBase As Long
Ptr = ReadLong(KO_PTR_DLG)
tmpBase = ReadLong(Ptr + &H1B8)
tmpBase = ReadLong(tmpBase + &H4)
tmpBase = ReadLong(tmpBase + &HE0)
For i = 1 To skillNo
tmpBase = ReadLong(tmpBase + &H0)
Next
tmpBase = ReadLong(tmpBase + &H8)
If tmpBase > 0 Then
tmpBase = ReadLong(tmpBase + &H0)
GetCurrentSkill = tmpBase
Else
GetCurrentSkill = 0
End If
End Function
Public Sub KendineOtoCure()
Paket "3101" + Strings.Mid(AlignDWORD(c.class & "525"), 1, 6) + "00" + CharID + CharID + "0000000000000000000000000F00"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & "525"), 1, 6) + "00" + CharID + CharID + "0000000000000000000000000F00"
End Sub
