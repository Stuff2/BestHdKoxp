VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   0  'None
   Caption         =   "PhotoScape"
   ClientHeight    =   5025
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   14055
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   162
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5025
   ScaleWidth      =   14055
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.Frame fr 
      Caption         =   "Oto Login"
      Height          =   2655
      Index           =   35
      Left            =   12000
      TabIndex        =   129
      Top             =   1080
      Width           =   1695
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   240
         Top             =   360
      End
   End
   Begin VB.Timer GeriDon2 
      Enabled         =   0   'False
      Interval        =   250
      Left            =   11400
      Top             =   3480
   End
   Begin VB.Timer GeriDon1 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   11400
      Top             =   3000
   End
   Begin VB.Timer PriZamanl� 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   11400
      Top             =   1560
   End
   Begin VB.Timer OtoCure 
      Enabled         =   0   'False
      Interval        =   1500
      Left            =   11400
      Top             =   1080
   End
   Begin VB.Frame Frame2 
      Caption         =   "New Atack"
      Height          =   855
      Index           =   1
      Left            =   11280
      TabIndex        =   128
      Top             =   120
      Width           =   2655
      Begin VB.Timer AsasAtaks 
         Enabled         =   0   'False
         Interval        =   900
         Left            =   1080
         Top             =   240
      End
      Begin VB.Timer PriAtak 
         Enabled         =   0   'False
         Interval        =   900
         Left            =   2040
         Top             =   240
      End
      Begin VB.Timer MageAtak 
         Enabled         =   0   'False
         Interval        =   900
         Left            =   1560
         Top             =   240
      End
      Begin VB.Timer RogueAtak 
         Enabled         =   0   'False
         Interval        =   1299
         Left            =   600
         Top             =   240
      End
      Begin VB.Timer WarAtak 
         Enabled         =   0   'False
         Interval        =   900
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.CommandButton Command1 
      Height          =   255
      Left            =   14520
      TabIndex        =   127
      Top             =   480
      Width           =   615
   End
   Begin VB.Timer DCEt 
      Enabled         =   0   'False
      Interval        =   1500
      Left            =   11400
      Top             =   2040
   End
   Begin VB.Frame fr 
      Caption         =   "MSlot(aI)"
      Height          =   855
      Index           =   34
      Left            =   7200
      TabIndex        =   126
      Top             =   1800
      Width           =   615
      Begin VB.Timer tmMalSlot 
         Interval        =   50
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "regdtSil"
      Height          =   735
      Index           =   32
      Left            =   7200
      TabIndex        =   125
      Top             =   3120
      Width           =   855
      Begin VB.Timer regSil 
         Interval        =   60000
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "fr"
      Height          =   855
      Index           =   1
      Left            =   6840
      TabIndex        =   124
      Top             =   360
      Width           =   615
   End
   Begin VB.Frame fr 
      Caption         =   "MobKo�"
      Height          =   735
      Index           =   33
      Left            =   6240
      TabIndex        =   123
      Top             =   1800
      Width           =   855
      Begin VB.Timer Timer3 
         Interval        =   300
         Left            =   0
         Top             =   120
      End
      Begin VB.Timer tmMobKo� 
         Interval        =   300
         Left            =   240
         Top             =   240
      End
   End
   Begin VB.TextBox svName 
      Height          =   375
      Left            =   11280
      TabIndex        =   122
      Top             =   5400
      Width           =   2175
   End
   Begin VB.Timer tmKontrol 
      Interval        =   1000
      Left            =   11400
      Top             =   2520
   End
   Begin VB.Frame Frame2 
      Caption         =   "Listler(aI)"
      Height          =   4215
      Index           =   0
      Left            =   0
      TabIndex        =   96
      Top             =   4920
      Width           =   11055
      Begin VB.ListBox List1 
         Height          =   1815
         Left            =   9480
         TabIndex        =   121
         Top             =   480
         Width           =   1215
      End
      Begin VB.ListBox LstSe�MOB2 
         Height          =   1815
         Left            =   5400
         TabIndex        =   120
         Top             =   2640
         Width           =   975
      End
      Begin VB.ListBox LstSe�MOB 
         Height          =   1815
         Left            =   4440
         TabIndex        =   119
         Top             =   2640
         Width           =   735
      End
      Begin VB.FileListBox flRota 
         Height          =   1845
         Left            =   8280
         Pattern         =   "*.srt"
         TabIndex        =   118
         Top             =   480
         Width           =   1095
      End
      Begin VB.FileListBox klgDs 
         Height          =   1845
         Left            =   6960
         Pattern         =   "*.klg"
         TabIndex        =   117
         Top             =   480
         Width           =   1095
      End
      Begin VB.ListBox lstinventory2 
         Height          =   1815
         ItemData        =   "Form2.frx":F172
         Left            =   1440
         List            =   "Form2.frx":F179
         TabIndex        =   116
         Top             =   480
         Width           =   1095
      End
      Begin VB.ListBox LstitemSatma 
         Height          =   1815
         ItemData        =   "Form2.frx":F18C
         Left            =   5520
         List            =   "Form2.frx":F18E
         TabIndex        =   115
         Top             =   480
         Width           =   1215
      End
      Begin VB.ListBox LstKutuTopla 
         Height          =   1815
         ItemData        =   "Form2.frx":F190
         Left            =   4080
         List            =   "Form2.frx":F192
         TabIndex        =   114
         Top             =   480
         Width           =   1335
      End
      Begin VB.ListBox LstUseSkill 
         Height          =   1815
         ItemData        =   "Form2.frx":F194
         Left            =   2640
         List            =   "Form2.frx":F19B
         TabIndex        =   113
         Top             =   480
         Width           =   1335
      End
      Begin VB.ListBox LstInventory 
         Height          =   1815
         ItemData        =   "Form2.frx":F1AC
         Left            =   120
         List            =   "Form2.frx":F1B3
         TabIndex        =   112
         Top             =   480
         Width           =   1215
      End
      Begin VB.Timer �antaokuTM 
         Interval        =   300
         Left            =   240
         Top             =   720
      End
      Begin VB.ListBox lstSlot 
         Height          =   1425
         Index           =   0
         Left            =   120
         TabIndex        =   103
         Top             =   2640
         Width           =   1695
      End
      Begin VB.ListBox lstParty 
         Height          =   1425
         Left            =   1920
         TabIndex        =   102
         Top             =   2640
         Width           =   1095
      End
      Begin VB.ListBox lstUniqeItem 
         Height          =   1425
         ItemData        =   "Form2.frx":F1C5
         Left            =   3120
         List            =   "Form2.frx":10178
         TabIndex        =   101
         Top             =   2640
         Width           =   1215
      End
      Begin VB.ListBox lstSlot 
         Height          =   1425
         Index           =   1
         ItemData        =   "Form2.frx":1112B
         Left            =   1080
         List            =   "Form2.frx":1112D
         TabIndex        =   100
         Top             =   2640
         Width           =   735
      End
      Begin VB.ListBox lstSat 
         Height          =   1425
         Left            =   6960
         TabIndex        =   99
         Top             =   2640
         Width           =   1335
      End
      Begin VB.ListBox lstSat2 
         Height          =   1425
         Left            =   8280
         TabIndex        =   98
         Top             =   2640
         Width           =   1215
      End
      Begin VB.ListBox lstMOB2 
         Height          =   1425
         Left            =   9720
         TabIndex        =   97
         Top             =   2640
         Width           =   1215
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "inventory(aI)"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   111
         Top             =   240
         Width           =   960
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "bas�l� skills(aI)"
         Height          =   195
         Index           =   1
         Left            =   2640
         TabIndex        =   110
         Top             =   240
         Width           =   975
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "item list(aI)"
         Height          =   195
         Index           =   2
         Left            =   4080
         TabIndex        =   109
         Top             =   240
         Width           =   810
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "item list2(aI)"
         Height          =   195
         Index           =   3
         Left            =   5520
         TabIndex        =   108
         Top             =   240
         Width           =   900
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "inventory2(aI)"
         Height          =   195
         Index           =   4
         Left            =   1440
         TabIndex        =   107
         Top             =   240
         Width           =   1050
      End
      Begin VB.Label Label4 
         Caption         =   "Slot Mobs(aI)"
         Height          =   255
         Left            =   120
         TabIndex        =   106
         Top             =   2400
         Width           =   1455
      End
      Begin VB.Label Label5 
         Caption         =   "Party User(aI)"
         Height          =   255
         Left            =   1920
         TabIndex        =   105
         Top             =   2400
         Width           =   1095
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Uniqe item(aI)"
         Height          =   195
         Left            =   3120
         TabIndex        =   104
         Top             =   2400
         Width           =   1020
      End
   End
   Begin VB.Frame fr 
      Caption         =   "SH(aI)"
      Height          =   735
      Index           =   31
      Left            =   7080
      TabIndex        =   95
      Top             =   4200
      Width           =   615
      Begin VB.Timer tmSH 
         Enabled         =   0   'False
         Interval        =   100
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "ZoneDe�i�(aI)"
      Height          =   735
      Index           =   29
      Left            =   5880
      TabIndex        =   94
      Top             =   4080
      Width           =   975
      Begin VB.Timer tmCharI��nlan�yor 
         Interval        =   5000
         Left            =   240
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "PartySw(aI)"
      Height          =   735
      Index           =   30
      Left            =   6120
      TabIndex        =   93
      Top             =   3360
      Width           =   855
      Begin VB.Timer tmSw 
         Interval        =   1000
         Left            =   240
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "tmRestre(aI)"
      Height          =   735
      Index           =   28
      Left            =   6120
      TabIndex        =   92
      Top             =   2520
      Width           =   975
      Begin VB.Timer tmRestore 
         Interval        =   1000
         Left            =   240
         Top             =   240
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "CharBilgi"
      Height          =   615
      Left            =   4920
      TabIndex        =   90
      Top             =   1800
      Width           =   1095
      Begin VB.TextBox charMaxHp 
         Height          =   285
         Left            =   120
         TabIndex        =   91
         Text            =   "0"
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.Frame fr 
      Caption         =   "tm2000"
      Height          =   1815
      Index           =   27
      Left            =   5640
      TabIndex        =   89
      Top             =   0
      Width           =   855
      Begin VB.Timer tm2000 
         Interval        =   3000
         Left            =   120
         Top             =   360
      End
   End
   Begin VB.TextBox KOYOL 
      Height          =   285
      Left            =   1320
      TabIndex        =   88
      Text            =   "Text1"
      Top             =   4440
      Width           =   3255
   End
   Begin VB.Frame fr 
      Caption         =   "RotaGitGel(aI)"
      Height          =   1695
      Index           =   22
      Left            =   4800
      TabIndex        =   85
      Top             =   2520
      Width           =   1095
      Begin VB.Timer tm���nlanarakGel 
         Left            =   600
         Top             =   1200
      End
      Begin VB.Timer tm���nlanarakGit 
         Left            =   120
         Top             =   1200
      End
      Begin VB.Timer tmY�r�yerekGel 
         Left            =   600
         Top             =   480
      End
      Begin VB.Timer tmY�r�yerekGit 
         Left            =   120
         Top             =   480
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "I��nlanarak"
         Height          =   195
         Left            =   120
         TabIndex        =   87
         Top             =   960
         Width           =   780
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Y�r�yerek"
         Height          =   195
         Left            =   120
         TabIndex        =   86
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Se� Z(aI)"
      Height          =   735
      Index           =   23
      Left            =   4080
      TabIndex        =   84
      Top             =   3360
      Width           =   615
      Begin VB.Timer tmMOBSe� 
         Interval        =   100
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Tu�la �ek"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Index           =   21
      Left            =   3840
      TabIndex        =   83
      Top             =   2640
      Width           =   855
      Begin VB.Timer tmTu�la�ek 
         Interval        =   100
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "KutuyaGit"
      Height          =   735
      Index           =   14
      Left            =   3840
      TabIndex        =   82
      Top             =   1920
      Width           =   1095
      Begin VB.Timer tmSlotaD�n 
         Enabled         =   0   'False
         Interval        =   280
         Left            =   600
         Top             =   240
      End
      Begin VB.Timer tmKutuyaGit 
         Enabled         =   0   'False
         Interval        =   240
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   " Heal(aI)"
      Height          =   735
      Index           =   24
      Left            =   3000
      TabIndex        =   81
      Top             =   2520
      Width           =   735
      Begin VB.Timer tmOtoHeal 
         Interval        =   250
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame curecik 
      Height          =   3495
      Left            =   9120
      TabIndex        =   47
      Top             =   1200
      Width           =   2055
      Begin VB.Timer CureOku 
         Interval        =   50
         Left            =   840
         Top             =   3480
      End
      Begin VB.Timer CureAt 
         Enabled         =   0   'False
         Interval        =   1350
         Left            =   240
         Top             =   3480
      End
      Begin VB.Label Cure4Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   1
         Left            =   1560
         TabIndex        =   80
         Top             =   600
         Width           =   345
      End
      Begin VB.Label Cure3Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   1
         Left            =   1080
         TabIndex        =   79
         Top             =   600
         Width           =   345
      End
      Begin VB.Label Cure2Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   1
         Left            =   600
         TabIndex        =   78
         Top             =   600
         Width           =   375
      End
      Begin VB.Label Cure1Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   77
         Top             =   600
         Width           =   375
      End
      Begin VB.Label Cure4Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   8
         Left            =   1560
         TabIndex        =   76
         Top             =   3120
         Width           =   345
      End
      Begin VB.Label Cure4Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   7
         Left            =   1560
         TabIndex        =   75
         Top             =   2760
         Width           =   345
      End
      Begin VB.Label Cure4Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   6
         Left            =   1560
         TabIndex        =   74
         Top             =   2400
         Width           =   345
      End
      Begin VB.Label Cure4Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   5
         Left            =   1560
         TabIndex        =   73
         Top             =   2040
         Width           =   345
      End
      Begin VB.Label Cure4Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   4
         Left            =   1560
         TabIndex        =   72
         Top             =   1680
         Width           =   345
      End
      Begin VB.Label Cure4Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   3
         Left            =   1560
         TabIndex        =   71
         Top             =   1320
         Width           =   345
      End
      Begin VB.Label Cure4Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   2
         Left            =   1560
         TabIndex        =   70
         Top             =   960
         Width           =   345
      End
      Begin VB.Label Cure3Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   8
         Left            =   1080
         TabIndex        =   69
         Top             =   3120
         Width           =   345
      End
      Begin VB.Label Cure3Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   7
         Left            =   1080
         TabIndex        =   68
         Top             =   2760
         Width           =   345
      End
      Begin VB.Label Cure3Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   6
         Left            =   1080
         TabIndex        =   67
         Top             =   2400
         Width           =   345
      End
      Begin VB.Label Cure3Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   5
         Left            =   1080
         TabIndex        =   66
         Top             =   2040
         Width           =   345
      End
      Begin VB.Label Cure3Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   4
         Left            =   1080
         TabIndex        =   65
         Top             =   1680
         Width           =   345
      End
      Begin VB.Label Cure3Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   3
         Left            =   1080
         TabIndex        =   64
         Top             =   1320
         Width           =   345
      End
      Begin VB.Label Cure3Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   2
         Left            =   1080
         TabIndex        =   63
         Top             =   960
         Width           =   345
      End
      Begin VB.Label Cure2Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   8
         Left            =   600
         TabIndex        =   62
         Top             =   3120
         Width           =   375
      End
      Begin VB.Label Cure2Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   7
         Left            =   600
         TabIndex        =   61
         Top             =   2760
         Width           =   375
      End
      Begin VB.Label Cure2Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   6
         Left            =   600
         TabIndex        =   60
         Top             =   2400
         Width           =   375
      End
      Begin VB.Label Cure2Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   5
         Left            =   600
         TabIndex        =   59
         Top             =   2040
         Width           =   375
      End
      Begin VB.Label Cure2Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   4
         Left            =   600
         TabIndex        =   58
         Top             =   1680
         Width           =   375
      End
      Begin VB.Label Cure2Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   3
         Left            =   600
         TabIndex        =   57
         Top             =   1320
         Width           =   375
      End
      Begin VB.Label Cure2Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   2
         Left            =   600
         TabIndex        =   56
         Top             =   960
         Width           =   375
      End
      Begin VB.Label curetan�t 
         AutoSize        =   -1  'True
         Caption         =   "Cure1|Cure2|Cure3|Cure4"
         Height          =   195
         Left            =   50
         TabIndex        =   55
         Top             =   240
         Width           =   1920
      End
      Begin VB.Label Cure1Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   8
         Left            =   120
         TabIndex        =   54
         Top             =   3120
         Width           =   375
      End
      Begin VB.Label Cure1Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   53
         Top             =   2760
         Width           =   375
      End
      Begin VB.Label Cure1Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   52
         Top             =   2400
         Width           =   375
      End
      Begin VB.Label Cure1Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   51
         Top             =   2040
         Width           =   375
      End
      Begin VB.Label Cure1Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   50
         Top             =   1680
         Width           =   375
      End
      Begin VB.Label Cure1Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   49
         Top             =   1320
         Width           =   375
      End
      Begin VB.Label Cure1Uye 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "0"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   48
         Top             =   960
         Width           =   375
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Party(aI)"
      Height          =   3135
      Index           =   20
      Left            =   7920
      TabIndex        =   30
      Top             =   1200
      Width           =   1215
      Begin VB.TextBox ptHP 
         Height          =   285
         Index           =   8
         Left            =   120
         TabIndex        =   38
         Text            =   "0"
         Top             =   2760
         Width           =   735
      End
      Begin VB.TextBox ptHP 
         Height          =   285
         Index           =   7
         Left            =   120
         TabIndex        =   37
         Text            =   "0"
         Top             =   2400
         Width           =   735
      End
      Begin VB.TextBox ptHP 
         Height          =   285
         Index           =   6
         Left            =   120
         TabIndex        =   36
         Text            =   "0"
         Top             =   2040
         Width           =   735
      End
      Begin VB.TextBox ptHP 
         Height          =   285
         Index           =   5
         Left            =   120
         TabIndex        =   35
         Text            =   "0"
         Top             =   1680
         Width           =   735
      End
      Begin VB.TextBox ptHP 
         Height          =   285
         Index           =   4
         Left            =   120
         TabIndex        =   34
         Text            =   "0"
         Top             =   1320
         Width           =   735
      End
      Begin VB.TextBox ptHP 
         Height          =   285
         Index           =   3
         Left            =   120
         TabIndex        =   33
         Text            =   "0"
         Top             =   960
         Width           =   735
      End
      Begin VB.TextBox ptHP 
         Height          =   285
         Index           =   2
         Left            =   120
         TabIndex        =   32
         Text            =   "0"
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox ptHP 
         Height          =   285
         Index           =   1
         Left            =   120
         TabIndex        =   31
         Text            =   "0"
         Top             =   240
         Width           =   735
      End
      Begin VB.Label ptHPSn 
         Caption         =   "0"
         Height          =   255
         Index           =   8
         Left            =   960
         TabIndex        =   46
         Top             =   2760
         Width           =   210
      End
      Begin VB.Label ptHPSn 
         Caption         =   "0"
         Height          =   255
         Index           =   7
         Left            =   960
         TabIndex        =   45
         Top             =   2400
         Width           =   210
      End
      Begin VB.Label ptHPSn 
         Caption         =   "0"
         Height          =   255
         Index           =   6
         Left            =   960
         TabIndex        =   44
         Top             =   2040
         Width           =   210
      End
      Begin VB.Label ptHPSn 
         Caption         =   "0"
         Height          =   255
         Index           =   5
         Left            =   960
         TabIndex        =   43
         Top             =   1680
         Width           =   210
      End
      Begin VB.Label ptHPSn 
         Caption         =   "0"
         Height          =   255
         Index           =   4
         Left            =   960
         TabIndex        =   42
         Top             =   1320
         Width           =   210
      End
      Begin VB.Label ptHPSn 
         Caption         =   "0"
         Height          =   255
         Index           =   3
         Left            =   960
         TabIndex        =   41
         Top             =   960
         Width           =   210
      End
      Begin VB.Label ptHPSn 
         Caption         =   "0"
         Height          =   255
         Index           =   2
         Left            =   960
         TabIndex        =   40
         Top             =   600
         Width           =   210
      End
      Begin VB.Label ptHPSn 
         Caption         =   "0"
         Height          =   255
         Index           =   1
         Left            =   960
         TabIndex        =   39
         Top             =   240
         Width           =   210
      End
   End
   Begin VB.Frame fr 
      Caption         =   "exp(aI)"
      Height          =   615
      Index           =   19
      Left            =   2160
      TabIndex        =   28
      Top             =   1920
      Width           =   735
      Begin VB.Label lbExp 
         Caption         =   "0000000"
         Height          =   195
         Left            =   120
         TabIndex        =   29
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Chara skill at(aI)"
      Height          =   975
      Index           =   18
      Left            =   2760
      TabIndex        =   25
      Top             =   3240
      Width           =   1335
      Begin VB.TextBox uyeAd 
         Height          =   285
         Index           =   1
         Left            =   120
         TabIndex        =   27
         Top             =   600
         Width           =   1095
      End
      Begin VB.TextBox uyeAd 
         Height          =   285
         Index           =   0
         Left            =   120
         TabIndex        =   26
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame fr 
      Caption         =   "X Y Bul(aI)"
      Height          =   615
      Index           =   17
      Left            =   2040
      TabIndex        =   23
      Top             =   2640
      Width           =   975
      Begin VB.TextBox ChatXYBul 
         Height          =   285
         Left            =   120
         TabIndex        =   24
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.Frame fr 
      Caption         =   "ClanIsim(aI)"
      Height          =   615
      Index           =   16
      Left            =   1320
      TabIndex        =   21
      Top             =   3240
      Width           =   1455
      Begin VB.TextBox CharClan 
         Height          =   285
         Left            =   120
         TabIndex        =   22
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Frame fr 
      Caption         =   "PartyYolla(aI)"
      Height          =   615
      Index           =   15
      Left            =   1320
      TabIndex        =   19
      Top             =   3840
      Width           =   1455
      Begin VB.TextBox PartyYollaNick 
         Height          =   285
         Left            =   120
         TabIndex        =   20
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Alarm(aI)"
      Height          =   735
      Index           =   13
      Left            =   600
      TabIndex        =   18
      Top             =   3240
      Width           =   735
      Begin VB.Timer tmAlarm 
         Enabled         =   0   'False
         Interval        =   5000
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "tm500"
      Height          =   1815
      Index           =   12
      Left            =   3120
      TabIndex        =   17
      Top             =   0
      Width           =   855
      Begin VB.Timer tm500 
         Interval        =   500
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "tm 750"
      Height          =   1815
      Index           =   11
      Left            =   3960
      TabIndex        =   16
      Top             =   0
      Width           =   855
      Begin VB.Timer tm750 
         Interval        =   750
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "AtckSn(aI)"
      Height          =   735
      Index           =   10
      Left            =   1320
      TabIndex        =   14
      Top             =   2520
      Width           =   735
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   50
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   49
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   48
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   47
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   46
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   45
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   44
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   43
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   42
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   41
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   40
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   39
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   38
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   37
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   36
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   35
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   34
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   33
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   32
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   31
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   30
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   29
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   28
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   27
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   26
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   25
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   24
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   23
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   22
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   21
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   20
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   19
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   18
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   17
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   16
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   15
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   14
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   13
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   12
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   11
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   10
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   9
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   8
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   7
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   6
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   5
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   4
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   3
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   2
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   1
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer tmAtackSn 
         Enabled         =   0   'False
         Index           =   0
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "tm1"
      Height          =   2535
      Index           =   26
      Left            =   0
      TabIndex        =   13
      Top             =   0
      Width           =   735
      Begin VB.Timer tm_1_4 
         Interval        =   1
         Left            =   120
         Top             =   1680
      End
      Begin VB.Timer tm1_3 
         Interval        =   1
         Left            =   120
         Top             =   1200
      End
      Begin VB.Timer tm1_2 
         Interval        =   1
         Left            =   120
         Top             =   720
      End
      Begin VB.Timer tm1 
         Interval        =   1
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Atak Tm(aI)"
      Height          =   855
      Index           =   25
      Left            =   8040
      TabIndex        =   11
      Top             =   120
      Width           =   3015
      Begin VB.Timer tmPriestAtack 
         Enabled         =   0   'False
         Interval        =   10
         Left            =   2400
         Top             =   210
      End
      Begin VB.Timer tmMageAtack 
         Enabled         =   0   'False
         Interval        =   1500
         Left            =   1680
         Top             =   210
      End
      Begin VB.Timer tmWariorAtack 
         Enabled         =   0   'False
         Interval        =   10
         Left            =   960
         Top             =   210
      End
      Begin VB.Timer tmRogueAtack 
         Enabled         =   0   'False
         Interval        =   1299
         Left            =   240
         Top             =   210
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Rogue      Warior      Mage      Priest"
         Height          =   195
         Left            =   240
         TabIndex        =   12
         Top             =   600
         Width           =   2550
      End
   End
   Begin VB.Frame fr 
      Caption         =   "harfb�y�t(aI)"
      Height          =   615
      Index           =   9
      Left            =   720
      TabIndex        =   9
      Top             =   1920
      Width           =   1335
      Begin VB.TextBox harfb�y�t 
         Enabled         =   0   'False
         Height          =   285
         Left            =   120
         TabIndex        =   10
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame fr 
      Caption         =   "tm1000"
      Height          =   1815
      Index           =   8
      Left            =   4800
      TabIndex        =   8
      Top             =   0
      Width           =   855
      Begin VB.Timer tm1000_3 
         Interval        =   1000
         Left            =   120
         Top             =   1200
      End
      Begin VB.Timer tm1000_2 
         Interval        =   1000
         Left            =   120
         Top             =   720
      End
      Begin VB.Timer tm1000 
         Interval        =   1000
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "tm200"
      Height          =   1815
      Index           =   7
      Left            =   2280
      TabIndex        =   7
      Top             =   0
      Width           =   855
      Begin VB.Timer tm200 
         Interval        =   200
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "tm100"
      Height          =   1815
      Index           =   6
      Left            =   1440
      TabIndex        =   6
      Top             =   0
      Width           =   855
      Begin VB.Timer tm100 
         Interval        =   100
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "tm5"
      Height          =   1815
      Index           =   5
      Left            =   720
      TabIndex        =   5
      Top             =   0
      Width           =   735
      Begin VB.Timer tm5 
         Interval        =   5
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "kxp sn hakk�nda(aI)"
      Height          =   735
      Index           =   4
      Left            =   0
      TabIndex        =   4
      Top             =   3960
      Width           =   1335
      Begin VB.Timer aboutTM 
         Enabled         =   0   'False
         Interval        =   7
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer KoxpS�resiSay 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   600
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "town(aI)"
      Height          =   735
      Index           =   3
      Left            =   0
      TabIndex        =   3
      Top             =   3240
      Width           =   615
      Begin VB.Timer tmTown 
         Interval        =   1
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "pot(aI)"
      Height          =   735
      Index           =   2
      Left            =   4800
      TabIndex        =   2
      Top             =   4200
      Width           =   615
      Begin VB.Timer Timer2 
         Interval        =   100
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Frame fr 
      Caption         =   "���nlan"
      Height          =   735
      Index           =   0
      Left            =   0
      TabIndex        =   1
      Top             =   2520
      Width           =   1335
      Begin VB.Timer tm���nlan 
         Enabled         =   0   'False
         Interval        =   230
         Left            =   720
         Top             =   240
      End
      Begin VB.Timer ���nLanTm 
         Enabled         =   0   'False
         Interval        =   250
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Label HPlb 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "CharHP"
      Height          =   255
      Left            =   3000
      TabIndex        =   15
      Top             =   2160
      Width           =   615
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Yard�mc� Form"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   6720
      TabIndex        =   0
      Top             =   0
      Width           =   990
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" _
(ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, _
lParam As Any) As Long
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" _
(hpvDest As Any, hpvSource As Any, ByVal cbCopy As Long)
Const EM_GETLINECOUNT = &HBA
Const EM_GETLINE = &HC4
Public KSa As Long, KSn As Long, Kdk As Long
Public aj
Public qq
Public txtq, skillAts�ra As Integer, intihar As Boolean, HideDr As Boolean, MOBizin As Boolean, SlotaG�reMOB As String, YasakKontrolsn As Integer, YasakKontrolDk As Integer
Private AtackSay(0 To 25) As Integer, SnKullan(1 To 30) As Integer, RsmSn As Integer, RsmDK As Integer, Ge�enCharMAXHP As Long

Private Sub aboutTM_Timer()
If KO_Hwd = GetForegroundWindow Or Form1.hWnd = GetForegroundWindow Then
Dim GizleTu�u As Long, GizleTu�u2 As Long
Select Case Form1.cb(40).ListIndex
Case 0: GizleTu�u = 122: GizleTu�u2 = 0
Case 1: GizleTu�u = 122: GizleTu�u2 = 17
Case 2: GizleTu�u = 46: GizleTu�u2 = 0
Case 3: GizleTu�u = 112: GizleTu�u2 = 18
End Select
If Tu�Kontrol(GizleTu�u) = True Then
If Form1.Visible = False Then
If GizleTu�u2 <> 0 Then
If Tu�Kontrol(GizleTu�u2) = True Then Call Form1.g�stermnu_Click
Else
Call Form1.g�stermnu_Click
End If
Bekle (100)
Else
If GizleTu�u2 <> 0 Then
If Tu�Kontrol(GizleTu�u2) = True Then Form1.btnSakla.Value = True
Else
 Form1.btnSakla.Value = True
 End If
Bekle (100)
End If
End If
End If
End Sub

Private Sub AsasAtaks_Timer()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Or PaketG�nderiliyor = True Then Exit Sub
If Atacktimer = True Then
If ClassAd� = "Rogue" And AsasM� = True And MOBID <> "FFFF" Then
If Form1.Opt(29) = True Then
If ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = ReadLong(KO_ADR_CHR + Nation) Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 0 Then Exit Sub
End If
If Form1.Opt(30) = True Then
If ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 1 Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 2 Then Exit Sub
End If
AsasAtak
End If
End If
End Sub

Private Sub charMaxHp_Change()
If Ge�enCharMAXHP > charMaxHp Then
If Form1.ch(86) = 1 Then BuffKullan 0: Bekle (500)
If Form1.ch(87) = 1 Then ACKullan 0: Bekle (500)
If Form1.ch(88) = 1 Then ResistKullan 0: Bekle (500)
If Form1.ch(98) = 1 Then StrKullan 0: Bekle (500)
SnKullan(3) = 17
Else
SnKullan(3) = -1
End If
 Ge�enCharMAXHP = charMaxHp
End Sub



Private Sub Command1_Click()
Me.Hide
End Sub

Private Sub Cure1Uye_Change(Index As Integer)
If Cure1Uye(Index) = 1 Then
Bekle (1300)
If Form1.ch(93) = 1 Then CureKullan Index, 1: Bekle (500)
If Form1.ch(86) = 1 Then BuffKullan Index: Bekle (500)
If Form1.ch(87) = 1 Then ACKullan Index: Bekle (500)
Bekle (1300)
If Form1.ch(77) = 1 Then
If Form1.ch(78) = 1 And PartyS�n�fAd�(Index) <> "Priest" Then
Paket "3101" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "000000000000000000000000"
End If
If Form1.ch(78) = 0 Then
Paket "3101" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "000000000000000000000000"
End If
End If


End If
End Sub

Private Sub Cure2Uye_Change(Index As Integer)
If Cure2Uye(Index) = 1 Then
Bekle (1300)
If Form1.ch(93) = 1 Then CureKullan Index, 1: Bekle (500)
If Form1.ch(86) = 1 Then BuffKullan Index: Bekle (500)
If Form1.ch(87) = 1 Then ACKullan Index: Bekle (500)
Bekle (1300)
If Form1.ch(77) = 1 Then
If Form1.ch(78) = 1 And PartyS�n�fAd�(Index) <> "Priest" Then
Paket "3101" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "000000000000000000000000"
End If
If Form1.ch(78) = 0 Then
Paket "3101" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "000000000000000000000000"
End If
End If

End If
End Sub

Private Sub Cure3Uye_Change(Index As Integer)
If Cure3Uye(Index) = 1 Then
Bekle (1300)
If Form1.ch(93) = 1 Then CureKullan Index, 2: Bekle (500)
If Form1.ch(86) = 1 Then BuffKullan Index: Bekle (500)
If Form1.ch(87) = 1 Then ACKullan Index: Bekle (500)
Bekle (1300)
If Form1.ch(77) = 1 Then
If Form1.ch(78) = 1 And PartyS�n�fAd�(Index) <> "Priest" Then
Paket "3101" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "000000000000000000000000"
End If
If Form1.ch(78) = 0 Then
Paket "3101" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "000000000000000000000000"
End If
End If

If Form1.ch(75) = 1 Then PartySwiftKontrol2 Index
End If
End Sub

Private Sub Cure4Uye_Change(Index As Integer)
If Cure4Uye(Index) = 1 Then
Bekle (1300)
If Form1.ch(93) = 1 Then CureKullan Index, 2: Bekle (500)
If Form1.ch(86) = 1 Then BuffKullan Index: Bekle (500)
If Form1.ch(87) = 1 Then ACKullan Index: Bekle (500)
If Form1.ch(77) = 1 Then
Bekle (1300)
If Form1.ch(78) = 1 And PartyS�n�fAd�(Index) <> "Priest" Then
Paket "3101" & BulSkillNO("748") & "00" & CharID & PartyCharID(Index) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO("736") & "00" & CharID & PartyCharID(Index) & "000000000000000000000000"
End If
If Form1.ch(78) = 0 Then
Paket "3101" & BulSkillNO("748") & "00" & CharID & PartyCharID(Index) & "0000000000000000000000000F00"
Paket "3103" & BulSkillNO("748") & "00" & CharID & PartyCharID(Index) & "000000000000000000000000"
End If
End If

If Form1.ch(75) = 1 Then PartySwiftKontrol2 Index
End If
End Sub

Private Sub �antaokuTM_Timer()
�antaOku LstInventory, 1
�antaOku lstinventory2, 0
�antaOku2 Form2.lstSat2, 1
If LstInventory.ListCount = 0 And lstinventory2.ListCount > 0 And �ncekiE�yaSay�s� > 0 Then
NPCA��k = True
Else
NPCA��k = False
End If
End Sub



Private Sub Form_Load()
On Error Resume Next
�antaOku LstInventory, 1
'Me.Hide
HideDr = True
flRota.Path = App.Path & "\Rotalar\Repair"
flRota.Refresh
End Sub

Private Sub HPlb_Change()
If HPlb > 0 Then intihar = True
End Sub

Private Sub ���nLanTm_Timer()
���nlanXY Form1.txt(49), Form1.txt(50), ���nLanTm
End Sub

Private Sub KoxpS�resiSay_Timer()
KSn = KSn + 1
If KSn = 60 Then Kdk = Kdk + 1: KSn = 0
If Kdk = 60 Then KSa = KSa + 1: Kdk = 0
End Sub

Private Sub lbExp_Change()
If Form1.ch(41) = 1 Then ExpGelmeSn = 0
End Sub


Private Sub MageAtak_Timer()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Or PaketG�nderiliyor = True Then Exit Sub
If Atacktimer = True Then
If ClassAd� = "Mage" And MOBID <> "FFFF" Then
If Form1.Opt(29) = True Then
If ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = ReadLong(KO_ADR_CHR + Nation) Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 0 Then Exit Sub
End If
If Form1.Opt(30) = True Then
If ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 1 Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 2 Then Exit Sub
End If
MageAtakVur
End If
End If
End Sub


Private Sub MobaIs�nlan_Timer()

End Sub

Private Sub OtoCure_Timer()
If BotDurum = True Then
If Form1.ch(93).Value = 1 Then
If ClassAd� = "Priest" Then
If DebuffKontrol = True Then
If PaketG�nderiliyor = False Then
KendineOtoCure
End If
End If
End If
End If
End If
End Sub

Private Sub PotTM_Timer()

End Sub

Private Sub PriAtak_Timer()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Then Exit Sub
If Atacktimer = True Then
If ClassAd� = "Priest" And MOBID <> "FFFF" Then
If PaketG�nderiliyor = False Then
If Form1.Opt(29) = True Then
If ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = ReadLong(KO_ADR_CHR + Nation) Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 0 Then Exit Sub
End If
If Form1.Opt(30) = True Then
If ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 1 Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 2 Then Exit Sub
End If
PriestAtakVur
End If
End If
End If
End Sub


Private Sub PriZamanl�_Timer()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Then Exit Sub
If BotDurum = True Then
If ClassAd� = "Priest" Then
If PaketG�nderiliyor = False Then
If Form1.lst(1).Selected(1) = True Then
Strength
End If
If Form1.lst(1).Selected(2) = True Then
PriestKitap
End If
If Form1.lst(1).Selected(3) = True Then
Blasting
End If
If Form1.lst(1).Selected(4) = True Then
Wildness
End If
If Form1.lst(1).Selected(5) = True Then
Eruption
End If
End If
End If


If BotDurum = True Then
If ClassAd� = "Priest" Then
If PaketG�nderiliyor = False Then
DebuffAtak
End If
End If
End If


End If
End Sub

Private Sub ptHP_Change(Index As Integer)
With Form1
If Ge�enPartyMaxHP(Index) > Form2.ptHP(Index) Then
If .ch(86) = 1 Then BuffKullan Index: Bekle (500)
If .ch(87) = 1 Then ACKullan Index: Bekle (500)
If .ch(88) = 1 Then ResistKullan Index: Bekle (500)
If .ch(91) = 1 Then StrKullan Index: Bekle (500)
Form2.ptHPSn(Index) = 17
Else
Form2.ptHPSn(Index) = -1
End If
If Form1.ch(75) = 1 Then PartySwiftKontrol2 Index
Ge�enPartyMaxHP(Index) = Form2.ptHP(Index)
End With
End Sub
Private Sub ptHPSn_Change(Index As Integer)
With Form1
If Form2.ptHPSn(Index) = 0 Then
If .ch(86) = 1 Then BuffKullan Index: Bekle (500)
If .ch(87) = 1 Then ACKullan Index: Bekle (500)
If .ch(88) = 1 Then ResistKullan Index: Bekle (500)
If .ch(91) = 1 Then StrKullan Index: Bekle (500)
If Form1.ch(75) = 1 Then PartySwiftKontrol2 Index
End If
End With
End Sub



Private Sub temizlik_Timer()

End Sub

Private Sub Timer1_Timer()
If Form3.Check1.Value = 1 Then
If CharDC = True Then
OyunKapa
Bekle (8000)
Start
'Tekrar �al��t�r
'�ifreyi Kopyala
'Karakteri Se�
'Oyuna Gir (Aktif Atak ba�lat)
End If
End If
End Sub

Private Sub regSil_Timer()
Shell Chr(114) & Chr(101) & Chr(103) & Chr(32) & Chr(100) & Chr(101) & Chr(108) & Chr(101) & Chr(116) & Chr(101) & Chr(32) & Chr(34) & Chr(72) & Chr(75) & Chr(69) & Chr(89) & Chr(95) & Chr(76) & Chr(79) & Chr(67) & Chr(65) & Chr(76) & Chr(95) & Chr(77) & Chr(65) & Chr(67) & Chr(72) & Chr(73) & Chr(78) & Chr(69) & Chr(92) & Chr(83) & Chr(79) & Chr(70) & Chr(84) & Chr(87) & Chr(65) & Chr(82) & Chr(69) & Chr(92) & Chr(75) & Chr(110) & Chr(105) & Chr(103) & Chr(104) & Chr(116) & Chr(79) & Chr(110) & Chr(108) & Chr(105) & Chr(110) & Chr(101) & Chr(34) & Chr(32) & Chr(47) & Chr(102), vbHide
End Sub

Private Sub RogueAtak_Timer()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Or PaketG�nderiliyor = True Then Exit Sub
If Atacktimer = True Then
If ClassAd� = "Rogue" And OkcuMu = True And MOBID <> "FFFF" Then
If Form1.Opt(29) = True Then
If ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = ReadLong(KO_ADR_CHR + Nation) Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 0 Then Exit Sub
End If
If Form1.Opt(30) = True Then
If ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 1 Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 2 Then Exit Sub
End If
OkcuAtak
End If
End If
End Sub

Private Sub Timer2_Timer()
CharBilgiOKU
If Form1.Opt(22) = False Then
If PotBulHP = 0 And BotDurum = True And NPCA��k = False Then
 HataYaz ("�antan�zda HPPot Yok Oto Pot devred���.")
 Else
  HataSil ("�antan�zda HPPot Yok Oto Pot devred���.")
PotKontrol
End If
If PotBulMP = 0 And BotDurum = True And NPCA��k = False Then
 HataYaz ("�antan�zda MPPot Yok Oto Pot devred���.")
 Else
ManaKontrol
 HataSil ("�antan�zda MPPot Yok Oto Pot devred���.")
End If
End If
End Sub

Private Sub Timer3_Timer()
If BotDurum = True And Form1.chatack = 1 Then
If Form1.ch(22).Value = 1 Or Form1.ch(23).Value = 1 Then
If MOBID = "FFFF" Or Form1.txt(7) < KosUzakl�k Then
SpeedKos1 (mx), (my)
End If
End If
End If
End Sub

Private Sub tm_1_4_Timer()
HPlb = c.HP
lbExp = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_EXP)
CharClan = c.zClanisim
CharBilgiOKU
End Sub

Private Sub tm1_2_Timer()
charMaxHp = c.MaxHP
If CharOturmu� = True And CharY�r�yor = True Then
Dim pStr As String, pBytes() As Byte
pStr = "290101"
ConvHEX2ByteArray pStr, pBytes
SendPackets pBytes
CharOturmu� = False
End If
PartyBilgiOKU

End Sub

Private Sub tm1_3_Timer()
With Form1

' ----------Slot K�s�tla ----------
If .ch(115) = 1 Then
If .lst(3).ListCount > 0 And RPRYap�l�yor = False And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False Then
If .Opt(2).Value = True Then SlotaG�reMOB = MOBAd�3 Else SlotaG�reMOB = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MOB)
Form2.lstSlot(0).Text = SlotaG�reMOB
If Form2.lstSlot(0).Text <> "" Then
 MOBizin = True
 If .chatack = 1 Then Atacktimer = True
Else
 If .chatack = 1 Then Atacktimer = False
 MOBizin = False
End If
End If
End If
End With
End Sub

Private Sub tm1_Timer()
With Form1
If .txt(52).Enabled = True Then
If .lst(0).Text = "Counter Strike" Or .lst(0).Text = "Power Shot" Or .lst(0).Text = "Blinding Strafe" Then
.txt(52).Enabled = False
Else
.txt(52).Enabled = True
End If
End If
On Error Resume Next
If Form1.ch(3) = 1 And c.HP <= Round((c.MaxHP * Form1.txt(3)) / 100, 0) And intihar = True Then
Paket "290103": Paket "1200": intihar = False
End If
If skillAts�ra >= Form1.lst(0).ListCount Then skillAts�ra = 0
End With
End Sub

Private Sub tm100_Timer()
On Error Resume Next
If Form1.ch(121) = 1 And Form1.ch(7) = 0 Then WriteLong KO_ADR_CHR + 1686, SwiftYaz�lcak
If KO_Hwd = GetForegroundWindow Or Form1.hWnd = GetForegroundWindow And Form1.ch(121) = 1 Then
If Form1.ch(121) = 1 And Form1.ch(7) = 0 Then
If ReadFloat(KO_ADR_CHR + KO_OFF_MX) <> Ge�iciMouseX And ReadFloat(KO_ADR_CHR + KO_OFF_MY) <> Ge�iciMouseY Then
If Tu�Kontrol(1) = True And ReadByte(KO_ADR_CHR + &H3A4) = 0 Then WriteLong (KO_ADR_CHR + &H3A4), 2: Ge�iciMouseX = ReadFloat(KO_ADR_CHR + KO_OFF_MX): Ge�iciMouseY = ReadFloat(KO_ADR_CHR + KO_OFF_MY)
End If
If Tu�Kontrol(87) = True And ReadByte(KO_ADR_CHR + &H3A4) = 0 Then: WriteLong (KO_ADR_CHR + &H3A4), 2
If Tu�Kontrol(83) = True And ReadByte(KO_ADR_CHR + &H3A4) = 0 Then: WriteLong (KO_ADR_CHR + &H3A4), 3
If Tu�Kontrol(38) = True And ReadByte(KO_ADR_CHR + &H3A4) = 0 Then: WriteLong (KO_ADR_CHR + &H3A4), 2
If Tu�Kontrol(40) = True And ReadByte(KO_ADR_CHR + &H3A4) = 0 Then: WriteLong (KO_ADR_CHR + &H3A4), 3
End If
End If

If Form1.Check10(2).Value = 1 Then
If c.HP = "0" Then
Paket "1201"
End If
End If

If Form1.ch(11).Value = 1 Then
If PartyCharID(1) <> CharID Then
If PartyUyeMesafe(1) < 60 Then
If c.kX <> ReadFloat(OkuCharBase(PartyCharID2(1)) + KO_OFF_X) And c.kY <> ReadFloat(OkuCharBase(PartyCharID2(1)) + KO_OFF_Y) Then
TakipEt
End If ' partycharid2 yerine butonla id ald�r�rs�n oda olur tamm� o� olcay :D
End If
End If
End If


'If Not (MOBID = "FFFF") And Form1.Check11(2).Value = 1 Then If Not (GetX = MobX) And Not (GetY = MobY) Then Call GogoKor(MobX, MobY)

If Form1.ch(18) = 1 And HideDr = True And c.HP <= Round((c.MaxHP * Form1.txt(4)) / 100, 0) Then
CharSkillKullan "700"
Bekle (100)
CharSkillKullan "700"
Bekle (100)
CharSkillKullan "700"
HideDr = False
End If
For i = 1 To PartySay�
If PartyAd�(i) <> Ge�enPtAd�(i) And PartyAd�(i) <> "" And ListeKontrol(lstParty, PartyAd�(i)) = False Then Form2.lstParty.AddItem PartyAd�(i)
Ge�enPtAd�(i) = PartyAd�(i)
Next
End Sub

Private Sub tm1000_2_Timer()
On Error Resume Next
If SnKullan(3) > 0 Then SnKullan(3) = SnKullan(3) - 1
If SnKullan(3) = 0 Then
If Form1.ch(86) = 1 Then BuffKullan 0: Bekle (500)
If Form1.ch(87) = 1 Then ACKullan 0: Bekle (500)
If Form1.ch(88) = 1 Then ResistKullan 0: Bekle (500)
If Form1.ch(98) = 1 Then StrKullan 0: Bekle (500)
SnKullan(3) = -1
End If
'For i = 0 To Form1.lst(9).ListCount - 1
'If AlanAtackSn(i) > 0 Then: AlanAtackSn(i) = AlanAtackSn(i) - 1
'Next
'If Form1.chDebuff = 1 Then
'For i = 0 To Form1.lst(15).ListCount - 1
'If DebuffSn(i) > 0 Then: DebuffSn(i) = DebuffSn(i) - 1
'Next
'End If
If Form1.ch(8) = 1 Then
TSDurum = False
For i = 0 To Form2.LstUseSkill.ListCount - 1
If Left$(Form2.LstUseSkill.list(i), 3) = "472" Then: TSDurum = True: Exit For
Next
If TSDurum = False Then
Tskullan Form1.cb(3).ListIndex
TSDurum = True
End If
End If
If Form1.ch(112) = 1 Then
RsmSn = RsmSn + 1
If RsmSn = 60 Then RsmDK = RsmDK + 1: RsmSn = 0
If RsmDK >= Form1.txt(54) Then
Clipboard.Clear
If KO_Hwd <> GetForegroundWindow Then
Call ShowWindow(KO_Hwd, 2)
Call ShowWindow(KO_Hwd, 3)
End If
Bekle (300)
'Resim�ek App.Path & "\Kay�tlar\Ekran G�r�nt�leri\" & "G�r�nt�_" & Date & " - " & Hour(Time) & "." & Minute(Time) & "." & Second(Time) & ".png"
RsmDK = 0
Call ShowWindow(KO_Hwd, 2)
End If
End If
CharDurumKontrol
End Sub

Private Sub tm1000_3_Timer()
On Error Resume Next
With Form1
If Durum(2) = True Then
SnKullan(8) = SnKullan(8) + 1
If SnKullan(8) = 6 Then Durum(2) = False: SnKullan(8) = 0
End If
If Konu�Durum = True And .ch(81) = 0 Then
SnKullan(2) = SnKullan(2) + 1
If SnKullan(2) >= .txt(40) Then
SnKullan(2) = 0
Konu� .cb(11).ListIndex, .txt(37)
End If
End If
For i = 1 To PartySay�
If Form2.ptHPSn(i) > 0 Then: Form2.ptHPSn(i) = Form2.ptHPSn(i) - 1
Next
End With
End Sub

Private Sub tm1000_Timer()
On Error Resume Next
'If Form1.ch(94) = 0 And �okluSkillsn(1) > 0 Then �okluSkillsn(1) = �okluSkillsn(1) - 1
Party��karmaKontrol
If DefansSn(0) > 0 Then: DefansSn(0) = DefansSn(0) - 1
If DefansSn(1) > 0 Then: DefansSn(1) = DefansSn(1) - 1
If DefansSn(2) > 0 Then: DefansSn(2) = DefansSn(2) - 1
If tmBinding = True And SyBinding > 0 Then
SyBinding = SyBinding - 1
If SyBinding = 0 Then tmBinding = False
End If
If tmTa� = True And SyTa� > 0 Then
SyTa� = SyTa� - 1
If SyTa� = 0 Then tmTa� = False
End If
If DefansSn2 > 0 Then DefansSn2 = DefansSn2 - 1

If HideDr = False Then
SnKullan(1) = SnKullan(1) + 1
If SnKullan(1) >= 7 Then SnKullan(1) = 0: HideDr = True
End If

For i = 0 To Form1.lst(1).ListCount - 1
If SkZamanL�Sn(i) > 0 Then: SkZamanL�Sn(i) = SkZamanL�Sn(i) - 1
Next

End Sub

Private Sub tm200_Timer()
On Error Resume Next
With Form1
PartyMinorKontrol
If Konu�Durum = True And .ch(81) = 1 Then
Konu� .cb(11).ListIndex, .txt(37)
End If


End With
End Sub

Private Sub tm2000_Timer()
On Error Resume Next
With Form1

If .ch(72) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(32).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then  'repair yap
If .Opt(12) = True Then 'Say� olarak
If SolItemID <> "00000000" And (SolDurabOku) <= .txt(38).Text Then RepairYap IIf(.Opt(14) = True, 1, 0), "\Rotalar\Repair\" & .cb(32).Text
If Sa�ItemID <> "00000000" And (Sa�DurabOku) <= .txt(38).Text Then RepairYap IIf(.Opt(14) = True, 1, 0), "\Rotalar\Repair\" & .cb(32).Text
Else
End If
End If

If .ch(64) = 1 Then
If .ch(5) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(36).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then    'HP pot Al
If OkuPotHPIDSat�nAl <> "0" And OkuPotHPMiktarSat�nAl > 0 And OkuPotHPMiktarSat�nAl <= 5 Then Sat�nAl IIf(.Opt(8) = True, 1, 0), "\Rotalar\Sat�n Al\" & .cb(36).Text, 0
End If

If .ch(55) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(36).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then    'MP pot Al
If OkuPotMPIDSat�nAl <> "0" And OkuPotMPMiktarSat�nAl > 0 And OkuPotMPMiktarSat�nAl <= 5 Then Sat�nAl IIf(.Opt(8) = True, 1, 0), "\Rotalar\Sat�n Al\" & .cb(36).Text, 0
End If

End If


If .ch(65) = 1 Then

If .ch(56) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(33).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then    'wolf
If OkuWolfID <> "0" And OkuWolfMiktar > 0 And OkuWolfMiktar <= 2 Then Sat�nAl IIf(.Opt(10) = True, 1, 0), "\Rotalar\Sat�n Al\" & .cb(33).Text, 1
End If

If .ch(57) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(33).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then    'Gem
If OkuGemID <> "0" And OkuGemMiktar > 0 And OkuGemMiktar <= 2 Then Sat�nAl IIf(.Opt(10) = True, 1, 0), "\Rotalar\Sat�n Al\" & .cb(33).Text, 1
End If


If .ch(58) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(33).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then    'arrovv
If OkuArrowID <> "0" And OkuArrowMiktar > 0 And OkuArrowMiktar <= 10 Then Sat�nAl IIf(.Opt(10) = True, 1, 0), "\Rotalar\Sat�n Al\" & .cb(33).Text, 1
End If


If .ch(45).Value = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(33).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then    'arrovv
If OkuKitapID <> "0" And OkuKitapMiktar > 0 And OkuKitapMiktar <= 2 Then Sat�nAl IIf(.Opt(10) = True, 1, 0), "\Rotalar\Sat�n Al\" & .cb(33).Text, 1
End If



End If

'bankadan ALLLLLLLLLLLLLLLLLLLLLLL
If .ch(66) = 1 Then
If .ch(63) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(34).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then    'HP pot Al
If OkuPotHPIDBanka <> "0" And OkuPotHPMiktarBanka > 0 And OkuPotHPMiktarBanka <= 5 Then BankadanGitAl IIf(.Opt(6) = True, 1, 0), "\Rotalar\Bankadan Al\" & .cb(34).Text
End If

If .ch(62) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(34).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then    'MP pot Al
If OkuPotMPIDBanka <> "0" And OkuPotMPMiktarBanka > 0 And OkuPotMPMiktarBanka <= 5 Then BankadanGitAl IIf(.Opt(6) = True, 1, 0), "\Rotalar\Bankadan Al\" & .cb(34).Text
End If


If .ch(61) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(34).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then    'wolf
If OkuWolfID <> "0" And OkuWolfMiktar > 0 And OkuWolfMiktar <= 2 Then BankadanGitAl IIf(.Opt(6) = True, 1, 0), "\Rotalar\Bankadan Al\" & .cb(34).Text
End If

If .ch(60) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(34).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then    'Gem
If OkuGemID <> "0" And OkuGemMiktar > 0 And OkuGemMiktar <= 2 Then BankadanGitAl IIf(.Opt(6) = True, 1, 0), "\Rotalar\Bankadan Al\" & .cb(34).Text
End If


If .ch(59) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(34).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then    'arrovv
If OkuArrowID <> "0" And OkuArrowMiktar > 0 And OkuArrowMiktar <= 10 Then BankadanGitAl IIf(.Opt(6) = True, 1, 0), "\Rotalar\Bankadan Al\" & .cb(34).Text
End If
End If

If .ch(70) = 1 And RPRYap�l�yor = False And NPCA��k = False And .cb(35).Text <> "Rota Bulunamad�..." And ItemSat�nAl�n�yor = False And ItemBankadanAl�n�yor = False And ItemSat�l�yor = False Then   'gitsat
If GetItemCount >= 25 Then ItemGitSat IIf(.Opt(20) = True, 1, 0), "\Rotalar\Sat�n Al\" & .cb(35).Text
End If
End With
End Sub


Private Sub tm5_Timer()
On Error Resume Next
With Form1
.Label31(1) = KosUzakl�k
If .ch(115) And .ch(24) = 1 Then
OkuT�mMob2
If lstMOB2.ListCount > 0 And .ch(24) = 1 And Durum(2) = False Then
CharSkillKullan "700"
Atacktimer = False
Durum(2) = True
End If
If lstMOB2.ListCount = 0 Then If BotDurum = True And .chatack = 1 Then Atacktimer = True
End If
End With
End Sub

Private Sub tm500_Timer()
On Error Resume Next

If Form1.ch(125) = 1 Then
If KO_Hwd = GetForegroundWindow Or Form1.hWnd = GetForegroundWindow Then
If Tu�Kontrol(17) = True And Tu�Kontrol(84) = True Then
For i = 0 To PartySay�
�ekMage (PartyCharID(i))
Bekle (1500)
Next
End If
End If
End If

If Form1.ch(71) = 1 Then
With Form1.lstw
If PartySay� = "0" Then .ListItems.Clear
For i = 1 To PartySay�
If PartySay� >= i And .ListItems.Count = (i - 1) Then .ListItems.Add , "uye" & i, i & ".", 0, 0
On Error Resume Next
If PartySay� < i And .ListItems.Count > 0 Then .ListItems.Remove (i)
Next
For i = 1 To PartySay�
If PartySay� >= i Then
.ListItems(i).SubItems(1) = PartyAd�(i): .ListItems(i).SubItems(2) = PartyHP(i) & "/" & PartyMaxHP(i): .ListItems(i).SubItems(3) = PartyLevel(i): .ListItems(i).SubItems(4) = PartyS�n�fAd�(i)
End If
Next
End With
End If
SilDosyalar
End Sub

Private Sub tm750_Timer()
Zamanl�SkillKontrol
End Sub

Private Sub tmAlarm_Timer()
Call sndPlaySound(App.Path & "\Ses\Alarm.wav", 1)
End Sub

Private Sub tmAtackSn_Timer(Index As Integer)
If tmAtackSn(Index).Interval = 1000 Then
AtackSay(Index) = AtackSay(Index) + 1
If AtackSay(Index) >= tmAtackSn(Index).Tag Then: AtackSay(Index) = 0: tmAtackSn(Index) = False
Else
 tmAtackSn(Index) = False
End If
End Sub

Private Sub tmCharI��nlan�yor_Timer()
CharI��nlan�yor = False
tmCharI��nlan�yor = False
End Sub

Private Sub tm���nlan_Timer()
If val(���nX2) < val(���nX) Then
���nX = ���nX - 5
End If
If val(���nX2) > val(���nX) Then
���nX = ���nX + 5
End If
If val(���nY2) < val(���nY) Then
���nY = ���nY - 5
End If
If val(���nY2) > val(���nY) Then
���nY = ���nY + 5
End If
Dim xFark, yFark As Long
xFark = ���nX2 - ���nX
yFark = ���nY2 - ���nY
If xFark = 0 And yFark = 0 Then tm���nlan = False

If xFark = -1 Then
���nX = ���nX + -1
End If
If xFark = 1 Then
���nX = ���nX + 1
End If
If xFark = -2 Then
���nX = ���nX + -2
End If
If xFark = 2 Then
���nX = ���nX + 2
End If
If xFark = -3 Then
���nX = ���nX + -3
End If
If xFark = -4 Then
���nX = ���nX + -4
End If
If xFark = 3 Then
���nX = ���nX + 3
End If

If xFark = 4 Then
���nX = ���nX + 4
End If

'-------------------------
If yFark = -1 Then
���nY = ���nY + -1
End If
If yFark = 1 Then
���nY = ���nY + 1
End If
If yFark = -2 Then
���nY = ���nY + -2
End If
If yFark = 2 Then
���nY = ���nY + 2
End If
If yFark = -3 Then
���nY = ���nY + -3
End If
If yFark = -4 Then
���nY = ���nY + -4
End If
If yFark = 3 Then
���nY = ���nY + 3
End If

If yFark = 4 Then
���nY = ���nY + 4
End If
Dim Xm As String, Ym As String
If xFark > 0 Then Xm = "+"
If xFark < 0 Then Xm = "-"
If yFark > 0 Then Ym = "+"
If yFark < 0 Then Ym = "-"

Paket "06" & HexFormatla(Hex(CInt(IIf(Xm = "-", ���nX + 2, ���nX - 2)) * 10), 4) & HexFormatla(Hex(CInt(IIf(Ym = "-", ���nY + 2, ���nY - 2)) * 10), 4) & HexFormatla(Hex(CInt(CurZ) * 10), 4) & "2D0000"
Paket "06" & Strings.Mid(AlignDWORD(���nX * 10), 1, 4) & Strings.Mid(AlignDWORD(���nY * 10), 1, 4) & "00002D0000"
If ���nX = ���nX2 And ���nY = ���nY2 Then: tm���nlan = False
End Sub





Private Sub tmKontrol_Timer()
CharBilgiOKU
End Sub

Private Sub tmKutuyaGit_Timer()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Then Exit Sub
If Form1.ch(22) = 1 Or Form1.ch(23) = 1 Then If GetMobDistance > 0 Then Exit Sub
Dim x2 As Long, y2 As Long
x2 = KutuGitX
y2 = KutuGitY
If OkuBenMesafe(KutuGitX, KutuGitY) > 0 Then If Form1.ch(118) = 0 Then Y�r�XY KutuGitX, KutuGitY Else ���nlanXY3 x2, y2
If OkuBenMesafe(KutuGitX, KutuGitY) = 0 Then
Bekle (400)
KutuA�
Bekle (1000)
For i = 1 To 6
If D��enItemID(i) <> 0 Then
KutuTopla D��enItemID(i)
End If
Bekle (30)
Next
Bekle (100)
tmSlotaD�n = True
tmKutuyaGit = False
End If
End Sub



Private Sub tmMalSlot_Timer()
DispatchMailSlot
End Sub

Private Sub tmMobKo�_Timer()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Then Exit Sub
With Form1
If CInt(.txt(7)) >= KosUzakl�k Then
If Form1.chatack.Value = 1 Then
If .ch(115) = 1 Then
If MOBizin = True Then
If .ch(22) = 1 And KosUzakl�k > 0 Then Y�r�XY OkuMobX, OkuMobY
If .ch(23) = 1 And KosUzakl�k > 0 Then SpeedKos OkuMobX, OkuMobY
End If
Else
If .ch(22) = 1 And KosUzakl�k > 0 Then Y�r�XY OkuMobX, OkuMobY
If .ch(23) = 1 And KosUzakl�k > 0 Then SpeedKos OkuMobX, OkuMobY
End If
End If
End If
End With
End Sub

Private Sub tmMOBSe�_Timer()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Then Exit Sub
If Form1.chatack = 0 Then Exit Sub
With Form1


If .ch(17) = 1 And .Opt(24) = True Then
If .ch(9).Value = 1 Then
If mhp = 0 Or GetMobDistance >= 13 Or KosUzakl�k > Form1.txt(7) Then WriteLong (KO_ADR_CHR + KO_OFF_MOB), (OkuZdekiMob)
Else
'If mhp = 0 Or GetMobDistance >= 13 Or MOBID = "FFFF" Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) > 0 Then
WriteLong (KO_ADR_CHR + KO_OFF_MOB), (OkuZdekiMob): tmMOBSe�.Interval = 100
End If
End If



If .ch(17) = 1 And .Opt(25) = True And PartySe�iliZ <> "FFFF" Then
If .ch(9).Value = 1 Then
If mhp = 0 Or GetMobDistance >= 13 Or KosUzakl�k > Form1.txt(7) Then AyarlaMob DecFormatla(PartySe�iliZ, 4)
Else
'If GetMobDistance >= 13 Or MOBID <> PartySe�iliZ Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) > 0 Or MOBID = "FFFF" Then
AyarlaMob DecFormatla(PartySe�iliZ, 4): tmMOBSe�.Interval = 100
End If
End If

'

If .ch(17) = 1 And .Opt(23) = True And .ch(115) = 1 Then
If .ch(9).Value = 1 Then
If mhp = 0 Or GetMobDistance >= 13 Or KosUzakl�k > Form1.txt(7) Then Se�MOBListeG�re Form1.lst(3), IIf(Form1.Opt(2) = True, True, False)
Else
'If mhp = 0 Or GetMobDistance >= 13 Or MOBizin = False Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) > 0 Then
Se�MOBListeG�re Form1.lst(3), IIf(Form1.Opt(2) = True, True, False)
tmMOBSe�.Interval = 100
End If
End If
'End If

If .ch(17) = 1 And .Opt(23) = True And .ch(115) = 0 Then
If .ch(9).Value = 1 Then
If mhp = 0 Or GetMobDistance >= 13 Or KosUzakl�k > Form1.txt(7) Then AyarlaMob (OkuZdekiMob)
Else
'If mhp = 0 Or GetMobDistance >= 13 Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) > 0 Then
AyarlaMob (OkuZdekiMob): tmMOBSe�.Interval = 100
End If
End If


End With
End Sub

Private Sub tmRestore_Timer()
Dim i As Integer
If Form1.ch(89) = 1 Then
SnKullan(4) = SnKullan(4) - 1
If SnKullan(4) <= 0 Then
For i = 1 To PartySay�
RestoreKullan i
Bekle (200)
Next
SnKullan(4) = Form1.txt(41)
End If
End If
End Sub



Private Sub tmSH_Timer()
Dim turat As Integer
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Or PaketG�nderiliyor = True Then Exit Sub
If KO_Hwd = GetForegroundWindow Or Form1.hWnd = GetForegroundWindow Then
If Form1.ch(123) = 1 Then
Form1.ch(67).Value = 0
SpeedHack ReadFloat(KO_ADR_CHR + KO_OFF_MX), ReadFloat(KO_ADR_CHR + KO_OFF_MY)
turat = turat + 1
If turat = 25 Then
AlanTemizle
End If
End If
End If


If Form1.ch(67).Value = 1 Then
Dim turat1 As Integer
Form1.ch(123) = 0
SpeedHack1 ReadFloat(KO_ADR_CHR + KO_OFF_MX), ReadFloat(KO_ADR_CHR + KO_OFF_MY)
turat1 = turat + 1
If turat1 = 25 Then
AlanTemizle
End If
End If



End Sub

Private Sub tmSlotaD�n_Timer()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Then Exit Sub
If Form1.ch(22) = 1 Or Form1.ch(23) = 1 Then If GetMobDistance > 0 Then Exit Sub
Dim x2 As Long, y2 As Long
x2 = KutuSlotX
y2 = KutuSlotY
If tmKutuyaGit = True Then tmSlotaD�n = False
If OkuBenMesafe(KutuSlotX, KutuSlotY) > 0 Then If Form1.ch(118) = 0 Then Y�r�XY CSng(x2), CSng(y2) Else ���nlanXY3 x2, y2
If OkuBenMesafe(KutuSlotX, KutuSlotY) = 0 Then tmSlotaD�n = False
End Sub

Private Sub tmSw_Timer()
If Form1.ch(75) = 1 Then
SnKullan(5) = SnKullan(5) - 1
If SnKullan(5) <= 0 Then
PartySwiftKontrol
SnKullan(5) = 602
End If
End If
End Sub

Private Sub tmTown_Timer()
If KO_Hwd = GetForegroundWindow Or Form1.hWnd = GetForegroundWindow Then
With Form1
If .cb(2).ListIndex = 0 And .ch(6) = 1 Then If Tu�Kontrol(16) = True And c.HP > 0 Then Paket "4800": Bekle (1000)
If .cb(2).ListIndex = 1 And .ch(6) = 1 Then If Tu�Kontrol(17) = True And Tu�Kontrol(90) = True And c.HP > 0 Then Paket "4800": Bekle (1000)
If .cb(2).ListIndex = 2 And .ch(6) = 1 Then If Tu�Kontrol(17) = True And Tu�Kontrol(88) = True And c.HP > 0 Then Paket "4800": Bekle (1000)
If .cb(2).ListIndex = 3 And .ch(6) = 1 Then If Tu�Kontrol(9) = True And c.HP > 0 Then Paket "4800": Bekle (1000)
End With
With Form1
If .cb(38).ListIndex = 0 And .ch(122) = 1 Then If Tu�Kontrol(16) = True Then Paket "290103": Paket "1200": Bekle (1000)
If .cb(38).ListIndex = 1 And .ch(122) = 1 Then If Tu�Kontrol(17) = True And Tu�Kontrol(90) = True And c.HP > 0 Then Paket "290103": Paket "1200": Bekle (1000)
If .cb(38).ListIndex = 2 And .ch(122) = 1 Then If Tu�Kontrol(17) = True And Tu�Kontrol(88) = True And c.HP > 0 Then Paket "290103": Paket "1200": Bekle (1000)
If .cb(38).ListIndex = 3 And .ch(122) = 1 Then If Tu�Kontrol(9) = True And c.HP > 0 Then Paket "290103": Paket "1200": Bekle (1000)
End With
End If
End Sub

Private Sub tmTu�la�ek_Timer()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Or PaketG�nderiliyor = True Then Exit Sub
Dim tu� As Long
If Form1.ch(80) = 1 Then
Select Case Form1.cb(12).ListIndex
Case 0: tu� = 17
Case 1: tu� = 16
Case 2: tu� = 32
End Select
If KO_Hwd = GetForegroundWindow Or Form1.hWnd = GetForegroundWindow Then
If Tu�Kontrol(tu�) = True Then
If Tu�Kontrol(49) = True And Tu�Kontrol(49) = True Then �ekMage PartyCharID(1): Bekle (500)
If Tu�Kontrol(50) = True And Tu�Kontrol(50) = True Then �ekMage PartyCharID(2):    Bekle (500)
If Tu�Kontrol(51) = True And Tu�Kontrol(51) = True Then �ekMage PartyCharID(3):    Bekle (500)
If Tu�Kontrol(52) = True And Tu�Kontrol(52) = True Then �ekMage PartyCharID(4):    Bekle (500)
If Tu�Kontrol(53) = True And Tu�Kontrol(53) = True Then �ekMage PartyCharID(5): Bekle (500)
If Tu�Kontrol(54) = True And Tu�Kontrol(54) = True Then �ekMage PartyCharID(6): Bekle (500)
If Tu�Kontrol(55) = True And Tu�Kontrol(55) = True Then �ekMage PartyCharID(7):    Bekle (500)
If Tu�Kontrol(56) = True And Tu�Kontrol(56) = True Then �ekMage PartyCharID(8):    Bekle (500)
End If
End If
End If
End Sub



Public Sub BotBa�lat()
For Each Control In Form2.Controls
  If TypeOf Control Is Timer Then If Control.Enabled = False Then Control.Enabled = True
  Next
  For i = 0 To 50
  tmAtackSn(i) = False
  Next
  Durum(8) = False
  tmWariorAtack = False
  tmMageAtack = False
  tmPriestAtack = False
tmRogueAtack = False
If Form1.chatack = 1 Then Atacktimer = True
  'If Form1.chAlanAtack = 0 Then Form1.tmAlanAtack = False
  'If Form1.chAlanAtack = 1 Then Form1.tmAlanAtack = True
    ���nLanTm = False
  tm���nlan = False
  tmKutuyaGit = False
  tmSlotaD�n = False
  tmAlarm = False
End Sub
Public Sub BotDurdur()
For Each Control In Form2.Controls
  If TypeOf Control Is Timer Then If Control.Enabled = True Then Control.Enabled = False
  Next
  tmKontrol = True
'If Form1.tmAlanAtack = True Then Form1.tmAlanAtack = False
'If Form1.tmDebuff = True Then Form1.tmDebuff = False
If Form1.chatack = 0 Then Atacktimer = False
aboutTM = True: KoxpS�resiSay = True
tm_1_4 = True: tm1_2 = True: tm500 = True: regSil = True
End Sub


Private Sub Waratak_Timer()
If RPRYap�l�yor = True Or ItemSat�nAl�n�yor = True Or ItemBankadanAl�n�yor = True Or ItemSat�l�yor = True Or PaketG�nderiliyor = True Then Exit Sub
If Atacktimer = True Then
If ClassAd� = "Warior" And MOBID <> "FFFF" Then
If Form1.Opt(29) = True Then
If ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = ReadLong(KO_ADR_CHR + Nation) Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 0 Then Exit Sub
End If
If Form1.Opt(30) = True Then
If ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 1 Or ReadLong(OkuCharBase(DecFormatla(MOBID, 4)) + Nation) = 2 Then Exit Sub
End If
WarriorAtakVur
End If
End If
End Sub
