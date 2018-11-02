Attribute VB_Name = "mlBaglan"
Public APIAdr As Long, KO_Thread As Long

Sub Main()
App.Title = "(Adsýz - Not Defteri)" & OkuRastgele(CInt(Rnd * App.ThreadID)) & Chr(Right$(OkuRastgele(123), 1)) & Chr(Right$(OkuRastgele(123), 2)) & OkuRastgele(123)
Form3.Show
TSDurum = False
KonuþDurum = False
Toplamaizin = True
For i = 1 To 8
GeçenPartyMaxHP(i) = 9000000
Next
On Error Resume Next
Dim dosya
Set dosya = CreateObject("Scripting.FileSystemObject")
dosya.createFolder (App.Path & "\Kayýtlar")
dosya.createFolder (App.Path & "\Kayýtlar\Ekran Görüntüleri")
dosya.createFolder (App.Path & "\Kayýtlar\Ayarlar")
dosya.createFolder (App.Path & "\Kayýtlar\Slot")
dosya.createFolder (App.Path & "\Kayýtlar\Exp")
dosya.createFolder (App.Path & "\Rotalar")
dosya.createFolder (App.Path & "\Rotalar\Bankadan Al")
dosya.createFolder (App.Path & "\Rotalar\Repair")
dosya.createFolder (App.Path & "\Rotalar\Satýn Al")
End Sub
Sub YüklePointer()
KO_PTR_CHR = &HC3D0A0
KO_PTR_DLG = &HC3D3E4
KO_PTR_PKT = &HC3D3B0
KO_SNDX = &HC327C0
KO_SND_PACKET = KO_PTR_PKT + &HC5
ThreadPtr = &HC3D470

'KO_SMMB = &HC3CFD0ü
KO_FPOZ = &H4B6040
'KO_FPOZ = &H47797F
KO_FPOB = &H4B5190
KO_STMB = &H8350E0
KO_FNCZ = &H834610
KO_FNCB = &H834820
KO_FLDB = &HC3D09C
KO_FLPZ = &HC329E0
KO_FLMZ = &HC32A8C
 

KO_OFF_MX = &HD84
KO_OFF_MY = &HD8C
KO_OFF_MZ = &HD88
KO_OFF_MOVE = &HD38
KO_OFF_NICK = &H5CC
KO_OFF_LVL = &H5EC
KO_OFF_CLASS = 1512
KO_OFF_ID = &H5C4
KO_OFF_CLAN = &H624
KO_OFF_SWIFT = &H696
KO_OFF_SVNAME = KO_PTR_DLG - &HB8
KO_OFF_HP = &H5F4
KO_OFF_MAXHP = &H5F0
KO_OFF_MP = &H9C8
KO_OFF_MAXMP = &H9C4
KO_OFF_WH = &H5F8
KO_OFF_Y = &HCC
KO_OFF_X = &HC4
KO_OFF_Z = &HC8
KO_OFF_EXP = &H9E0
KO_OFF_MAXEXP = &H9D8
KO_OFF_MOB = &H590
KO_OFF_STAT_MP = &HA18
KO_OFF_STAT_INT = &HA10
KO_OFF_STAT_HP = &HA00
KO_OFF_STAT_DEX = &HA08
KO_OFF_STAT_STR = &H9F8
KO_OFF_AP = &HA20
KO_OFF_AC = &HA28
KO_OFF_Go1 = &HD68 'tmm KOrdinata Git KO_OFF_MOVTYPE
KO_OFF_Go2 = &H3A4 ' tmm KOrdinata Git KO_OFF_MVCHRTYP

ThreadPtr2 = ThreadPtr
Nation = &H5E0
End Sub
Public Function KOBaglan() As Boolean
If FindWindow(vbNullString, KO_TITLE) Then
GetWindowThreadProcessId FindWindow(vbNullString, KO_TITLE), KO_PID
KO_HANDLE = OpenProcess(PROCESS_ALL_ACCESS, False, KO_PID)
KO_Hwd = FindWindow(vbNullString, KO_TITLE)
Form2.KOYOL = IþlemYoluPidIle(KO_PID)
DizinBul Form2.KOYOL
KO_Yer = Form2.KOYOL
If KO_PID = 0 Then
MsgBox ("Lütfen Oyuna ChaosKoxptan Girin...(" & KO_PID & ")."), vbCritical
KOBaglan = False
End If
KO_SND_FNC = "&H" & Hex(BulSNDFNC(KO_SNDX, KO_PTR_PKT))
BytesAddr2 = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)
KO_MAIN_Thread = GetProcAddress(GetModuleHandle("kernel32.dll"), "GetCurrentThreadId")
KO_Thread = ReadLong(ThreadPtr)
Debug.Print "MainThread:" & KO_MAIN_Thread
Debug.Print "KOThread:" & KO_Thread
HookYükle
KOBaglan = True
Else
MsgBox ("'" & KO_TITLE & "' Bulunamýyor."), vbCritical
End If
AlanTemizle
End Function
Public Sub YükleKO()
YüklePointer
Call KOBaglan
If KO_HANDLE <> 0 Then
KO_ADR_CHR = ReadLong(KO_PTR_CHR)
KO_ADR_DLG = ReadLong(KO_PTR_DLG)
End If
MeteorTime = 1
NovaTime = 1
InfernoTime = 1
IceStormTime = 1
FrostTime = 1
BliTime = 1
ChaTime = 1
StaTime = 1
ThuTime = 1
RuinTime = 1
HellishTime = 1
HarshTime = 1
CollapseTime = 1
RavingTime = 1
HadesTime = 1
pStrokeTime = 1
JudgmentTime = 1
HelisTime = 1
MassiveTime = 1
ParasiteTime = 1
MaliceTime = 1
StabTime = 1
Stab2Time = 1
JabTime = 1
BloodTime = 1
PierceTime = 1
ShockTime = 1
IllusionTime = 1
ThrustTime = 1
VampiricTime = 1
SpikeTime = 1
BloodyTime = 1
BlindingTime = 1
BeastTime = 1
CriticalTime = 1
FireArrowTime = 1
PoisonArrowTime = 1
FireShotTime = 1
PoisonShotTime = 1
ExplosiveShotTime = 1
ViperTime = 1
CounterStrikeTime = 1
IceShotTime = 1
LightingShotTime = 1
BlowArrowTime = 1
BlindingStrafeTime = 1
PowerShotTime = 1
BloodingTime = 1
ManglingTime = 1
MultipleShorkTime = 1
SeverTime = 1
LegCuttingTime = 1
ShearTime = 1
HashTime = 1
PiercingTime = 1
CrashTime = 1
SlashTime = 1
Flash = 1
Shiver = 1
Flame = 1
ColdWave = 1
Spark = 1
Blaze = 1
FireBall = 1
FireSpear = 1
FireBlast = 1
HellFire = 1
PillarofFire = 1
FireThorn = 1
FireImpact = 1
Incineration = 1
VampiricFire = 1
Igzination = 1
Chill = 1
IceArrow = 1
IceOrb = 1
IceBlast = 1
Frostbite = 1
IceComet = 1
IceImpact = 1
Prismatic = 1
FreezingDistance = 1
CounterSpell = 1
Lightning = 1
Thunder = 1
ThunderBlast = 1
Discharge = 1
StaticOrb = 1
StaticThorn = 1
ThunderImpact = 1
StunCloud = 1

End Sub
Public Function BulSNDFNC(ptrSND As Long, ptrPKT As Long) As Long
Dim SNDval As Byte
Dim EAXval As Byte
SNDval = ReadByte(ptrSND)
Select Case SNDval
Case &H16: EAXval = 0
Case &H17: EAXval = 1
Case &H14: EAXval = 2
Case &H15: EAXval = 3
Case &H12: EAXval = 4
Case &H13: EAXval = 5
Case &H10: EAXval = 6
Case &H11: EAXval = 7
Case &H1E: EAXval = 8
Case &H1F: EAXval = 9
End Select
BulSNDFNC = ReadLong(ReadLong(ptrPKT) + EAXval * 4 + &H40074)
End Function
