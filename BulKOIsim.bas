Attribute VB_Name = "mlKOIsim"
Option Explicit
Private Declare Function CreateToolhelpSnapshot Lib "kernel32" Alias "CreateToolhelp32Snapshot" (ByVal lFlags As Long, ByVal lProcessID As Long) As Long
Private Declare Function ProcessFirst Lib "kernel32" Alias "Process32First" (ByVal hSnapshot As Long, uProcess As PROCESSENTRY32) As Long
Private Declare Function ProcessNext Lib "kernel32" Alias "Process32Next" (ByVal hSnapshot As Long, uProcess As PROCESSENTRY32) As Long
Private Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Private Declare Function GetWindow Lib "user32" (ByVal hWnd As Long, ByVal wCmd As Long) As Long
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hWnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Private Declare Function GetWindowThreadProcessId Lib "user32" (ByVal hWnd As Long, lpdwProcessId As Long) As Long
Private Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hWnd As Long) As Long
Public Declare Function SuspendThread Lib "kernel32" (ByVal hThread As Long) As Long
Public Declare Function ResumeThread Lib "kernel32" (ByVal hThread As Long) As Long
Public Declare Function OpenThread Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwThreadId As Long) As Long
Public Declare Function CreateToolhelp32Snapshot Lib "kernel32" (ByVal lFlags As Long, ByVal lProcessID As Long) As Long
Public Declare Function Process32First Lib "kernel32" (ByVal hSnapshot As Long, uProcess As PROCESSENTRY32) As Long
Public Declare Function Process32Next Lib "kernel32" (ByVal hSnapshot As Long, uProcess As PROCESSENTRY32) As Long
Public Declare Function Thread32First Lib "kernel32" (ByVal hSnapshot As Long, lpte As THREADENTRY32) As Long
Public Declare Function Thread32Next Lib "kernel32" (ByVal hSnapshot As Long, lpte As THREADENTRY32) As Long
Public Const STANDARD_RIGHTS_REQUIRED = &HF0000
Public Const THREAD_SUSPEND_RESUME = &H2


Private Const TH32CS_SNAPPROCESS = &H2
Private Const TH32CS_SNAPheaplist = &H1
Private Const TH32CS_SNAPthread = &H4
Private Const TH32CS_SNAPmodule = &H8
Private Const GW_HWNDNEXT = 2
Private Const TH32CS_SNAPall = TH32CS_SNAPPROCESS + TH32CS_SNAPheaplist + TH32CS_SNAPthread + TH32CS_SNAPmodule
Private Const MAX_PATH As Integer = 260
Private Type PROCESSENTRY32
dwSize As Long
cntUsage As Long
th32ProcessID As Long
th32DefaultHeapID As Long
th32ModuleID As Long
cntThreads As Long
th32ParentProcessID As Long
pcPriClassBase As Long
dwFlags As Long
szExeFile As String * MAX_PATH
End Type
Public Type THREAD
   ID As Long
   OwnerProcess As Long
End Type

Public Type THREADENTRY32
   dwSize As Long
   cntUsage As Long
   th32ThreadID As Long
   th32OwnerProcessID As Long
   tpBasePri As Long
   tpDeltaPri As Long
   dwFlags As Long
End Type

Public lstEklenen As Integer

Private Function iþLemAdýHwnd(ByVal hWnd As Long) As Long
Dim idProc As Long
GetWindowThreadProcessId hWnd, idProc
iþLemAdýHwnd = idProc
End Function

 Function YenileKOIþlem()
Const PROCESS_ALL_ACCESS = 0
Dim uProcess As PROCESSENTRY32
Dim rProcessFound As Long
Dim hSnapshot As Long
Dim szExename As String
Dim appCount As Integer
Dim i As Integer
On Local Error GoTo Bitti
appCount = 0
Const TH32CS_SNAPPROCESS As Long = 2&
uProcess.dwSize = Len(uProcess)
hSnapshot = CreateToolhelpSnapshot(TH32CS_SNAPPROCESS, 0&)
rProcessFound = ProcessFirst(hSnapshot, uProcess)
Do While rProcessFound
i = InStr(1, uProcess.szExeFile, Chr(0))
szExename = LCase$(Left$(uProcess.szExeFile, i - 1))
If szExename = "knightonline.exe" Then
AraKOIsim uProcess.th32ProcessID, Form3.lstKOAdý
End If
rProcessFound = ProcessNext(hSnapshot, uProcess)
Loop
Call CloseHandle(hSnapshot)
Bitti:
End Function
Private Function OkuPencereIsim(hWndApp As Long) As String
   Dim hInst As Long
   Dim buffer As String
   Dim numChars As Integer
   If hWndApp <> 0 Then
      buffer = Space$(128)
      numChars = GetWindowText(hWndApp, buffer, Len(buffer))
      OkuPencereIsim = Left$(buffer, numChars)
      Else
      OkuPencereIsim = vbNullString
      End If
End Function
 Function IþlemYoluPidIle(PID As Long) As String
Dim cbihtiyaç As Long
Dim Modüles(1 To 200) As Long
Dim Ret As Long
Dim ModüleAdý As String
Dim nSatýr As Long
Dim hiþlem As Long

hiþlem = OpenProcess(&H400 Or &H10, 0, PID)
            
If hiþlem <> 0 Then
                
    Ret = EnumProcessModules(hiþlem, Modüles(1), _
        200, cbihtiyaç)
                
    If Ret <> 0 Then
        ModüleAdý = Space(MAX_PATH)
        nSatýr = 500
        Ret = GetModuleFileNameExA(hiþlem, _
            Modüles(1), ModüleAdý, nSatýr)
        IþlemYoluPidIle = Left(ModüleAdý, Ret)
    End If
End If
          
Ret = CloseHandle(hiþlem)
End Function

Private Sub AraKOIsim(KOPD As Long, List As ListBox)
Dim hwndler As Long
Dim intLen As Long
Dim strTitle As String
Dim Khndle As Long
Khndle = OpenProcess(PROCESS_ALL_ACCESS, False, KOPD)
List.Clear
hwndler = GetWindow(Form3.hWnd, 0)
Do While hwndler
  If hwndler <> Form3.hWnd And KOPD = iþLemAdýHwnd(hwndler) And OkuPencereIsim(hwndler) <> "Default IME" And OkuPencereIsim(hwndler) <> "MSCTFIME UI" And OkuPencereIsim(hwndler) <> "M" And OkuPencereIsim(hwndler) <> "DIEmWin" And OkuPencereIsim(hwndler) <> "MCI command handling window" And OkuPencereIsim(hwndler) <> Chr(75) & Chr(110) & Chr(105) & Chr(103) & Chr(104) & Chr(116) & Chr(32) & Chr(79) & Chr(110) & Chr(76) & Chr(105) & Chr(110) & Chr(101) & Chr(32) & Chr(83) & Chr(117) & Chr(98) Then
    intLen = GetWindowTextLength(hwndler) + 1
        strTitle = Space$(intLen)
        intLen = GetWindowText(hwndler, strTitle, intLen)
            
            If intLen > 0 Then
               lstEklenen = lstEklenen + 1
         Form3.lstKO.ListItems.Add , , strTitle
         On Error Resume Next
 Form3.lstKO.ListItems(lstEklenen).SubItems(1) = ReadStringHandlesiz(ReadLonghandlesiz(ReadLonghandlesiz(&HC27C50, Khndle) + &H5CC, Khndle), ReadLonghandlesiz(ReadLonghandlesiz(&HC27C50, Khndle) + &H5CC + 4, Khndle), Khndle)
                List.AddItem strTitle
                List.ItemData(List.NewIndex) = KOPD
            End If
  End If
  hwndler = GetWindow(hwndler, 2)
Loop
End Sub
Public Function ListThreads(Threads() As THREAD) As Long
Dim f As Long
Dim hSnap As Long, THREAD As THREADENTRY32

ReDim Threads(0)
ListThreads = 0

hSnap = CreateToolhelp32Snapshot(TH32CS_SNAPthread, 0)
If hSnap = 0 Then Exit Function
THREAD.dwSize = Len(THREAD)
f = Thread32First(hSnap, THREAD)
Do While f
ReDim Preserve Threads(UBound(Threads) + 1)
Threads(UBound(Threads)).ID = THREAD.th32ThreadID
Threads(UBound( _
Threads)).OwnerProcess = THREAD.th32OwnerProcessID
ListThreads = UBound(Threads)
f = Thread32Next(hSnap, THREAD)
Loop
End Function

Public Function VBSuspendThread(ThreadID As Long) As Long
Dim hThread As Long

VBSuspendThread = -1
hThread = OpenThread(THREAD_SUSPEND_RESUME, False, ThreadID)
If hThread <> 0 Then
VBSuspendThread = SuspendThread(hThread)
Call CloseHandle(hThread)
End If
End Function

Public Function VBResumeThread(ThreadID As Long) As Long
Dim hThread As Long

VBResumeThread = -1
hThread = OpenThread(THREAD_SUSPEND_RESUME, False, ThreadID)
If hThread <> 0 Then
VBResumeThread = ResumeThread(hThread)
Call CloseHandle(hThread)
End If
End Function
Public Function ekle() As Long
Dim f As Long, sname As String
         Dim hSnap As Long, proc As PROCESSENTRY32
         hSnap = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0)
         
         proc.dwSize = Len(proc)
         ' Iterate through the processes
         f = Process32First(hSnap, proc)
         Do While f
           sname = StrZToStr(proc.szExeFile)
           Form5.List3.AddItem sname
           f = Process32Next(hSnap, proc)
         Loop
End Function
Function StrZToStr(s As String) As String
         StrZToStr = Left$(s, Len(s) - 1)
      End Function
'list3 iþlemlerin adýný atar



