Attribute VB_Name = "ByPass"
'By Pass Fuck K2
'Moschino - Chaoskoxp.Net
'Thyke
'Stuff2
Public Type PROCESS_INFORMATION
    hProcess As Long
    hThread As Long
    dwProcessId As Long
    dwThreadId As Long
End Type

Public Type STARTUPINFO
    cb As Long
    lpReserved As String
    lpDesktop As String
    lpTitle As String
    dwX As Long
    dwY As Long
    dwXSize As Long
    dwYSize As Long
    dwXCountChars As Long
    dwYCountChars As Long
    dwFillAttribute As Long
    dwFlags As Long
    wShowWindow As Integer
    cbReserved2 As Integer
    lpReserved2 As Long
    hStdInput As Long
    hStdOutput As Long
    hStdError As Long
    End Type
    
    Public Declare Function CreateProcess Lib "kernel32" Alias "CreateProcessA" (ByVal lpApplicationName As String, ByVal lpCommandLine As String, lpProcessAttributes As Any, lpThreadAttributes As Any, ByVal bInheritHandles As Long, ByVal dwCreationFlags As Long, lpEnvironment As Any, ByVal lpCurrentDriectory As String, lpStartupInfo As STARTUPINFO, lpProcessInformation As PROCESS_INFORMATION) As Long



Public Function OpenKO(Game_Path As String)
Dim pInfo As PROCESS_INFORMATION, sInfo As STARTUPINFO, sNull As String, lSuccess As Long, lRetValue As Long
sInfo.cb = Len(sInfo)
lSuccess = CreateProcess(Game_Path, " USA_KnightOnLine", ByVal 0&, ByVal 0&, _
                        1&, NORMAL_PRIORITY_CLASS, ByVal 0&, sNull, sInfo, pInfo)
KO_HANDLE = pInfo.hProcess
End Function
Public Function ReadSTR(Addr As Long) As String
    Dim aRr(255) As Byte, bu As String
    On Error Resume Next
    ReadProcessMem KO_HANDLE, Addr, aRr(0), 255, 0&
    For i = 0 To 255
    bu = Chr$(aRr(i))
        If Asc(bu) = 0 Then
        Exit For
        End If
    Ret = Ret & bu
    Next
ReadSTR = Trim(Ret)
End Function

Public Function WriteString(Addr As Long, Val1 As String)
arrSize = Len(Val1)
If arrSize > 0 And arrSize < 256 Then
ReDim ByteArr(1 To arrSize) As Byte
    For i = 1 To arrSize
    ByteArr(i) = Asc(Mid(Val1, i, 1))
    Next
    WriteProcessMem KO_HANDLE, Addr, ByteArr(1), arrSize, 0&
End If
End Function
Public Function InjectPatch(Addr As Long, pStr As String)
Dim pBytes() As Byte
ConvHEX2ByteArray pStr, pBytes
WriteProcessMem KO_HANDLE, Addr, pBytes(LBound(pBytes)), UBound(pBytes) - LBound(pBytes) + 1, 0&
End Function
Public Sub AprFix()
'Dim RegOpen As Long
'RegOpen = GetProcAddress(GetModuleHandle("Advapi32.dll"), "RegOpenKeyExA")
'InjectPatch RegOpen + &HE6, "B8000000005F5E5BC9C21400"
'Debug.Print "regopen  "; Hex(RegOpen + &HE6)
    Dim OpenSC As Long
          OpenSC = GetProcAddress(GetModuleHandle("Advapi32.dll"), "OpenSCManagerA")
          InjectPatch OpenSC, "B801000000C20C00"
    Dim CreateS As Long
          CreateS = GetProcAddress(GetModuleHandle("Advapi32.dll"), "CreateServiceA")
          InjectPatch CreateS, "B801000000C23400"
    Dim StartS As Long
    Dim SetError As Long
          StartS = GetProcAddress(GetModuleHandle("Advapi32.dll"), "StartServiceA")
          SetError = GetProcAddress(GetModuleHandle("kernel32.dll"), "SetLastError")
          InjectPatch StartS, "68" & AlignDWORD(&H4FB) & "BF" & AlignDWORD(SetError) & "FFD7B800000000C20C00"
    Dim CloseS As Long
          CloseS = GetProcAddress(GetModuleHandle("Advapi32.dll"), "CloseServiceHandle")
          InjectPatch CloseS, "B801000000C20400"
End Sub
