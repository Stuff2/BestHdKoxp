Attribute VB_Name = "mlAraç"
Private Declare Function getprivateprofilestring Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyname As Any, ByVal lpdefault As String, ByVal lpreturnedstring As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Private Declare Function SetProcessWorkingSetSize Lib "kernel32" (ByVal hProcess As Long, ByVal dwMinimumWorkingSetSize As Long, ByVal dwMaximumWorkingSetSize As Long) As Boolean
Private Declare Function writeprivateprofilestring Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyname As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
Private Declare Function GetFileNameFromBrowseW Lib "shell32" Alias "#63" (ByVal hwndOwner As Long, ByVal lpstrFile As Long, ByVal nMaxFile As Long, ByVal lpstrInitialDir As Long, ByVal lpstrDefExt As Long, ByVal lpstrFilter As Long, ByVal lpstrTitle As Long) As Long
Private Declare Function lstrlen Lib "kernel32" Alias "lstrlenA" (ByVal lpString As String) As Long
Public Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Private Declare Sub keybd_event Lib "user32" (ByVal bVk As Byte, ByVal bScan As Byte, ByVal dwFlags As Long, ByVal dwExtraInfo As Long)

Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" _
                        (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Integer, _
                         ByVal lParam As Any) As Long
Public ThreadPtr As Long, ThreadPtr2 As Long
Public Enum GidiþTipi
Yürüyerek = 0
ýþýnlanarak = 1
End Enum

Public Function ListBoxtaAra(lstObject As ListBox, strTemp As String, Optional bMatch As Boolean = True) As Integer
    Dim lngReturn As Long
    With lstObject
        If bMatch Then
            lngReturn = SendMessage(.hWnd, &H1A2, -1, ByVal strTemp)
        Else
            lngReturn = SendMessage(.hWnd, &H18F, -1, ByVal strTemp)
        End If
  ListBoxtaAra = lngReturn
        .ListIndex = lngReturn
    End With
End Function
Public Sub DizinBul(txt As TextBox)
For i = 1 To Len(txt)
txt.SelStart = Len(txt) - i
txt.SelLength = 1
If txt.SelText = "\" Then txt.SelLength = i: txt.SelText = "": txt.SelStart = Len(txt): txt.SelLength = 1: txt.SelText = "": Exit Sub
Next
End Sub

Public Function DosyaSeç(lform As Form, AçýlýþDosyasý As String, dosyaismi As String, DosyaUzantýsý As String, Optional MecburDosyaismi As String = "*", Optional PencereBaþlýðý As String = "Dosya Seç")
Dim sSave As String
            sSave = Space(255)
            GetFileNameFromBrowseW lform.hWnd, StrPtr(sSave), 255, StrPtr(AçýlýþDosyasý), StrPtr("txt"), StrPtr(dosyaismi & Chr$(0) + MecburDosyaismi + "." & DosyaUzantýsý + Chr$(0)), StrPtr(PencereBaþlýðý)
            DosyaSeç = Left$(sSave, lstrlen(sSave))
End Function
Function ReadIni(Section As String, KeyName As String, FileName As String) As String
Dim sRet As String
sRet = String(255, Chr(0))
ReadIni = Left(sRet, getprivateprofilestring(Section, ByVal KeyName$, "", sRet, Len(sRet), FileName))
End Function
Function WriteIni(sSection As String, sKeyName As String, sNewString As String, sFileName) As Integer
Dim r
r = writeprivateprofilestring(sSection, sKeyName, sNewString, sFileName)
End Function
Public Sub IniYaz(Baþlýk As String, YanBaþlýk As String, Value As String, AppPathDosyaYeri)
Call WriteIni(Baþlýk, YanBaþlýk, Value, App.Path & "\" & AppPathDosyaYeri)
End Sub
Public Function IniOku(Baþlýk As String, YanBaþlýk As String, AppPathDosyaYeri)
IniOku = ReadIni(Baþlýk, YanBaþlýk, App.Path & "\" & AppPathDosyaYeri)
End Function
Public Function IniOku2(Baþlýk As String, YanBaþlýk As String, AppPathDosyaYeri As String)
IniOku2 = ReadIni(Baþlýk, YanBaþlýk, AppPathDosyaYeri)
End Function


Public Sub TexteGir(KeyAscii As Integer, sayýGirilsin_Mi As Boolean)
If sayýGirilsin_Mi = True Then
         If KeyAscii < Asc("0") Or KeyAscii > Asc("9") Then
         If KeyAscii = Asc("") Then
         Else
         
                  KeyAscii = 0
                  End If
         End If
         Else
             If KeyAscii < Asc("0") Or KeyAscii > Asc("9") Then
             Else
                If KeyAscii = Asc("") Then
         Else
                  KeyAscii = 0
             End If
         End If
         End If
End Sub

Public Function FindModuleHandle(ModuleName As String) As Long
Dim hModules(1 To 256) As Long
Dim BytesReturned As Long
Dim ModuleNumber As Byte
Dim TotalModules As Byte
Dim FileName As String * 128
Dim ModName As String
EnumProcessModules KO_HANDLE, hModules(1), 256, BytesReturned
TotalModules = BytesReturned / 4
For ModuleNumber = 1 To TotalModules
GetModuleFileNameExA KO_HANDLE, hModules(ModuleNumber), FileName, 128
ModName = Left(FileName, InStr(FileName, Chr(0)) - 1)
If UCase(Right(ModName, Len(ModuleName))) = UCase(ModuleName) Then
FindModuleHandle = hModules(ModuleNumber)
End If
Next
End Function
Public Function WriteByteArray(pAddy As Long, pmem() As Byte, pSize As Long)
    On Error Resume Next
    WriteProcessMem KO_HANDLE, pAddy, pmem(LBound(pmem)), pSize, 0&
End Function

Public Sub ReadByteArray(Addr As Long, pmem() As Byte, pSize As Long)
On Error Resume Next
Dim Value As Byte
ReDim pmem(1 To pSize) As Byte
ReadProcessMem KO_HANDLE, Addr, pmem(1), pSize, 0&
End Sub

Public Function ReadFloat(Addr As Long) As Long 'read a float value
On Error Resume Next
    Dim Value As Single
    ReadProcessMem KO_HANDLE, Addr, Value, 4, 0&
    ReadFloat = Value
End Function

Public Function WriteFloat(Addr As Long, val As Single)
On Error Resume Next
    WriteProcessMem KO_HANDLE, Addr, val, 4, 0&
End Function
Public Sub WriteByte(Addr As Long, pVal As Byte)
Dim pbw As Long
WriteProcessMem KO_HANDLE, Addr, pVal, 1, pbw
End Sub

Public Function ReadByte(pAddy As Long, Optional pHandle As Long) As Byte
    Dim Value As Byte
    If pHandle <> 0 Then
        ReadProcessMem pHandle, pAddy, Value, 1, 0&
    Else
        ReadProcessMem KO_HANDLE, pAddy, Value, 1, 0&
    End If
    ReadByte = Value
End Function

Public Function readString(Addr As Long, ByVal Slen As Long) As String
On Error Resume Next
Dim StringA() As Byte
Dim Value As Byte
If Slen > 0 Then
ReDim StringA(1 To Slen) As Byte
ReadProcessMem KO_HANDLE, Addr, StringA(1), Slen, 0&
readString = StrConv(StringA, vbUnicode)
Else
readString = ""
End If
End Function
Public Function ReadStringHandlesiz(Addr As Long, ByVal Slen As Long, Handle As Long) As String
Dim StringA() As Byte
Dim Value As Byte
If Slen > 0 Then
ReDim StringA(1 To Slen) As Byte
ReadProcessMem Handle, Addr, StringA(1), Slen, 0&
ReadStringHandlesiz = StrConv(StringA, vbUnicode)
Else
ReadStringHandlesiz = ""
End If
End Function
Function AlignDWORD(pParam As Long) As String
Dim HiW As Integer
Dim LoW As Integer

Dim HiBHiW As Byte
Dim HiBLoW As Byte

Dim LoBHiW As Byte
Dim LoBLoW As Byte

HiW = HiWord(pParam)
LoW = LoWord(pParam)

HiBHiW = HiByte(HiW)
HiBLoW = HiByte(LoW)

LoBHiW = LoByte(HiW)
LoBLoW = LoByte(LoW)

AlignDWORD = IIf(Len(Hex(LoBLoW)) = 1, "0" & Hex(LoBLoW), Hex(LoBLoW)) & _
         IIf(Len(Hex(HiBLoW)) = 1, "0" & Hex(HiBLoW), Hex(HiBLoW)) & _
         IIf(Len(Hex(LoBHiW)) = 1, "0" & Hex(LoBHiW), Hex(LoBHiW)) & _
         IIf(Len(Hex(HiBHiW)) = 1, "0" & Hex(HiBHiW), Hex(HiBHiW))
End Function

Public Function HiByte(ByVal wParam As Integer) As Byte
    HiByte = (wParam And &HFF00&) \ (&H100)
End Function

Public Function LoByte(ByVal wParam As Integer) As Byte
LoByte = wParam And &HFF&
End Function

Function LoWord(DWord As Long) As Integer
   If DWord And &H8000& Then '
      LoWord = DWord Or &HFFFF0000
   Else
      LoWord = DWord And &HFFFF&
   End If
End Function

Function HiWord(DWord As Long) As Integer
   HiWord = (DWord And &HFFFF0000) \ &H10000
End Function

Public Function WriteLong(Addr As Long, val As Long) ' write a 4 byte value
    WriteProcessMem KO_HANDLE, Addr, val, 4, 0&
End Function
Public Function ReadLong1(Addr As Long) As Long 'read a 1 byte value
On Error Resume Next
    Dim Value As Long
    ReadProcessMem KO_HANDLE, Addr, Value, 1, 0&
    ReadLong1 = Value
End Function
Public Function ReadLong(Addr As Long) As Long 'read a 4 byte value
On Error Resume Next
    Dim Value As Long
    ReadProcessMem KO_HANDLE, Addr, Value, 4, 0&
    ReadLong = Value
End Function
Public Function ReadLonghandlesiz(Addr As Long, Handle As Long) As Long 'read a 4 byte value
    Dim Value As Long
    ReadProcessMem Handle, Addr, Value, 4, 0&
    ReadLonghandlesiz = Value
End Function

Function ExecuteRemoteCode1(pCode() As Byte, Optional WaitExecution As Boolean = False) As Long
Dim hThread As Long, ThreadID As Long, Ret As Long
Dim SE As SECURITY_ATTRIBUTES
SE.nLength = Len(SE)
SE.bInheritHandle = False
ExecuteRemoteCode1 = 0
If FuncPtr = 0 Then
FuncPtr = VirtualAllocEx(KO_HANDLE, 0, UBound(pCode) - LBound(pCode) + 1, MEM_COMMIT, PAGE_READWRITE)
End If
If FuncPtr <> 0 Then
    WriteByteArray FuncPtr, pCode, UBound(pCode) - LBound(pCode) + 1
    hThread = CreateRemoteThread(ByVal KO_HANDLE, SE, 0, ByVal FuncPtr, 0&, 0&, ThreadID)
   If hThread Then
      Ret = WaitForSingleObject(hThread, INFINITE)
      ExecuteRemoteCode1 = ThreadID
   End If
   CloseHandle hThread
   Ret = VirtualFreeEx(KO_HANDLE, FuncPtr, 0, MEM_RELEASE)
End If
End Function
Function ExecuteRemoteCode(pCode() As Byte, Optional WaitExecution As Boolean = False) As Long
Dim hThread As Long, ThreadID As Long, Ret As Long
Dim SE As SECURITY_ATTRIBUTES
SE.nLength = Len(SE)
SE.bInheritHandle = False
ExecuteRemoteCode = 0
If FuncPtr = 0 Then
FuncPtr = VirtualAllocEx(KO_HANDLE, 0, UBound(pCode) - LBound(pCode) + 1, MEM_COMMIT, PAGE_READWRITE)
End If
If FuncPtr <> 0 Then
    WriteByteArray FuncPtr, pCode, UBound(pCode) - LBound(pCode) + 1
    hThread = CreateRemoteThread(ByVal KO_HANDLE, SE, 0, ByVal FuncPtr, 0&, 0&, ThreadID)
   If hThread Then
      Ret = WaitForSingleObject(hThread, INFINITE)
      ExecuteRemoteCode = ThreadID
   End If
   CloseHandle hThread
   Ret = VirtualFreeEx(KO_HANDLE, FuncPtr, 0, MEM_RELEASE)
   PaketGönderiliyor = False
End If
End Function
Function SendPackets(pPacket() As Byte)
Dim pSize As Long
Dim pCode() As Byte
Dim Addr2 As Long

APIAdr = FindDLLFunc("kernel32.dll", "GetCurrentThreadId")
pSize = UBound(pPacket) - LBound(pPacket) + 1

If KO_MAIN_Thread = 0 Then
KO_MAIN_Thread = GetProcAddress(GetModuleHandle("kernel32.dll"), "GetCurrentThreadId")
End If
WriteLong ThreadPtr, KO_Thread
If BytesAddr = 0 Then
BytesAddr = VirtualAllocEx(KO_HANDLE, 0, pSize, MEM_COMMIT, PAGE_READWRITE)
End If
    Addr2 = BytesAddr + pSize 'eski thread.
    WriteByteArray BytesAddr, pPacket, pSize
ConvHEX2ByteArray "608B0D" & AlignDWORD(KO_PTR_PKT) & "68" & AlignDWORD(pSize) & "68" & AlignDWORD(BytesAddr) & "BF" & AlignDWORD(KO_SND_FNC) & "FFD7C605" & AlignDWORD(KO_PTR_PKT + &HC5) & "0061C3", pCode
   ' ConvHEX2ByteArray "60BF" & AlignDWORD(GetProcAddress(FindModuleHandle("kernel32.dll"), "GetCurrentThreadId")) & "FFD78905" & AlignDWORD(ThreadPtr) & "8B0D" & AlignDWORD(KO_PTR_PKT) & "68" & AlignDWORD(pSize) & "68" & AlignDWORD(BytesAddr) & "BF" & AlignDWORD(KO_SND_FNC) & "FFD7C705" & AlignDWORD(ThreadPtr) & AlignDWORD(APIAdr) & "C605" & AlignDWORD(KO_PTR_PKT + &HC5) & "0061C3", pCode
    UzaktanKodÇalýþtýr pCode, True

WriteLong ThreadPtr, KO_Thread
WriteByte (KO_PTR_PKT + &HC5), 0
VirtualFreeEx KO_HANDLE, BytesAddr, 0, MEM_RELEASE&
End Function
Function SendPackets1(pPacket() As Byte)
Dim pSize As Long
Dim pCode() As Byte
Dim Addr2 As Long
APIAdr = FindDLLFunc("kernel32.dll", "GetCurrentThreadId")
pSize = UBound(pPacket) - LBound(pPacket) + 1
If KO_MAIN_Thread = 0 Then
KO_MAIN_Thread = GetProcAddress(GetModuleHandle("kernel32.dll"), "GetCurrentThreadId")
End If
If BytesAddr = 0 Then
BytesAddr = VirtualAllocEx(KO_HANDLE, 0, pSize, MEM_COMMIT, PAGE_READWRITE)
End If
    Addr2 = BytesAddr + pSize 'eski thread.
    PaketGönderiliyor = True
    WriteByteArray BytesAddr, pPacket, pSize
             ConvHEX2ByteArray "60BF" & AlignDWORD(APIAdr) & "FFD78905" & AlignDWORD(ThreadPtr) & "8B0D" & AlignDWORD(KO_PTR_PKT) & "68" & AlignDWORD(pSize) & "68" & AlignDWORD(BytesAddr) & "BF" & AlignDWORD(KO_SND_FNC) & "FFD7C705" & AlignDWORD(ThreadPtr) & AlignDWORD(ReadLong(ThreadPtr)) & "C605" & AlignDWORD(KO_PTR_PKT + &HC5) & "0061C3", pCode
    UzaktanKodÇalýþtýr pCode, True
VirtualFreeEx KO_HANDLE, BytesAddr, 0, MEM_RELEASE&
End Function
Function UzaktanKodÇalýþtýr(pCode() As Byte, Optional WaitExecution As Boolean = False) As Long
Dim hThread As Long, ThreadID As Long, Ret As Long
Dim SE As SECURITY_ATTRIBUTES
SE.nLength = Len(SE)
SE.bInheritHandle = False
UzaktanKodÇalýþtýr = 0
If FuncPtr = 0 Then
FuncPtr = VirtualAllocEx(KO_HANDLE, 0, UBound(pCode) - LBound(pCode) + 1, MEM_COMMIT, PAGE_READWRITE)
End If
If FuncPtr <> 0 Then
    WriteByteArray FuncPtr, pCode, UBound(pCode) - LBound(pCode) + 1
    hThread = CreateRemoteThread(ByVal KO_HANDLE, SE, 0, ByVal FuncPtr, 0&, 0&, ThreadID)
   If hThread Then
      Ret = WaitForSingleObject(hThread, INFINITE)
      UzaktanKodÇalýþtýr = ThreadID
   End If
   CloseHandle hThread
   Ret = VirtualFreeEx(KO_HANDLE, FuncPtr, 0, MEM_RELEASE)
      PaketGönderiliyor = False
End If
End Function


Public Function Hex2Byte(Paket As String, pByte() As Byte)
    On Error Resume Next
    Dim i As Long
    Dim j As Long
    ReDim pByte(1 To Len(Paket) / 2)

    j = LBound(pByte) - 1
    For i = 1 To Len(Paket) Step 2
        j = j + 1
        pByte(j) = CByte("&H" & Mid(Paket, i, 2))
    Next
End Function

Function MemPatch(Handle As Long, Addr As Long, Patch As String)
Dim pBytes() As Byte, Size As Long
ConvHEX2ByteArray Patch, pBytes
Size = UBound(pBytes) - LBound(pBytes) + 1
WriteProcessMem Handle, Addr, pBytes(LBound(pBytes)), Size, vbNull
End Function
Public Function ConvHEX2ByteArray(pStr As String, pByte() As Byte)
On Error Resume Next
Dim i As Long
Dim j As Long
pStr = Trim(pStr)
ReDim pByte(1 To Len(pStr) / 2)

j = LBound(pByte) - 1
For i = 1 To Len(pStr) Step 2
    j = j + 1
    pByte(j) = CByte("&H" & Mid(pStr, i, 2))
Next
End Function
Public Function ListeKontrol(Liste As ListBox, Aranacakitem As String) As Boolean
On Error Resume Next
Dim i As Integer, Sayý As Integer
If Liste.ListCount = 0 Then Exit Function
If Liste.ListCount = 1 Then Sayý = 1 Else Sayý = Liste.ListCount - 1
For i = 0 To Sayý
If Liste.list(i) = Aranacakitem Then: ListeKontrol = True: Exit For: Exit Function
ListeKontrol = False
Next
End Function

Public Sub Bekle(seconds As Integer, Optional sn As Boolean = False)
On Error Resume Next
If sn = True Then
        dTimer = Second(Time)
          Do Until dTimer = Second(Time) - seconds
Sleep (1)
         DoEvents
          Loop
Else '----
            
            Dim dTimer2 As Double
          dTimer2 = Timer
          Do While Timer < dTimer2 + seconds / 1000
Sleep (1)
         DoEvents
          Loop
End If
End Sub

Function ReadString2(ByVal pAddy As Long, ByVal OtoSize As Boolean, Optional ByVal LSize As Long = 1) As String
        Dim Value As Byte
        Dim tex() As Byte
        On Error Resume Next
If OtoSize = True Then
             ReadProcessMem KO_HANDLE, pAddy, Value, 1, 0&
            LSize = Value
ReDim tex(1 To LSize)
            ReadProcessMem KO_HANDLE, pAddy, tex(1), LSize, 0&
          ReadString2 = StrConv(tex, vbUnicode)
          Else
            If LSize = 0 Then
                MsgBox "Fazla Karakter içeriyor..", vbCritical, "Error"
                Exit Function
            Else
                ReDim tex(1 To LSize)
                 ReadProcessMem KO_HANDLE, pAddy, tex(1), LSize, 0&
                ReadString2 = StrConv(tex, vbUnicode)
            End If
        End If
 End Function

Public Sub YazýYükle()
'With Form1
'.lb(34) = Chr(89) & Chr(97) & Chr(122) & Chr(253) & Chr(108) & Chr(97) & Chr(99) & Chr(97) & Chr(107) & Chr(32) & Chr(67) & Chr(104) & Chr(97) & Chr(116) & Chr(32) & Chr(84) & Chr(252) & Chr(114) & Chr(252) & Chr(58)
'.ch(109).Caption = Chr(65) & Chr(108) & Chr(108) & Chr(32) & Chr(67) & Chr(104) & Chr(97) & Chr(116)
'.lb(63) = Chr(65) & Chr(254) & Chr(97) & Chr(240) & Chr(253) & Chr(100) & Chr(97) & Chr(107) & Chr(105) & Chr(32) & Chr(99) & Chr(104) & Chr(97) & Chr(116) & Chr(108) & Chr(101) & Chr(114) & Chr(100) & Chr(101) & Chr(110) & Chr(32) & Chr(121) & Chr(97) & Chr(122) & Chr(97) & Chr(110) & Chr(108) & Chr(97) & Chr(114) & Chr(97) & Chr(32) & Chr(107) & Chr(117) & Chr(108) & Chr(108) & Chr(97) & Chr(110)
'.fr(29).Caption = Chr(67) & Chr(104) & Chr(97) & Chr(116) & Chr(32) & Chr(71) & Chr(101) & Chr(231) & Chr(109) & Chr(105) & Chr(254) & Chr(105)
'.ch(111).Caption = Chr(67) & Chr(104) & Chr(97) & Chr(116) & Chr(32) & Chr(71) & Chr(101) & Chr(231) & Chr(109) & Chr(105) & Chr(254) & Chr(105) & Chr(32) & Chr(65) & Chr(107) & Chr(116) & Chr(105) & Chr(102)
'.ch(83).Caption = Chr(67) & Chr(104) & Chr(97) & Chr(116) & Chr(32) & Chr(71) & Chr(101) & Chr(231) & Chr(109) & Chr(105) & Chr(254) & Chr(105) & Chr(110) & Chr(105) & Chr(32) & Chr(75) & Chr(97) & Chr(121) & Chr(253) & Chr(116) & Chr(32) & Chr(101) & Chr(116)
'.lb(47).Caption = Chr(46) & Chr(46) & Chr(92) & Chr(75) & Chr(97) & Chr(121) & Chr(253) & Chr(116) & Chr(108) & Chr(97) & Chr(114) & Chr(92) & Chr(67) & Chr(104) & Chr(97) & Chr(116) & Chr(46) & Chr(104) & Chr(116) & Chr(109) & Chr(108)
'.fr(41).Caption = Chr(67) & Chr(104) & Chr(97) & Chr(116) & Chr(101) & Chr(32) & Chr(71) & Chr(246) & Chr(114) & Chr(101) & Chr(32) & Chr(83) & Chr(107) & Chr(105) & Chr(108) & Chr(108) & Chr(32) & Chr(75) & Chr(117) & Chr(108) & Chr(108) & Chr(97) & Chr(110) & Chr(40) & Chr(115) & Chr(97) & Chr(100) & Chr(101) & Chr(99) & Chr(101) & Chr(32) & Chr(112) & Chr(97) & Chr(114) & Chr(116) & Chr(121) & Chr(100) & Chr(101) & Chr(107) & Chr(105) & Chr(32) & Chr(107) & Chr(105) & Chr(254) & Chr(105) & Chr(108) & Chr(101) & Chr(114) & Chr(101) & Chr(41)
'.ch(123).Caption = Chr(83) & Chr(112) & Chr(101) & Chr(101) & Chr(100) & Chr(32) & Chr(72) & Chr(97) & Chr(99) & Chr(107)
'End With
End Sub

Public Sub HataYaz(hatatext As String)
If ListeKontrol(Form1.lstHata, hatatext) = False Then
Form1.lstHata.AddItem hatatext
Form1.lstHata.ListIndex = Form1.lstHata.ListCount - 1: Form1.lstHata.Text = ""
End If
End Sub
Public Sub HataSil(hatatext As String)
If ListeKontrol(Form1.lstHata, hatatext) = True Then
For i = 0 To Form1.lstHata.ListCount - 1
If Form1.lstHata.list(i) = hatatext Then Form1.lstHata.RemoveItem (i)
Next
End If
End Sub
Public Sub GMKorun()
With Form1
If .ch(25) = 1 Then TownAt
If .ch(26).Value = 1 And BotDurum = True Then .btnBotDr.Value = True
If .ch(27) = 1 Then Paket "5101" 'disconnect
If .ch(28) = 1 Then TerminateProcess KO_HANDLE, &O0: Shell ("shutdown -s -f -t 1"), vbNormalFocus
If .ch(29).Value = 1 Then AlarmÇal ("GM Geldi.(" & GMID & ")")
End With
End Sub
Public Sub PartyKabulEt()
Paket "2F0201"
End Sub
Public Sub AlarmÇal(sebep As String)
With Form1
Call sndPlaySound(App.Path & "\Ses\Alarm.wav", 1)
.pcAlarm.Top = 2040
.pcAlarm.Left = 360
.lb(69).Caption = sebep
.pcAlarm.Visible = True
Form2.tmAlarm = True
End With
End Sub
Function PartyYolla(isim As String)
Dim pmlen As String
Form2.PartyYollaNick = isim
pmlen = HexFormatla(Len(Form2.PartyYollaNick.Text), 2)
Paket "2f03" & pmlen & "00" & HexString(Form2.PartyYollaNick.Text)
Paket "2F01" & pmlen & "00" & HexString(Form2.PartyYollaNick.Text)
End Function
Function PMat(nick As String)
Paket "35011300" & HexString(nick)
End Function
Function PmAT2(Text As String, nick As String)
Dim nicklen, yazýlen
nicklen = HexFormatla(Hex(Len(nick)), 2)
yazýlen = HexFormatla(Hex(Len(Text)), 2)
Paket "3501" & nicklen & "00" & HexString(nick)
Paket "1002" & yazýlen & "00" & HexString(Text)
End Function

Function HexString(EvalString As String) As String
Dim intStrLen As Integer
Dim intLoop As Integer
Dim HexStr As String

EvalString = Trim(EvalString)
intStrLen = Len(EvalString)
For intLoop = 1 To intStrLen
HexStr = HexStr & Hex(Asc(Mid(EvalString, intLoop, 1)))
Next
HexString = HexStr
End Function
Function OkuCharBase(TargetChar As Long)
On Error Resume Next
Dim Ptr As Long, tmpCharBase As Long, tmpBase As Long, IDArray As Long, BaseAddr As Long, mob As Long
mob = TargetChar
Ptr = ReadLong(KO_FLDB)
tmpCharBase = ReadLong(Ptr + &H3C) 'char=0x3C
tmpBase = ReadLong(tmpCharBase + &H4) '0x1DD8B1B8
While tmpBase <> 0
IDArray = ReadLong(tmpBase + &HC)
If IDArray >= mob Then
If IDArray = mob Then
BaseAddr = ReadLong(tmpBase + &H10) 'BASE
End If
tmpBase = ReadLong(tmpBase + &H0)
Else
tmpBase = ReadLong(tmpBase + &H8)
End If
Wend
OkuCharBase = BaseAddr
End Function
Function OkuMobBase(TargetMob As Long)
On Error Resume Next
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
tmpBase = ReadLong(tmpBase + &H0) 'Aþaðý
Else
tmpBase = ReadLong(tmpBase + &H8) 'Yukarý
End If
Wend
OkuMobBase = BaseAddr
End Function
Function OkuMesafe(TargetID As Long, mob As Boolean)
On Error Resume Next
If TargetID = ReadLong(KO_ADR_CHR + KO_OFF_ID) Then OkuMesafe = 0: Exit Function
Dim Target_X As Single, Target_Y As Single
If mob = True Then Target_X = ReadFloat(OkuMobBase(TargetID) + KO_OFF_X) Else Target_X = ReadFloat(OkuCharBase(TargetID) + KO_OFF_X)
If mob = True Then Target_Y = ReadFloat(OkuMobBase(TargetID) + KO_OFF_Y) Else Target_Y = ReadFloat(OkuCharBase(TargetID) + KO_OFF_Y)
OkuMesafe = OkuBenMesafe(Target_X, Target_Y)
End Function

Function OkuRastgele(U_Bound As Long) As Long
Randomize
OkuRastgele = Rnd * U_Bound
End Function
Function AyarlaMob(MOBID As Long)
If MOBID <> 0 And HexFormatla(Hex(MOBID), 4) <> "FFFF" Then
WriteLong (ReadLong(KO_PTR_CHR) + KO_OFF_MOB), MOBID
'Dim MobBase As Long, xCode() As Byte, xStr As String
'MobBase = OkuMobBase(MOBID)
'xStr = "6068" & _
'        AlignDWORD(MobBase) & _
'        "8B0D" & _
'        AlignDWORD(KO_PTR_DLG) & _
'        "BF" & _
'        AlignDWORD(KO_STMB) & _
'        "FFD761C3"

'ConvHEX2ByteArray xStr, xCode
'ExecuteRemoteCode xCode, True
'Else: Exit Function
End If
End Function

Public Function KiþiPartyKontrol(CharIDhex As String) As Boolean
If PartySayý = 0 Then KiþiPartyKontrol = False: Exit Function
For i = 1 To PartySayý + 1
If CharIDhex = PartyCharID(i) Then KiþiPartyKontrol = True: Exit Function
Next
KiþiPartyKontrol = False
End Function
Public Sub SilDosyalar()
On Error Resume Next
If Dir(KO_Yer & "\log.klg") <> "" Then Kill KO_Yer & "\log.klg"
If Dir(KO_Yer & "\Scheduler.ini") <> "" Then Kill KO_Yer & "\Scheduler.ini"
Dim dosya
Set dosya = CreateObject("Scripting.FileSystemObject")
dosya.deleteFolder (Environ("windir") & "\Prefetch")
With Form2.klgDs
.Path = KO_Yer
.Refresh
For i = 0 To .ListCount - 1
Kill .Path & "\" & .list(i)
Next
End With
End Sub
Public Function TuþKontrol(tuþ As Long) As Boolean
If GetKeyState(tuþ) = -128 Or GetKeyState(tuþ) = -127 Then TuþKontrol = True Else TuþKontrol = False
End Function
Public Sub SeçMOBListeGöre(Liste As ListBox, SeçimAdaGöre As Boolean)
If mhp <> "0" Then Exit Sub
On Error Resume Next
Form2.lstMOB2.Clear
Dim EBP As Long, ESI As Long, EAX As Long, MOBsID(0 To 39) As Long, MOBsMesafe(0 To 39) As Long, Miktar As Integer, MOBAdý2 As String
EBP = ReadLong(ReadLong(KO_FLDB) + &H2C)
ESI = ReadLong(EBP)
Do While ESI <> EBP
'Okunuyor--------------------------
If Miktar >= 10 Then Exit Do
base_addr = ReadLong(ESI + &H10)
If SeçimAdaGöre = True Then MOBAdý2 = readString(ReadLong(base_addr + KO_OFF_NICK), ReadLong(base_addr + KO_OFF_NICK + 4)) Else MOBAdý2 = ReadLong(base_addr + KO_OFF_ID)
If ListeKontrol(Liste, MOBAdý2) = True And ReadByte(base_addr + &H2A0) = 0 Then
'If ListeKontrol(Liste, MOBAdý2) = True Then
MOBsID(Miktar) = ReadLong(base_addr + KO_OFF_ID)
MOBsMesafe(Miktar) = OkuMesafe(ReadLong(base_addr + KO_OFF_ID), True)
Miktar = Miktar + 1
End If
'Okunuyor--------------------------
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
Loop
'Okundu----------------
Form2.LstSeçMOB.Clear
Form2.LstSeçMOB2.Clear

Dim X As Integer
For X = 0 To Miktar 'Listeye aktarýlýyor---------
Form2.LstSeçMOB.AddItem MOBsMesafe(X)
Form2.LstSeçMOB2.AddItem MOBsID(X)
Next
Dim i, j, c, c2
 For i = 0 To Form2.LstSeçMOB.ListCount - 1
  For j = i To Form2.LstSeçMOB.ListCount - 1
   If val(Form2.LstSeçMOB.list(j)) < val(Form2.LstSeçMOB.list(i)) Then
    c = Form2.LstSeçMOB.list(i)
     c2 = Form2.LstSeçMOB2.list(i)
    Form2.LstSeçMOB.list(i) = Form2.LstSeçMOB.list(j) 'küçükten  büyüðe sýralanýyor---------
    Form2.LstSeçMOB2.list(i) = Form2.LstSeçMOB2.list(j)
    Form2.LstSeçMOB2.list(j) = c2
    Form2.LstSeçMOB.list(j) = c
   End If
  Next
 Next
If Form2.LstSeçMOB2.ListCount > 0 Then
For i = 0 To Form2.LstSeçMOB2.ListCount - 1 'en yakýný seçiliyor
If Form2.LstSeçMOB2.list(i) > 0 Then AyarlaMob (Form2.LstSeçMOB2.list(i)): Exit For: Exit Sub
Next
End If
End Sub

Public Function StringToHex(ByVal StrToHex As String) As String
Dim strTemp   As String
Dim strReturn As String
Dim i         As Long
    For i = 1 To Len(StrToHex)
        strTemp = Hex$(Asc(Mid$(StrToHex, i, 1)))
        If Len(strTemp) = 1 Then strTemp = "0" & strTemp
        strReturn = strReturn & strTemp
    Next i
    StringToHex = strReturn
End Function

Public Function StrToHex(ByVal Text As String) As String
    Dim tmpArr() As Byte, strArr() As Byte
    Dim a As Long, b As Long, UpperBits As Byte, LowerBits As Byte
    If LenB(Text) = 0 Then Exit Function
    strArr = Text
    ReDim tmpArr(LenB(Text) + LenB(Text) - 1)
    For a = 0 To UBound(strArr) Step 2
        UpperBits = (strArr(a) And &HF0) \ &H10
        LowerBits = strArr(a) And &HF
        b = a + a
        If UpperBits > 10 Then
            tmpArr(b) = (48 Or UpperBits) + 7
        Else
            tmpArr(b) = 48 Or UpperBits
        End If
        b = b + 2
        If LowerBits > 10 Then
            tmpArr(b) = (48 Or LowerBits) + 7
        Else
            tmpArr(b) = 48 Or LowerBits
        End If
    Next a
    StrToHex = tmpArr
End Function
Function readString1(ByVal pAddy As Long, ByVal OtoSize As Boolean, Optional ByVal LSize As Long = 1) As String
Dim Value As Byte
Dim tex() As Byte
On Error Resume Next
If OtoSize = True Then
ReadProcessMem KO_HANDLE, pAddy, Value, 1, 0&
LSize = Value
ReDim tex(1 To LSize)
ReadProcessMem KO_HANDLE, pAddy, tex(1), LSize, 0&
readString1 = StrConv(tex, vbUnicode)
Else
If LSize = 0 Then
Exit Function
Else
ReDim tex(1 To LSize)
ReadProcessMem KO_HANDLE, pAddy, tex(1), LSize, 0&
readString1 = StrConv(tex, vbUnicode)
End If
End If
End Function
'3101D4A70100 4B03 4E40 0000000000000000000000000D00
'3102D4A70100 4B03 4E40 000000000000010000000000
'3103D4A70100 4B03 4E40 0000000000000100000000000000
'3101D4A701004B03D23F0000000000000000000000000D00
'3102D4A701004B03D23F000000000000010000000000
'3103D4A701004B03D23F0000000000000100000000000000
'3101D4A701004B03D23F0000000000000000000000000D00
'3102D4A701004B03D23F000000000000010000000000
'3103D4A701004B03D23F0000000000000100000000000000
'3101D4A701004B03D13F0000000000000000000000000D00
'3102D4A701004B03D13F000000000000010000000000
'3103D4A701004B03D13F0000000000000100000000000000
Function YazýOku(ByVal pAddy As Long, ByVal OtoSize As Boolean, Optional ByVal LSize As Long = 1) As String
Dim Value As Byte
Dim tex() As Byte
On Error Resume Next
If OtoSize = True Then
ReadProcessMem KO_HANDLE, pAddy, Value, 1, 0&
LSize = Value
ReDim tex(1 To LSize)
ReadProcessMem KO_HANDLE, pAddy, tex(1), LSize, 0&
YazýOku = StrConv(tex, vbUnicode)
Else
If LSize = 0 Then
MsgBox "Fazla Karakter içeriyor..", vbCritical, "Hata"
Exit Function
Else
ReDim tex(1 To LSize)
ReadProcessMem KO_HANDLE, pAddy, tex(1), LSize, 0&
YazýOku = StrConv(tex, vbUnicode)
End If
End If
End Function

Public Sub Paket(Paket As String)
If CharIþýnlanýyor = False Then
Dim pStr As String, pStr1 As String

Dim pBytes() As Byte, pBytes1() As Byte

If Form1.ch(92) = 1 Then '\\ Kalk
CharOturmuþ = False
pStr1 = "290101"
ConvHEX2ByteArray pStr1, pBytes1
SendPackets1 pBytes1
End If


Debug.Print Paket
pStr = Paket
Hex2Byte Paket, pBytes
SendPackets1 pBytes
'Bekle (10)



If Form1.ch(92) = 1 Then '\\ Otur
pStr1 = "290102"
ConvHEX2ByteArray pStr1, pBytes1
SendPackets1 pBytes1
CharOturmuþ = True
End If
End If
End Sub
Function DecFormatla(strHex As String, inLength As Integer)

Dim NewDec As String, byte1 As String, byte2 As String, byte3 As String, byte4 As String
Dim ZeroSpaces As Integer
ZeroSpaces = inLength - Len(strHex)
NewDec = String(ZeroSpaces, "0") + strHex

byte1 = Left(NewDec, 2)
byte2 = Mid(NewDec, 3, 2)
byte3 = Mid(NewDec, 5, 2)
byte4 = Right(NewDec, 2)

Select Case Len(NewDec)
Case 2
NewDec = CDec("&H" & byte1)
Case 4
NewDec = CDec("&H" & byte4 & byte1)
Case 6
NewDec = CDec("&H" & byte4 & byte2 & byte1)
Case 8
NewDec = CDec("&H" & byte4 & byte3 & byte2 & byte1)
End Select

DecFormatla = NewDec
End Function
Function ReadDoublePointer(Pointer As Long, Offset1 As Long, Offset2 As Long) As Long
Dim pPtrAdress1 As Long
Dim pPtrAdress2 As Long
pPtrAdress1 = ReadLong(ReadLong(Pointer) + Offset1)
pPtrAdress2 = ReadLong(pPtrAdress1 + Offset2)
ReadDoublePointer = pPtrAdress2
End Function
Function AlanTemizle()
SetProcessWorkingSetSize KO_HANDLE, -1, -1
End Function
