VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form Form3 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Winamp"
   ClientHeight    =   4920
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   4350
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   162
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form3.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form3.frx":F172
   ScaleHeight     =   4920
   ScaleWidth      =   4350
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame6 
      Caption         =   "Duyuru Ekraný"
      Height          =   2175
      Left            =   0
      TabIndex        =   57
      Top             =   0
      Width           =   4335
      Begin VB.TextBox Text3 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   58
         Text            =   "Form3.frx":1E2E4
         Top             =   240
         Width           =   4095
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Version Kontrolü"
      Height          =   2775
      Left            =   5280
      TabIndex        =   52
      Top             =   1080
      Visible         =   0   'False
      Width           =   4335
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         Caption         =   "Eðer Ýndirdiðiniz Version 1.8 Ýse Botu Yeniden Baþlatýnýz Veya DNS Ayarlarýný 8.8.8.8-8.8.8.4 Olarak Deðiþtiriniz"
         Height          =   735
         Left            =   720
         TabIndex        =   56
         Top             =   1800
         Width           =   3135
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         Caption         =   "www.besthile.com"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   14.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Index           =   0
         Left            =   600
         TabIndex        =   54
         Top             =   1200
         Width           =   3375
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Caption         =   "Yeni Version Çýkmýþtýr Ýndirmek Ýçin Sitemizi Ziyaret Edin !"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   12
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         TabIndex        =   53
         Top             =   360
         Width           =   3855
      End
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Gözat"
      Height          =   315
      Left            =   8760
      TabIndex        =   39
      Top             =   0
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Index           =   0
      Left            =   8160
      TabIndex        =   38
      Text            =   "&HA69180"
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Baþlat"
      Height          =   375
      Left            =   4680
      TabIndex        =   31
      Top             =   1320
      Width           =   975
   End
   Begin VB.Frame Frame3 
      Caption         =   "Ayarla"
      Height          =   1695
      Index           =   1
      Left            =   6000
      TabIndex        =   29
      Top             =   600
      Width           =   3975
      Begin VB.TextBox KO_YOL 
         Height          =   315
         Left            =   1680
         TabIndex        =   30
         Text            =   "DosyaYolu"
         Top             =   1080
         Width           =   2175
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2775
      Left            =   0
      TabIndex        =   25
      Top             =   2160
      Width           =   4335
      _ExtentX        =   7646
      _ExtentY        =   4895
      _Version        =   393216
      Style           =   1
      TabHeight       =   520
      TabCaption(0)   =   "Yeni Oyun Baþlat"
      TabPicture(0)   =   "Form3.frx":1E2F4
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label8"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Label7(3)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Label7(2)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Label10"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Frame4"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).ControlCount=   5
      TabCaption(1)   =   "Mevcut Oyuna Baðlan"
      TabPicture(1)   =   "Form3.frx":1E310
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "fr"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Oto Login"
      TabPicture(2)   =   "Form3.frx":1E32C
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame3(2)"
      Tab(2).ControlCount=   1
      Begin VB.Frame Frame3 
         Caption         =   "Oto Login Ayarlarý"
         Height          =   2055
         Index           =   2
         Left            =   -74880
         TabIndex        =   41
         Top             =   480
         Width           =   4095
         Begin VB.CheckBox Check1 
            Caption         =   "Oto Login Aktif"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   51
            Top             =   0
            Width           =   1455
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Sað"
            Enabled         =   0   'False
            Height          =   255
            Index           =   2
            Left            =   3120
            TabIndex        =   50
            Top             =   1320
            Width           =   615
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Orta"
            Enabled         =   0   'False
            Height          =   255
            Index           =   1
            Left            =   2280
            TabIndex        =   49
            Top             =   1320
            Width           =   735
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Sol"
            Enabled         =   0   'False
            Height          =   255
            Index           =   0
            Left            =   1560
            TabIndex        =   48
            Top             =   1320
            Width           =   615
         End
         Begin VB.ComboBox Combo1 
            Enabled         =   0   'False
            Height          =   315
            Left            =   1080
            TabIndex        =   46
            Text            =   "Server Seç"
            Top             =   840
            Width           =   2775
         End
         Begin VB.TextBox Text2 
            Enabled         =   0   'False
            Height          =   285
            Index           =   2
            Left            =   2520
            TabIndex        =   44
            Text            =   "Þifre"
            Top             =   340
            Width           =   1335
         End
         Begin VB.TextBox Text2 
            Enabled         =   0   'False
            Height          =   285
            Index           =   1
            Left            =   1080
            TabIndex        =   43
            Text            =   "ID"
            Top             =   340
            Width           =   1335
         End
         Begin VB.Label Label7 
            Caption         =   "Karakter Konumu"
            Enabled         =   0   'False
            Height          =   255
            Index           =   6
            Left            =   120
            TabIndex        =   47
            Top             =   1320
            Width           =   1335
         End
         Begin VB.Label Label7 
            Caption         =   "Server"
            Enabled         =   0   'False
            Height          =   255
            Index           =   5
            Left            =   120
            TabIndex        =   45
            Top             =   870
            Width           =   1335
         End
         Begin VB.Label Label7 
            Caption         =   "Char Bilgileri"
            Enabled         =   0   'False
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   42
            Top             =   360
            Width           =   1335
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Mevcut Oyuna Baðlan"
         Height          =   2295
         Left            =   -74880
         TabIndex        =   32
         Top             =   360
         Width           =   4095
         Begin MSComctlLib.ListView lstKO 
            Height          =   795
            Left            =   120
            TabIndex        =   33
            Top             =   720
            Width           =   3855
            _ExtentX        =   6800
            _ExtentY        =   1402
            View            =   3
            LabelEdit       =   1
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            FullRowSelect   =   -1  'True
            GridLines       =   -1  'True
            _Version        =   393217
            ForeColor       =   -2147483640
            BackColor       =   -2147483643
            BorderStyle     =   1
            Appearance      =   1
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
               Size            =   9.75
               Charset         =   162
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   1
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "Client Ýsmi"
               Object.Width           =   3881
            EndProperty
         End
         Begin VB.Label Label1 
            Caption         =   $"Form3.frx":1E348
            Height          =   585
            Left            =   120
            TabIndex        =   35
            Top             =   1560
            Width           =   3795
         End
         Begin VB.Label Label3 
            Caption         =   "Baðlanmak Ýstediðiniz Karakterin Üstüne Listeden Çift Týklayýn .. (Oyuna Tamamen Girdikten Sonra)"
            Height          =   495
            Left            =   120
            TabIndex        =   34
            Top             =   240
            Width           =   3800
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Yeni Oyun Baþlat"
         Height          =   735
         Left            =   120
         TabIndex        =   26
         Top             =   360
         Width           =   4095
         Begin VB.CommandButton Command3 
            Caption         =   "Oyunu Baþlat"
            Height          =   375
            Left            =   2520
            TabIndex        =   28
            Top             =   240
            Width           =   1335
         End
         Begin VB.TextBox txClient 
            Height          =   375
            Left            =   120
            TabIndex        =   27
            Text            =   "Best Client"
            Top             =   240
            Width           =   2175
         End
      End
      Begin VB.Label Label10 
         Caption         =   "Þuanki Version : 2.3"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1320
         TabIndex        =   59
         Top             =   2520
         Width           =   1695
      End
      Begin VB.Label Label7 
         Caption         =   "www.besthile.com"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   2
         Left            =   1320
         TabIndex        =   55
         Top             =   1440
         Width           =   2055
      End
      Begin VB.Label Label7 
         Caption         =   "Moschino - Stuff"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   255
         Index           =   3
         Left            =   1440
         TabIndex        =   37
         Top             =   2160
         Width           =   1575
      End
      Begin VB.Label Label8 
         Caption         =   "Best HD Bot"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1680
         TabIndex        =   36
         Top             =   1920
         Width           =   1095
      End
   End
   Begin VB.CommandButton yenile 
      Caption         =   "Listeyi Yenile"
      Height          =   315
      Left            =   6360
      TabIndex        =   24
      Top             =   3360
      Width           =   2055
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Manuel Yükle"
      Height          =   315
      Left            =   8400
      TabIndex        =   23
      Top             =   3360
      Width           =   2055
   End
   Begin VB.Timer Timer2 
      Interval        =   3000
      Left            =   4920
      Top             =   840
   End
   Begin VB.Timer Timer3 
      Interval        =   1000
      Left            =   4920
      Top             =   1680
   End
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   4920
      TabIndex        =   22
      Text            =   "Text1"
      Top             =   120
      Width           =   1335
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   10080
      Top             =   3000
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.ListBox List1 
      Height          =   1035
      ItemData        =   "Form3.frx":1E3D5
      Left            =   8520
      List            =   "Form3.frx":1E3EB
      TabIndex        =   21
      Top             =   3480
      Width           =   3375
   End
   Begin VB.PictureBox Picture1 
      Height          =   855
      Left            =   7680
      ScaleHeight     =   795
      ScaleWidth      =   4275
      TabIndex        =   17
      Top             =   1440
      Visible         =   0   'False
      Width           =   4335
      Begin VB.Frame frManuel 
         Caption         =   "Manuel Yükle"
         Height          =   735
         Left            =   120
         TabIndex        =   18
         Top             =   0
         Width           =   4140
         Begin VB.TextBox KOName 
            Height          =   285
            Left            =   240
            TabIndex        =   20
            Text            =   "Knight OnLine Client"
            Top             =   240
            Width           =   2535
         End
         Begin VB.CommandButton ManuYükle 
            Caption         =   "INJECT"
            Height          =   270
            Left            =   3000
            TabIndex        =   19
            Top             =   240
            Width           =   855
         End
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Manuel Pointer Güncelle"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7680
      TabIndex        =   16
      Top             =   1680
      Width           =   3015
   End
   Begin VB.CommandButton yükle 
      Caption         =   "INJECT"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   5640
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   600
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "Bilgilendirme"
      Height          =   1695
      Left            =   6840
      TabIndex        =   13
      Top             =   4800
      Width           =   4335
      Begin VB.Label Label2 
         Caption         =   $"Form3.frx":1E49C
         BeginProperty Font 
            Name            =   "Trebuchet MS"
            Size            =   9.75
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Left            =   3600
         TabIndex        =   14
         Top             =   0
         Width           =   3735
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Reklam"
      Height          =   1935
      Index           =   0
      Left            =   7920
      TabIndex        =   11
      Top             =   3840
      Width           =   4335
      Begin VB.CommandButton Command2 
         Caption         =   "Reklam Görünmüyorsa Týklayýnýz !"
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   1680
         Width           =   3975
      End
   End
   Begin VB.CheckBox chÇoklu 
      Caption         =   "64 Bit Giriþ"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   5640
      TabIndex        =   10
      Top             =   720
      Width           =   1335
   End
   Begin VB.Frame Frame2 
      Caption         =   "Pointer Güncelle"
      Height          =   6255
      Left            =   8400
      TabIndex        =   8
      Top             =   3600
      Width           =   3975
      Begin VB.Label Label4 
         Caption         =   "Yakýnda ..."
         Height          =   1335
         Left            =   720
         TabIndex        =   9
         Top             =   960
         Width           =   1695
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   15
      Left            =   4680
      Top             =   3480
   End
   Begin MSComDlg.CommonDialog CD1 
      Left            =   4680
      Top             =   2760
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton mYükle 
      Caption         =   "Manuel Yükle"
      Height          =   255
      Left            =   5160
      TabIndex        =   7
      Top             =   1680
      Width           =   1095
   End
   Begin VB.PictureBox pcSakla 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   4680
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   1
      Top             =   2040
      Width           =   255
   End
   Begin VB.Frame fr2 
      Caption         =   "Lütfen Bekleyin..."
      Height          =   2055
      Left            =   6480
      TabIndex        =   5
      Top             =   4200
      Visible         =   0   'False
      Width           =   4455
      Begin MSComctlLib.ProgressBar pg 
         Height          =   315
         Left            =   240
         TabIndex        =   6
         Top             =   360
         Width           =   3810
         _ExtentX        =   6720
         _ExtentY        =   556
         _Version        =   393216
         BorderStyle     =   1
         Appearance      =   0
         Scrolling       =   1
      End
   End
   Begin VB.TextBox svName 
      Height          =   285
      Left            =   8760
      TabIndex        =   4
      Top             =   2520
      Width           =   975
   End
   Begin VB.TextBox txtBlacklist 
      Height          =   615
      Left            =   5280
      MultiLine       =   -1  'True
      TabIndex        =   3
      Top             =   4680
      Width           =   1935
   End
   Begin VB.ListBox lstBlacklist 
      Height          =   645
      Left            =   5280
      TabIndex        =   2
      Top             =   3960
      Width           =   1815
   End
   Begin VB.ListBox lstKOAdý 
      Height          =   450
      Left            =   5040
      TabIndex        =   0
      Top             =   2280
      Width           =   2055
   End
   Begin VB.Timer tmKontrol 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   6360
      Top             =   1200
   End
   Begin VB.Label Label7 
      Caption         =   "Multi Pointer:"
      Height          =   255
      Index           =   0
      Left            =   7080
      TabIndex        =   40
      Top             =   495
      Width           =   1335
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Wname As String
Dim txtClient As TextBox
Dim KO_PATH As String, ShellExAddress As Long
Option Explicit
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" _
(ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, _
lParam As Any) As Long
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" _
(hpvDest As Any, hpvSource As Any, ByVal cbCopy As Long)
Const EM_GETLINECOUNT = &HBA
Const EM_GETLINE = &HC4
Dim hndle As Long, KOSeçildi As Boolean

Private Sub Command1_Click()
Form3.Width = 8600
End Sub

Private Sub Command3_Click()
CD1.Filter = "KnightOnLine |*KnightOnLine.exe"
CD1.ShowOpen
If CD1.FileName <> "" Then
KO_PATH = CD1.FileName
Text1.Text = CD1.FileName
OpenKO (KO_PATH)
Sleep (500)
Timer1.Enabled = True
While Wname <> "Knight OnLine Client"
      Wname = ReadSTR(&HA783FC)
Wend
WriteString &HA783FC, txClient.Text & Chr(0)
ShellExAddress = GetProcAddress(GetModuleHandle("Shell32.dll"), "ShellExecuteA")
InjectPatch ShellExAddress, "B800000000C20800"
End If
End Sub

Private Sub Command4_Click()
Picture1.Visible = True
Picture1.Left = 0
Picture1.Top = 600
End Sub

Private Sub Command5_Click()

End Sub

Private Sub Form_Load()
YenileKOIþlem
pcSakla.Height = 5000
pcSakla.Width = 18000
temizlet
Text3.Text = Inet1.OpenURL("www.besthile.com/besthd.txt")
'End If
'MsgBox "Oyunu Ýngilizce Versiyonuyla Oynayýn Aksi Takdirde Düzgün Çalýþmaz ! www.chaoskoxp.net"
End Sub
Private Sub Form_Unload(Cancel As Integer)
Unload Me
Unload Form5
End Sub
Function ReadINI1(Section As String, KeyName As String, FileName As String) As String
Dim sRet As String
sRet = String(255, Chr(0))
ReadINI1 = Left(sRet, getprivateprofilestring(Section, ByVal KeyName$, "", sRet, Len(sRet), FileName))
End Function

Private Sub lstKO_Click()
KOSeçildi = True
End Sub
Function WriteINI1(sSection As String, sKeyName As String, sNewString As String, sFileName) As Integer
Dim r
r = writeprivateprofilestring(sSection, sKeyName, sNewString, sFileName)
End Function

Private Sub lstKO_DblClick()
KOSeçildi = True
yükle_Click
End Sub
Public Sub Start()
OpenKO (Form3.Text1.Text)
Sleep (500)
Timer1.Enabled = True
While Wname <> "Knight OnLine Client"
      Wname = ReadSTR(&HA69180)
Wend
WriteString &HA69180, Form3.txClient.Text & Chr(0)
ShellExAddress = GetProcAddress(GetModuleHandle("Shell32.dll"), "ShellExecuteA")
InjectPatch ShellExAddress, "B800000000C20800"
End Sub


Private Sub ManuYükle_Click()
Dim i As Integer
KO_TITLE = KOName.Text
YükleKO
CharBilgiOKU
For i = 0 To lstBlacklist.ListCount - 1
If LCase(c.isim) <> "" And LCase(c.isim) = LCase(lstBlacklist.list(i)) Then MsgBox "Vendetta Bot Sistem tarafýndan size kapatýlmýþtýr." & vbCrLf & "Tekrar Açmak için bizle ile temasa geçin.", vbCritical: Unload Form1: Unload Form2: Unload Form3: Unload Form4: End
Next
svName = LCase(ServerAdi)
For i = 0 To lstBlacklist.ListCount - 1
If LCase(svName) = LCase(lstBlacklist.list(i)) Then MsgBox "Vendetta Bot sistem tarafýndan tüm server'a kapatýlmýþtýr." & vbCrLf & "Tekrar Açmak için bizle ile temasa geçin.", vbCritical: Unload Form1: Unload Form2: Unload Form3: Unload Form4: End
Next
If KO_HANDLE <> 0 Then
Form1.Show
SetWindowPos Form1.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
Unload Form3
End If
End Sub

Private Sub mYükle_Click()
Me.Height = 6660
frManuel.Visible = True
End Sub

Private Sub NewGame_Click()
CD1.Filter = "KnightOnLine |*KnightOnLine.exe"
CD1.ShowOpen
If CD1.FileName <> "" Then
KO_PATH = CD1.FileName
OpenKO (KO_PATH)
Sleep (500)
Timer1.Enabled = True
While Wname <> "Knight OnLine Client"
      Wname = ReadSTR(&HA69180)
Wend
WriteString &HA69180, txClient.Text & Chr(0)
ShellExAddress = GetProcAddress(GetModuleHandle("Shell32.dll"), "ShellExecuteA")
InjectPatch ShellExAddress, "B800000000C20800"
End If
End Sub

Private Sub Timer1_Timer()
ByPass.AprFix
WriteLong &HC2E694, 0
'InjectPatch &H956AAE, "837DE003"
'InjectPatch &H956AC1, "837DE001"
End Sub

Private Sub Timer2_Timer()
lstKO.ListItems.Clear
lstKOAdý.Clear
lstEklenen = 0
YenileKOIþlem
End Sub

Private Sub tmKontrol_Timer()
If lstKOAdý.ListCount > 0 Then
If ReadLonghandlesiz(ReadLonghandlesiz(KO_PTR_CHR, hndle) + KO_OFF_MAXHP, hndle) > 0 Then
KO_TITLE = lstKOAdý.Text
YükleKO
Form1.Top = (Screen.Height / 2 - Form1.Height / 2)
Form1.Left = 0
Form1.Show
SetWindowPos Form1.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
Unload Me
tmKontrol = False
End If
End If
End Sub


Private Sub wb_StatusTextChange(ByVal Text As String)

End Sub

Private Sub wb2_ProgressChange(ByVal Progress As Long, ByVal ProgressMax As Long)
On Error Resume Next
pg.Max = ProgressMax
pg.Value = Progress
End Sub

Private Sub yenile_Click()
lstKO.ListItems.Clear
lstKOAdý.Clear
lstEklenen = 0
YenileKOIþlem
End Sub

Private Sub yükle_Click()
Dim i As Integer
If lstKO.ListItems.Count > 0 Then
If lstKO.ListItems.Count = 1 Then KOSeçildi = True
If KOSeçildi = True Then
lstKOAdý.Text = lstKO.SelectedItem.Text

KO_TITLE = lstKO.SelectedItem.Text
YükleKO
Else
MsgBox "Lütfen Oyunu Seçin.", vbCritical
End If
End If
CharBilgiOKU
'For i = 0 To lstBlacklist.ListCount - 1
'If LCase(c.isim) <> "" And LCase(c.isim) = LCase(lstBlacklist.List(i)) Then MsgBox "SerB0T Servet tarafýndan size kapatýlmýþtýr." & vbCrLf & "Tekrar Açmak için Servet ile temasa geçin.", vbCritical: Unload Form1: Unload Form2: Unload Form3: Unload Form4: End
'Next
'svName = LCase(ServerAdi)
'For i = 0 To lstBlacklist.ListCount - 1
'If LCase(svName) = LCase(lstBlacklist.List(i)) Then MsgBox "SerB0T Servet tarafýndan tüm server'a kapatýlmýþtýr." & vbCrLf & "Tekrar Açmak için Servet ile temasa geçin.", vbCritical: Unload Form1: Unload Form2: Unload Form3: Unload Form4: End
'Next
If KO_HANDLE <> 0 Then
Form1.Show
SetWindowPos Form1.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
If Check1.Value = 1 Then
Form3.Visible = False
Else
Unload Form3
End If
End If
End Sub
Private Sub wb2_DocumentComplete(ByVal pDisp As Object, URL As Variant)

End Sub

