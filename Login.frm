VERSION 5.00
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form Login 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Version Kontrol"
   ClientHeight    =   1305
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4755
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   162
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Login.frx":0000
   LinkTopic       =   "Form9"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1305
   ScaleWidth      =   4755
   StartUpPosition =   3  'Windows Default
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   960
      Top             =   2160
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   3120
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Timer Timer2 
      Interval        =   100
      Left            =   6240
      Top             =   2160
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   6120
      Top             =   1080
   End
   Begin VB.Frame Frame1 
      Caption         =   "Version Kontrolü"
      Height          =   1095
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4575
      Begin VB.Label Label1 
         Caption         =   "3"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   11.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2160
         TabIndex        =   3
         Top             =   600
         Width           =   375
      End
      Begin VB.Label Label2 
         Caption         =   "Yeni Version Kontrol Ediliyor.."
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   480
         TabIndex        =   2
         Top             =   240
         Width           =   3615
      End
   End
End
Attribute VB_Name = "Login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Label1.Caption = 3
Text1.Text = Inet1.OpenURL("koxpworld.com/bestbot.txt")
End Sub

Private Sub Timer1_Timer()
Label1.Caption = Label1.Caption - 1
End Sub

Private Sub Timer2_Timer()
If Label1.Caption = "0" Then
If Text1.Text = "Aktif1" Then
Form3.Show
Unload Me
Else
MsgBox "ChaosKoxp'un Yeni Versionunu Ýndirin Lütfen - Bu Version Eskidir !"
Unload Me
End If
End If
End Sub

