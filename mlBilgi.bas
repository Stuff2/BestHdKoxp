Attribute VB_Name = "mlBilgi"
'max durability ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + (&H2D8)) + (&H10C))
Public Type CharBilgi
MaxMP As Long
class As Long
kX As Long
kY As Long
kZ As Long
isim As String
HP As Long
MaxHP As Long
MP As Long
zClanisim As String
S______ As Long
�rk As Long
End Type
Public c As CharBilgi

Public Function mhp() As Long
mhp = ReadLong(ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1BC) + &HC4) + &HEC + 4)
End Function
Public Sub CharBilgiOKU()
Dim Pchr As Long, ClanBase As Long
Pchr = ReadLong(KO_PTR_CHR)
c.class = ReadLong(Pchr + KO_OFF_CLASS)
c.HP = ReadLong(Pchr + KO_OFF_HP)
c.�rk = ReadLong(Pchr + Nation)
ClanBase = ReadLong(Pchr + KO_OFF_CLAN)
If ClanBase = 0 Then c.zClanisim = "" Else c.zClanisim = ReadString2(ReadLong(Pchr + KO_OFF_CLAN), False, 25)
c.isim = readString(ReadLong(Pchr + KO_OFF_NICK), ReadLong(Pchr + KO_OFF_NICK + 4))
c.kX = ReadFloat(Pchr + KO_OFF_X)
c.kY = ReadFloat(Pchr + KO_OFF_Y)
c.kZ = ReadFloat(Pchr + KO_OFF_Z)
c.MaxHP = ReadLong(Pchr + KO_OFF_MAXHP)
c.MaxMP = ReadLong(Pchr + KO_OFF_MAXMP)
c.MP = ReadLong(Pchr + KO_OFF_MP)
End Sub
 Function PartyUyeMesafe(uyes�ra As Integer)
If uyes�ra = 0 Then: PartyUyeMesafe = 0: Exit Function
PartyUyeMesafe = OkuMesafe(PartyCharID2(uyes�ra), False)
End Function
Function CharDC() As Boolean
If ReadLong(ReadLong(KO_PTR_PKT) + &H4004C) = 0 Then CharDC = True Else CharDC = False
End Function
Public Sub �antaOku2(Liste As ListBox, k�s�m As Integer)
On Error Resume Next
Liste.Clear
Dim tmpBase As Long, tmpLng1 As Long, tmpLng2 As Long, tmpLng3 As Long, tmpLng4 As Long
Dim lngItemID As Long, lngItemID_Ext As Long, lngItemNameLen As Long, AdrItemName As Long
Dim ItemNameB() As Byte
Dim ItemName As String
Dim i As Integer
tmpBase = ReadLong(KO_PTR_DLG)
tmpLng1 = ReadLong(tmpBase + &H1A0)
For i = IIf(k�s�m = 0, 0, 26) To 53
tmpLng2 = ReadLong(tmpLng1 + (&H148 + (4 * i)))
tmpLng3 = ReadLong(tmpLng2 + &H38)
tmpLng4 = ReadLong(tmpLng2 + &H3C)
lngItemID = ReadLong(tmpLng3)
lngItemID_Ext = ReadLong(tmpLng4) '
lngItemNameLen = ReadLong(tmpLng3 + &H10)
AdrItemName = ReadLong(tmpLng3 + &HC)
ItemName = ""
If lngItemNameLen > 0 Then
ReadByteArray AdrItemName, ItemNameB, lngItemNameLen
ItemName = StrConv(ItemNameB, vbUnicode)
End If
If ItemName <> "" Then Liste.AddItem ItemName
If ItemName <> "" Then Liste.ItemData(Liste.NewIndex) = lngItemID + lngItemID_Ext
Next
End Sub

Public Sub �antaOku(Liste As ListBox, k�s�m As Integer)
On Error Resume Next
Liste.Clear
E�yaSay�s� = 0
Dim tmpBase As Long, tmpLng1 As Long, tmpLng2 As Long, tmpLng3 As Long, tmpLng4 As Long
Dim lngItemID As Long, lngItemID_Ext As Long, lngItemNameLen As Long, AdrItemName As Long
Dim ItemNameB() As Byte
Dim ItemName As String
Dim i As Integer
tmpBase = ReadLong(KO_PTR_DLG)
tmpLng1 = ReadLong(tmpBase + &H1A0)
For i = IIf(k�s�m = 0, 0, 26) To 53
tmpLng2 = ReadLong(tmpLng1 + (&H148 + (4 * i))) 'inventory slot
tmpLng3 = ReadLong(tmpLng2 + &H38) 'item id adress
tmpLng4 = ReadLong(tmpLng2 + &H3C) 'item id_ext adress
lngItemID = ReadLong(tmpLng3) 'item id value
lngItemID_Ext = ReadLong(tmpLng4) 'item id_ext value
lngItemNameLen = ReadLong(tmpLng3 + &H10) 'n� characters in item name
AdrItemName = ReadLong(tmpLng3 + &HC) 'item name adress
ItemName = "" 'reset ItemName variable
If lngItemNameLen > 0 Then
ReadByteArray AdrItemName, ItemNameB, lngItemNameLen 'get item name (byte array)
ItemName = StrConv(ItemNameB, vbUnicode) 'convert it to string
End If
Liste.AddItem ItemName
Next
If Liste.ListCount > 0 Then �ncekiE�yaSay�s� = Liste.ListCount
End Sub
Function SolItemID() As String
Dim tmpBase, lngItemID, lngItemID_Ext As Long
tmpBase = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1A0) + (&H174 + 32 + 4))
lngItemID = ReadLong(ReadLong(tmpBase + &H38))
lngItemID_Ext = ReadLong(ReadLong(tmpBase + &H3C))
lngItemID = AlignDWORD(lngItemID + lngItemID_Ext)
SolItemID = lngItemID
End Function

Function Sa�ItemID() As String
Dim tmpBase, lngItemID, lngItemID_Ext As Long
tmpBase = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1A0) + (&H174 + 24 + 4))
lngItemID = ReadLong(ReadLong(tmpBase + &H38))
lngItemID_Ext = ReadLong(ReadLong(tmpBase + &H3C))
lngItemID = AlignDWORD(lngItemID + lngItemID_Ext)
Sa�ItemID = lngItemID
End Function
Function Sa�DurabOku() As Long
Sa�DurabOku = ReadLong(ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1A0) + (&H174 + 24 + 4)) + &H44) '(horn yeri)
End Function
Function SolDurabOku() As Long
SolDurabOku = ReadLong(ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1A0) + (&H174 + 32 + 4)) + &H44) '(ib yeri)
End Function
Function MOBID()
Dim mob As String
mob = Hex(ReadLong(KO_ADR_CHR + KO_OFF_MOB))
If mob = "FFFFFFFF" Then
mob = "FFFF"
Else
mob = HexFormatla(mob, 4)
End If
MOBID = mob
End Function
Function D��manID()
D��manID = ReadLong(KO_ADR_CHR + KO_OFF_MOB)
End Function
Function MobZ() As Long
MobZ = ReadFloat(ReadLong(ReadLong(KO_PTR_DLG) + &H3D8) + 92)
End Function
Function CharID()
Dim Char As String
Char = Hex(ReadLong(KO_ADR_CHR + KO_OFF_ID))
Char = HexFormatla(Char, 4)
CharID = Char
End Function
Function OkuBas�lanSkill(skillNo As Integer)
On Error Resume Next
Dim i As Integer
Dim Ptr As Long, tmpBase As Long
Ptr = ReadLong(KO_PTR_DLG)
tmpBase = ReadLong(Ptr + &H1B8)
tmpBase = ReadLong(tmpBase + &H4)
tmpBase = ReadLong(tmpBase + &HE0)

For i = 1 To skillNo
tmpBase = ReadLong(tmpBase + &H0) 'soldan ka��nc� skill?
Next
tmpBase = ReadLong(tmpBase + &H8)
If tmpBase > 0 Then
tmpBase = ReadLong(tmpBase + &H0) 've nihayet buras� skill kodunu tutan adres
OkuBas�lanSkill = tmpBase
Else
OkuBas�lanSkill = 0
End If
End Function

Function OkuBas�lanSkillSay�s�()
Dim Ptr As Long, tmpBase As Long
Ptr = ReadLong(KO_PTR_DLG)
tmpBase = ReadLong(Ptr + &H1B8)
tmpBase = ReadLong(tmpBase + &H4)
tmpBase = ReadLong(tmpBase + &HE4)
OkuBas�lanSkillSay�s� = tmpBase
End Function
Function OkuSkillBar(slot As Long) As Long
Dim a, b, c As Long
Dim pPtr As Long
pPtr = ReadLong(KO_PTR_DLG)
a = ReadLong(pPtr + &H1D0)
b = ReadLong(a + &H138 + (slot * 4))
c = ReadLong(b + &H38)
OkuSkillBar = ReadLong((c))
End Function

Function OkuSkillBarAd�(slot As Long) As String
Dim a, b, c As Long
Dim skillName() As Byte
Dim SkillnameLen As Long
Dim pPtr As Long
pPtr = ReadLong(KO_PTR_DLG)
a = ReadLong(pPtr + &H1D0)
b = ReadLong(a + &H138 + (slot * 4))
c = ReadLong(b + &H38)
SkillnameLen = ReadByte(c + &H1C)
If SkillnameLen > 0 Then
ReadByteArray ReadLong(c + &H18), skillName, SkillnameLen
End If
OkuSkillBarAd� = Ba�HarfiB�y�t(StrConv(skillName, vbUnicode))
End Function
Function OkuSkillBaracik(slot As Long) As Byte
Dim a, b, c, d As Long
Dim pPtr As Long
pPtr = ReadLong(KO_PTR_DLG)
a = ReadLong(pPtr + &H1D0)
b = ReadLong(a + &H138 + (slot * 4))
c = ReadLong(b + &H38)
d = ReadByte(b + &H4)
OkuSkillBaracik = d
End Function
Public Sub skilly�kleArcher(List As ListBox)
List.Clear
Dim i As Long
List.AddItem "Archery"
For i = 42 To 83
If OkuSkillBaracik(i) = 1 Then
    List.AddItem HarfB�y�tFull(OkuSkillBarAd�(i))

End If
Next
End Sub
Public Sub skilly�kleAsas(List As ListBox)
List.Clear
Dim i As Long
List.AddItem "Stroke"
List.AddItem "Stab"
List.AddItem "Stab2"
For i = 84 To 42 * 3 - 1
If OkuSkillBaracik(i) = 1 Then
If HarfB�y�tFull(OkuSkillBarAd�(i)) <> "Stealth" Then List.AddItem HarfB�y�tFull(OkuSkillBarAd�(i))

End If
Next
End Sub
Public Sub skilly�kleWarior(List As ListBox)
List.Clear
Dim i As Long, strSkill As String
List.AddItem "Stroke"
For i = 0 To (42 * 5)
strSkill = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
If strSkill = "Slash" Or strSkill = "Crash" Or strSkill = "Piercing" Or strSkill = "Whipping" Or strSkill = "Hash" Or strSkill = "Hoodwink" Or strSkill = "Shear" Or strSkill = "Pierce" Or strSkill = "Leg Cutting" Or strSkill = "Carving" Or strSkill = "Sever" Or strSkill = "Prick" Or strSkill = "Multiple Shock" Or strSkill = "Cleave" Or strSkill = "Mangling" Or strSkill = "Thrust" Or strSkill = "Sword Aura" Or strSkill = "Sword Dancing" Or strSkill = "Scream" Or strSkill = "Howling Sword" Or strSkill = "Blooding" Or strSkill = "Exceed Break" Or strSkill = "Hell Blade" Or strSkill = "Shock Stun" Then List.AddItem HarfB�y�tFull(OkuSkillBarAd�(i))
End If
Next
End Sub
Public Sub skilly�kleheal(listheal As ComboBox)
listheal.Clear
Dim i As Long
For i = 0 To (42 * 5)
Dim gsb As String
gsb = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
Select Case gsb: Case "Tiny Healing": listheal.AddItem gsb & "(15)": Heal(15) = True: Case "Light Healing": listheal.AddItem gsb & "(30)": Heal(30) = True: Case "Minor Healing": listheal.AddItem gsb & "(60)": Heal(60) = True: Case "Healing": listheal.AddItem gsb & "(240)": Heal(240) = True: Case "Major Healing": listheal.AddItem gsb & "(360)": Heal(360) = True: Case "Great Healing": listheal.AddItem gsb & "(720)": Heal(720) = True: Case "Massive Healing": listheal.AddItem gsb & "(960)": Heal(960) = True: Case "Superior Healing": listheal.AddItem gsb & "(1920)": Heal(1920) = True: End Select
End If
Next
listheal.AddItem "Otomatik Ayarla"
End Sub
Public Sub skilly�kleBuff(listheal As ComboBox)
listheal.Clear
Dim i As Long
For i = 0 To (42 * 5)
Dim gsb As String
gsb = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
Select Case gsb: Case "Grace": listheal.AddItem gsb & "(60)": Case "Brave": listheal.AddItem gsb & "(240)": Case "Strong": listheal.AddItem gsb & "(360)": Case "Hardness": listheal.AddItem gsb & "(720)": Case "Mightness": listheal.AddItem gsb & "(960)": Case "Undying": listheal.AddItem gsb & "(%60)": Case "Heapness": listheal.AddItem gsb & "(1200)": Case "Massiveness": listheal.AddItem gsb & "(1500)": Case "Imposingness": listheal.AddItem gsb & "(2000)": Case "Superioris": listheal.AddItem gsb & "(2500)": End Select
End If
Next
End Sub
Public Sub skilly�kleresist(listheal As ComboBox)
listheal.Clear
Dim i As Long
For i = 0 To (42 * 5)
Dim gsb As String
gsb = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
Select Case gsb: Case "Resist All": listheal.AddItem gsb & "(20)": Case "Bright Mind": listheal.AddItem gsb & "(40)": Case "Calm Mind": listheal.AddItem gsb & "(60)": Case "Fresh Mind": listheal.AddItem gsb & "(80)": End Select
End If
Next
End Sub
Public Sub skilly�kleAc(listheal As ComboBox)
listheal.Clear
Dim i As Long
For i = 0 To (42 * 5)
Dim gsb As String
gsb = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
Select Case gsb: Case "Insensibility Skin": listheal.AddItem gsb & "(20)": Case "Insensibility Shell": listheal.AddItem gsb & "(40)": Case "Insensibility Armor": listheal.AddItem gsb & "(80)": Case "Insensibility Shield": listheal.AddItem gsb & "(120)": Case "Insensibility Barrier": listheal.AddItem gsb & "(160)": Case "Insensibility Protector": listheal.AddItem gsb & "(200)": Case "Insensibility Peel": listheal.AddItem gsb & "(300)": Case "Insensibility Guard": listheal.AddItem gsb & "(350)": End Select
End If
Next
End Sub
Public Sub skilly�klepri(List As ListBox)
List.Clear
Dim i As Long, strSkill As String
List.AddItem "Stroke"
For i = 0 To (42 * 5)
strSkill = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
   If strSkill = "Helis" Or strSkill = "Judgment" Or strSkill = "Hades" Or strSkill = "Raving Edge" Or strSkill = "Bloody" Or strSkill = "Tilt" Or strSkill = "Collapse" Or strSkill = "Harsh" Or strSkill = "Wield" Or strSkill = "Wrath" Or strSkill = "Hellish" Or strSkill = "Ruin" Or strSkill = "Shuddering" Or strSkill = "Collision" Or strSkill = "Holy Attack" Then List.AddItem strSkill
End If
Next
End Sub
Public Sub skilly�kleAlan(List As ListBox)
List.Clear
Dim i As Long, strSkill As String
For i = 0 To (42 * 5)
strSkill = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
   If strSkill = "Fire Burst" Or strSkill = "Ice Burst" Or strSkill = "Thunder Burst" Or strSkill = "Meteor Fall" Or strSkill = "Supernova" Or strSkill = "Inferno" Or strSkill = "Ice Storm" Or strSkill = "Frost Nova" Or strSkill = "Blizzard" Or strSkill = "Chain Lightning" Or strSkill = "Static Nova" Or strSkill = "Thundercloud" Then List.AddItem strSkill
End If
Next
End Sub
Public Sub skilly�kleRestore(listheal As ComboBox)
listheal.Clear
Dim i As Long
For i = 0 To (42 * 5)
Dim gsb As String
gsb = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
Select Case gsb
Case "Light Restore"
listheal.AddItem gsb & "(100)"
Case "Restore"
listheal.AddItem gsb & "(400)"
Case "Major Restore"
listheal.AddItem gsb & "(600)"
Case "Great Restore"
listheal.AddItem gsb & "(800)"
Case "Massive Restore"
listheal.AddItem gsb & "(1500)"
Case "Superior Restore"
listheal.AddItem gsb & "(2500)"
Case "Critical Restore"
listheal.AddItem gsb & "(3000)"
Case "Past Restore"
listheal.AddItem gsb & "(6000)"
End Select
End If
Next
End Sub
Public Sub skilly�kleMage(List As ListBox)
List.Clear
Dim i As Long, strSkill As String
List.AddItem "Stroke"
For i = 0 To (42 * 5)
strSkill = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
Select Case strSkill
Case "Flash": List.AddItem strSkill
Case "Shiver": List.AddItem strSkill
Case "Flame": List.AddItem strSkill
Case "Cold Wave": List.AddItem strSkill
Case "Spark": List.AddItem strSkill
Case "Magic Blade": List.AddItem strSkill
'flame
Case "Burn": List.AddItem strSkill
Case "Blaze": List.AddItem strSkill
Case "Fire Ball": List.AddItem strSkill
Case "Ignition": List.AddItem strSkill
Case "Fire Spear": List.AddItem strSkill
Case "Fire Blast": List.AddItem strSkill
Case "Hell Fire": List.AddItem strSkill
Case "Fire Blade": List.AddItem strSkill
Case "Specter of Fire": List.AddItem strSkill
Case "Pillar of Fire": List.AddItem strSkill
Case "Fire Thorn": List.AddItem strSkill
Case "Manes of Fire": List.AddItem strSkill
Case "Fire Impact": List.AddItem strSkill
Case "Inciretion": List.AddItem strSkill
Case "Fire Staff": List.AddItem strSkill
Case "Igzination": List.AddItem strSkill
'glacier
Case "Freeze": List.AddItem strSkill
Case "Chill": List.AddItem strSkill
Case "Ice Arrow": List.AddItem strSkill
Case "Solid": List.AddItem strSkill
Case "Ice Orb": List.AddItem strSkill
Case "Ice Blast": List.AddItem strSkill
Case "Frostbite": List.AddItem strSkill
Case "Frozen Blade": List.AddItem strSkill
Case "Ice Comet": List.AddItem strSkill
Case "Manes Of Ice": List.AddItem strSkill
Case "Ice Impact": List.AddItem strSkill
Case "Specter of Ice": List.AddItem strSkill
Case "Ice Blade": List.AddItem strSkill
Case "Prismatic": List.AddItem strSkill
Case "Ice Staff": List.AddItem strSkill
'lighting
Case "Charge": List.AddItem strSkill
Case "Counter Spell": List.AddItem strSkill
Case "Lightning": List.AddItem strSkill
Case "Static Hemisphere": List.AddItem strSkill
Case "Thunder": List.AddItem strSkill
Case "Thunder Blast": List.AddItem strSkill
Case "Dicharge": List.AddItem strSkill
Case "Charged Blade": List.AddItem strSkill
Case "Specter of Thunder": List.AddItem strSkill
Case "Static Orb": List.AddItem strSkill
Case "Static Thorn": List.AddItem strSkill
Case "Manes of Thunder": List.AddItem strSkill
Case "Thunder Impact": List.AddItem strSkill
Case "Light Staff": List.AddItem strSkill
Case "Stun Cloud": List.AddItem strSkill

End Select
End If
Next
End Sub
Public Sub skilly�kleDebuff(List As ListBox)
List.Clear
Dim i As Long, strSkill As String
For i = 0 To (42 * 5)
strSkill = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
If strSkill = "Malice" Or strSkill = "Clear Mana" Or strSkill = "Confusion" Or strSkill = "Slow" Or strSkill = "Sweep Mana" Or strSkill = "Parasite" Or strSkill = "Torment" Or strSkill = "Massive" Or strSkill = "Subside" Or strSkill = "Superior Parasite" Or strSkill = "Discountis" Then List.AddItem strSkill

End If
Next
End Sub
Public Sub skilly�kleT�m(List As ListBox)
List.Clear
Dim i As Long
For i = 0 To (42 * 5)
If OkuSkillBaracik(i) = 1 Then
    List.AddItem OkuSkillBarAd�(i)

End If
Next
End Sub
Public Sub skilly�kleZamanL�(List As ListBox, classAd As String)
List.Clear
Dim i As Long, skL As String
For i = 0 To (42 * 5)
skL = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
Select Case classAd
'-----------------------------------------
Case "Rogue"
If skL = "Strength of Wolf" _
Or skL = "Evade" _
Or skL = "Safety" _
Or skL = "Scaled Skin" _
Or skL = "Lupine Eyes" _
Or skL = "Magic Shield" _
Or skL = "Light Feet" _
Or skL = "Swift" Or skL = "Cure Curse" Or skL = "Cure Disease" Then List.AddItem skL

'-----------------------------------------
Case "Warior"
If skL = "Sprint" _
Or skL = "Defense" _
Or skL = "Gain" Then List.AddItem skL
   
'-----------------------------------------
Case "Mage"
If skL = "Resist Fire" _
Or skL = "Endure Fire" _
Or skL = "Immunity to Fire" _
Or skL = "Resist Cold" _
Or skL = "Endure Cold" _
Or skL = "Immunity to Cold" _
Or skL = "Resist Lightning" _
Or skL = "Endure Lightning" _
Or skL = "Immunity to Lightning" Then List.AddItem skL
End Select
End If
Next
List.AddItem "Meat Dumpling(So�an)"
End Sub
Public Sub skilly�kleFR(List As ComboBox)
List.Clear
Dim i As Long, strSkill As String
For i = 0 To (42 * 5)
strSkill = HarfB�y�tFull(OkuSkillBarAd�(i))
If OkuSkillBaracik(i) = 1 Then
If strSkill = "Resist Fire" _
Or strSkill = "Endure Fire" _
Or strSkill = "Immunity to Fire" _
Or strSkill = "Resist Cold" _
Or strSkill = "Endure Cold" _
Or strSkill = "Immunity to Cold" _
Or strSkill = "Resist Lightning" _
Or strSkill = "Endure Lightning" _
Or strSkill = "Immunity to Lightning" Then List.AddItem strSkill
End If
Next
End Sub

Public Function MOBAd�3()
If OkuMobBase(ReadLong(KO_ADR_CHR + KO_OFF_MOB)) = 0 Then
MOBAd�3 = readString(ReadLong(OkuCharBase(ReadLong(KO_ADR_CHR + KO_OFF_MOB)) + KO_OFF_NICK), ReadLong(OkuCharBase(ReadLong(KO_ADR_CHR + KO_OFF_MOB)) + KO_OFF_NICK + 4))
Else
MOBAd�3 = readString(ReadLong(OkuMobBase(ReadLong(KO_ADR_CHR + KO_OFF_MOB)) + KO_OFF_NICK), ReadLong(OkuMobBase(ReadLong(KO_ADR_CHR + KO_OFF_MOB)) + KO_OFF_NICK + 4))
End If
End Function
Public Function ClassAd�() As String
Dim cls As Long
cls = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_CLASS)
If cls = 104 Or cls = 204 Or cls = 111 Or cls = 112 Or cls = 211 Or cls = 212 Then ClassAd� = "Priest"
If cls = 102 Or cls = 202 Or cls = 207 Or cls = 208 Or cls = 107 Or cls = 108 Then ClassAd� = "Rogue"
If cls = 101 Or cls = 201 Or cls = 105 Or cls = 106 Or cls = 205 Or cls = 206 Then ClassAd� = "Warior"
If cls = 103 Or cls = 203 Or cls = 209 Or cls = 210 Or cls = 109 Or cls = 110 Then ClassAd� = "Mage"
End Function

Function OkuMobHP()
Dim MobBase As Long
Dim MobBase2 As Long
Dim tmpPtr As Long
Dim MobHp As Long
tmpPtr = ReadLong(KO_PTR_DLG)
MobBase = ReadLong(tmpPtr + &H1BC)
MobBase2 = ReadLong(MobBase + &HD4)
MobHp = ReadLong(MobBase2 + &HFC)
OkuMobHP = MobHp
End Function

Function OkuMobX()
If MOBID <> "FFFF" Then
If OkuCharBase(DecFormatla(MOBID, 4)) = 0 Then
OkuMobX = ReadFloat(OkuMobBase(DecFormatla(MOBID, 4)) + KO_OFF_X)
Else
OkuMobX = ReadFloat(OkuCharBase(DecFormatla(MOBID, 4)) + KO_OFF_X)
End If
End If
End Function

Function OkuMobY()
If MOBID <> "FFFF" Then
If OkuCharBase(DecFormatla(MOBID, 4)) = 0 Then
OkuMobY = ReadFloat(OkuMobBase(DecFormatla(MOBID, 4)) + KO_OFF_Y)
Else
OkuMobY = ReadFloat(OkuCharBase(DecFormatla(MOBID, 4)) + KO_OFF_Y)
End If
End If
End Function

Function GetMobDistance()
On Error Resume Next
Dim tmpPtr, a, b, mx, my, cx, cy As Long
Dim frkx, frky, uz As Single
tmpPtr = ReadLong(KO_PTR_CHR)
cx = ReadFloat(tmpPtr + KO_OFF_X)
cy = ReadFloat(tmpPtr + KO_OFF_Y)
frkx = (OkuMobX - cx) * (OkuMobX - cx)
frky = (OkuMobY - cy) * (OkuMobY - cy)
uz = Fix(((frkx + frky) ^ 0.5) / 4)
GetMobDistance = GetMobDistance2
End Function
Function GetMobDistance4()
On Error Resume Next
Dim tmpPtr, a, b, mx, my, cx, cy As Long
Dim frkx, frky, uz As Single
tmpPtr = ReadLong(KO_PTR_CHR)
frkx = (OkuMobX - mx) * (OkuMobX - mx)
frky = (OkuMobY - my) * (OkuMobY - my)
uz = Fix(((frkx + frky) ^ 0.5) / 4)
GetMobDistance4 = uz
End Function
Function GetMobDistance2()
If ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 0 Then
GetMobDistance2 = OkuMesafe(ReadLong(KO_ADR_CHR + KO_OFF_MOB), True)
Else
GetMobDistance2 = OkuMesafe(ReadLong(KO_ADR_CHR + KO_OFF_MOB), False)
End If
End Function
Function OkuZdekiMob() 'Enemy
On Error Resume Next
Dim Mob_Adr As Long, LocX As Long, xCode() As Byte, xStr As String

VirtualFreeEx KO_HANDLE, BytesAddr2, 0, MEM_RELEASE&
If BytesAddr2 = 0 Then
'haf�za a�al�m
BytesAddr2 = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)
End If


LocX = ReadLong(KO_PTR_CHR) + KO_OFF_X

If BytesAddr2 <> 0 Or LocX <> 0 And KO_FLDB <> 0 Or KO_FPOZ <> 0 Then

xStr = "6068" & _
        AlignDWORD(LocX) & _
        "8B0D" & _
        AlignDWORD(KO_FLDB) & _
        "6A00BF" & _
        AlignDWORD(KO_FPOZ) & _
        "FFD7A3" & _
        AlignDWORD(BytesAddr2) & _
        "61C3"

ConvHEX2ByteArray xStr, xCode
ExecuteRemoteCode xCode, True
Mob_Adr = ReadLong(BytesAddr2) 'mob base oku
OkuZdekiMob = ReadLong(Mob_Adr + KO_OFF_ID)
'haf�za bo�altal�m
End If

VirtualFreeEx KO_HANDLE, BytesAddr2, 0, MEM_RELEASE&
End Function
Function OkuBdekiMob() 'NPC
On Error Resume Next
If BytesAddr4 = 0 Then
BytesAddr4 = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)
End If

'haf�za a�al�m
If BytesAddr4 <> 0 Then
Dim Mob_Adr As Long, LocX As Long, xCode() As Byte, xStr As String

LocX = ReadLong(KO_PTR_CHR) + KO_OFF_X

xStr = "6068" & _
        AlignDWORD(LocX) & _
        "8B0D" & _
        AlignDWORD(KO_FLDB) & _
        "BF" & _
        AlignDWORD(KO_FPOB) & _
        "FFD7A3" & _
        AlignDWORD(BytesAddr4) & _
        "61C3"

ConvHEX2ByteArray xStr, xCode
ExecuteRemoteCode xCode, True
Mob_Adr = ReadLong(BytesAddr4) 'mob base oku
OkuBdekiMob = ReadLong(Mob_Adr + &H5B4)

End If

VirtualFreeEx KO_HANDLE, BytesAddr4, 0, MEM_RELEASE&
End Function


'���������������������������������������������������������������������������������������������������������������������������������
'//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
'////////////////////////////////////////////////////// Party Bilgi //////////////////////////////////////////////////////////////
'////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
'_______________________________________________________________________________________________________________________________


Public Sub PartyBilgiOKU()
On Error Resume Next
Dim i As Integer
Dim De�er As Long, ilkPtSay�s� As Integer
De�er = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1CC) + &H370)
PartySay� = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1CC) + &H364)
For i = 1 To PartySay�
If PartySay� > 0 Then
PartyIsim
De�er = ReadLong(De�er + &H0)
PartyCharID(i) = Strings.Mid(AlignDWORD(ReadLong(De�er + &H8)), 1, 4)
PartyCharID2(i) = ReadLong(De�er + &H8)
PartyHP(i) = ReadLong(De�er + &H14)
PartyMaxHP(i) = ReadLong(De�er + &H18)
PartyS�n�f(i) = ReadLong(De�er + &H10)
PartyLevel(i) = ReadLong(De�er + &HC)
PartyCure1(i) = ReadLong(De�er + &H24)
PartyCure2(i) = ReadLong(De�er + &H25)
PartyCure3(i) = ReadLong(De�er + &H26)
PartyCure4(i) = ReadLong(De�er + &H27)
If Form1.ch(93) = 1 Or Form1.ch(77) = 1 Then
Form2.Cure1Uye(i) = PartyCure1(i)
Form2.Cure2Uye(i) = PartyCure2(i)
Form2.Cure3Uye(i) = PartyCure3(i)
Form2.Cure4Uye(i) = PartyCure4(i)
End If
If PartyS�n�f(i) = 111 Or PartyS�n�f(i) = 112 Or PartyS�n�f(i) = 211 Or PartyS�n�f(i) = 212 Then PartyS�n�fAd�(i) = "Priest"
If PartyS�n�f(i) = 207 Or PartyS�n�f(i) = 208 Or PartyS�n�f(i) = 107 Or PartyS�n�f(i) = 108 Then PartyS�n�fAd�(i) = "Rogue"
If PartyS�n�f(i) = 105 Or PartyS�n�f(i) = 106 Or PartyS�n�f(i) = 205 Or PartyS�n�f(i) = 106 Then PartyS�n�fAd�(i) = "Warior"
If PartyS�n�f(i) = 209 Or PartyS�n�f(i) = 210 Or PartyS�n�f(i) = 109 Or PartyS�n�f(i) = 110 Then PartyS�n�fAd�(i) = "Mage"
If Form1.ch(86) = 1 Or Form1.ch(87) = 1 Or Form1.ch(88) = 1 Or Form1.ch(75) = 1 Or Form1.ch(91) = 1 Then Form2.ptHP(i) = ReadLong(De�er + &H18)
End If
Next
For i = (PartySay� + 1) To 8
If Form1.ch(93) = 1 Then
Form2.Cure1Uye(i) = 0
Form2.Cure2Uye(i) = 0
Form2.Cure3Uye(i) = 0
Form2.Cure4Uye(i) = 0
End If
Ge�enPartyMaxHP(i) = 9000000
PartyCharID(i) = 0
PartyCharID2(i) = 0
PartyAd�(i) = ""
PartyHP(i) = 0
Form2.ptHP(i) = 0
PartyMaxHP(i) = 0
PartyS�n�f(i) = 0
PartyLevel(i) = 0
PartyCure1(i) = 0
PartyCure2(i) = 0
PartyCure3(i) = 0
PartyCure4(i) = 0
Next
End Sub
Public Function PartyS�n�fSor(s�n�f As String) As Boolean
For i = 1 To PartySay�
If PartyS�n�fAd�(i) = s�n�f Then: PartyS�n�fSor = True: Exit Function
Next
PartyS�n�fSor = False
End Function
Public Sub PartyIsim()
Dim i As Integer
Dim tmpBase As Long
tmpBase = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1CC) + &H370)
For i = 1 To PartySay�
tmpBase = ReadLong(tmpBase + &H0)
PartyAd�(i) = readString(ReadLong(tmpBase + &H30), 20)
Next i
End Sub

Public Function ItemIDSlotaG�re(slot As Integer) As String
If slot = 25 Then ItemIDSlotaG�re = 0: Exit Function
Dim tmpBase As Long, tmpLng1 As Long, tmpLng2 As Long, tmpLng3 As Long, tmpLng4 As Long
Dim lngItemID As Long, lngItemID_Ext As Long
tmpBase = ReadLong(KO_PTR_DLG)
tmpLng1 = ReadLong(tmpBase + &H1A0)
tmpLng2 = ReadLong(tmpLng1 + (&H148 + (4 * slot)))
tmpLng3 = ReadLong(tmpLng2 + &H38)
tmpLng4 = ReadLong(tmpLng2 + &H3C)
lngItemID = ReadLong(tmpLng3)
lngItemID_Ext = ReadLong(tmpLng4)
ItemIDSlotaG�re = AlignDWORD(lngItemID + lngItemID_Ext)
End Function
Public Function ItemIDSlotaG�re2(slot As Integer) As Long
If slot = 25 Then ItemIDSlotaG�re2 = 0: Exit Function
Dim tmpBase As Long, tmpLng1 As Long, tmpLng2 As Long, tmpLng3 As Long, tmpLng4 As Long
Dim lngItemID As Long, lngItemID_Ext As Long
tmpBase = ReadLong(KO_PTR_DLG)
tmpLng1 = ReadLong(tmpBase + &H1A0)
tmpLng2 = ReadLong(tmpLng1 + (&H148 + (4 * slot)))
tmpLng3 = ReadLong(tmpLng2 + &H38)
tmpLng4 = ReadLong(tmpLng2 + &H3C)
lngItemID = ReadLong(tmpLng3)
lngItemID_Ext = ReadLong(tmpLng4)
ItemIDSlotaG�re2 = lngItemID + lngItemID_Ext
End Function
Public Function ItemMiktarSlotaG�re(slot As Integer) As Long
If slot = 25 Then ItemMiktarSlotaG�re = 0: Exit Function
Dim tmpBase As Long, tmpLng1 As Long, tmpLng2 As Long, tmpLng3 As Long, tmpLng4 As Long
Dim lngItemID As Long, lngItemID_Ext As Long
tmpBase = ReadLong(KO_PTR_DLG)
tmpLng1 = ReadLong(tmpBase + &H1A0)
tmpLng2 = ReadLong(tmpLng1 + (&H148 + (4 * slot)))
ItemMiktarSlotaG�re = ReadLong(tmpLng2 + &H40)
End Function
Public Function OkuItemS�ra(Deger As String) As Integer
If Form2.LstInventory.ListCount > 0 And NPCA��k = False Then
Dim i: For i = 0 To Form2.LstInventory.ListCount - 1
If Form2.LstInventory.List(i) = Deger Then OkuItemS�ra = i: Exit For Else: OkuItemS�ra = -1
Next
End If
End Function
'sat�n    alll
Public Function OkuPotHPIDSat�nAl() As String
Select Case Form1.cb(6).ListIndex
Case 0: OkuPotHPIDSat�nAl = ItemIDSlotaG�re(OkuItemS�ra("Holy Water") + 26)
Case 1: OkuPotHPIDSat�nAl = ItemIDSlotaG�re(OkuItemS�ra("Water of life") + 26)
Case 2: OkuPotHPIDSat�nAl = ItemIDSlotaG�re(OkuItemS�ra("Water of love") + 26)
Case 3: OkuPotHPIDSat�nAl = ItemIDSlotaG�re(OkuItemS�ra("Water of grace") + 26)
Case 4: OkuPotHPIDSat�nAl = ItemIDSlotaG�re(OkuItemS�ra("Water of favors") + 26)
End Select
End Function

Public Function OkuPotMPIDSat�nAl() As String
Select Case Form1.cb(7).ListIndex
Case 0: OkuPotMPIDSat�nAl = ItemIDSlotaG�re(OkuItemS�ra("Potion of Spirit") + 26)
Case 1: OkuPotMPIDSat�nAl = ItemIDSlotaG�re(OkuItemS�ra("Potion of Intelligence") + 26)
Case 2: OkuPotMPIDSat�nAl = ItemIDSlotaG�re(OkuItemS�ra("Potion of Sagacity") + 26)
Case 3: OkuPotMPIDSat�nAl = ItemIDSlotaG�re(OkuItemS�ra("Potion of Wisdom") + 26)
Case 4: OkuPotMPIDSat�nAl = ItemIDSlotaG�re(OkuItemS�ra("Potion of Soul") + 26)
End Select
End Function

Public Function OkuPotHPMiktarSat�nAl() As Long
Select Case Form1.cb(6).ListIndex
Case 0: OkuPotHPMiktarSat�nAl = ItemMiktarSlotaG�re(OkuItemS�ra("Holy Water") + 26)
Case 1: OkuPotHPMiktarSat�nAl = ItemMiktarSlotaG�re(OkuItemS�ra("Water of life") + 26)
Case 2: OkuPotHPMiktarSat�nAl = ItemMiktarSlotaG�re(OkuItemS�ra("Water of love") + 26)
Case 3: OkuPotHPMiktarSat�nAl = ItemMiktarSlotaG�re(OkuItemS�ra("Water of grace") + 26)
Case 4: OkuPotHPMiktarSat�nAl = ItemMiktarSlotaG�re(OkuItemS�ra("Water of favors") + 26)
End Select
End Function

Public Function OkuPotMPMiktarSat�nAl() As Long
Select Case Form1.cb(7).ListIndex
Case 0: OkuPotMPMiktarSat�nAl = ItemMiktarSlotaG�re(OkuItemS�ra("Potion of Spirit") + 26)
Case 1: OkuPotMPMiktarSat�nAl = ItemMiktarSlotaG�re(OkuItemS�ra("Potion of Intelligence") + 26)
Case 2: OkuPotMPMiktarSat�nAl = ItemMiktarSlotaG�re(OkuItemS�ra("Potion of Sagacity") + 26)
Case 3: OkuPotMPMiktarSat�nAl = ItemMiktarSlotaG�re(OkuItemS�ra("Potion of Wisdom") + 26)
Case 4: OkuPotMPMiktarSat�nAl = ItemMiktarSlotaG�re(OkuItemS�ra("Potion of Soul") + 26)
End Select
End Function

Public Function OkuPotHPS�raSat�nAl() As Long
Select Case Form1.cb(6).ListIndex
Case 0: OkuPotHPS�raSat�nAl = OkuItemS�ra("Holy Water")
Case 1: OkuPotHPS�raSat�nAl = OkuItemS�ra("Water of life")
Case 2: OkuPotHPS�raSat�nAl = OkuItemS�ra("Water of love")
Case 3: OkuPotHPS�raSat�nAl = OkuItemS�ra("Water of grace")
Case 4: OkuPotHPS�raSat�nAl = OkuItemS�ra("Water of favors")
End Select
End Function

Public Function OkuPotMPS�raSat�nAl() As Long
Select Case Form1.cb(7).ListIndex
Case 0: OkuPotMPS�raSat�nAl = OkuItemS�ra("Potion of Spirit")
Case 1: OkuPotMPS�raSat�nAl = OkuItemS�ra("Potion of Intelligence")
Case 2: OkuPotMPS�raSat�nAl = OkuItemS�ra("Potion of Sagacity")
Case 3: OkuPotMPS�raSat�nAl = OkuItemS�ra("Potion of Wisdom")
Case 4: OkuPotMPS�raSat�nAl = OkuItemS�ra("Potion of Soul")
End Select
End Function
Public Function OkuHPNPCS�ra() As Long
Select Case Form1.cb(6).ListIndex
Case 0: OkuHPNPCS�ra = 0
Case 1: OkuHPNPCS�ra = 1
Case 2: OkuHPNPCS�ra = 2
Case 3: OkuHPNPCS�ra = 3
Case 4: OkuHPNPCS�ra = 4
End Select
End Function

Public Function OKUMPNPCS�ra() As Long
Select Case Form1.cb(7).ListIndex
Case 0: OKUMPNPCS�ra = 6
Case 1: OKUMPNPCS�ra = 7
Case 2: OKUMPNPCS�ra = 8
Case 3: OKUMPNPCS�ra = 9
Case 4: OKUMPNPCS�ra = 10
End Select
End Function
'wolf
Public Function OkuWolfID() As String
OkuWolfID = ItemIDSlotaG�re(OkuItemS�ra("Blood of wolf") + 26)
End Function
Public Function OkuWolfMiktar() As Long
OkuWolfMiktar = ItemMiktarSlotaG�re(OkuItemS�ra("Blood of wolf") + 26)
End Function
Public Function OkuWolfS�ra() As Long
OkuWolfS�ra = OkuItemS�ra("Blood of wolf")
End Function
'Arrow
Public Function OkuArrowID() As String
OkuArrowID = ItemIDSlotaG�re(OkuItemS�ra("Arrow") + 26)
End Function
Public Function OkuArrowMiktar() As Long
OkuArrowMiktar = ItemMiktarSlotaG�re(OkuItemS�ra("Arrow") + 26)
End Function
Public Function OkuArrowS�ra() As Long
OkuArrowS�ra = OkuItemS�ra("Arrow")
End Function
Public Function OkuKitapID() As String
OkuKitapID = ItemIDSlotaG�re(OkuItemS�ra("Prayer of god's power") + 26)
End Function
Public Function OkuKitapS�ra() As Long
OkuKitapS�ra = OkuItemS�ra("Prayer of god's power")
End Function
Public Function OkuKitapMiktar() As Long
OkuKitapMiktar = ItemMiktarSlotaG�re(OkuItemS�ra("Prayer of god's power") + 26)
End Function
'Ts Gem
Public Function OkuGemID() As String
OkuGemID = ItemIDSlotaG�re(OkuItemS�ra("Transformation Gem") + 26)
End Function
Public Function OkuGemMiktar() As Long
OkuGemMiktar = ItemMiktarSlotaG�re(OkuItemS�ra("Transformation Gem") + 26)
End Function
Public Function OkuGemS�ra() As Long
OkuGemS�ra = OkuItemS�ra("Transformation Gem")
End Function
'Bankadan Alllllll
Public Function OkuPotHPIDBanka() As String
Select Case Form1.cb(9).ListIndex
Case 0: OkuPotHPIDBanka = ItemIDSlotaG�re(OkuItemS�ra("Holy Water") + 26)
Case 1: OkuPotHPIDBanka = ItemIDSlotaG�re(OkuItemS�ra("Water of life") + 26)
Case 2: OkuPotHPIDBanka = ItemIDSlotaG�re(OkuItemS�ra("Water of love") + 26)
Case 3: OkuPotHPIDBanka = ItemIDSlotaG�re(OkuItemS�ra("Water of grace") + 26)
Case 4: OkuPotHPIDBanka = ItemIDSlotaG�re(OkuItemS�ra("Water of favors") + 26)
End Select
End Function

Public Function OkuPotMPIDBanka() As String
Select Case Form1.cb(8).ListIndex
Case 0: OkuPotMPIDBanka = ItemIDSlotaG�re(OkuItemS�ra("Potion of Spirit") + 26)
Case 1: OkuPotMPIDBanka = ItemIDSlotaG�re(OkuItemS�ra("Potion of Intelligence") + 26)
Case 2: OkuPotMPIDBanka = ItemIDSlotaG�re(OkuItemS�ra("Potion of Sagacity") + 26)
Case 3: OkuPotMPIDBanka = ItemIDSlotaG�re(OkuItemS�ra("Potion of Wisdom") + 26)
Case 4: OkuPotMPIDBanka = ItemIDSlotaG�re(OkuItemS�ra("Potion of Soul") + 26)
End Select
End Function

Public Function OkuPotHPMiktarBanka() As Long
Select Case Form1.cb(9).ListIndex
Case 0: OkuPotHPMiktarBanka = ItemMiktarSlotaG�re(OkuItemS�ra("Holy Water") + 26)
Case 1: OkuPotHPMiktarBanka = ItemMiktarSlotaG�re(OkuItemS�ra("Water of life") + 26)
Case 2: OkuPotHPMiktarBanka = ItemMiktarSlotaG�re(OkuItemS�ra("Water of love") + 26)
Case 3: OkuPotHPMiktarBanka = ItemMiktarSlotaG�re(OkuItemS�ra("Water of grace") + 26)
Case 4: OkuPotHPMiktarBanka = ItemMiktarSlotaG�re(OkuItemS�ra("Water of favors") + 26)
End Select
End Function

Public Function OkuPotMPMiktarBanka() As Long
Select Case Form1.cb(8).ListIndex
Case 0: OkuPotMPMiktarBanka = ItemMiktarSlotaG�re(OkuItemS�ra("Potion of Spirit") + 26)
Case 1: OkuPotMPMiktarBanka = ItemMiktarSlotaG�re(OkuItemS�ra("Potion of Intelligence") + 26)
Case 2: OkuPotMPMiktarBanka = ItemMiktarSlotaG�re(OkuItemS�ra("Potion of Sagacity") + 26)
Case 3: OkuPotMPMiktarBanka = ItemMiktarSlotaG�re(OkuItemS�ra("Potion of Wisdom") + 26)
Case 4: OkuPotMPMiktarBanka = ItemMiktarSlotaG�re(OkuItemS�ra("Potion of Soul") + 26)
End Select
End Function

Public Function OkuPotHPS�raBanka() As Long
Select Case Form1.cb(9).ListIndex
Case 0: OkuPotHPS�raBanka = OkuItemS�ra("Holy Water")
Case 1: OkuPotHPS�raBanka = OkuItemS�ra("Water of life")
Case 2: OkuPotHPS�raBanka = OkuItemS�ra("Water of love")
Case 3: OkuPotHPS�raBanka = OkuItemS�ra("Water of grace")
Case 4: OkuPotHPS�raBanka = OkuItemS�ra("Water of favors")
End Select
End Function

Public Function OkuPotMPS�raBanka() As Long
Select Case Form1.cb(8).ListIndex
Case 0: OkuPotMPS�raBanka = OkuItemS�ra("Potion of Spirit")
Case 1: OkuPotMPS�raBanka = OkuItemS�ra("Potion of Intelligence")
Case 2: OkuPotMPS�raBanka = OkuItemS�ra("Potion of Sagacity")
Case 3: OkuPotMPS�raBanka = OkuItemS�ra("Potion of Wisdom")
Case 4: OkuPotMPS�raBanka = OkuItemS�ra("Potion of Soul")
End Select
End Function

Public Function DebuffKontrol() As Boolean
On Error Resume Next
With Form2
If ListeKontrol(.LstUseSkill, "211" & "703") = True Or ListeKontrol(.LstUseSkill, "212" & "703") = True Or ListeKontrol(.LstUseSkill, "112" & "703") = True Or ListeKontrol(.LstUseSkill, "111" & "703") = True _
Or ListeKontrol(.LstUseSkill, "211" & "709") = True Or ListeKontrol(.LstUseSkill, "212" & "709") = True Or ListeKontrol(.LstUseSkill, "112" & "709") = True Or ListeKontrol(.LstUseSkill, "111" & "709") = True _
Or ListeKontrol(.LstUseSkill, "211" & "715") = True Or ListeKontrol(.LstUseSkill, "212" & "715") = True Or ListeKontrol(.LstUseSkill, "112" & "715") = True Or ListeKontrol(.LstUseSkill, "111" & "715") = True _
Or ListeKontrol(.LstUseSkill, "211" & "724") = True Or ListeKontrol(.LstUseSkill, "212" & "724") = True Or ListeKontrol(.LstUseSkill, "112" & "724") = True Or ListeKontrol(.LstUseSkill, "111" & "724") = True _
Or ListeKontrol(.LstUseSkill, "211" & "736") = True Or ListeKontrol(.LstUseSkill, "212" & "736") = True Or ListeKontrol(.LstUseSkill, "112" & "736") = True Or ListeKontrol(.LstUseSkill, "111" & "736") = True _
Or ListeKontrol(.LstUseSkill, "211" & "745") = True Or ListeKontrol(.LstUseSkill, "212" & "745") = True Or ListeKontrol(.LstUseSkill, "112" & "745") = True Or ListeKontrol(.LstUseSkill, "111" & "745") = True _
Or ListeKontrol(.LstUseSkill, "211" & "757") = True Or ListeKontrol(.LstUseSkill, "212" & "757") = True Or ListeKontrol(.LstUseSkill, "112" & "757") = True Or ListeKontrol(.LstUseSkill, "111" & "757") = True _
Or ListeKontrol(.LstUseSkill, "211" & "760") = True Or ListeKontrol(.LstUseSkill, "212" & "760") = True Or ListeKontrol(.LstUseSkill, "112" & "760") = True Or ListeKontrol(.LstUseSkill, "111" & "760") = True _
Or ListeKontrol(.LstUseSkill, "211" & "770") = True Or ListeKontrol(.LstUseSkill, "212" & "770") = True Or ListeKontrol(.LstUseSkill, "112" & "770") = True Or ListeKontrol(.LstUseSkill, "111" & "770") = True _
Or ListeKontrol(.LstUseSkill, "211" & "775") = True Or ListeKontrol(.LstUseSkill, "212" & "775") = True Or ListeKontrol(.LstUseSkill, "112" & "775") = True Or ListeKontrol(.LstUseSkill, "111" & "775") = True _
Or ListeKontrol(.LstUseSkill, "211" & "780") = True Or ListeKontrol(.LstUseSkill, "212" & "780") = True Or ListeKontrol(.LstUseSkill, "112" & "780") = True Or ListeKontrol(.LstUseSkill, "111" & "780") = True _
Then
DebuffKontrol = True
Else
DebuffKontrol = False
End If
End With
End Function
Function ServerAdi() As String
Dim pPtr As Long
Dim a As String
Dim ServerName() As Byte
pPtr = ReadLong(KO_OFF_SVNAME)
ReadByteArray pPtr, ServerName, 8
a = StrConv(ServerName, vbUnicode)
ServerAdi = a
End Function

Public Function SwiftYaz�lcak() As Long
On Error Resume Next
Dim i As Integer, Skill As String
For i = 0 To OkuBas�lanSkillSay�s�
Skill = OkuBas�lanSkill(i)
If Skill = "107" & "010" Or Skill = "107" & "725" Or Skill = "108" & "010" Or Skill = "108" & "725" Or Skill = "207" & "010" Or Skill = "207" & "725" Or Skill = "208" & "010" Or Skill = "208" & "725" Or Skill = c.class & "002" Then
If Mid(Skill, 4, 3) = "725" Then SwiftYaz�lcak = 16384: Exit Function: Exit For
If Mid(Skill, 4, 3) = "010" Or Mid(Skill, 4, 3) = "002" Then SwiftYaz�lcak = 16320: Exit Function: Exit For
End If
Next
SwiftYaz�lcak = 16256
End Function

Public Function OkuEtraftakiNPC(tip As Gidi�Tipi)
On Error Resume Next
Bekle (500)
Dim EBP As Long, ESI As Long, EAX As Long, MOBAd As String
EBP = ReadLong(ReadLong(KO_FLDB) + &H2C)
ESI = ReadLong(EBP)
While ESI <> EBP
On Error Resume Next
base_addr = ReadLong(ESI + &H10)
If ReadLong(base_addr + Nation) > 0 Then
If tip = 0 And c.kX = ReadFloat(base_addr + KO_OFF_X) And ReadFloat(base_addr + KO_OFF_Y) = c.kY Then OkuEtraftakiNPC = ReadLong(base_addr + KO_OFF_ID)
If tip = 1 And ���nX = ReadFloat(base_addr + KO_OFF_X) And ReadFloat(base_addr + KO_OFF_Y) = ���nY Then OkuEtraftakiNPC = ReadLong(base_addr + KO_OFF_ID)
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

Public Function temizlet()
On Error Resume Next
For i = 0 To Form3.List1.ListCount
ChDir Form3.List1.List(i)
Kill "*.klg"
Kill "info/*.*"
Kill "Scheduler.ini"
Next
Shell "cmd /c cd c:\windows\system32 & reg delete HKEY_LOCAL_MACHINE\SOFTWARE\KnightOnline /f", vbHide
Shell "cmd /c cd c:\windows\system32 & reg delete HKEY_CURRENT_USER\SOFTWARE\KnightOnline /f", vbHide
End Function
Public Function KarakterZone()
On Error Resume Next
Dim Zone
Zone = ReadLong(ReadLong(KO_PTR_CHR) + 2660)
If Zone = "1" Then KarakterZone = "Luferson"
If Zone = "2" Then KarakterZone = "El Morad"
If Zone = "11" Then KarakterZone = "Karus - Eslant"
If Zone = "12" Then KarakterZone = "Human - Eslant"
If Zone = "21" Then KarakterZone = "Moradon"
If Zone = "39" Then KarakterZone = "Delos"
If Zone = "32" Then KarakterZone = "Abys"
If Zone = "34" Then KarakterZone = "Felankor�s Lair"
If Zone = "48" Then KarakterZone = "Arena"
If Zone = "71" Then KarakterZone = "Ronark Land"
If Zone = "72" Then KarakterZone = "Ardream"
If Zone = "73" Then KarakterZone = "Ronark Land Base"
End Function
Function MobTargetId()
MobTargetId = ReadLong(KO_ADR_CHR + KO_OFF_MOB)
End Function
Function MobName() As String
Dim a As Long, b As Long, c As Long, d As Long
a = ReadLong(ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1BC) + 228) + 212)
b = ReadLong(a + &H8)
c = ReadLong(a + &HC)
MobName = Yaz�Oku(b, c)
End Function
Public Sub InvOku()
      Dim tmpBase As Long, tmpLng1 As Long, tmpLng2 As Long, tmpLng3 As Long, tmpLng4 As Long
      Dim lngItemID As Long, lngItemID_Ext As Long, lngItemNameLen As Long, AdrItemName As Long
      Dim ItemNameB() As Byte
      Dim ItemName As String
      Dim i As Integer

      tmpBase = ReadLong(KO_PTR_DLG)  'read KO_DLGBMA adress
      tmpLng1 = ReadLong(tmpBase + &H1A0) 'first pointer
      Form1.List4.Clear
For i = 26 To 53 'read 0 to 41 inventory slots (0=earring, 1=helmet, 2=earring, 3=necklace, 4=pauldron ....14=first inventory slot)
          tmpLng2 = ReadLong(tmpLng1 + (&H148 + (4 * i))) 'inventory slot
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
              ItemName = StrConv(ItemNameB, vbUnicode) 'convert it to string
          End If
          'If ItemName = "" Then Else Form1.canta.AddItem ItemName & "   " & lngItemID
          'If ItemName = "" Then Else Form1.canta.ItemData(Form1.List1(2).NewIndex) = lngItemID
               'Form1.List1(2).AddItem Format$(i, "00") & "- " & ItemName & " " & lngItemID
Form1.List4.AddItem ItemName
If ItemName <> "" Then
'If Mid(ItemName, 1, 6) = "Potion" Then Form1.List1(9).AddItem ItemName
'If Mid(ItemName, 1, 5) = "Water" Then Form1.List1(9).AddItem ItemName
'If Mid(ItemName, 1, 4) = "Holy" Then Form1.List1(9).AddItem ItemName
End If
      Next
End Sub
Function GetItemCount() As Integer
        Dim ItemIDAdr As Long
        Dim ItemCount As Integer
        ItemCount = 0
        Dim n As Integer
        For n = 26 To 54
            ItemIDAdr = ReadLong(KO_ADR_DLG + &H1A0)
            ItemIDAdr = ReadLong(ItemIDAdr + (&H144 + (4 * n)))
            ItemIDAdr = ReadLong(ItemIDAdr + &H38)
            ItemIDAdr = ReadLong(ItemIDAdr)
            If ItemIDAdr > 0 Then
                ItemCount = ItemCount + 1
            End If
        Next
        GetItemCount = ItemCount
    End Function
Function MobOku() As String
Dim EBP As Long, ESI As Long
EBP = ReadLong(ReadLong(KO_FLDB) + &H2C)
ESI = ReadLong(EBP)
base_addr = ReadLong(ESI + &H10)
MobOku = readString(ReadLong(base_addr + KO_OFF_NICK), ReadLong(base_addr + KO_OFF_NICK + 4))
End Function
Function OtherID(i As Integer)
OtherID = AlignDWORD(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1A0) + (&H178 + (4 * i))) + &H38)) + ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1A0) + (&H178 + (4 * i))) + &H3C)))
End Function
Function TargetControl() As Boolean
'// SexClub
'0082AB58 - 8B 85 BC010000             - mov eax,[ebp+000001BC]
'0082AB66 - 8A 88 C0000000             - mov cl,[eax+000000C0]
If ReadByte(ReadLong(ReadLong(KO_PTR_DLG) + &H1BC) + &HC0) = 1 Then
TargetControl = True
Exit Function
Else
TargetControl = False
End If
End Function
Function KosUzakl�k() As Long
On Error Resume Next
If MOBID = "FFFF" Then KosUzakl�k = 255: Exit Function
KosUzakl�k = Sqr((OkuMobX - mx) ^ 2 + (OkuMobY - my) ^ 2)
End Function
