VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form Form5 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Winamp"
   ClientHeight    =   1350
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4710
   Icon            =   "Form5.frx":0000
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1350
   ScaleWidth      =   4710
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer3 
      Interval        =   1000
      Left            =   8520
      Top             =   1440
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   11160
      TabIndex        =   4
      Text            =   "Text2"
      Top             =   2280
      Width           =   1095
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   8400
      Top             =   2520
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.Frame Frame2 
      Caption         =   "Frame2"
      Height          =   1095
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   4695
      Begin SHDocVwCtl.WebBrowser WebBrowser2 
         Height          =   19995
         Left            =   -6720
         TabIndex        =   3
         Top             =   -8040
         Width           =   20000
         ExtentX         =   35278
         ExtentY         =   35269
         ViewMode        =   0
         Offline         =   0
         Silent          =   0
         RegisterAsBrowser=   0
         RegisterAsDropTarget=   1
         AutoArrange     =   0   'False
         NoClientEdge    =   0   'False
         AlignLeft       =   0   'False
         NoWebView       =   0   'False
         HideFileNames   =   0   'False
         SingleClick     =   0   'False
         SingleSelection =   0   'False
         NoFolders       =   0   'False
         Transparent     =   0   'False
         ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
         Location        =   "http:///"
      End
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   8520
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   4080
      Width           =   855
   End
   Begin VB.ListBox List3 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5670
      Left            =   15840
      TabIndex        =   0
      Top             =   120
      Width           =   1935
   End
   Begin VB.Timer Timer2 
      Interval        =   2000
      Left            =   17040
      Top             =   1560
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   17400
      Top             =   2760
   End
   Begin VB.Label Label2 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "120"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Left            =   0
      TabIndex        =   5
      Top             =   1080
      Width           =   495
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False




Private Sub Form_Load()
Text1.Text = ReadINI11("DosyaYolu", "Tarih", App.Path & "\Kayýtlar\DosyaYolu.ini")
Text2.Text = Inet1.OpenURL("http://www.besthile.com/reklam.txt")
If Text1.Text = Date Or Text2.Text = "pasif" Then
Unload Me
Form3.Show
Else
WebBrowser2.Navigate "http://www.besthile.com"
Form5.Visible = True
End If
End Sub

Private Sub WebBrowser1_NewWindow2(ppDisp As Object, Cancel As Boolean)
IniYaz2 "DosyaYolu", "Tarih", Date, "\Kayýtlar\DosyaYolu.ini"
Unload Me
Form3.Show
MsgBox "Reklama Týkladýktan Sonra Açýlan Sayfada 1dk'nýzý Ayýrarak Sadece 1 Kereye Mahsus Olmak Üzere Sað Üst Taraftaki 'Ücretiz Üye OL' Butonuna Týklayarak, (BÝLGÝLERÝ SALLAYABÝLÝRSÝNÝZ) Üye Olursanýz Bizi Çok Sevindirirsiniz :), Teþekkürler."
End Sub

Public Sub IniYaz2(Baþlýk As String, YanBaþlýk As String, Value As String, AppPathDosyaYeri)
Call WriteINI11(Baþlýk, YanBaþlýk, Value, App.Path & "\" & AppPathDosyaYeri)
End Sub
Function ReadINI11(Section As String, KeyName As String, FileName As String) As String
Dim sRet As String
sRet = String(255, Chr(0))
ReadINI11 = Left(sRet, getprivateprofilestring(Section, ByVal KeyName$, "", sRet, Len(sRet), FileName))
End Function

Function WriteINI11(sSection As String, sKeyName As String, sNewString As String, sFileName) As Integer
Dim r
r = writeprivateprofilestring(sSection, sKeyName, sNewString, sFileName)
End Function

Private Sub Label4_Click()

End Sub


Private Sub Timer3_Timer()
Label2.Caption = Label2.Caption - 1
If Label2.Caption = "0" Then
Unload Me
Form3.Show
IniYaz "DosyaYolu", "Tarih", Date, "\Kayýtlar\DosyaYolu.ini"
End If
End Sub


Private Sub WebBrowser2_NewWindow2(ppDisp As Object, Cancel As Boolean)
Unload Me
Form3.Show
IniYaz "DosyaYolu", "Tarih", Date, "\Kayýtlar\DosyaYolu.ini"
End Sub
