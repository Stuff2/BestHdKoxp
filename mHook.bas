Attribute VB_Name = "mlHook"
Public Sub DispatchMailSlot()
Dim MsgCount As Long
Dim rc As Long
Dim MessageBuffer As String
Dim pVal As Long
Dim fullcode
Dim Code
Dim sKey
MsgCount = 1
Do While MsgCount <> 0
rc = CheckForMessages(MsgCount)
If CBool(rc) And MsgCount > 0 Then
If ReadMessage(MessageBuffer, MsgCount) Then
Dim str As String, lng As Long
Call HexVal(MessageBuffer)
Code = MessageBuffer
If Asc(Left(MessageBuffer, 1)) <> 7 And Asc(Left(MessageBuffer, 1)) <> 8 And Asc(Left(MessageBuffer, 1)) <> 34 And Asc(Left(MessageBuffer, 1)) <> 23 And Asc(Left(MessageBuffer, 1)) <> 24 And Asc(Left(MessageBuffer, 1)) <> 21 And Asc(Left(MessageBuffer, 1)) <> 49 And Asc(Left(MessageBuffer, 1)) <> 9 And Asc(Left(MessageBuffer, 1)) <> 6 And Asc(Left(MessageBuffer, 1)) <> 41 And Asc(Left(MessageBuffer, 1)) <> 16 And Asc(Left(MessageBuffer, 1)) <> 11 And Asc(Left(MessageBuffer, 1)) <> 24 Then
'Form1.List1.AddItem ChrToHex(MessageBuffer) & "|" & Asc(Left(MessageBuffer, 1))
End If
On Error Resume Next
With Form1
Select Case Asc(Left(MessageBuffer, 1))
'////// Oto kutu
Case &H23 '//Kutu düþtü
If .ch(84) = 1 Then
If Form2.tmKutuyaGit = True Then Exit Sub
Kutu_Hedef = Hex2Val(Mid(MessageBuffer, 2, 2))
Kutu_Hedef_X = ReadFloat(OkuMobBase(Kutu_Hedef) + KO_OFF_X)
Kutu_Hedef_Y = ReadFloat(OkuMobBase(Kutu_Hedef) + KO_OFF_Y)
Kutu_Hedef_Dis = OkuBenMesafe(Kutu_Hedef_X, Kutu_Hedef_Y, Kutu_Hedef)
KutuID = Hex2Val(Mid(MessageBuffer, 4, 4))
If .ch(117) = 1 Then
If Form2.tmKutuyaGit = False Then KutuAç
Else
If Kutu_Hedef_Dis <= 2 Then KutuAç
End If
End If

Case &H24 '//Kutu açýldý
If .ch(84) = 1 And Form2.tmKutuyaGit = False Then

For i = 1 To 6
If .ch(117) = 1 And Form2.tmKutuyaGit = False Then DüþenItemID(i) = Hex2Val(Mid(MessageBuffer, ((6 * i) - 4), 4))
If .ch(117) = 0 Then DüþenItemID(i) = Hex2Val(Mid(MessageBuffer, ((6 * i) - 4), 4))
If DüþenItemID(i) <> "0" Then
If itemAyýr(DüþenItemID(i)) = True Then
If Kutu_Hedef_Dis <= 2 And itemAyýr(DüþenItemID(i)) = True And .ch(117) = 0 Then KutuTopla DüþenItemID(i)
If OkuBenMesafe(Kutu_Hedef_X, Kutu_Hedef_Y, Kutu_Hedef) > 2 And .ch(117) = 1 And itemAyýr(DüþenItemID(i)) = True And CInt(.txt(55)) > CInt(OkuBenMesafe(Kutu_Hedef_X, Kutu_Hedef_Y, Kutu_Hedef)) Then
If Durum(8) = False Then KutuSlotX = c.kX: KutuSlotY = c.kY: Durum(8) = True
KutuyaGit Kutu_Hedef_X, Kutu_Hedef_Y
End If
End If
End If
Next
End If

Case &H27 'char ýþýnlanýyor mu
If Hex2Val(Mid(MessageBuffer, 2, 2)) > 2 Then CharIþýnlanýyor = True
If Hex2Val(Mid(MessageBuffer, 2, 2)) = 2 Then Form2.tmCharIþýnlanýyor = True

Case &H7 'slota giriþ çýkýþ
If Hex2Val(Mid(MessageBuffer, 2, 1)) <> 2 Then
Dim NameLen2 As Integer, ClanLen2 As Integer
NameLen2 = Hex2Val(Mid(MessageBuffer, 6, 1))
ClanLen2 = Hex2Val(Mid(MessageBuffer, 14 + NameLen2, 1))
UserInAuth = Hex2Val(Mid(MessageBuffer, 47 + NameLen2 + ClanLen2, 2))
GMID = Mid(MessageBuffer, 7, NameLen2)
If .ch(25) = 1 Or .ch(26) = 1 Or .ch(27) = 1 Or .ch(28) = 1 Or .ch(29) = 1 Then
If UserInAuth = 0 Then GMKorun
If .ch(116).Value = 1 And ListeKontrol(.lst(4), GMID) = True Then GMKorun
End If
End If
'gelen kiþini bilgileri
If .ch(108) = 1 And Hex2Val(Mid(MessageBuffer, 2, 1)) <> 2 Then 'giriþ bilgi
Dim Opposite As Integer, UserNation2 As Integer, NameLen5 As Integer, InOutType2 As Integer, UserID2 As Long
InOutType2 = Hex2Val(Mid(MessageBuffer, 2, 1))
UserID2 = Hex2Val(Mid(MessageBuffer, 4, 2))
NameLen5 = Hex2Val(Mid(MessageBuffer, 6, 1))
UserNation2 = Hex2Val(Mid(MessageBuffer, 7 + NameLen5, 1))
Select Case ReadLong(KO_ADR_CHR + Nation): Case 1: Opposite = 2: Case 2: Opposite = 1: End Select
If Opposite = UserNation2 Then CharIþlemYap 8, "Slota Karþý Irk Girdi." Else iþLemYapýldý(24) = False
End If

Dim InOutType As Integer, NameLen4 As Integer, ClanLen4 As Integer, Clan As String, UserNick As String
InOutType = Hex2Val(Mid(MessageBuffer, 2, 1))
If InOutType <> 2 Then
NameLen4 = Hex2Val(Mid(MessageBuffer, 6, 1))
ClanLen4 = Hex2Val(Mid(MessageBuffer, 14 + NameLen4, 1))
Clan = ""
Clan = Mid(MessageBuffer, 15 + NameLen4, ClanLen4)
UserNick = Mid(MessageBuffer, 7, NameLen4)
If .ch(32) = 1 And Form2.CharClan = Clan Then PartyYolla UserNick
If .ch(31) = 1 And ListeKontrol(Form2.lstParty, UserNick) = True Then PartyYolla UserNick
If .ch(96) = 1 And ListeKontrol(.lst(6), UserNick) = True Then PartyYolla UserNick
End If

Case &H10 '//Cht,pm
Dim RecvType As Integer, NameLen3 As Integer, Username As String, ChatLen As Integer, ChatString As String
RecvType = Hex2Val(Mid(MessageBuffer, 2, 1))
NameLen3 = Hex2Val(Mid(MessageBuffer, 6, 1))
Username = Mid(MessageBuffer, 7, NameLen3)
ChatLen = Hex2Val(Mid(MessageBuffer, 7 + NameLen3, 1))
ChatString = Mid(MessageBuffer, 9 + NameLen3, ChatLen)
If ChatString = "*v bot?" Then Konuþ 0, "ewt"
If ChatString = "*nekadarpara" Then Konuþ 3, ReadLong(KO_ADR_CHR + &H9D0) & ".para"
If ChatString = "*pt add" Then PartyYolla Username
If .ch(33) = 1 And ChatString = .txt(12).text Then PartyYolla Username
If .ch(82) = 1 And RecvType = 3 Then ChteGöreSkillKullan ChatString: Form2.uyeAd(0) = Username
If .ch(109) = 1 And RecvType = 1 Then ChteGöreSkillKullan ChatString: Form2.uyeAd(0) = Username
If .ch(110) = 1 And RecvType = 6 Then ChteGöreSkillKullan ChatString: Form2.uyeAd(0) = Username
If .ch(54) = 1 Or .ch(46) = 1 Or .ch(47) = 1 Or .ch(48) = 1 Or .ch(49) = 1 Or .ch(50) = 1 Or .ch(51) = 1 Or .ch(52) = 1 Or .ch(53) = 1 Then CharKomutEt ChatString, Username
If .ch(83) = 1 Then KonuþmaKaydet Username, ChatString, "\Kayýtlar\Chat_" & c.isim & ".html", RecvType
If .ch(111) = 1 Then
Select Case RecvType
Case 1 'ALLCHT
.txt(51) = .txt(51) & vbCrLf & Username & ": " & ChatString
Case 2 'PM
.txt(51) = .txt(51) & vbCrLf & Username & ": " & ChatString
Case 3 'PARTY
.txt(51) = .txt(51) & vbCrLf & Username & ": " & ChatString
Case 4 'ALLY
.txt(51) = .txt(51) & vbCrLf & Username & ": " & ChatString
Case 5 'SHOUT
.txt(51) = .txt(51) & vbCrLf & Username & ": " & ChatString
Case 6 'CLAN
.txt(51) = .txt(51) & vbCrLf & Username & ": " & ChatString
Case 7 'NOTICE
.txt(51) = .txt(51) & vbCrLf & Username & ": " & ChatString
Case 13 'COMMANDER
.txt(51) = .txt(51) & vbCrLf & Username & ": " & ChatString
Case 14 'Merchant
.txt(51) = .txt(51) & vbCrLf & Username & ": " & ChatString
End Select
End If

Case &H68 '// pazar oku
If .ch(39) = 1 Then
If Strings.Mid$(AlignDWORD(Hex2Val(Mid$(MessageBuffer, 2, 1))), 2, 1) = 8 Then CharIþlemYap 3, "Pazar Bozuldu." Else iþLemYapýldý(3) = False
End If

Case &H31 'skil Oku
' Mid(Text1, 13, 4)'charID'|| Mid(Text1, 17, 4)'mobID'|| Mid(Text1, 5, 6) 'kullandýðý skill||' Mid(Text1, 1, 4) 'skillModu 3103 gibi..
If .ch(17) = 1 And .opt(25) = True Then
'If Mid(ChrToHex(MessageBuffer), 1, 4) = "3103" Or Mid(ChrToHex(MessageBuffer), 1, 4) = "3101" Or Mid(ChrToHex(MessageBuffer), 1, 4) = "3102" Then 'skill kontrolü failed varmý
If KiþiPartyKontrol(Mid(ChrToHex(MessageBuffer), 13, 4)) = True Then 'kiþi partyde mi?
If ReadLong(OkuCharBase(DecFormatla(Mid(ChrToHex(MessageBuffer), 17, 4), 4)) + Nation) = 0 Then 'atýlan skill mob'a mý atýlmýþ ?
 PartySeçiliZ = Mid(ChrToHex(MessageBuffer), 17, 4)
End If
End If
End If
'End If

Case &H2F 'party
istekPartyUserLen = Hex2Val(Mid(MessageBuffer, 4, 2))
istekPartyUser = Mid(MessageBuffer, 7, istekPartyUserLen)
If .ch(30) = 1 Then
If .opt(31) = True And ListeKontrol(.lst(5), istekPartyUser) = True Then PartyKabulEt
If .opt(32) = True Then PartyKabulEt
End If

'Case 16 ' Son Yazý Yazanýn ismi ve Yazdýðý ' KoJD Smartd da vardý
'Dim YazanID
'Dim yazanIsim
'Dim YazanIsimLenght
'Dim Yazdigi
'Dim YazdigiLenght
'YazanID = Strings.Mid(AlignDWORD(Hex2Val(Mid(MessageBuffer, 4, 2))), 1, 4)
'YazanIsimLenght = Hex2Val(Mid(MessageBuffer, 6, 1))
'yazanIsim = Mid(MessageBuffer, 7, YazanIsimLenght)
'YazdigiLenght = Hex2Val(Mid(MessageBuffer, 6 + YazanIsimLenght + 1, 2))
'Yazdigi = Mid(MessageBuffer, 7 + YazanIsimLenght + 2, YazdigiLenght)
'If npt1.Check8.value = 1 Then
'Form1.TpCap.Caption = YazanID
'If Yazdigi = Form1.Text7(0).text Then
'PartyTP
'End If
'End If

End Select
End With
End If
End If
Loop
Exit Sub
End Sub
Public Sub HookYükle()
Dim HookSýra As Integer, TmpAddr As Long
TmpAddr = ReadLong(ReadLong(KO_PTR_DLG)) + &H8
Dim HookFix As Long
Dim a, b, c, d As Integer
Randomize
a = CInt(Rnd * 9)
Randomize
b = CInt(Rnd * 9)
Randomize
c = CInt(Rnd * 9)
Randomize
d = CInt(Rnd * 9)
Randomize
MSName = "\\.\mailslot\besthd_" & Right(App.ThreadID, 2) & "_" & a & b & c & d & CInt(Rnd * 9999)
MSHandle = KurMaýlSlot(MSName)
Debug.Print MSName
Dim str As String
str = ReadByte(KO_PTR_DLG + &H88)
Select Case ReadByte(KO_PTR_DLG + &H88)
Case 8: HookSýra = 0
Case 9: HookSýra = 1
Case 10: HookSýra = 2
End Select

KO_RECVHK = TmpAddr + (HookSýra * 4)
KO_RCVHKB = ReadLong(KO_RECVHK)
HookRecvPackets
End Sub
Public Function KurMaýlSlot(ByVal MailSlotName As String, Optional MaxMessageSize As Long = 0, Optional ReadTimeOut As Long = 50) As Long
KurMaýlSlot = CreateMailslot(MailSlotName, MaxMessageSize, ReadTimeOut, ByVal 0&)
End Function
Sub HookRecvPackets()
        Dim CreateFileAADDR As Long, WriteFileADDR As Long, CloseHandleADDR As Long
        Dim pBytesMSName() As Byte, pBytes() As Byte
        Dim pStr As String, pStrKO_RECVFNC As String

        CreateFileAADDR = FindDLLFunc("kernel32.dll", "CreateFileA")
        WriteFileADDR = FindDLLFunc("kernel32.dll", "WriteFile")
        CloseHandleADDR = FindDLLFunc("kernel32.dll", "CloseHandle")

        KO_RCVFNC = VirtualAllocEx(KO_HANDLE, 0, 256, MEM_COMMIT, PAGE_READWRITE)

        pBytesMSName = StrConv(MSName, vbFromUnicode)
        WriteByteArray KO_RCVFNC + &H400, pBytesMSName, UBound(pBytesMSName) - LBound(pBytesMSName) + 1

        pStr = AlignDWORD(CreateFileAADDR)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RCVFNC + &H32A, pBytes, UBound(pBytes) - LBound(pBytes) + 1

        pStr = AlignDWORD(WriteFileADDR)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RCVFNC + &H334, pBytes, UBound(pBytes) - LBound(pBytes) + 1

        pStr = AlignDWORD(CloseHandleADDR)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RCVFNC + &H33E, pBytes, UBound(pBytes) - LBound(pBytes) + 1

        pStr = AlignDWORD(KO_RCVHKB)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RCVFNC + &H208, pBytes, UBound(pBytes) - LBound(pBytes) + 1
        
        pStr = AlignDWORD(KO_RECVHK)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RCVFNC + &H212, pBytes, UBound(pBytes) - LBound(pBytes) + 1

        pStr = AlignDWORD(KO_RCVFNC)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RCVFNC + &H21C, pBytes, UBound(pBytes) - LBound(pBytes) + 1
        
        pStr = "52" + "890D" + AlignDWORD(KO_RCVFNC + &H320) + "8905" + AlignDWORD(KO_RCVFNC + &H3B6) + "8B4E04890d" + AlignDWORD(KO_RCVFNC + &H1F4) + "8B56088915" + AlignDWORD(KO_RCVFNC + &H1FE) + "81F9001000007D3E5068800000006A036A006A01680000004068" + AlignDWORD(KO_RCVFNC + &H400) + "FF15" + AlignDWORD(KO_RCVFNC + &H32A) + "83F8FF741D506A0054FF35" + AlignDWORD(KO_RCVFNC + &H1F4) + "ff35" + AlignDWORD(KO_RCVFNC + &H1FE) + "50ff15" + AlignDWORD(KO_RCVFNC + &H334) + "ff15" + AlignDWORD(KO_RCVFNC + &H33E) + "8b0d" + AlignDWORD(KO_RCVFNC + &H320) + "8b05" + AlignDWORD(KO_RCVFNC + &H3B6) + "5aff25" + AlignDWORD(KO_RCVFNC + &H208)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RCVFNC, pBytes, UBound(pBytes) - LBound(pBytes) + 1
        
        pStrKO_RECVFNC = AlignDWORD(KO_RCVFNC)
        ConvHEX2ByteArray pStrKO_RECVFNC, pBytes
        WriteByteArray KO_RECVHK, pBytes, UBound(pBytes) - LBound(pBytes) + 1
End Sub
Function FindDLLFunc(pDLLName As String, pFuncName As String) As Long
Dim LoadAddr As Long
Dim ProcAddr As Long
Dim Offset As Long
Dim RemoteAddr As Long

LoadAddr = LoadLibrary(pDLLName)
If LoadAddr = 0 Then End
ProcAddr = GetProcAddress(LoadAddr, pFuncName)
Offset = ProcAddr - LoadAddr
FreeLibrary LoadAddr

RemoteAddr = FindModuleHandle(pDLLName)
Do While RemoteAddr = 0
    RemoteAddr = FindModuleHandle(pDLLName)
    DoEvents
Loop
FindDLLFunc = RemoteAddr + Offset
End Function

Function ReadMessage(MailMessage As String, MessagesLeft As Long)
Dim lBytesRead As Long
Dim lNextMsgSize As Long
Dim lpBuffer     As String
ReadMessage = False
Call GetMailslotInfo(MSHandle, ByVal 0&, lNextMsgSize, MessagesLeft, ByVal 0&)
If MessagesLeft > 0 And lNextMsgSize <> MAILSLOT_NO_MESSAGE Then
    lBytesRead = 0
    lpBuffer = String$(lNextMsgSize, Chr$(0))
    Call ReadFile(MSHandle, ByVal lpBuffer, Len(lpBuffer), lBytesRead, ByVal 0&)
    If lBytesRead <> 0 Then
        MailMessage = Left(lpBuffer, lBytesRead)
        ReadMessage = True
        Call GetMailslotInfo(MSHandle, ByVal 0&, lNextMsgSize, MessagesLeft, ByVal 0&)
    End If
End If
End Function

Public Function HexString2(EvalString As String) As String
Dim intStrLen As Integer
Dim intLoop As Integer
Dim strHex As String

EvalString = Trim(EvalString)
intStrLen = Len(EvalString)
For intLoop = 1 To intStrLen
strHex = strHex & Hex(Asc(Mid(EvalString, intLoop, 1)))
Next
HexString2 = strHex
End Function

Public Function Hex2Val(pStrHex As String) As Long
Dim TmpStr As String
Dim TmpHex As String
Dim i As Long
TmpStr = ""
For i = Len(pStrHex) To 1 Step -1
    TmpHex = Hex(Asc(Mid(pStrHex, i, 1)))
    If Len(TmpHex) = 1 Then TmpHex = "0" & TmpHex
    TmpStr = TmpStr & TmpHex
Next
Hex2Val = CLng("&H" & TmpStr)
End Function

Public Function HexVal(pStrHex As String) As Long
Dim TmpStr As String
Dim TmpHex As String
Dim hexcode As String
Dim i As Long
TmpStr = ""
For i = Len(pStrHex) To 1 Step -1
    TmpHex = Hex(Asc(Mid(pStrHex, i, 1)))
    If Len(TmpHex) = 1 Then TmpHex = "0" & TmpHex
    TmpStr = TmpStr & TmpHex
Next
hexcode = TmpStr
End Function

Function CheckForMessages(MessageCount As Long)
Dim lMsgCount    As Long
Dim lNextMsgSize As Long
CheckForMessages = False
GetMailslotInfo MSHandle, ByVal 0&, lNextMsgSize, lMsgCount, ByVal 0&
MessageCount = lMsgCount
CheckForMessages = True
End Function
Public Function ChrToHex(pStrHex As String) As String
Dim TmpStr As String
Dim TmpHex As String
Dim i As Long
TmpStr = ""
For i = Len(pStrHex) To 1 Step -1
    TmpHex = Hex(Asc(Right(pStrHex, i)))
    If Len(TmpHex) = 1 Then TmpHex = "0" & TmpHex
    TmpStr = TmpStr & TmpHex
Next
ChrToHex = TmpStr
End Function

Public Function itemAyýr(ItemID As Long) As Boolean
itemAyýr = False
If ItemID = "0" Then: itemAyýr = False: Exit Function
With Form1
If .opt(16).Value = True Then ' herþeyi topla
itemAyýr = True: Exit Function
End If
Form2.LstKutuTopla.text = ""
If .ch(90).Value = True Then ' sadece para topla
If ItemID = "900000000" Then
itemAyýr = True: Exit Function
End If
End If
If .opt(18).Value = True And .ch(120) = 0 Then     ' sadece seçili topla
For i = 0 To Form2.LstKutuTopla.ListCount - 1
If Mid(Form2.LstKutuTopla.List(i), 1, 6) = Mid(ItemID, 1, 6) Then itemAyýr = True: Exit Function
Next
End If

If .opt(18).Value = True And .ch(120) = 1 Then     ' sadece seçili topla +lý
For i = 0 To Form2.LstKutuTopla.ListCount - 1
If Mid(Form2.LstKutuTopla.List(i), 1, 6) = Mid(ItemID, 1, 6) And Mid(ItemID, 9, 1) = .cb(27).ItemData(.cb(27).ListIndex) Then itemAyýr = True: Exit Function
Next
End If

If .opt(19).Value = True Then   ' sadece seçili toplama
For i = 0 To Form2.LstKutuTopla.ListCount - 1
If Mid(Form2.LstKutuTopla.List(i), 1, 6) = Mid(ItemID, 1, 6) Then itemAyýr = False: Exit Function
Next
itemAyýr = True: Exit Function
End If

Form2.lstUniqeItem.text = ItemID
If .ch(119) = 1 And Form2.lstUniqeItem.text <> "" Then   ' sadece uniqe topla
itemAyýr = True: Exit Function
End If

itemAyýr = False
End With
End Function

Public Sub KutuTopla(ItemID As Long)
If ItemID = "0" Or itemAyýr(ItemID) = False Then Exit Sub
If HexFormatla(Hex(ItemID), 8) <> "00000000" Then Paket "26" & HexFormatla(Hex(KutuID), 8) & HexFormatla(Hex(ItemID), 8) 'hexformatla çalýþmazsa allignDword yapýcan
End Sub
Function KutuAç()
Paket "24" & HexFormatla(Hex(KutuID), 8)
End Function

Public Sub KutuyaGit(kX As Single, kY As Single)
If Form2.tmKutuyaGit = True Then: Exit Sub
If kX = 0 And kY = 0 Then: Exit Sub
If OkuBenMesafe(kX, kY) > 0 Then YürüXY kX, kY: Debug.Print "Gidiliyor " & kX & "," & kY
KutuGitX = kX
KutuGitY = kY
Form2.tmKutuyaGit = True
End Sub

Function OkuBenMesafe(Target_X As Single, Target_Y As Single, Optional Target_ID As Long)
If Target_ID = ReadLong(KO_ADR_CHR + KO_OFF_ID) Then OkuBenMesafe = 0: Exit Function
Dim tmpPtr, a, b, mX, mY, cx, cy As Long
Dim frkx, frky, uz As Single
tmpPtr = ReadLong(KO_PTR_CHR)
cx = ReadFloat(tmpPtr + KO_OFF_X)
cy = ReadFloat(tmpPtr + KO_OFF_Y)
frkx = (Target_X - cx) * (Target_X - cx)
frky = (Target_Y - cy) * (Target_Y - cy)
uz = Fix(((frkx + frky) ^ 0.5) / 4)
OkuBenMesafe = uz
End Function

Function OkuBenMesafe2(Me_x As Single, Me_y As Single, Target_X As Long, Target_Y As Long) As Single
Dim frkx As Single, frky As Single, uz As Single
frkx = (Target_X - Me_x) * (Target_X - Me_x)
frky = (Target_Y - Me_y) * (Target_Y - Me_y)
uz = Fix(((frkx + frky) ^ 0.5) / 4)
OkuBenMesafe2 = uz
End Function


