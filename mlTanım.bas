Attribute VB_Name = "mlTaným"
Option Explicit
Public Type SECURITY_ATTRIBUTES
    nLength As Long
    lpSecurityDescriptor As Long
    bInheritHandle As Long
End Type
Public Type MODULEINFO
lpBaseOfDLL As Long
SizeOfImage As Long
EntryPoint As Long
End Type

Public Const MEM_COMMIT = &H1000
Public Const MEM_RELEASE = &H8000&
Public Const PAGE_READWRITE = &H4&
Public Const PROCESS_ALL_ACCESS = &H1F0FFF
Public Const INFINITE = &HFFFF
Public Const MAILSLOT_NO_MESSAGE  As Long = (-1)
Public Declare Function GetTickCount Lib "kernel32" () As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Public Declare Function getprivateprofilestring Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyname As Any, ByVal lpdefault As String, ByVal lpreturnedstring As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Public Declare Function writeprivateprofilestring Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyname As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
Public Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Public Declare Function ReadProcessMem Lib "kernel32" Alias "ReadProcessMemory" (ByVal hProcess As Long, ByVal lpBaseAddress As Any, ByRef lpBuffer As Any, ByVal nSize As Long, lpNumberOfBytesWritten As Long) As Long
Public Declare Function WriteProcessMem Lib "kernel32" Alias "WriteProcessMemory" (ByVal hProcess As Long, ByVal lpBaseAddress As Any, ByRef lpBuffer As Any, ByVal nSize As Long, lpNumberOfBytesWritten As Long) As Long
Public Declare Function ReadFile Lib "kernel32" (ByVal hFile As Long, lpBuffer As Any, ByVal nNumberOfBytesToRead As Long, lpNumberOfBytesRead As Long, lpOverlapped As Long) As Long
Public Declare Function CreateMailslot Lib "kernel32" Alias "CreateMailslotA" (ByVal lpName As String, ByVal nMaxMessageSize As Long, ByVal lReadTimeout As Long, lpSecurityAttributes As Any) As Long
Public Declare Function GetMailslotInfo Lib "kernel32" (ByVal hMailSlot As Long, lpMaxMessageSize As Long, lpNextSize As Long, lpMessageCount As Long, lpReadTimeout As Long) As Long
Public Declare Function LoadLibrary Lib "kernel32" Alias "LoadLibraryA" (ByVal lpLibFileName As String) As Long
Public Declare Function GetProcAddress Lib "kernel32" (ByVal hModule As Long, ByVal lpProcName As String) As Long
Public Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
Public Declare Function FreeLibrary Lib "kernel32" (ByVal hLibModule As Long) As Long
Public Declare Function CreateRemoteThread Lib "kernel32" (ByVal hProcess As Long, lpThreadAttributes As SECURITY_ATTRIBUTES, ByVal dwStackSize As Long, lpStartAddress As Long, lpParameter As Any, ByVal dwCreationFlags As Long, lpThreadID As Long) As Long
Public Declare Function WaitForSingleObject Lib "kernel32" (ByVal hHandle As Long, ByVal dwMilliseconds As Long) As Long
Public Declare Function VirtualFreeEx Lib "kernel32" (ByVal hProcess As Long, lpAddress As Any, ByVal dwSize As Long, ByVal dwFreeType As Long) As Long
Public Declare Function VirtualAllocEx Lib "kernel32" (ByVal hProcess As Long, ByVal lpAddress As Long, ByVal dwSize As Long, ByVal flAllocationType As Long, ByVal flProtect As Long) As Long
Public Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Public Declare Function WritepublicProfileString Lib "kernel32" Alias "WritepublicProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyname As Any, ByVal lPaketing As Any, ByVal lpFileName As String) As Long
Public Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Public Declare Function GetKeyState Lib "user32" (ByVal nVirtKey As Long) As Integer
Public Declare Function GetForegroundWindow Lib "user32" () As Long
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Public Declare Function GetWindowThreadProcessId Lib "user32" (ByVal hWnd As Long, lpdwProcessId As Long) As Long
Public Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Public Declare Function EnumProcessModules Lib "PSAPI.DLL" (ByVal hProcess As Long, ByRef lphModule As Long, ByVal cb As Long, ByRef cbNeeded As Long) As Long
Public Declare Function GetModuleFileNameExA Lib "PSAPI.DLL" (ByVal hProcess As Long, ByVal hModule As Long, ByVal ModuleName As String, ByVal nSize As Long) As Long
Public Declare Function TerminateProcess Lib "kernel32" (ByVal hProcess As Long, ByVal uExitCode As Long) As Long
Public Declare Function ShowWindow Lib "user32.dll" (ByVal hWnd As Long, ByVal nCmdShow As Long) As Long
Public KO_PTR_CHR  As Long, KO_PTR_DLG As Long, KO_PTR_PKT As Long, KO_SNDX As Long, KO_FLDB As Long, KO_FPOZ As Long, KO_FPOB As Long, KO_STMB As Long, KO_FNCZ As Long, KO_FNCB As Long, KO_RECVHK As Long, KO_RCVHKB As Long, KO_OFF_MX As Long, KO_OFF_MY As Long, KO_OFF_MZ As Long, KO_OFF_MOVE As Long, KO_OFF_NICK As Long, KO_OFF_LVL As Long, KO_OFF_CLASS As Long, KO_OFF_ID As Long, KO_OFF_SWIFT As Long, KO_OFF_NT As Long, KO_OFF_HP As Long, KO_OFF_MAXHP As Long, KO_OFF_MP As Long, KO_OFF_MAXMP As Long, KO_OFF_SIT As Long, KO_OFF_WH As Long, KO_OFF_Y As Long, KO_OFF_X As Long, KO_OFF_Z As Long, KO_OFF_EXP As Long, KO_OFF_MAXEXP As Long, KO_OFF_GOLD As Long, KO_OFF_HD As Long, KO_OFF_MOB As Long, KO_OFF_ZONE As Long, KO_OFF_STAT_MP As Long, KO_OFF_STAT_INT As Long, KO_OFF_STAT_HP As Long, KO_OFF_STAT_DEX As Long, KO_OFF_STAT_STR As Long, KO_OFF_AP As Long, KO_OFF_AC As Long, Nation As Long, KO_SND_FNC As Long, KO_ADR_CHR As Long, KO_ADR_DLG As Long, KO_OFF_CLAN As Long, KO_RCVFNC As Long, KO_FLMZ As Long
Public KO_SND_PACKET As Long
Public KO_OFF_Go1 As Long, KO_OFF_Go2 As Long
Public Const HWND_TOPMOST = -1
Public Const HWND_NOTOPMOST = -2
Public Const SWP_NOMOVE As Long = &H2
Public Const SWP_NOSIZE As Long = &H1
Public Const SWP_NOACTIVATE = &H10
Public Const SWP_SHOWWINDOW = &H40
Public KO_TITLE As String
Public KO_HANDLE As Long, KO_FLPZ As Long
Public KO_PID As Long
Public MSName As String
Public sendNumber As String
Public MSHandle As Long
Public Win7 As Boolean
Public BytesAddr As Long, KO_OFF_SVNAME As Long
Public FuncPtr As Long
Public Const WM_LBUTTONDBLCLK = &H203
Public Const WM_RBUTTONUP = &H205
Public Declare Function Shell_NotifyIcon Lib "shell32" Alias "Shell_NotifyIconA" (ByVal dwMessage As Long, pnid As NOTIFYICONDATA) As Boolean
Public t As NOTIFYICONDATA
Public Const NIF_MESSAGE = &H1
Public Const WM_MOUSEMOVE = &H200
Public Const NIF_ICON = &H2
Public Const NIF_TIP = &H4
Public Type NOTIFYICONDATA
cbSize As Long
hWnd As Long
uld As Long
uFlags As Long
uCallbackMessage As Long
hIcon As Long
szTip As String * 64
End Type
Public SlotX1 As Long, SlotY1 As Long
Public MobaGidiyor As Boolean
Public PotZaman As Date
Public PotionSyc As Date
Public BotDurum As Boolean
Public TSDurum As Boolean
Public ItemIDsi(27), ItemAdi(27), ItemSayisi(27) As String
Public ÖncekiEþyaSayýsý As Integer
Public NPCAçýk As Boolean, KO_THREAD_CHECK As Long, SonÖlenMob As Long
Public ýþýnX As Single, ýþýnY As Single, ýþýnX2 As Single, ýþýnY2 As Single, PaketGönderiliyor As Boolean, RPRYapýlýyor As Boolean, ItemSatýnAlýnýyor As Boolean, ItemBankadanAlýnýyor As Boolean, ItemSatýlýyor As Boolean
Public Durum(1 To 30) As Boolean, CharOturmuþ As Boolean
Public PartyÖlenUyeSn(1 To 8) As Long, iþLemYapýldý(0 To 9) As Boolean, ExpGelmeSn As Long
Public PartyHP(0 To 8) As Long, PartyMaxHP(0 To 8) As Long, PartyAdý(1 To 8) As String, PartySýnýf(1 To 8) As Long, PartySýnýfAdý(1 To 8) As String, PartySayý As Integer, PartyCharID(0 To 8) As String, PartyLevel(1 To 8) As Integer, PartyCure1(1 To 8) As Long, PartyCure2(1 To 8) As Long, PartyCure3(1 To 8) As Long, PartyCure4(1 To 8) As Long, PartyCharID2(1 To 8) As Long
Public GeçenPtMaxHP(1 To 8) As Long, SlotAyrýlmaSüre(1 To 8) As Long, GeçenPtAdý(1 To 8) As String, CharIþýnlanýyor As Boolean, GeçenPartyMaxHP(1 To 8) As Long
Public Heal(15 To 1920) As Boolean, SnBuffAtýþ(1 To 8) As Boolean
Public DebuffSn(0 To 10) As Long, KonuþDurum As Boolean, KO_Hwd As Long, KutuGitX As Single, KutuGitY As Single, KutuSlotX As Single, KutuSlotY As Single
Public AlanAtackSýra As Integer, GeçiciMouseX As Long, GeçiciMouseY As Long, KO_MAIN_Thread As Long
Public BytesAddr2 As Long, PartySeçiliZ As String, KO_Yer As String, GidilenKutuID As Long, base_addr As Long, BytesAddr4 As Long
Public istekPartyUser As String, istekPartyUserLen As Long, GMID As String, UserInAuth As Integer, DüþenItemID(1 To 6) As Long, KutuID As Long, Kutu_Hedef As Long, Kutu_Hedef_X As Single, Kutu_Hedef_Y As Single, Kutu_Hedef_Dis As Long, GidilenItemID(1 To 6) As Long, Toplamaizin As Boolean
Public tmBinding As Boolean, SyBinding As Integer, tmTaþ As Boolean, SyTaþ As Integer
Global son As Integer
Public mx As Single
Public my As Single
Global toplam As Integer
Global son2 As Integer
Global toplam2 As Integer

