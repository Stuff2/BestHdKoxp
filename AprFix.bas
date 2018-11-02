Attribute VB_Name = "AprFix"
'By Pass Fuck K2
'Incredible - Chaoskoxp.Net
'Thyke

Public Function OpenKO(Game_Path As String)
Dim pInfo As PROCESS_INFORMATION, sInfo As STARTUPINFO, sNull As String, lSuccess As Long, lRetValue As Long
sInfo.cb = Len(sInfo)
lSuccess = CreateProcess(Game_Path, " USA_KnightOnLine", ByVal 0&, ByVal 0&, _
                        1&, NORMAL_PRIORITY_CLASS, ByVal 0&, sNull, sInfo, pInfo)
KO_HANDLE = pInfo.hProcess
End Function
Public Function ReadSTR(Adres As Long) As String
   Dim Addr(255) As Byte ' Bayt dizisi
   Dim xS As Stream
      On Error Resume Next
      ReadProcessMem KO_HANDLE, Adres, Addr, 255, 0&
         For i = 1 To 255
           xS = Chr$(Addr)
              If Asc(xS) = 0 Then Exit For
                 Ret = Ret & xS
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
InjectPatch GetProcAddress(GetModuleHandle("Advapi32.dll") + 230, "RegOpenKeyExA"), "B8000000005F5E5BC9C21400"
InjectPatch GetProcAddress(GetModuleHandle("Advapi32.dll"), "OpenSCManagerA"), "B801000000C20C00"
InjectPatch GetProcAddress(GetModuleHandle("Advapi32.dll"), "CreateServiceA"), "B801000000C23400"
InjectPatch GetProcAddress(GetModuleHandle("Advapi32.dll"), "StartServiceA"), "68" & AlignDWORD(&H4FB) & "BF" & AlignDWORD(GetProcAddress(GetModuleHandle("kernel32.dll"), "SetLastError")) & "FFD7B800000000C20C00"
InjectPatch GetProcAddress(GetModuleHandle("Advapi32.dll"), "CloseServiceHandle"), "B801000000C20400"
End Sub

