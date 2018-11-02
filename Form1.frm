VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Winamp"
   ClientHeight    =   8730
   ClientLeft      =   2895
   ClientTop       =   2340
   ClientWidth     =   4095
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   162
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8730
   ScaleWidth      =   4095
   Begin VB.TextBox shhiz 
      Height          =   375
      Left            =   4440
      TabIndex        =   542
      Text            =   "80"
      Top             =   4680
      Width           =   615
   End
   Begin VB.ComboBox cb 
      Height          =   315
      Index           =   40
      Left            =   6720
      TabIndex        =   497
      Text            =   "Combo2"
      Top             =   4920
      Width           =   975
   End
   Begin VB.CheckBox btnSakla 
      Caption         =   "Check1"
      Height          =   255
      Left            =   8400
      TabIndex        =   496
      Top             =   3840
      Width           =   1455
   End
   Begin VB.PictureBox rprbilgi 
      Height          =   8655
      Left            =   11520
      ScaleHeight     =   8595
      ScaleWidth      =   4035
      TabIndex        =   493
      Top             =   5400
      Visible         =   0   'False
      Width           =   4095
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   "www.besthile.com Moschino-Stuff"
         BeginProperty Font 
            Name            =   "Arial Black"
            Size            =   11.25
            Charset         =   162
            Weight          =   900
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Index           =   1
         Left            =   480
         TabIndex        =   495
         Top             =   2640
         Width           =   3135
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   "NPC'ye Gidiliyor Lütfen Müdahalede Bulunmayýn !"
         BeginProperty Font 
            Name            =   "Arial Black"
            Size            =   11.25
            Charset         =   162
            Weight          =   900
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Index           =   0
         Left            =   480
         TabIndex        =   494
         Top             =   1200
         Width           =   3135
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1700
      Left            =   6600
      Top             =   3480
   End
   Begin VB.OptionButton Opt 
      Caption         =   "Option4"
      Height          =   195
      Index           =   22
      Left            =   6120
      TabIndex        =   481
      Top             =   4200
      Width           =   1095
   End
   Begin VB.OptionButton Opt 
      Caption         =   "Sadece Para Topla"
      Height          =   255
      Index           =   17
      Left            =   6000
      TabIndex        =   479
      Top             =   3840
      Width           =   1695
   End
   Begin VB.Frame fr 
      Caption         =   "Satýn Alma Kýlavuzu"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1845
      Index           =   43
      Left            =   5280
      TabIndex        =   469
      Top             =   0
      Width           =   4155
      Begin VB.CommandButton Command13 
         Caption         =   "Gizle ( X )"
         Height          =   255
         Index           =   1
         Left            =   480
         TabIndex        =   470
         Top             =   1440
         Width           =   3375
      End
      Begin VB.Label Label29 
         Caption         =   $"Form1.frx":F172
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1215
         Left            =   120
         TabIndex        =   471
         Top             =   360
         Width           =   3975
      End
   End
   Begin VB.CheckBox ch 
      Caption         =   "Ekran Görüntüsü Kaydet"
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
      Index           =   69
      Left            =   6720
      TabIndex        =   467
      Top             =   5520
      Width           =   2415
   End
   Begin VB.ListBox List1 
      Height          =   4350
      Left            =   360
      TabIndex        =   466
      Top             =   9480
      Width           =   2655
   End
   Begin VB.Frame fr 
      Caption         =   "Ýþlemler (seçili kiþiye)     (-)"
      Height          =   975
      Index           =   38
      Left            =   12120
      TabIndex        =   460
      Top             =   12360
      Width           =   3795
      Begin VB.CommandButton btn 
         Caption         =   "Partyden At"
         Height          =   315
         Index           =   29
         Left            =   2280
         TabIndex        =   463
         Top             =   320
         Width           =   1320
      End
      Begin VB.CommandButton btn 
         Caption         =   "Yanýna Çek"
         Enabled         =   0   'False
         Height          =   315
         Index           =   28
         Left            =   1080
         TabIndex        =   462
         Top             =   320
         Width           =   1095
      End
      Begin VB.CommandButton btn 
         Caption         =   "PM At"
         Height          =   315
         Index           =   27
         Left            =   120
         TabIndex        =   461
         Top             =   320
         Width           =   855
      End
      Begin VB.Label lb 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Partyde Toplam 5 Kiþi var."
         Height          =   195
         Index           =   37
         Left            =   120
         TabIndex        =   465
         Top             =   720
         Width           =   1875
      End
      Begin VB.Label lb 
         AutoSize        =   -1  'True
         Caption         =   "Seçili Olan 2."
         ForeColor       =   &H000000C0&
         Height          =   195
         Index           =   36
         Left            =   1800
         TabIndex        =   464
         Top             =   0
         Width           =   915
      End
   End
   Begin VB.ListBox lstHata 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   12120
      TabIndex        =   459
      Top             =   13560
      Width           =   3975
   End
   Begin VB.Frame fr 
      Caption         =   " (-)"
      ForeColor       =   &H000000C0&
      Height          =   5175
      Index           =   46
      Left            =   13800
      TabIndex        =   446
      Top             =   11760
      Width           =   3735
      Begin VB.CommandButton btn 
         Caption         =   "Satmayý Kýsýtla >"
         Height          =   495
         Index           =   21
         Left            =   480
         TabIndex        =   455
         Top             =   840
         Width           =   2655
      End
      Begin VB.CheckBox ch 
         Caption         =   "Satmayý Kýsýtla"
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
         Index           =   85
         Left            =   120
         TabIndex        =   454
         Top             =   0
         Width           =   1605
      End
      Begin VB.ListBox lst 
         Enabled         =   0   'False
         Height          =   1620
         Index           =   7
         Left            =   120
         TabIndex        =   453
         Top             =   840
         Width           =   3495
      End
      Begin VB.TextBox txt 
         Enabled         =   0   'False
         Height          =   285
         Index           =   31
         Left            =   960
         TabIndex        =   452
         Top             =   240
         Width           =   2655
      End
      Begin VB.ListBox lst 
         Enabled         =   0   'False
         ForeColor       =   &H000000C0&
         Height          =   1620
         Index           =   8
         Left            =   120
         TabIndex        =   451
         Top             =   3240
         Width           =   3495
      End
      Begin VB.CommandButton btn 
         Caption         =   "Ekle"
         Enabled         =   0   'False
         Height          =   255
         Index           =   22
         Left            =   840
         TabIndex        =   450
         Top             =   2520
         Width           =   735
      End
      Begin VB.CommandButton btn 
         Caption         =   "Kaldýr"
         Enabled         =   0   'False
         Height          =   255
         Index           =   23
         Left            =   2040
         TabIndex        =   449
         Top             =   2520
         Width           =   735
      End
      Begin VB.CommandButton btn 
         Caption         =   "Manuel Ekle"
         Enabled         =   0   'False
         Height          =   255
         Index           =   62
         Left            =   2040
         TabIndex        =   448
         Top             =   4800
         Width           =   1575
      End
      Begin VB.CommandButton btn 
         Caption         =   "Çantadan Ekle"
         Enabled         =   0   'False
         Height          =   255
         Index           =   63
         Left            =   120
         TabIndex        =   447
         Top             =   4800
         Width           =   1575
      End
      Begin VB.Label lb 
         AutoSize        =   -1  'True
         Caption         =   "Item ARA:"
         Enabled         =   0   'False
         Height          =   195
         Index           =   52
         Left            =   120
         TabIndex        =   458
         Top             =   255
         Width           =   750
      End
      Begin VB.Label lb 
         AutoSize        =   -1  'True
         Caption         =   "Item Listesi:"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   53
         Left            =   120
         TabIndex        =   457
         Top             =   600
         Width           =   1050
      End
      Begin VB.Label lb 
         AutoSize        =   -1  'True
         Caption         =   "Satýlmayacak Eþyalar:"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   195
         Index           =   54
         Left            =   120
         TabIndex        =   456
         Top             =   2880
         Width           =   1860
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Sadece Mageler Ýçindir. (-)"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   1575
      Index           =   39
      Left            =   14640
      TabIndex        =   439
      Top             =   11160
      Width           =   3795
      Begin VB.CheckBox ch 
         Caption         =   "Kýsayol Tuþlarýyla Yanýna Çek"
         Height          =   255
         Index           =   80
         Left            =   120
         TabIndex        =   441
         Top             =   0
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.ComboBox cb 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   6.75
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   12
         ItemData        =   "Form1.frx":F248
         Left            =   840
         List            =   "Form1.frx":F255
         Style           =   2  'Dropdown List
         TabIndex        =   440
         Top             =   240
         Width           =   1335
      End
      Begin VB.Label lb 
         BackStyle       =   0  'Transparent
         Caption         =   $"Form1.frx":F279
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   6.75
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   495
         Index           =   41
         Left            =   120
         TabIndex        =   445
         Top             =   960
         Width           =   3375
      End
      Begin VB.Label lb 
         BackStyle       =   0  'Transparent
         Caption         =   "Not:Bu özellik mage içindir.Seçilen tuþ + rakam tuþlarýyla çalýþýr.(numpad tuþlarý hariç)"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   6.75
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   40
         Left            =   120
         TabIndex        =   444
         Top             =   600
         Width           =   3660
      End
      Begin VB.Label lb 
         AutoSize        =   -1  'True
         Caption         =   "+ Rakam Tuþlarý"
         Enabled         =   0   'False
         Height          =   195
         Index           =   38
         Left            =   2280
         TabIndex        =   443
         Top             =   280
         Width           =   1155
      End
      Begin VB.Label lb 
         AutoSize        =   -1  'True
         Caption         =   "Tuþ Seç:"
         Enabled         =   0   'False
         Height          =   195
         Index           =   39
         Left            =   120
         TabIndex        =   442
         Top             =   280
         Width           =   615
      End
   End
   Begin VB.Frame fr 
      Caption         =   "  (-)"
      Height          =   2175
      Index           =   50
      Left            =   14400
      TabIndex        =   428
      Top             =   13200
      Width           =   4455
      Begin VB.CommandButton btn 
         Caption         =   "Repair Deneme Yap"
         Height          =   255
         Index           =   44
         Left            =   2640
         TabIndex        =   434
         Top             =   1080
         Width           =   1695
      End
      Begin VB.OptionButton Opt 
         Caption         =   "Sayý Olarak"
         Height          =   255
         Index           =   12
         Left            =   600
         TabIndex        =   433
         Top             =   1320
         Value           =   -1  'True
         Width           =   1215
      End
      Begin VB.OptionButton Opt 
         Caption         =   "Yüzde Olarak"
         Enabled         =   0   'False
         Height          =   255
         Index           =   13
         Left            =   2040
         TabIndex        =   432
         Top             =   1320
         Width           =   1335
      End
      Begin VB.ComboBox cb 
         Enabled         =   0   'False
         Height          =   315
         Index           =   37
         ItemData        =   "Form1.frx":F309
         Left            =   2280
         List            =   "Form1.frx":F316
         Style           =   2  'Dropdown List
         TabIndex        =   431
         Top             =   240
         Width           =   1095
      End
      Begin VB.TextBox txt 
         Enabled         =   0   'False
         Height          =   285
         Index           =   56
         Left            =   240
         TabIndex        =   430
         Text            =   "çek beni"
         Top             =   360
         Width           =   2055
      End
      Begin VB.CheckBox ch 
         Caption         =   "Repair Yaptýktan Sonra Mage'ye Çektir"
         Height          =   195
         Index           =   44
         Left            =   840
         TabIndex        =   429
         Top             =   240
         Width           =   3135
      End
      Begin VB.Label lb 
         Caption         =   "Durblity Sýnýrý:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   44
         Left            =   480
         TabIndex        =   438
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label lb 
         Caption         =   "Sað item Durbility.:"
         ForeColor       =   &H000000C0&
         Height          =   255
         Index           =   73
         Left            =   -360
         TabIndex        =   437
         Top             =   -120
         Width           =   3495
      End
      Begin VB.Label lb 
         Caption         =   "Sol item Durbility.:"
         ForeColor       =   &H000000C0&
         Height          =   255
         Index           =   72
         Left            =   0
         TabIndex        =   436
         Top             =   240
         Width           =   3495
      End
      Begin VB.Label lb 
         Caption         =   "Not:Partyde mage yoksa repair yapýp slota geri döner eðer varsa kelimeyi yazýp  dönmez."
         Enabled         =   0   'False
         ForeColor       =   &H000000C0&
         Height          =   435
         Index           =   20
         Left            =   120
         TabIndex        =   435
         Top             =   600
         Width           =   3330
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Girince Alarm Çal (-)"
      Enabled         =   0   'False
      Height          =   495
      Index           =   5
      Left            =   15120
      TabIndex        =   424
      Top             =   15600
      Width           =   2415
      Begin VB.CheckBox ch 
         Caption         =   "FT"
         Enabled         =   0   'False
         Height          =   195
         Index           =   12
         Left            =   120
         TabIndex        =   427
         Top             =   240
         Width           =   975
      End
      Begin VB.CheckBox ch 
         Caption         =   "BDW"
         Enabled         =   0   'False
         Height          =   195
         Index           =   13
         Left            =   840
         TabIndex        =   426
         Top             =   240
         Width           =   855
      End
      Begin VB.CheckBox ch 
         Caption         =   "Chaos"
         Enabled         =   0   'False
         Height          =   195
         Index           =   14
         Left            =   1560
         TabIndex        =   425
         Top             =   240
         Width           =   750
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Diðer Kayýtlar"
      Height          =   1935
      Index           =   49
      Left            =   9360
      TabIndex        =   419
      Top             =   10920
      Width           =   4200
      Begin VB.CheckBox ch 
         Caption         =   "Exp Gelme Miktarýný"
         Height          =   195
         Index           =   113
         Left            =   120
         TabIndex        =   421
         Top             =   1080
         Width           =   1935
      End
      Begin VB.CheckBox ch 
         Caption         =   "Slota Giriþ Yapan Kiþilerin Bilgisini"
         Height          =   195
         Index           =   114
         Left            =   120
         TabIndex        =   420
         Top             =   360
         Width           =   3015
      End
      Begin VB.Label lb 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "..\Kayýtlar\Exp"
         ForeColor       =   &H80000008&
         Height          =   240
         Index           =   65
         Left            =   240
         TabIndex        =   423
         Top             =   1320
         Width           =   1320
      End
      Begin VB.Line line 
         BorderColor     =   &H00AFAFAF&
         Index           =   10
         X1              =   120
         X2              =   3600
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Label lb 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "..\Kayýtlar\Slot"
         ForeColor       =   &H80000008&
         Height          =   240
         Index           =   66
         Left            =   240
         TabIndex        =   422
         Top             =   600
         Width           =   1320
      End
   End
   Begin VB.ComboBox cb 
      Height          =   315
      Index           =   26
      Left            =   5280
      Style           =   2  'Dropdown List
      TabIndex        =   418
      Top             =   9960
      Width           =   1905
   End
   Begin VB.CheckBox ch 
      Caption         =   "Restore "
      Height          =   300
      Index           =   89
      Left            =   4320
      TabIndex        =   417
      Top             =   9960
      Width           =   975
   End
   Begin VB.TextBox txt 
      Height          =   285
      Index           =   41
      Left            =   7440
      TabIndex        =   416
      Text            =   "30"
      Top             =   10080
      Width           =   405
   End
   Begin VB.ComboBox cbIþlem 
      Height          =   315
      Index           =   3
      ItemData        =   "Form1.frx":F32D
      Left            =   6720
      List            =   "Form1.frx":F343
      Style           =   2  'Dropdown List
      TabIndex        =   415
      Top             =   12360
      Width           =   1455
   End
   Begin VB.CheckBox ch 
      Caption         =   "Pazar  Bozulursa"
      Height          =   255
      Index           =   39
      Left            =   4440
      TabIndex        =   414
      Top             =   12360
      Width           =   1680
   End
   Begin VB.CheckBox ch 
      Caption         =   "5       dk Exp Gelmezse"
      Height          =   255
      Index           =   41
      Left            =   4440
      TabIndex        =   413
      Top             =   12720
      Width           =   2040
   End
   Begin VB.VScrollBar scroll 
      Height          =   315
      Index           =   0
      Left            =   4920
      Max             =   4
      Min             =   1
      TabIndex        =   412
      Top             =   12720
      Value           =   1
      Width           =   155
   End
   Begin VB.CheckBox ch 
      Caption         =   "Anti Ice"
      Enabled         =   0   'False
      Height          =   255
      Index           =   121
      Left            =   4080
      TabIndex        =   410
      ToolTipText     =   "Özeliikle Pk da Magelerin lr ve fr skillerinden etkilenmemek istiyorsanýz kullanabilirsiniz."
      Top             =   10920
      Width           =   975
   End
   Begin VB.Timer Timer12 
      Interval        =   5000
      Left            =   3360
      Top             =   10800
   End
   Begin VB.CheckBox ch 
      Caption         =   "Sohbet Geçmiþi Kaydet"
      Height          =   255
      Index           =   83
      Left            =   5400
      TabIndex        =   292
      Top             =   6000
      Width           =   2175
   End
   Begin TabDlg.SSTab SSTab5 
      Height          =   8175
      Left            =   0
      TabIndex        =   66
      Top             =   0
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   14420
      _Version        =   393216
      Style           =   1
      Tabs            =   6
      Tab             =   1
      TabsPerRow      =   6
      TabHeight       =   520
      TabCaption(0)   =   "Genel"
      TabPicture(0)   =   "Form1.frx":F396
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "fr(18)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "fr(52)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "ch(15)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "fr(3)"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "fr(42)"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).ControlCount=   5
      TabCaption(1)   =   "Bot"
      TabPicture(1)   =   "Form1.frx":F3B2
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "fr(7)"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "fr(51)"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "fr(47)"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "fr(10)"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "fr(11)"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "fr(34)"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).Control(6)=   "fr(20)"
      Tab(1).Control(6).Enabled=   0   'False
      Tab(1).Control(7)=   "fr(9)"
      Tab(1).Control(7).Enabled=   0   'False
      Tab(1).ControlCount=   8
      TabCaption(2)   =   "Party"
      TabPicture(2)   =   "Form1.frx":F3CE
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "SSTab6"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "Extra"
      TabPicture(3)   =   "Form1.frx":F3EA
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "SSTab7"
      Tab(3).Control(0).Enabled=   0   'False
      Tab(3).ControlCount=   1
      TabCaption(4)   =   "Alýþveriþ"
      TabPicture(4)   =   "Form1.frx":F406
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "fr(23)"
      Tab(4).Control(0).Enabled=   0   'False
      Tab(4).Control(1)=   "Frame8(1)"
      Tab(4).Control(1).Enabled=   0   'False
      Tab(4).Control(2)=   "fr(25)"
      Tab(4).Control(2).Enabled=   0   'False
      Tab(4).ControlCount=   3
      TabCaption(5)   =   "Info"
      TabPicture(5)   =   "Form1.frx":F422
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "Label8"
      Tab(5).Control(0).Enabled=   0   'False
      Tab(5).Control(1)=   "Label10"
      Tab(5).Control(1).Enabled=   0   'False
      Tab(5).Control(2)=   "Label9"
      Tab(5).Control(2).Enabled=   0   'False
      Tab(5).Control(3)=   "Label12"
      Tab(5).Control(3).Enabled=   0   'False
      Tab(5).Control(4)=   "Label20"
      Tab(5).Control(4).Enabled=   0   'False
      Tab(5).Control(5)=   "Label22(1)"
      Tab(5).Control(5).Enabled=   0   'False
      Tab(5).Control(6)=   "Label7(2)"
      Tab(5).Control(6).Enabled=   0   'False
      Tab(5).Control(7)=   "Frame7"
      Tab(5).Control(7).Enabled=   0   'False
      Tab(5).Control(8)=   "Command3"
      Tab(5).Control(8).Enabled=   0   'False
      Tab(5).ControlCount=   9
      Begin VB.CommandButton Command3 
         Caption         =   "Canlý Destek Hattý"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -74040
         TabIndex        =   500
         Top             =   3840
         Width           =   2295
      End
      Begin VB.Frame Frame7 
         Caption         =   "Teþekkürler"
         Height          =   855
         Left            =   -74760
         TabIndex        =   363
         Top             =   5760
         Width           =   3615
         Begin VB.Label Label26 
            Caption         =   "kojd"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000080&
            Height          =   255
            Index           =   4
            Left            =   1560
            TabIndex        =   368
            Top             =   240
            Width           =   495
         End
         Begin VB.Label Label26 
            Caption         =   "Thyke"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   255
            Index           =   3
            Left            =   2520
            TabIndex        =   367
            Top             =   240
            Width           =   615
         End
         Begin VB.Label Label26 
            Caption         =   "mrforger"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000040C0&
            Height          =   255
            Index           =   2
            Left            =   2040
            TabIndex        =   366
            Top             =   480
            Width           =   1215
         End
         Begin VB.Label Label26 
            Caption         =   "ByServet"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00008080&
            Height          =   255
            Index           =   1
            Left            =   720
            TabIndex        =   365
            Top             =   480
            Width           =   1215
         End
         Begin VB.Label Label26 
            Caption         =   "DoKToRX"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   255
            Index           =   0
            Left            =   240
            TabIndex        =   364
            Top             =   240
            Width           =   1215
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Bankadan Alma"
         Height          =   2415
         Index           =   25
         Left            =   -74880
         TabIndex        =   327
         Top             =   5640
         Width           =   3855
         Begin VB.ComboBox cb 
            Height          =   315
            Index           =   22
            ItemData        =   "Form1.frx":F43E
            Left            =   2640
            List            =   "Form1.frx":F48A
            Style           =   2  'Dropdown List
            TabIndex        =   352
            Top             =   1920
            Width           =   615
         End
         Begin VB.ComboBox cb 
            Height          =   315
            Index           =   17
            ItemData        =   "Form1.frx":F4E5
            Left            =   1920
            List            =   "Form1.frx":F501
            Style           =   2  'Dropdown List
            TabIndex        =   351
            Top             =   1920
            Width           =   615
         End
         Begin VB.ComboBox cb 
            Height          =   315
            Index           =   21
            ItemData        =   "Form1.frx":F51D
            Left            =   2640
            List            =   "Form1.frx":F569
            Style           =   2  'Dropdown List
            TabIndex        =   350
            Top             =   1560
            Width           =   615
         End
         Begin VB.ComboBox cb 
            Height          =   315
            Index           =   16
            ItemData        =   "Form1.frx":F5C4
            Left            =   1920
            List            =   "Form1.frx":F5E0
            Style           =   2  'Dropdown List
            TabIndex        =   349
            Top             =   1560
            Width           =   615
         End
         Begin VB.ComboBox cb 
            Height          =   315
            Index           =   20
            ItemData        =   "Form1.frx":F5FC
            Left            =   2640
            List            =   "Form1.frx":F648
            Style           =   2  'Dropdown List
            TabIndex        =   348
            Top             =   1200
            Width           =   615
         End
         Begin VB.ComboBox cb 
            Height          =   315
            Index           =   15
            ItemData        =   "Form1.frx":F6A3
            Left            =   1920
            List            =   "Form1.frx":F6BF
            Style           =   2  'Dropdown List
            TabIndex        =   347
            Top             =   1200
            Width           =   615
         End
         Begin VB.ComboBox cb 
            Height          =   315
            Index           =   19
            ItemData        =   "Form1.frx":F6DB
            Left            =   2640
            List            =   "Form1.frx":F727
            Style           =   2  'Dropdown List
            TabIndex        =   346
            Top             =   840
            Width           =   615
         End
         Begin VB.ComboBox cb 
            Height          =   315
            Index           =   14
            ItemData        =   "Form1.frx":F782
            Left            =   1920
            List            =   "Form1.frx":F79E
            Style           =   2  'Dropdown List
            TabIndex        =   345
            Top             =   840
            Width           =   615
         End
         Begin VB.ComboBox cb 
            Height          =   315
            Index           =   18
            ItemData        =   "Form1.frx":F7BA
            Left            =   2640
            List            =   "Form1.frx":F806
            Style           =   2  'Dropdown List
            TabIndex        =   344
            Top             =   480
            Width           =   615
         End
         Begin VB.ComboBox cb 
            Height          =   315
            Index           =   13
            ItemData        =   "Form1.frx":F861
            Left            =   1920
            List            =   "Form1.frx":F87D
            Style           =   2  'Dropdown List
            TabIndex        =   343
            Top             =   480
            Width           =   615
         End
         Begin VB.ComboBox cb 
            ForeColor       =   &H000000C0&
            Height          =   315
            Index           =   9
            ItemData        =   "Form1.frx":F899
            Left            =   960
            List            =   "Form1.frx":F8AC
            Style           =   2  'Dropdown List
            TabIndex        =   342
            Top             =   480
            Width           =   855
         End
         Begin VB.ComboBox cb 
            ForeColor       =   &H00FF0000&
            Height          =   315
            Index           =   8
            ItemData        =   "Form1.frx":F8D1
            Left            =   960
            List            =   "Form1.frx":F8E4
            Style           =   2  'Dropdown List
            TabIndex        =   341
            Top             =   840
            Width           =   855
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   30
            Left            =   3300
            MaxLength       =   3
            TabIndex        =   340
            Text            =   "50"
            Top             =   480
            Width           =   495
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   29
            Left            =   3300
            MaxLength       =   3
            TabIndex        =   339
            Text            =   "50"
            Top             =   840
            Width           =   495
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   28
            Left            =   3300
            MaxLength       =   3
            TabIndex        =   338
            Text            =   "50"
            Top             =   1200
            Width           =   495
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   27
            Left            =   3300
            MaxLength       =   3
            TabIndex        =   337
            Text            =   "50"
            Top             =   1560
            Width           =   495
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   26
            Left            =   3300
            MaxLength       =   4
            TabIndex        =   336
            Text            =   "50"
            Top             =   1920
            Width           =   495
         End
         Begin VB.Frame fr 
            Caption         =   "Baþlat (-)"
            Height          =   975
            Index           =   26
            Left            =   240
            TabIndex        =   335
            Top             =   3120
            Width           =   3495
            Begin VB.Line line 
               Index           =   3
               X1              =   210
               X2              =   210
               Y1              =   480
               Y2              =   720
            End
            Begin VB.Line line 
               Index           =   2
               X1              =   210
               X2              =   360
               Y1              =   720
               Y2              =   720
            End
         End
         Begin VB.CommandButton btn 
            Caption         =   "Açýklama [?]"
            Height          =   255
            Index           =   45
            Left            =   2400
            TabIndex        =   334
            Top             =   5160
            Width           =   1215
         End
         Begin VB.CheckBox ch 
            Caption         =   "Wolf "
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   61
            Left            =   120
            TabIndex        =   333
            Top             =   1200
            Width           =   735
         End
         Begin VB.CheckBox ch 
            Caption         =   "Ts Gem "
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   60
            Left            =   120
            TabIndex        =   332
            Top             =   1560
            Width           =   975
         End
         Begin VB.CheckBox ch 
            Caption         =   "Arrow"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   59
            Left            =   120
            TabIndex        =   331
            Top             =   1920
            Width           =   735
         End
         Begin VB.CheckBox ch 
            Caption         =   "HP Pot"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   63
            Left            =   120
            TabIndex        =   330
            Top             =   480
            Width           =   855
         End
         Begin VB.CheckBox ch 
            Caption         =   "MP Pot"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   62
            Left            =   120
            TabIndex        =   329
            Top             =   840
            Width           =   855
         End
         Begin VB.CheckBox ch 
            Caption         =   "Bankadan Almayý Aktifleþtir"
            Height          =   255
            Index           =   66
            Left            =   840
            TabIndex        =   328
            Top             =   2880
            Value           =   1  'Checked
            Width           =   2295
         End
         Begin VB.Label lb 
            Caption         =   "Alýnacak itemden üstünüzde en az 6 tane olmasý gerekir. Alýnacak itemden 6 tane kalýnca alma iþlemi baþlar."
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   162
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   21
            Left            =   120
            TabIndex        =   358
            Top             =   4560
            Width           =   3480
         End
         Begin VB.Label lb 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Rota:"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   16
            Left            =   240
            TabIndex        =   357
            Top             =   3720
            Width           =   405
         End
         Begin VB.Label lb 
            Caption         =   "Slot"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   56
            Left            =   2760
            TabIndex        =   356
            Top             =   240
            Width           =   495
         End
         Begin VB.Label lb 
            Caption         =   "Sayfa"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   55
            Left            =   1920
            TabIndex        =   355
            Top             =   240
            Width           =   495
         End
         Begin VB.Label lb 
            Caption         =   "Türü"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   30
            Left            =   1200
            TabIndex        =   354
            Top             =   240
            Width           =   495
         End
         Begin VB.Label lb 
            AutoSize        =   -1  'True
            Caption         =   "Adet"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   29
            Left            =   3360
            TabIndex        =   353
            Top             =   240
            Width           =   375
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "Item Satýþ"
         Height          =   2295
         Index           =   1
         Left            =   -74880
         TabIndex        =   317
         Top             =   3240
         Width           =   3855
         Begin VB.CheckBox ch 
            Caption         =   "Inventory Dolunca Sat"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   162
               Weight          =   400
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   70
            Left            =   1800
            TabIndex        =   409
            Top             =   0
            Width           =   1935
         End
         Begin VB.Frame Frame8 
            Caption         =   "Inventory "
            Height          =   1455
            Index           =   2
            Left            =   120
            TabIndex        =   324
            Top             =   240
            Width           =   1860
            Begin VB.ListBox List4 
               Height          =   1035
               Left            =   120
               TabIndex        =   326
               Top             =   240
               Width           =   1620
            End
            Begin VB.CommandButton Command13 
               Caption         =   "Yenile"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   162
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   180
               Index           =   3
               Left            =   1080
               TabIndex        =   325
               Top             =   0
               Width           =   615
            End
         End
         Begin VB.Frame Frame8 
            Caption         =   "Satýlmayacak Itemler"
            Height          =   1455
            Index           =   3
            Left            =   2040
            TabIndex        =   322
            Top             =   240
            Width           =   1740
            Begin VB.ListBox List3 
               Height          =   1035
               ItemData        =   "Form1.frx":F90C
               Left            =   120
               List            =   "Form1.frx":F90E
               TabIndex        =   323
               Top             =   240
               Width           =   1500
            End
         End
         Begin VB.Frame Frame8 
            Caption         =   "Manuel Ekle"
            Height          =   600
            Index           =   4
            Left            =   120
            TabIndex        =   319
            Top             =   1680
            Width           =   3660
            Begin VB.TextBox Text7 
               Height          =   285
               Index           =   3
               Left            =   120
               TabIndex        =   321
               Text            =   "Item Adý"
               Top             =   240
               Width           =   2175
            End
            Begin VB.CommandButton Command13 
               Caption         =   "EKLE"
               Height          =   255
               Index           =   2
               Left            =   2520
               TabIndex        =   320
               Top             =   240
               Width           =   975
            End
         End
         Begin VB.CheckBox ch 
            Caption         =   "Repairde Sat"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   162
               Weight          =   400
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   190
            Index           =   68
            Left            =   120
            TabIndex        =   318
            Top             =   0
            Width           =   1335
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Satýn Alma"
         Height          =   2895
         Index           =   23
         Left            =   -74880
         TabIndex        =   298
         Top             =   360
         Width           =   3855
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   6
            Left            =   3120
            MaxLength       =   3
            TabIndex        =   477
            Text            =   "50"
            Top             =   2160
            Width           =   615
         End
         Begin VB.CheckBox ch 
            Caption         =   "Priest Kitap                >"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   45
            Left            =   120
            TabIndex        =   476
            Top             =   2160
            Width           =   3015
         End
         Begin VB.CommandButton Command16 
            Caption         =   "Nasýl Kullanýlýr ?"
            Height          =   220
            Left            =   960
            TabIndex        =   314
            Top             =   2520
            Width           =   2175
         End
         Begin VB.CheckBox ch 
            Caption         =   "Wolf                           >"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   56
            Left            =   120
            TabIndex        =   313
            Top             =   1440
            Width           =   2655
         End
         Begin VB.CheckBox ch 
            Caption         =   "TS Gem                      >"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   57
            Left            =   120
            TabIndex        =   312
            Top             =   1800
            Width           =   3015
         End
         Begin VB.CheckBox ch 
            Caption         =   "Arrow ( Ok)                >"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   58
            Left            =   120
            TabIndex        =   311
            Top             =   1080
            Width           =   2895
         End
         Begin VB.CheckBox ch 
            Caption         =   "MP Pot"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   55
            Left            =   120
            TabIndex        =   310
            Top             =   720
            Width           =   855
         End
         Begin VB.CheckBox ch 
            Caption         =   "HP Pot"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   5
            Left            =   120
            TabIndex        =   309
            Top             =   360
            Width           =   855
         End
         Begin VB.ComboBox cb 
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   6
            ItemData        =   "Form1.frx":F910
            Left            =   1440
            List            =   "Form1.frx":F923
            Style           =   2  'Dropdown List
            TabIndex        =   308
            Top             =   360
            Width           =   1455
         End
         Begin VB.ComboBox cb 
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   7
            ItemData        =   "Form1.frx":F989
            Left            =   1440
            List            =   "Form1.frx":F99C
            Style           =   2  'Dropdown List
            TabIndex        =   307
            Top             =   720
            Width           =   1455
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   21
            Left            =   3120
            MaxLength       =   3
            TabIndex        =   306
            Text            =   "50"
            Top             =   360
            Width           =   615
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   22
            Left            =   3120
            MaxLength       =   3
            TabIndex        =   305
            Text            =   "50"
            Top             =   720
            Width           =   615
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   23
            Left            =   3120
            MaxLength       =   3
            TabIndex        =   304
            Text            =   "50"
            Top             =   1440
            Width           =   615
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   24
            Left            =   3120
            MaxLength       =   3
            TabIndex        =   303
            Text            =   "50"
            Top             =   1800
            Width           =   615
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   25
            Left            =   3120
            MaxLength       =   4
            TabIndex        =   302
            Text            =   "1000"
            Top             =   1080
            Width           =   615
         End
         Begin VB.Frame fr 
            Caption         =   "Baþlat (-)"
            Height          =   495
            Index           =   24
            Left            =   1200
            TabIndex        =   301
            Top             =   5880
            Width           =   1935
            Begin VB.Line line 
               Index           =   13
               X1              =   210
               X2              =   210
               Y1              =   480
               Y2              =   720
            End
            Begin VB.Line line 
               Index           =   14
               X1              =   210
               X2              =   360
               Y1              =   720
               Y2              =   720
            End
            Begin VB.Line line 
               Index           =   15
               X1              =   210
               X2              =   210
               Y1              =   1200
               Y2              =   1440
            End
            Begin VB.Line line 
               Index           =   16
               X1              =   210
               X2              =   390
               Y1              =   1440
               Y2              =   1440
            End
         End
         Begin VB.CheckBox ch 
            Caption         =   "Potçuya Git "
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   162
               Weight          =   400
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   64
            Left            =   720
            TabIndex        =   300
            Top             =   3120
            Value           =   1  'Checked
            Width           =   1335
         End
         Begin VB.CheckBox ch 
            Caption         =   "Sundirese Git"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   162
               Weight          =   400
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   65
            Left            =   2400
            TabIndex        =   299
            Top             =   3120
            Value           =   1  'Checked
            Width           =   1455
         End
         Begin VB.Label lb 
            Caption         =   "Türü"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   27
            Left            =   1920
            TabIndex        =   316
            Top             =   120
            Width           =   495
         End
         Begin VB.Label lb 
            Caption         =   "Adet"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   28
            Left            =   3240
            TabIndex        =   315
            Top             =   120
            Width           =   495
         End
         Begin VB.Line Line2 
            BorderColor     =   &H8000000A&
            X1              =   0
            X2              =   4560
            Y1              =   3240
            Y2              =   3240
         End
         Begin VB.Line Line3 
            BorderColor     =   &H8000000A&
            X1              =   0
            X2              =   4560
            Y1              =   4320
            Y2              =   4320
         End
      End
      Begin TabDlg.SSTab SSTab7 
         Height          =   7815
         Left            =   -75000
         TabIndex        =   233
         Top             =   300
         Width           =   4095
         _ExtentX        =   7223
         _ExtentY        =   13785
         _Version        =   393216
         Style           =   1
         Tabs            =   4
         Tab             =   3
         TabsPerRow      =   4
         TabHeight       =   520
         TabCaption(0)   =   "Extra"
         TabPicture(0)   =   "Form1.frx":FA0C
         Tab(0).ControlEnabled=   0   'False
         Tab(0).Control(0)=   "fr(45)"
         Tab(0).Control(1)=   "fr(37)"
         Tab(0).Control(2)=   "fr(19)"
         Tab(0).ControlCount=   3
         TabCaption(1)   =   "Sohbet Geçmiþi"
         TabPicture(1)   =   "Form1.frx":FA28
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "fr(29)"
         Tab(1).Control(0).Enabled=   0   'False
         Tab(1).ControlCount=   1
         TabCaption(2)   =   "Korunma"
         TabPicture(2)   =   "Form1.frx":FA44
         Tab(2).ControlEnabled=   0   'False
         Tab(2).Control(0)=   "fr(12)"
         Tab(2).Control(1)=   "Frame14"
         Tab(2).Control(2)=   "fr(54)"
         Tab(2).ControlCount=   3
         TabCaption(3)   =   "Rota Ayarlarý"
         TabPicture(3)   =   "Form1.frx":FA60
         Tab(3).ControlEnabled=   -1  'True
         Tab(3).Control(0)=   "fr(40)"
         Tab(3).Control(0).Enabled=   0   'False
         Tab(3).Control(1)=   "fr(0)"
         Tab(3).Control(1).Enabled=   0   'False
         Tab(3).Control(2)=   "fr(1)"
         Tab(3).Control(2).Enabled=   0   'False
         Tab(3).ControlCount=   3
         Begin VB.Frame fr 
            Caption         =   "Banka Rota"
            Height          =   1095
            Index           =   1
            Left            =   120
            TabIndex        =   532
            Top             =   4560
            Visible         =   0   'False
            Width           =   3855
            Begin VB.Frame fr 
               Height          =   375
               Index           =   31
               Left            =   600
               TabIndex        =   536
               Top             =   600
               Width           =   2535
               Begin VB.OptionButton Opt 
                  Caption         =   "Koþarak"
                  Height          =   195
                  Index           =   7
                  Left            =   1440
                  TabIndex        =   538
                  Top             =   120
                  Width           =   975
               End
               Begin VB.OptionButton Opt 
                  Caption         =   "Iþýnlanarak"
                  Height          =   195
                  Index           =   6
                  Left            =   120
                  TabIndex        =   537
                  Top             =   120
                  Value           =   -1  'True
                  Width           =   1455
               End
            End
            Begin VB.ComboBox cb 
               Height          =   315
               Index           =   34
               Left            =   1080
               TabIndex        =   534
               Text            =   "cb"
               Top             =   240
               Width           =   1455
            End
            Begin VB.CommandButton btn 
               Caption         =   "Rota Kaydet"
               Height          =   315
               Index           =   51
               Left            =   2640
               TabIndex        =   533
               Top             =   240
               Width           =   1095
            End
            Begin VB.Label lb 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Rota Seç :"
               ForeColor       =   &H00000000&
               Height          =   315
               Index           =   2
               Left            =   120
               TabIndex        =   535
               Top             =   240
               Width           =   750
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Sundries ve Potçu Rota"
            Height          =   2535
            Index           =   0
            Left            =   120
            TabIndex        =   517
            Top             =   1920
            Visible         =   0   'False
            Width           =   3855
            Begin VB.Frame fr 
               Height          =   375
               Index           =   32
               Left            =   600
               TabIndex        =   527
               Top             =   1560
               Width           =   2535
               Begin VB.OptionButton Opt 
                  Caption         =   "Koþarak"
                  Height          =   195
                  Index           =   11
                  Left            =   1440
                  TabIndex        =   529
                  Top             =   120
                  Width           =   975
               End
               Begin VB.OptionButton Opt 
                  Caption         =   "Iþýnlanarak"
                  Height          =   195
                  Index           =   10
                  Left            =   120
                  TabIndex        =   528
                  Top             =   120
                  UseMaskColor    =   -1  'True
                  Value           =   -1  'True
                  Width           =   1215
               End
            End
            Begin VB.Frame fr 
               Height          =   375
               Index           =   33
               Left            =   720
               TabIndex        =   524
               Top             =   600
               Width           =   2535
               Begin VB.OptionButton Opt 
                  Caption         =   "Iþýnlanarak"
                  Height          =   195
                  Index           =   8
                  Left            =   120
                  TabIndex        =   526
                  Top             =   120
                  Value           =   -1  'True
                  Width           =   1215
               End
               Begin VB.OptionButton Opt 
                  Caption         =   "Koþarak"
                  Height          =   195
                  Index           =   9
                  Left            =   1440
                  TabIndex        =   525
                  Top             =   120
                  Width           =   975
               End
            End
            Begin VB.ComboBox cb 
               Height          =   315
               Index           =   36
               Left            =   1560
               TabIndex        =   521
               Text            =   "cb"
               Top             =   240
               Width           =   2055
            End
            Begin VB.CommandButton btn 
               Caption         =   "Rota Kaydet"
               Height          =   375
               Index           =   50
               Left            =   960
               TabIndex        =   520
               Top             =   2040
               Width           =   1815
            End
            Begin VB.ComboBox cb 
               Height          =   315
               Index           =   33
               Left            =   1560
               TabIndex        =   519
               Text            =   "cb"
               Top             =   1200
               Width           =   2055
            End
            Begin VB.Label lb 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Potçu Rota Seç :"
               ForeColor       =   &H00000000&
               Height          =   195
               Index           =   19
               Left            =   240
               TabIndex        =   523
               Top             =   1200
               Width           =   1200
            End
            Begin VB.Label lb 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Sundires Rota Seç :"
               ForeColor       =   &H00000000&
               Height          =   195
               Index           =   15
               Left            =   120
               TabIndex        =   522
               Top             =   240
               Width           =   1410
            End
         End
         Begin VB.Frame fr 
            Caption         =   "RPR ve Satýþ Rota"
            Height          =   1455
            Index           =   40
            Left            =   120
            TabIndex        =   508
            Top             =   360
            Visible         =   0   'False
            Width           =   3900
            Begin VB.ComboBox cb 
               Height          =   315
               Index           =   35
               Left            =   1080
               TabIndex        =   530
               Text            =   "cb"
               Top             =   600
               Width           =   1455
            End
            Begin VB.CommandButton btn 
               Caption         =   "Rota Kaydet"
               Height          =   675
               Index           =   43
               Left            =   2640
               TabIndex        =   515
               Top             =   240
               Width           =   1095
            End
            Begin VB.ComboBox cb 
               Height          =   315
               Index           =   32
               Left            =   1080
               TabIndex        =   514
               Text            =   "cb"
               Top             =   240
               Width           =   1455
            End
            Begin VB.Frame fr 
               Enabled         =   0   'False
               Height          =   1935
               Index           =   8
               Left            =   480
               TabIndex        =   513
               Top             =   3240
               Width           =   2775
            End
            Begin VB.TextBox txt 
               Height          =   285
               Index           =   32
               Left            =   2160
               MaxLength       =   3
               TabIndex        =   512
               Text            =   "%10"
               Top             =   2760
               Visible         =   0   'False
               Width           =   615
            End
            Begin VB.VScrollBar scroll2 
               Height          =   315
               LargeChange     =   4
               Left            =   3120
               Max             =   99
               Min             =   1
               SmallChange     =   5
               TabIndex        =   511
               Top             =   2880
               Value           =   1
               Visible         =   0   'False
               Width           =   155
            End
            Begin VB.OptionButton Opt 
               Caption         =   "Iþýnlanarak"
               Height          =   195
               Index           =   14
               Left            =   600
               TabIndex        =   510
               Top             =   1080
               Value           =   -1  'True
               Width           =   1215
            End
            Begin VB.OptionButton Opt 
               Caption         =   "Koþarak"
               Height          =   195
               Index           =   15
               Left            =   1920
               TabIndex        =   509
               Top             =   1080
               Width           =   1095
            End
            Begin VB.Label lb 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Satýþ Rota :"
               ForeColor       =   &H00000000&
               Height          =   195
               Index           =   0
               Left            =   120
               TabIndex        =   531
               Top             =   600
               Width           =   840
            End
            Begin VB.Label lb 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "RPR Rota :"
               ForeColor       =   &H00000000&
               Height          =   195
               Index           =   67
               Left            =   120
               TabIndex        =   518
               Top             =   240
               Width           =   795
            End
            Begin VB.Label Label17 
               Caption         =   "Gitme Yöntemi:"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   400
                  Underline       =   -1  'True
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   360
               TabIndex        =   516
               Top             =   1920
               Width           =   1335
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Karakter Ýþlem"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   2925
            Index           =   54
            Left            =   -74880
            TabIndex        =   392
            Top             =   4140
            Width           =   3855
            Begin VB.CheckBox ch 
               Caption         =   "DC Olursa "
               Height          =   255
               Index           =   36
               Left            =   120
               TabIndex        =   407
               Top             =   240
               Width           =   2025
            End
            Begin VB.CheckBox ch 
               Caption         =   "Ölürse"
               Height          =   255
               Index           =   37
               Left            =   120
               TabIndex        =   406
               Top             =   600
               Width           =   1560
            End
            Begin VB.CheckBox ch 
               Caption         =   "Party Bozulursa"
               Height          =   255
               Index           =   38
               Left            =   120
               TabIndex        =   405
               Top             =   960
               Width           =   1680
            End
            Begin VB.CheckBox ch 
               Caption         =   "Slota Karþý Irk Girerse"
               Height          =   255
               Index           =   108
               Left            =   120
               TabIndex        =   404
               Top             =   1320
               Width           =   1920
            End
            Begin VB.ComboBox cbIþlem 
               Height          =   315
               Index           =   0
               ItemData        =   "Form1.frx":FA7C
               Left            =   2280
               List            =   "Form1.frx":FA89
               Style           =   2  'Dropdown List
               TabIndex        =   403
               Top             =   240
               Width           =   1455
            End
            Begin VB.ComboBox cbIþlem 
               Height          =   315
               Index           =   1
               ItemData        =   "Form1.frx":FAB4
               Left            =   2280
               List            =   "Form1.frx":FAC1
               Style           =   2  'Dropdown List
               TabIndex        =   402
               Top             =   600
               Width           =   1455
            End
            Begin VB.ComboBox cbIþlem 
               Height          =   315
               Index           =   2
               ItemData        =   "Form1.frx":FAE6
               Left            =   2280
               List            =   "Form1.frx":FAFC
               Style           =   2  'Dropdown List
               TabIndex        =   401
               Top             =   960
               Width           =   1455
            End
            Begin VB.ComboBox cbIþlem 
               Height          =   315
               Index           =   8
               ItemData        =   "Form1.frx":FB4C
               Left            =   2280
               List            =   "Form1.frx":FB62
               Style           =   2  'Dropdown List
               TabIndex        =   400
               Top             =   1320
               Width           =   1455
            End
            Begin VB.CheckBox ch 
               Caption         =   "HP Potlar Biterse"
               Height          =   255
               Index           =   42
               Left            =   120
               TabIndex        =   399
               Top             =   1680
               Width           =   1800
            End
            Begin VB.CheckBox ch 
               Caption         =   "MP Potlar Biterse"
               Height          =   255
               Index           =   43
               Left            =   120
               TabIndex        =   398
               Top             =   2040
               Width           =   1800
            End
            Begin VB.ComboBox cbIþlem 
               Height          =   315
               Index           =   6
               ItemData        =   "Form1.frx":FBB2
               Left            =   2280
               List            =   "Form1.frx":FBC8
               Style           =   2  'Dropdown List
               TabIndex        =   397
               Top             =   1680
               Width           =   1455
            End
            Begin VB.ComboBox cbIþlem 
               Height          =   315
               Index           =   7
               ItemData        =   "Form1.frx":FC18
               Left            =   2280
               List            =   "Form1.frx":FC2E
               Style           =   2  'Dropdown List
               TabIndex        =   396
               Top             =   2040
               Width           =   1455
            End
            Begin VB.ComboBox cb 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   162
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   5
               ItemData        =   "Form1.frx":FC7E
               Left            =   960
               List            =   "Form1.frx":FC8E
               Style           =   2  'Dropdown List
               TabIndex        =   395
               Top             =   2400
               Width           =   810
            End
            Begin VB.ComboBox cbIþlem 
               Height          =   315
               Index           =   4
               ItemData        =   "Form1.frx":FCB0
               Left            =   2280
               List            =   "Form1.frx":FCC6
               Style           =   2  'Dropdown List
               TabIndex        =   394
               Top             =   2400
               Width           =   1455
            End
            Begin VB.CheckBox ch 
               Caption         =   "Partyde                   Yoksa"
               Height          =   285
               Index           =   40
               Left            =   120
               TabIndex        =   393
               Top             =   2400
               Width           =   2280
            End
         End
         Begin VB.Frame Frame14 
            Caption         =   "Sms Gönder"
            Height          =   975
            Left            =   -74880
            TabIndex        =   387
            Top             =   3060
            Width           =   3855
            Begin VB.TextBox Text2 
               Appearance      =   0  'Flat
               Enabled         =   0   'False
               Height          =   285
               Left            =   2160
               TabIndex        =   390
               Text            =   "53XXXXXXXX"
               Top             =   240
               Width           =   1335
            End
            Begin VB.OptionButton Option3 
               Caption         =   "Karakter Ölürse"
               Enabled         =   0   'False
               Height          =   255
               Index           =   0
               Left            =   120
               TabIndex        =   389
               Top             =   600
               Width           =   1575
            End
            Begin VB.OptionButton Option3 
               Caption         =   "Karakter DC Olursa"
               Enabled         =   0   'False
               Height          =   255
               Index           =   1
               Left            =   1800
               TabIndex        =   388
               Top             =   600
               Width           =   1815
            End
            Begin VB.Label Label23 
               Caption         =   "Sms Gönderilecek Tel No :"
               Enabled         =   0   'False
               Height          =   255
               Left            =   240
               TabIndex        =   391
               Top             =   240
               Width           =   2175
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Gm ve Þerif Koruma "
            Height          =   2355
            Index           =   12
            Left            =   -74880
            TabIndex        =   371
            Top             =   660
            Width           =   3855
            Begin VB.TextBox Text11 
               Height          =   285
               Left            =   2040
               TabIndex        =   386
               Text            =   "Manuel Ekle"
               Top             =   1200
               Width           =   1650
            End
            Begin VB.CommandButton Command15 
               Caption         =   "Ekle"
               Height          =   255
               Left            =   2040
               TabIndex        =   385
               Top             =   1560
               Width           =   1650
            End
            Begin VB.Frame Frame3 
               Caption         =   "GM Tarama"
               Height          =   375
               Left            =   1320
               TabIndex        =   382
               Top             =   2400
               Width           =   1500
               Begin VB.CommandButton btn 
                  Caption         =   "Manuel GM Nick Ekle"
                  Enabled         =   0   'False
                  Height          =   315
                  Index           =   10
                  Left            =   2280
                  TabIndex        =   384
                  Top             =   1680
                  Width           =   1695
               End
               Begin VB.TextBox txt 
                  Enabled         =   0   'False
                  Height          =   285
                  Index           =   9
                  Left            =   360
                  TabIndex        =   383
                  Text            =   "NickYaz"
                  Top             =   1560
                  Width           =   1695
               End
            End
            Begin VB.CommandButton btn 
               Caption         =   "Sil"
               Enabled         =   0   'False
               Height          =   300
               Index           =   11
               Left            =   2040
               TabIndex        =   381
               Top             =   1800
               Width           =   690
            End
            Begin VB.CommandButton btn 
               Caption         =   "Tümünü Sil"
               Enabled         =   0   'False
               Height          =   300
               Index           =   12
               Left            =   2760
               TabIndex        =   380
               Top             =   1800
               Width           =   930
            End
            Begin VB.CommandButton btn 
               Caption         =   "GM Listesi Yükle"
               Enabled         =   0   'False
               Height          =   315
               Index           =   9
               Left            =   960
               TabIndex        =   379
               Top             =   3240
               Width           =   1695
            End
            Begin VB.ListBox lst 
               Enabled         =   0   'False
               Height          =   1230
               Index           =   4
               ItemData        =   "Form1.frx":FD16
               Left            =   120
               List            =   "Form1.frx":10ADF
               TabIndex        =   378
               Top             =   840
               Width           =   1695
            End
            Begin VB.CheckBox ch 
               Caption         =   "Gm Tarama Aktif"
               Height          =   195
               Index           =   116
               Left            =   2040
               TabIndex        =   377
               Top             =   960
               Width           =   1605
            End
            Begin VB.CheckBox ch 
               Caption         =   "Alarm Çal"
               Height          =   195
               Index           =   29
               Left            =   120
               TabIndex        =   376
               Top             =   240
               Width           =   1095
            End
            Begin VB.CheckBox ch 
               Caption         =   "DC Ol"
               Height          =   195
               Index           =   27
               Left            =   120
               TabIndex        =   375
               Top             =   480
               Width           =   735
            End
            Begin VB.CheckBox ch 
               Caption         =   "Atack Durdur"
               Height          =   255
               Index           =   26
               Left            =   2280
               TabIndex        =   374
               Top             =   240
               Width           =   1335
            End
            Begin VB.CheckBox ch 
               Caption         =   "Town At"
               Height          =   195
               Index           =   25
               Left            =   1200
               TabIndex        =   373
               Top             =   480
               Width           =   975
            End
            Begin VB.CheckBox ch 
               Caption         =   "PC Kapat"
               Height          =   195
               Index           =   28
               Left            =   1200
               TabIndex        =   372
               Top             =   240
               Width           =   1215
            End
            Begin VB.Line line 
               BorderColor     =   &H00AFAFAF&
               Index           =   19
               X1              =   120
               X2              =   4080
               Y1              =   720
               Y2              =   720
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Konuþma Geçmiþi"
            Height          =   7335
            Index           =   29
            Left            =   -74880
            TabIndex        =   294
            Top             =   360
            Width           =   3855
            Begin VB.TextBox txt 
               BackColor       =   &H80000004&
               Height          =   6615
               Index           =   51
               Left            =   120
               Locked          =   -1  'True
               MultiLine       =   -1  'True
               ScrollBars      =   3  'Both
               TabIndex        =   297
               Top             =   600
               Width           =   3615
            End
            Begin VB.CommandButton btn 
               Caption         =   "Geçmiþi Temizle"
               Height          =   255
               Index           =   52
               Left            =   360
               TabIndex        =   296
               Top             =   240
               Width           =   3135
            End
            Begin VB.CheckBox ch 
               Caption         =   "Sohbet Geçmiþi Aktif"
               Height          =   195
               Index           =   111
               Left            =   120
               TabIndex        =   295
               Top             =   0
               Width           =   1815
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Koordinata Git"
            Height          =   615
            Index           =   45
            Left            =   -74880
            TabIndex        =   285
            Top             =   6960
            Width           =   3855
            Begin VB.TextBox txt 
               Height          =   285
               Index           =   49
               Left            =   360
               MaxLength       =   4
               TabIndex        =   289
               ToolTipText     =   "Koordinatlarý 4 hanelý gýrýnýz lutfen 0123 gibi ..."
               Top             =   240
               Width           =   735
            End
            Begin VB.TextBox txt 
               Height          =   285
               Index           =   50
               Left            =   1800
               MaxLength       =   4
               TabIndex        =   288
               ToolTipText     =   "Koordinatlarý 4 hanelý gýrýnýz lutfen 0456 gibi ..."
               Top             =   240
               Width           =   735
            End
            Begin VB.CommandButton btn 
               Caption         =   "Koþ"
               Height          =   255
               Index           =   42
               Left            =   2880
               TabIndex        =   287
               Top             =   600
               Width           =   615
            End
            Begin VB.CommandButton btn 
               Caption         =   "Git"
               Height          =   255
               Index           =   41
               Left            =   2760
               TabIndex        =   286
               ToolTipText     =   "Yazdýðýnýz koordinatlara gitmenizi saðlar. "
               Top             =   240
               Width           =   855
            End
            Begin VB.Label lb 
               Caption         =   " X:"
               Height          =   255
               Index           =   22
               Left            =   120
               TabIndex        =   291
               Top             =   240
               Width           =   975
            End
            Begin VB.Label lb 
               Caption         =   " Y:"
               Height          =   255
               Index           =   64
               Left            =   1560
               TabIndex        =   290
               Top             =   240
               Width           =   495
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Chat Flooder"
            Height          =   1575
            Index           =   37
            Left            =   -74880
            TabIndex        =   276
            Top             =   5280
            Width           =   3855
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   525
               Index           =   37
               Left            =   120
               MultiLine       =   -1  'True
               TabIndex        =   281
               Top             =   240
               Width           =   3615
            End
            Begin VB.ComboBox cb 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   315
               Index           =   11
               ItemData        =   "Form1.frx":144EF
               Left            =   2760
               List            =   "Form1.frx":14505
               Style           =   2  'Dropdown List
               TabIndex        =   280
               Top             =   840
               Width           =   975
            End
            Begin VB.TextBox txt 
               Alignment       =   1  'Right Justify
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   40
               Left            =   480
               TabIndex        =   279
               Text            =   "7"
               Top             =   840
               Width           =   375
            End
            Begin VB.CheckBox ch 
               Caption         =   "Hýzlý"
               Height          =   300
               Index           =   81
               Left            =   960
               Style           =   1  'Graphical
               TabIndex        =   278
               Top             =   840
               Width           =   600
            End
            Begin VB.CommandButton btn 
               Caption         =   "Baþlat"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   315
               Index           =   30
               Left            =   960
               TabIndex        =   277
               Top             =   1200
               Width           =   1935
            End
            Begin VB.Label Label13 
               Caption         =   " Türü :"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   2280
               TabIndex        =   284
               Top             =   840
               Width           =   855
            End
            Begin VB.Label lb 
               AutoSize        =   -1  'True
               Caption         =   "Chat Tipi :"
               Height          =   195
               Index           =   34
               Left            =   2400
               TabIndex        =   283
               Top             =   2160
               Width           =   735
            End
            Begin VB.Label lb 
               AutoSize        =   -1  'True
               Caption         =   "Sn"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   35
               Left            =   240
               TabIndex        =   282
               Top             =   840
               Width           =   180
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Komut Ýþlem"
            Height          =   4875
            Index           =   19
            Left            =   -74880
            TabIndex        =   234
            Top             =   360
            Width           =   3855
            Begin VB.OptionButton Opt 
               Caption         =   "Herkes"
               Height          =   195
               Index           =   27
               Left            =   240
               TabIndex        =   274
               Top             =   5640
               Value           =   -1  'True
               Width           =   855
            End
            Begin VB.Frame fr 
               Caption         =   " (-)"
               Height          =   2055
               Index           =   16
               Left            =   120
               TabIndex        =   266
               Top             =   5880
               Width           =   4005
               Begin VB.ListBox lst 
                  Height          =   1425
                  Index           =   18
                  Left            =   120
                  TabIndex        =   273
                  Top             =   240
                  Width           =   1695
               End
               Begin VB.CommandButton btn 
                  Caption         =   "Manuel Ekle"
                  Height          =   285
                  Index           =   37
                  Left            =   2040
                  TabIndex        =   272
                  Top             =   1440
                  Width           =   1575
               End
               Begin VB.TextBox txt 
                  Height          =   285
                  Index           =   39
                  Left            =   2040
                  TabIndex        =   271
                  Top             =   1080
                  Width           =   1575
               End
               Begin VB.CommandButton btn 
                  Caption         =   "Sil"
                  Height          =   285
                  Index           =   38
                  Left            =   1920
                  TabIndex        =   270
                  Top             =   600
                  Width           =   690
               End
               Begin VB.CommandButton btn 
                  Caption         =   "Tümünü Sil"
                  Height          =   285
                  Index           =   39
                  Left            =   2640
                  TabIndex        =   269
                  Top             =   555
                  Width           =   930
               End
               Begin VB.CommandButton btn 
                  Caption         =   "Seçili Kiþiyi Ekle"
                  Height          =   285
                  Index           =   40
                  Left            =   1920
                  TabIndex        =   268
                  Top             =   240
                  Width           =   1575
               End
               Begin VB.OptionButton Opt 
                  Caption         =   "Sadece Listedeki Kiþiler"
                  Enabled         =   0   'False
                  Height          =   195
                  Index           =   26
                  Left            =   1680
                  TabIndex        =   267
                  Top             =   0
                  Width           =   2175
               End
            End
            Begin VB.CheckBox ch 
               Caption         =   "Town Çek "
               Height          =   285
               Index           =   46
               Left            =   240
               TabIndex        =   265
               Top             =   240
               Width           =   1335
            End
            Begin VB.CheckBox ch 
               Caption         =   "Town  +  DC >>>>>>>>>"
               Enabled         =   0   'False
               Height          =   285
               Index           =   47
               Left            =   120
               TabIndex        =   264
               Top             =   6240
               Width           =   2535
            End
            Begin VB.CheckBox ch 
               Caption         =   "Charý Dc Et"
               Height          =   285
               Index           =   48
               Left            =   240
               TabIndex        =   263
               Top             =   1320
               Width           =   1335
            End
            Begin VB.CheckBox ch 
               Caption         =   "PC Kapat"
               Height          =   285
               Index           =   49
               Left            =   240
               TabIndex        =   262
               Top             =   2040
               Width           =   1095
            End
            Begin VB.CheckBox ch 
               Caption         =   "Koordinata Git (yürüyerek)———"
               Enabled         =   0   'False
               Height          =   285
               Index           =   50
               Left            =   240
               TabIndex        =   261
               Top             =   5400
               Width           =   2775
            End
            Begin VB.CheckBox ch 
               Caption         =   "Party'den Çýk "
               Height          =   285
               Index           =   51
               Left            =   240
               TabIndex        =   260
               Top             =   600
               Width           =   1455
            End
            Begin VB.CheckBox ch 
               Caption         =   "Party Kabul Et "
               Height          =   285
               Index           =   52
               Left            =   240
               TabIndex        =   259
               Top             =   960
               Width           =   1695
            End
            Begin VB.CheckBox ch 
               Caption         =   "Oto Kalk"
               Height          =   285
               Index           =   53
               Left            =   240
               TabIndex        =   258
               Top             =   1680
               Width           =   975
            End
            Begin VB.CheckBox ch 
               Caption         =   "Anahtar Kelime Aktif"
               Height          =   195
               Index           =   54
               Left            =   1800
               TabIndex        =   257
               Top             =   5640
               Value           =   1  'Checked
               Width           =   1815
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   13
               Left            =   2280
               TabIndex        =   256
               Text            =   "TownCek"
               Top             =   240
               Width           =   1215
            End
            Begin VB.TextBox txt 
               Enabled         =   0   'False
               Height          =   285
               Index           =   14
               Left            =   2880
               TabIndex        =   255
               Text            =   "DcTown"
               Top             =   6120
               Width           =   1095
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   15
               Left            =   2280
               TabIndex        =   254
               Text            =   "Dc1"
               Top             =   1320
               Width           =   1215
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   16
               Left            =   2280
               TabIndex        =   253
               Text            =   "PCKapat"
               Top             =   2040
               Width           =   1215
            End
            Begin VB.TextBox txt 
               Enabled         =   0   'False
               Height          =   285
               Index           =   17
               Left            =   2400
               TabIndex        =   252
               Text            =   "git-"
               Top             =   5400
               Width           =   1095
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   18
               Left            =   2280
               TabIndex        =   251
               Text            =   "PartyDisband"
               Top             =   600
               Width           =   1215
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   19
               Left            =   2280
               TabIndex        =   250
               Text            =   "PartyKabul"
               Top             =   960
               Width           =   1215
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   20
               Left            =   2280
               TabIndex        =   249
               Text            =   "OtoKalk"
               Top             =   1680
               Width           =   1215
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   42
               Left            =   2280
               TabIndex        =   248
               Text            =   "tptp"
               Top             =   2760
               Width           =   1215
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   44
               Left            =   2280
               TabIndex        =   247
               Text            =   "++"
               Top             =   3120
               Width           =   1215
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   45
               Left            =   2280
               TabIndex        =   246
               Text            =   "cc"
               Top             =   3840
               Width           =   1215
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   47
               Left            =   2280
               TabIndex        =   245
               Text            =   "sw"
               Top             =   2400
               Width           =   1215
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   48
               Left            =   2280
               TabIndex        =   244
               Text            =   "wolf"
               Top             =   4155
               Width           =   1215
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   46
               Left            =   2280
               TabIndex        =   243
               Text            =   "ac"
               Top             =   3435
               Width           =   1215
            End
            Begin VB.CheckBox ch 
               Caption         =   "Mage Tp"
               Height          =   255
               Index           =   103
               Left            =   240
               TabIndex        =   242
               Top             =   2760
               Width           =   1695
            End
            Begin VB.CheckBox ch 
               Caption         =   "Buff Yolla"
               Height          =   255
               Index           =   97
               Left            =   240
               TabIndex        =   241
               Top             =   3120
               Width           =   1545
            End
            Begin VB.CheckBox ch 
               Caption         =   "Cure Yolla"
               Height          =   255
               Index           =   104
               Left            =   240
               TabIndex        =   240
               Top             =   3840
               Width           =   1095
            End
            Begin VB.CheckBox ch 
               Caption         =   "Swift Yolla"
               Height          =   255
               Index           =   106
               Left            =   240
               TabIndex        =   239
               Top             =   2400
               Width           =   1695
            End
            Begin VB.CheckBox ch 
               Caption         =   "Wolf At"
               Height          =   255
               Index           =   107
               Left            =   240
               TabIndex        =   238
               Top             =   4155
               Width           =   1695
            End
            Begin VB.CheckBox ch 
               Caption         =   "AC Yolla"
               Height          =   255
               Index           =   105
               Left            =   240
               TabIndex        =   237
               Top             =   3480
               Width           =   1215
            End
            Begin VB.CheckBox ch 
               Caption         =   "Party"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   400
                  Underline       =   -1  'True
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   82
               Left            =   1920
               TabIndex        =   236
               Top             =   5160
               Value           =   1  'Checked
               Width           =   735
            End
            Begin VB.CheckBox ch 
               Caption         =   "All Chat"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   400
                  Underline       =   -1  'True
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   195
               Index           =   109
               Left            =   960
               TabIndex        =   235
               Top             =   5160
               Value           =   1  'Checked
               Width           =   975
            End
            Begin VB.Label Label22 
               Caption         =   "Bazý Özellikler Sadece Party'de Çalýþýr."
               Height          =   195
               Index           =   4
               Left            =   480
               TabIndex        =   275
               Top             =   4560
               Width           =   2895
            End
         End
      End
      Begin TabDlg.SSTab SSTab6 
         Height          =   7815
         Left            =   -75000
         TabIndex        =   173
         Top             =   300
         Width           =   4095
         _ExtentX        =   7223
         _ExtentY        =   13785
         _Version        =   393216
         Style           =   1
         Tabs            =   2
         TabsPerRow      =   2
         TabHeight       =   520
         TabCaption(0)   =   "Ayarlar"
         TabPicture(0)   =   "Form1.frx":14535
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "fr(53)"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "Frame2"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).Control(2)=   "fr(35)"
         Tab(0).Control(2).Enabled=   0   'False
         Tab(0).Control(3)=   "fr(21)"
         Tab(0).Control(3).Enabled=   0   'False
         Tab(0).Control(4)=   "fr(36)"
         Tab(0).Control(4).Enabled=   0   'False
         Tab(0).ControlCount=   5
         TabCaption(1)   =   "Party Daveti"
         TabPicture(1)   =   "Form1.frx":14551
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "fr(13)"
         Tab(1).Control(1)=   "fr(14)"
         Tab(1).Control(2)=   "fr(15)"
         Tab(1).ControlCount=   3
         Begin VB.Frame fr 
            Caption         =   "Oto Party Kabul"
            Height          =   1935
            Index           =   13
            Left            =   -74880
            TabIndex        =   222
            Top             =   360
            Width           =   3855
            Begin VB.OptionButton Opt 
               Caption         =   "Herkes"
               Height          =   195
               Index           =   32
               Left            =   240
               TabIndex        =   231
               Top             =   1200
               Value           =   -1  'True
               Width           =   855
            End
            Begin VB.OptionButton Opt 
               Caption         =   "Listedekiler"
               Height          =   195
               Index           =   31
               Left            =   240
               TabIndex        =   230
               Top             =   1440
               Width           =   1215
            End
            Begin VB.CheckBox ch 
               Caption         =   "Party Daveti Kabul"
               Height          =   195
               Index           =   30
               Left            =   2040
               TabIndex        =   229
               Top             =   240
               Width           =   1695
            End
            Begin VB.ListBox lst 
               Height          =   840
               Index           =   5
               Left            =   120
               TabIndex        =   228
               Top             =   240
               Width           =   1815
            End
            Begin VB.CommandButton btn 
               Caption         =   "Seçili Kiþiyi Ekle"
               Enabled         =   0   'False
               Height          =   285
               Index           =   13
               Left            =   2040
               TabIndex        =   227
               Top             =   480
               Width           =   1575
            End
            Begin VB.CommandButton btn 
               Caption         =   "Tümünü Sil"
               Enabled         =   0   'False
               Height          =   285
               Index           =   15
               Left            =   2640
               TabIndex        =   226
               Top             =   795
               Width           =   930
            End
            Begin VB.CommandButton btn 
               Caption         =   " Sil"
               Enabled         =   0   'False
               Height          =   285
               Index           =   14
               Left            =   2040
               TabIndex        =   225
               Top             =   795
               Width           =   570
            End
            Begin VB.TextBox txt 
               Enabled         =   0   'False
               Height          =   285
               Index           =   10
               Left            =   2040
               TabIndex        =   224
               Top             =   1200
               Width           =   1575
            End
            Begin VB.CommandButton btn 
               Caption         =   "Manuel Ekle"
               Enabled         =   0   'False
               Height          =   285
               Index           =   16
               Left            =   2040
               TabIndex        =   223
               Top             =   1485
               Width           =   1575
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Oto Party Yolla"
            ForeColor       =   &H00000000&
            Height          =   2835
            Index           =   14
            Left            =   -74880
            TabIndex        =   209
            Top             =   2400
            Width           =   3855
            Begin VB.CommandButton btn 
               Caption         =   "Manuel Ekle"
               Enabled         =   0   'False
               Height          =   285
               Index           =   18
               Left            =   2040
               TabIndex        =   220
               Top             =   1440
               Width           =   1575
            End
            Begin VB.TextBox txt 
               Enabled         =   0   'False
               Height          =   285
               Index           =   11
               Left            =   2040
               TabIndex        =   219
               Top             =   1200
               Width           =   1575
            End
            Begin VB.CheckBox ch 
               Caption         =   "Clanýndaki Kiþilere Yolla"
               Height          =   195
               Index           =   32
               Left            =   720
               TabIndex        =   218
               Top             =   3000
               Width           =   1935
            End
            Begin VB.CommandButton btn 
               Caption         =   "Seçili Kiþiyi Ekle"
               Enabled         =   0   'False
               Height          =   285
               Index           =   17
               Left            =   2040
               TabIndex        =   217
               Top             =   480
               Width           =   1575
            End
            Begin VB.ListBox lst 
               Enabled         =   0   'False
               Height          =   1230
               Index           =   6
               Left            =   120
               TabIndex        =   216
               Top             =   240
               Width           =   1815
            End
            Begin VB.CheckBox ch 
               Caption         =   "DC Olanlara Yolla (30 Dk)"
               Height          =   195
               Index           =   31
               Left            =   120
               TabIndex        =   215
               Top             =   2400
               Width           =   2250
            End
            Begin VB.CheckBox ch 
               Caption         =   "Anahtar Kelime Aktif"
               Height          =   195
               Index           =   33
               Left            =   112
               TabIndex        =   214
               Top             =   1560
               Width           =   2160
            End
            Begin VB.TextBox txt 
               Height          =   285
               Index           =   12
               Left            =   1440
               TabIndex        =   213
               Text            =   "PartyAdd1"
               Top             =   1920
               Width           =   2175
            End
            Begin VB.CommandButton btn 
               Caption         =   "Sil"
               Enabled         =   0   'False
               Height          =   285
               Index           =   19
               Left            =   2040
               TabIndex        =   212
               Top             =   840
               Width           =   570
            End
            Begin VB.CommandButton btn 
               Caption         =   "Tümünü Sil"
               Enabled         =   0   'False
               Height          =   285
               Index           =   20
               Left            =   2640
               TabIndex        =   211
               Top             =   840
               Width           =   930
            End
            Begin VB.CheckBox ch 
               Caption         =   "Oto Party Yolla"
               Height          =   195
               Index           =   96
               Left            =   2040
               TabIndex        =   210
               Top             =   240
               Width           =   1575
            End
            Begin VB.Label lb 
               Caption         =   "Anahtar Kelime :"
               Height          =   255
               Index           =   11
               Left            =   120
               TabIndex        =   221
               Top             =   1920
               Width           =   1215
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Partyden Atma (Baþkansanýz)"
            ForeColor       =   &H00000000&
            Height          =   885
            Index           =   15
            Left            =   -74880
            TabIndex        =   206
            Top             =   5280
            Width           =   3855
            Begin VB.VScrollBar scroll 
               Height          =   315
               Index           =   1
               Left            =   600
               Max             =   3
               Min             =   1
               TabIndex        =   232
               Top             =   240
               Value           =   1
               Width           =   155
            End
            Begin VB.CheckBox ch 
               Caption         =   "30      Dk 'dan Fazla Slotta Olmayanlarý"
               Height          =   255
               Index           =   35
               Left            =   120
               TabIndex        =   208
               Top             =   240
               Width           =   3135
            End
            Begin VB.CheckBox ch 
               Caption         =   "Ölen Party Üyesi 3 Dk Ýçinde Kalkmazsa"
               Height          =   195
               Index           =   34
               Left            =   120
               TabIndex        =   207
               Top             =   520
               Width           =   3255
            End
         End
         Begin VB.Frame fr 
            Caption         =   "DeBuff Atak"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1215
            Index           =   36
            Left            =   120
            TabIndex        =   203
            Top             =   4920
            Visible         =   0   'False
            Width           =   3855
            Begin VB.CheckBox ch 
               Caption         =   "PK Mode"
               Height          =   255
               Index           =   101
               Left            =   1680
               TabIndex        =   502
               Top             =   360
               Width           =   975
            End
            Begin VB.ListBox DebuffList 
               Height          =   735
               ItemData        =   "Form1.frx":1456D
               Left            =   120
               List            =   "Form1.frx":1457A
               Style           =   1  'Checkbox
               TabIndex        =   205
               Top             =   240
               Width           =   1455
            End
            Begin VB.CheckBox Check15 
               Caption         =   "DB Attýðýný Party'e Bildir"
               Height          =   255
               Left            =   1680
               TabIndex        =   204
               Top             =   600
               Width           =   2055
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Mage Party Skill"
            Height          =   2400
            Index           =   21
            Left            =   120
            TabIndex        =   194
            Top             =   4920
            Visible         =   0   'False
            Width           =   3855
            Begin VB.TextBox Text7 
               Alignment       =   2  'Center
               Height          =   315
               Index           =   2
               Left            =   2160
               TabIndex        =   489
               Text            =   "900"
               Top             =   1680
               Width           =   735
            End
            Begin VB.CommandButton Command13 
               Caption         =   "ID Kaydet"
               Height          =   255
               Index           =   0
               Left            =   120
               TabIndex        =   488
               Top             =   2040
               Width           =   1215
            End
            Begin VB.TextBox Text7 
               Alignment       =   2  'Center
               Height          =   315
               Index           =   0
               Left            =   1560
               TabIndex        =   487
               Text            =   "ID"
               Top             =   2040
               Width           =   735
            End
            Begin VB.CheckBox ch 
               Caption         =   "ID'ye Göre TP"
               Height          =   255
               Index           =   99
               Left            =   120
               TabIndex        =   486
               Top             =   1680
               Width           =   1575
            End
            Begin VB.CheckBox ch 
               Caption         =   "Partyde HP'si Azalaný Yanýna Çek"
               Height          =   255
               Index           =   20
               Left            =   120
               TabIndex        =   200
               Top             =   240
               Width           =   2655
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   34
               Left            =   3120
               TabIndex        =   199
               Text            =   "120"
               Top             =   840
               Width           =   495
            End
            Begin VB.ComboBox cb 
               Height          =   315
               Index           =   10
               ItemData        =   "Form1.frx":14599
               Left            =   720
               List            =   "Form1.frx":1459B
               Style           =   2  'Dropdown List
               TabIndex        =   198
               Top             =   840
               Width           =   2055
            End
            Begin VB.CheckBox ch 
               Caption         =   "Partydekilere Koruma(fr) At"
               Height          =   195
               Index           =   73
               Left            =   120
               TabIndex        =   197
               Top             =   600
               Width           =   2535
            End
            Begin VB.TextBox txt 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   5
               Left            =   3240
               MaxLength       =   2
               TabIndex        =   196
               Text            =   "10"
               Top             =   240
               Width           =   375
            End
            Begin VB.CheckBox ch 
               Caption         =   "Partyi Topla(CTRL+T)"
               Height          =   255
               Index           =   125
               Left            =   120
               TabIndex        =   195
               Top             =   1320
               Width           =   1935
            End
            Begin VB.Label TpCap 
               Caption         =   "Hýz:"
               Height          =   255
               Index           =   1
               Left            =   1800
               TabIndex        =   490
               Top             =   1680
               Width           =   375
            End
            Begin VB.Line line 
               Index           =   7
               X1              =   240
               X2              =   630
               Y1              =   960
               Y2              =   960
            End
            Begin VB.Line line 
               Index           =   6
               X1              =   240
               X2              =   240
               Y1              =   720
               Y2              =   960
            End
            Begin VB.Label lb 
               AutoSize        =   -1  'True
               Caption         =   "sn."
               Height          =   195
               Index           =   4
               Left            =   2880
               TabIndex        =   202
               Top             =   885
               Width           =   225
            End
            Begin VB.Label lb 
               Caption         =   "%"
               Height          =   255
               Index           =   3
               Left            =   3000
               TabIndex        =   201
               Top             =   240
               Width           =   255
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Rogue Party Skill"
            Height          =   1095
            Index           =   35
            Left            =   120
            TabIndex        =   189
            Top             =   4920
            Visible         =   0   'False
            Width           =   3855
            Begin VB.CheckBox ch 
               Caption         =   "Priestler Hariç"
               Enabled         =   0   'False
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Index           =   78
               Left            =   2280
               TabIndex        =   193
               Top             =   600
               Value           =   1  'Checked
               Width           =   1425
            End
            Begin VB.CheckBox ch 
               Caption         =   "Partydekilere Cure At >"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Index           =   77
               Left            =   120
               TabIndex        =   192
               Top             =   600
               Width           =   2175
            End
            Begin VB.CheckBox ch 
               Caption         =   "Rogueler Hariç"
               Enabled         =   0   'False
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Index           =   76
               Left            =   2280
               TabIndex        =   191
               Top             =   240
               Value           =   1  'Checked
               Width           =   1425
            End
            Begin VB.CheckBox ch 
               Caption         =   "Partydekilere Swift At >"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Index           =   75
               Left            =   120
               TabIndex        =   190
               Top             =   240
               Width           =   2175
            End
         End
         Begin VB.Frame Frame2 
            Caption         =   "Frame2"
            Height          =   2175
            Left            =   120
            TabIndex        =   186
            Top             =   360
            Width           =   3855
            Begin VB.CheckBox ch 
               Caption         =   "Party Bilgilerini Aç"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Index           =   71
               Left            =   120
               TabIndex        =   187
               Top             =   0
               Width           =   1575
            End
            Begin MSComctlLib.ListView lstw 
               Height          =   1815
               Left            =   120
               TabIndex        =   188
               Top             =   240
               Width           =   3615
               _ExtentX        =   6376
               _ExtentY        =   3201
               View            =   3
               LabelEdit       =   1
               LabelWrap       =   0   'False
               HideSelection   =   0   'False
               FlatScrollBar   =   -1  'True
               FullRowSelect   =   -1  'True
               GridLines       =   -1  'True
               _Version        =   393217
               Icons           =   "imgList"
               SmallIcons      =   "imgList"
               ColHdrIcons     =   "imgList"
               ForeColor       =   -2147483640
               BackColor       =   -2147483643
               BorderStyle     =   1
               Appearance      =   1
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   162
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               NumItems        =   5
               BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  Object.Width           =   354
               EndProperty
               BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  SubItemIndex    =   1
                  Text            =   "Nick"
                  Object.Width           =   2647
               EndProperty
               BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  SubItemIndex    =   2
                  Text            =   "Hp"
                  Object.Width           =   1588
               EndProperty
               BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  SubItemIndex    =   3
                  Text            =   "Level"
                  Object.Width           =   883
               EndProperty
               BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
                  SubItemIndex    =   4
                  Text            =   "Class"
                  Object.Width           =   998
               EndProperty
            End
         End
         Begin VB.Frame fr 
            Caption         =   "Priest"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   2325
            Index           =   53
            Left            =   120
            TabIndex        =   174
            Top             =   2520
            Width           =   3855
            Begin VB.TextBox txt 
               Alignment       =   1  'Right Justify
               Height          =   285
               Index           =   33
               Left            =   1560
               MaxLength       =   2
               TabIndex        =   485
               Text            =   "35"
               Top             =   600
               Width           =   375
            End
            Begin VB.CheckBox ch 
               Caption         =   "Party Heal %"
               Height          =   285
               Index           =   95
               Left            =   120
               TabIndex        =   484
               Top             =   600
               Width           =   1335
            End
            Begin VB.TextBox txt 
               Alignment       =   1  'Right Justify
               Height          =   285
               Index           =   60
               Left            =   1560
               MaxLength       =   2
               TabIndex        =   185
               Text            =   "35"
               Top             =   240
               Width           =   375
            End
            Begin VB.CheckBox ch 
               Caption         =   "Kendine Heal %"
               Height          =   285
               Index           =   126
               Left            =   120
               TabIndex        =   184
               Top             =   240
               Width           =   1455
            End
            Begin VB.ComboBox cb 
               Height          =   315
               Index           =   25
               Left            =   960
               Style           =   2  'Dropdown List
               TabIndex        =   183
               Top             =   1680
               Width           =   2535
            End
            Begin VB.CheckBox ch 
               Caption         =   "Resis"
               Height          =   255
               Index           =   88
               Left            =   120
               TabIndex        =   182
               Top             =   1680
               Width           =   855
            End
            Begin VB.ComboBox cb 
               Height          =   315
               Index           =   24
               Left            =   960
               Style           =   2  'Dropdown List
               TabIndex        =   181
               Top             =   1320
               Width           =   2535
            End
            Begin VB.CheckBox ch 
               Caption         =   "AC "
               Height          =   255
               Index           =   87
               Left            =   120
               TabIndex        =   180
               Top             =   1320
               Width           =   855
            End
            Begin VB.ComboBox cb 
               Height          =   315
               Index           =   23
               ItemData        =   "Form1.frx":1459D
               Left            =   960
               List            =   "Form1.frx":145BF
               Style           =   2  'Dropdown List
               TabIndex        =   179
               Top             =   960
               Width           =   2535
            End
            Begin VB.CheckBox ch 
               Caption         =   "Buff  "
               Height          =   255
               Index           =   86
               Left            =   120
               TabIndex        =   178
               Top             =   960
               Width           =   855
            End
            Begin VB.CheckBox ch 
               Caption         =   "Boþtayken Otur"
               Height          =   195
               Index           =   92
               Left            =   1200
               TabIndex        =   177
               Top             =   2040
               Width           =   1575
            End
            Begin VB.CheckBox ch 
               Caption         =   "Oto Cure"
               Height          =   195
               Index           =   93
               Left            =   120
               TabIndex        =   176
               Top             =   2040
               Width           =   975
            End
            Begin VB.CheckBox ch 
               Caption         =   "Party Str"
               Height          =   195
               Index           =   91
               Left            =   2760
               TabIndex        =   175
               Top             =   2040
               Width           =   975
            End
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Rogue Gizlen"
         Height          =   600
         Index           =   9
         Left            =   120
         TabIndex        =   170
         Top             =   7440
         Visible         =   0   'False
         Width           =   3855
         Begin VB.TextBox txt 
            Height          =   285
            Index           =   4
            Left            =   1920
            MaxLength       =   2
            TabIndex        =   172
            Text            =   "35"
            Top             =   240
            Width           =   300
         End
         Begin VB.CheckBox ch 
            Caption         =   "Charýn Hp'si %            ise Hide Bas"
            Height          =   255
            Index           =   18
            Left            =   480
            TabIndex        =   171
            Top             =   240
            Width           =   3015
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Yaratýðý Çek"
         Height          =   585
         Index           =   20
         Left            =   120
         TabIndex        =   166
         Top             =   7440
         Visible         =   0   'False
         Width           =   3855
         Begin VB.CheckBox ch 
            Caption         =   "Yaratýðý Çek >"
            Height          =   255
            Index           =   21
            Left            =   120
            TabIndex        =   169
            Top             =   240
            Width           =   1455
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Taþ "
            Enabled         =   0   'False
            Height          =   255
            Index           =   4
            Left            =   1680
            TabIndex        =   168
            Top             =   240
            Width           =   615
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Binding"
            Enabled         =   0   'False
            Height          =   255
            Index           =   5
            Left            =   2520
            TabIndex        =   167
            Top             =   240
            Width           =   975
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Mage - Priest Kurtarýcý"
         Height          =   615
         Index           =   34
         Left            =   120
         TabIndex        =   163
         Top             =   7440
         Visible         =   0   'False
         Width           =   3855
         Begin VB.TextBox txt 
            Height          =   285
            Index           =   35
            Left            =   1440
            MaxLength       =   2
            TabIndex        =   165
            Text            =   "10"
            Top             =   240
            Width           =   375
         End
         Begin VB.CheckBox ch 
            Caption         =   "Char HP   %            Ýse Gate Kullan   "
            Height          =   255
            Index           =   74
            Left            =   240
            TabIndex        =   164
            Top             =   240
            Width           =   3225
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Yaratýk Listesi"
         Height          =   1815
         Index           =   11
         Left            =   120
         TabIndex        =   149
         Top             =   5640
         Width           =   3855
         Begin VB.ListBox lst 
            Enabled         =   0   'False
            Height          =   1035
            Index           =   3
            Left            =   120
            TabIndex        =   161
            Top             =   600
            Width           =   1695
         End
         Begin VB.CheckBox ch 
            Caption         =   "Anti MOB"
            Enabled         =   0   'False
            Height          =   195
            Index           =   24
            Left            =   0
            TabIndex        =   160
            Top             =   3480
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.CommandButton btn 
            Caption         =   "Tümünü Sil"
            Enabled         =   0   'False
            Height          =   275
            Index           =   8
            Left            =   2760
            TabIndex        =   159
            Top             =   1320
            Width           =   945
         End
         Begin VB.CommandButton btn 
            Caption         =   " Sil"
            Enabled         =   0   'False
            Height          =   275
            Index           =   7
            Left            =   1920
            TabIndex        =   158
            Top             =   1320
            Width           =   810
         End
         Begin VB.CommandButton btn 
            Caption         =   "Manuel Ekle"
            Enabled         =   0   'False
            Height          =   255
            Index           =   6
            Left            =   1920
            TabIndex        =   157
            Top             =   1080
            Width           =   1785
         End
         Begin VB.TextBox txt 
            Enabled         =   0   'False
            Height          =   285
            Index           =   8
            Left            =   1920
            TabIndex        =   156
            Top             =   840
            Width           =   1785
         End
         Begin VB.CommandButton btn 
            Caption         =   "Seçili Mobu Kaydet"
            Enabled         =   0   'False
            Height          =   255
            Index           =   5
            Left            =   1920
            TabIndex        =   155
            Top             =   600
            Width           =   1785
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Slot No'ya Göre"
            Enabled         =   0   'False
            Height          =   195
            Index           =   3
            Left            =   2040
            TabIndex        =   154
            Top             =   360
            Width           =   1575
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Yaratýk Ýsmine Göre"
            Enabled         =   0   'False
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   153
            Top             =   360
            Value           =   -1  'True
            Width           =   1815
         End
         Begin VB.CommandButton btn 
            Caption         =   "?"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   162
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   200
            Index           =   36
            Left            =   1320
            TabIndex        =   152
            Top             =   3600
            Visible         =   0   'False
            Width           =   200
         End
         Begin VB.CheckBox ch 
            Caption         =   "Yaratýk Listesi Aktif"
            Height          =   195
            Index           =   115
            Left            =   120
            TabIndex        =   151
            Top             =   0
            Width           =   1695
         End
         Begin VB.CommandButton Command9 
            Caption         =   "Listeyi Gizle (X)"
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
            Left            =   1200
            TabIndex        =   150
            Top             =   2640
            Width           =   1920
         End
         Begin VB.Label lb 
            AutoSize        =   -1  'True
            Caption         =   "Kayýt Türü :"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   162
               Weight          =   400
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   7
            Left            =   480
            TabIndex        =   162
            Top             =   2760
            Width           =   840
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Saldýrý Kontrol"
         Height          =   975
         Index           =   10
         Left            =   120
         TabIndex        =   144
         Top             =   4680
         Width           =   3855
         Begin VB.CommandButton Command1 
            Caption         =   "Merkez Al"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   162
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   240
            TabIndex        =   541
            Top             =   550
            Width           =   855
         End
         Begin VB.TextBox txt 
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Index           =   7
            Left            =   3360
            TabIndex        =   147
            Text            =   "5"
            ToolTipText     =   "Uzaklýk Belirt"
            Top             =   240
            Width           =   375
         End
         Begin VB.CheckBox ch 
            Caption         =   "Moba Iþýnlan"
            Height          =   255
            Index           =   23
            Left            =   1320
            TabIndex        =   146
            ToolTipText     =   "Seçilen Moba Iþýnlanmaya Yarar."
            Top             =   240
            Width           =   1305
         End
         Begin VB.CheckBox ch 
            Caption         =   "Moba Koþ"
            Height          =   255
            Index           =   22
            Left            =   120
            TabIndex        =   145
            ToolTipText     =   "Seçilen Moba Koþmaya Yarar."
            Top             =   240
            Width           =   1215
         End
         Begin VB.Label Label31 
            Alignment       =   1  'Right Justify
            Caption         =   "00"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   162
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   255
            Index           =   1
            Left            =   3120
            TabIndex        =   505
            Top             =   600
            Width           =   495
         End
         Begin VB.Label Label31 
            Caption         =   "Mobun Uzaklýðý :"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   162
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   0
            Left            =   2040
            TabIndex        =   504
            Top             =   600
            Width           =   1215
         End
         Begin VB.Label Label2 
            Alignment       =   2  'Center
            Caption         =   "0/0"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   162
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FF00&
            Height          =   255
            Left            =   960
            TabIndex        =   499
            Top             =   600
            Width           =   855
         End
         Begin VB.Label lb 
            Caption         =   "Uzaklýk :           "
            Height          =   255
            Index           =   6
            Left            =   2760
            TabIndex        =   148
            Top             =   260
            Width           =   615
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Seçme Ayarý"
         Height          =   615
         Index           =   47
         Left            =   120
         TabIndex        =   135
         Top             =   4080
         Width           =   3855
         Begin VB.OptionButton Opt 
            Caption         =   "Listeye Göre"
            Height          =   195
            Index           =   23
            Left            =   1080
            TabIndex        =   139
            ToolTipText     =   "Slot Kýsýtlama Listesie Eklediðiniz Yaratýklarý Seçer."
            Top             =   240
            Width           =   1215
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Normal"
            Height          =   195
            Index           =   24
            Left            =   120
            TabIndex        =   138
            ToolTipText     =   "Herkesi Seçer"
            Top             =   240
            Value           =   -1  'True
            Width           =   1530
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Party'e Göre"
            Height          =   195
            Index           =   25
            Left            =   2520
            TabIndex        =   137
            ToolTipText     =   "Sadece Party'nin Atak Yaptýgýný Seçer"
            Top             =   240
            Width           =   1245
         End
         Begin VB.CommandButton btn 
            Caption         =   "Tamam"
            Height          =   255
            Index           =   35
            Left            =   2040
            TabIndex        =   136
            Top             =   1440
            Width           =   1215
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Saldýrý Ayarý"
         Height          =   615
         Index           =   51
         Left            =   120
         TabIndex        =   130
         Top             =   3480
         Width           =   3855
         Begin VB.OptionButton Opt 
            Caption         =   "Yaratýklara"
            Height          =   195
            Index           =   30
            Left            =   2520
            TabIndex        =   134
            ToolTipText     =   "Sadece Moblara Atak Yapar."
            Top             =   240
            Width           =   1125
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Karþý Irk'a"
            Height          =   195
            Index           =   29
            Left            =   1440
            TabIndex        =   133
            ToolTipText     =   "Sadece Karþý Irka Atak Yapar."
            Top             =   240
            Width           =   1335
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Tüm Moblara "
            Height          =   195
            Index           =   28
            Left            =   120
            TabIndex        =   132
            ToolTipText     =   "Yaratýk Karþý Irk Ayýrt Etmeden Atak Yapar."
            Top             =   240
            Value           =   -1  'True
            Width           =   1455
         End
         Begin VB.CommandButton btn 
            Caption         =   "Tamam"
            Height          =   375
            Index           =   64
            Left            =   840
            TabIndex        =   131
            Top             =   1440
            Width           =   615
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Bot Ayarlarý"
         Height          =   3135
         Index           =   7
         Left            =   120
         TabIndex        =   121
         Top             =   360
         Width           =   3855
         Begin VB.CheckBox PKMode 
            Caption         =   "PK Mode"
            Height          =   255
            Left            =   2880
            TabIndex        =   501
            Top             =   0
            Width           =   975
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   43
            Left            =   3120
            TabIndex        =   492
            Text            =   "1700"
            Top             =   2760
            Width           =   585
         End
         Begin VB.CheckBox ch 
            Caption         =   "Fosil 'R' >"
            Height          =   255
            Index           =   100
            Left            =   2040
            TabIndex        =   491
            Top             =   2760
            Width           =   1095
         End
         Begin VB.CheckBox ch 
            Caption         =   "Elle Seç"
            Height          =   255
            Index           =   19
            Left            =   2880
            TabIndex        =   475
            Top             =   2520
            Width           =   855
         End
         Begin VB.CheckBox ch 
            Caption         =   "R Atak"
            Height          =   255
            Index           =   16
            Left            =   2040
            TabIndex        =   474
            Top             =   2520
            Width           =   855
         End
         Begin VB.CheckBox ch 
            Caption         =   "Mob Ölünce Z Yap"
            Height          =   255
            Index           =   9
            Left            =   2040
            TabIndex        =   468
            Top             =   2280
            Width           =   1695
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            Index           =   2
            ItemData        =   "Form1.frx":14667
            Left            =   120
            List            =   "Form1.frx":14671
            Sorted          =   -1  'True
            Style           =   2  'Dropdown List
            TabIndex        =   408
            Top             =   2760
            Width           =   1095
         End
         Begin VB.Frame Frame12 
            Height          =   495
            Left            =   2040
            TabIndex        =   140
            Top             =   1800
            Width           =   1740
            Begin VB.CheckBox Check9 
               Caption         =   "Uygula"
               Height          =   315
               Left            =   1080
               Style           =   1  'Graphical
               TabIndex        =   142
               Top             =   120
               Width           =   615
            End
            Begin VB.TextBox Text6 
               Alignment       =   1  'Right Justify
               Height          =   285
               Left            =   480
               TabIndex        =   141
               Text            =   "1299"
               Top             =   120
               Width           =   495
            End
            Begin VB.Label Label5 
               Caption         =   "Hýz :"
               Height          =   255
               Left            =   120
               TabIndex        =   143
               Top             =   135
               Width           =   495
            End
         End
         Begin VB.CheckBox ch 
            Caption         =   "Oto Seç"
            BeginProperty Font 
               Name            =   "Trebuchet MS"
               Size            =   8.25
               Charset         =   162
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   17
            Left            =   2520
            TabIndex        =   129
            ToolTipText     =   "Otomatik Mob Seçer"
            Top             =   3360
            Value           =   1  'Checked
            Width           =   1095
         End
         Begin VB.ListBox lst 
            Height          =   1635
            Index           =   1
            ItemData        =   "Form1.frx":14688
            Left            =   2040
            List            =   "Form1.frx":1468A
            Style           =   1  'Checkbox
            TabIndex        =   128
            ToolTipText     =   "Zamanlý Skillerin Aktif Edildiði Liste."
            Top             =   240
            Width           =   1665
         End
         Begin VB.ListBox WarList 
            Height          =   2760
            ItemData        =   "Form1.frx":1468C
            Left            =   120
            List            =   "Form1.frx":1470E
            Style           =   1  'Checkbox
            TabIndex        =   127
            Top             =   240
            Width           =   1815
         End
         Begin VB.ListBox asaslist 
            Height          =   2760
            ItemData        =   "Form1.frx":147DF
            Left            =   120
            List            =   "Form1.frx":14843
            Style           =   1  'Checkbox
            TabIndex        =   126
            Top             =   240
            Visible         =   0   'False
            Width           =   1815
         End
         Begin VB.ListBox OkcuList 
            Height          =   2760
            ItemData        =   "Form1.frx":148E2
            Left            =   120
            List            =   "Form1.frx":14982
            Style           =   1  'Checkbox
            TabIndex        =   125
            Top             =   240
            Width           =   1815
         End
         Begin VB.ListBox MageList 
            Height          =   1635
            ItemData        =   "Form1.frx":14AD4
            Left            =   120
            List            =   "Form1.frx":14C1C
            Style           =   1  'Checkbox
            TabIndex        =   124
            Top             =   240
            Width           =   1815
         End
         Begin VB.ListBox PriList 
            Height          =   2760
            ItemData        =   "Form1.frx":14EA7
            Left            =   120
            List            =   "Form1.frx":14F05
            Style           =   1  'Checkbox
            TabIndex        =   123
            Top             =   240
            Width           =   1815
         End
         Begin VB.ListBox NovaList 
            Height          =   960
            ItemData        =   "Form1.frx":14F89
            Left            =   120
            List            =   "Form1.frx":14FC9
            Style           =   1  'Checkbox
            TabIndex        =   122
            Top             =   1920
            Width           =   1815
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Oto Kutu "
         Height          =   1575
         Index           =   42
         Left            =   -74880
         TabIndex        =   108
         Top             =   6360
         Width           =   3855
         Begin VB.CheckBox ch 
            Caption         =   "Sadece Para Topla"
            Height          =   255
            Index           =   90
            Left            =   120
            TabIndex        =   480
            Top             =   240
            Width           =   1935
         End
         Begin VB.ComboBox cb 
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Index           =   27
            ItemData        =   "Form1.frx":15062
            Left            =   1680
            List            =   "Form1.frx":15081
            Style           =   2  'Dropdown List
            TabIndex        =   120
            Top             =   1200
            Width           =   615
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Index           =   55
            Left            =   3240
            TabIndex        =   118
            Text            =   "10"
            ToolTipText     =   "Kutuya Gitmek Ýçin Uzaklýk Belirle."
            Top             =   480
            Width           =   375
         End
         Begin VB.CheckBox ch 
            Caption         =   "Iþýnlan"
            Height          =   195
            Index           =   118
            Left            =   3240
            TabIndex        =   117
            ToolTipText     =   "Oto Kutuya Iþýnlanýr."
            Top             =   1920
            Value           =   1  'Checked
            Width           =   855
         End
         Begin VB.CheckBox ch 
            Caption         =   "Kutuya Git  "
            Height          =   255
            Index           =   117
            Left            =   2520
            TabIndex        =   116
            ToolTipText     =   "Oto Kutuya Gider"
            Top             =   240
            Width           =   1095
         End
         Begin VB.CheckBox ch 
            Caption         =   "Oto Kutu Aktif"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   84
            Left            =   120
            TabIndex        =   115
            ToolTipText     =   "Oto Kutularý Toplamaya baþlar"
            Top             =   0
            Width           =   1455
         End
         Begin VB.CheckBox ch 
            Caption         =   "Sadece Uniqe Item Topla"
            Height          =   195
            Index           =   119
            Left            =   240
            TabIndex        =   114
            Top             =   1920
            Width           =   2295
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Seçilen Itemleri Toplama"
            Height          =   255
            Index           =   19
            Left            =   120
            TabIndex        =   113
            Top             =   960
            Width           =   2220
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Seçilen Itemleri Topla"
            Height          =   255
            Index           =   18
            Left            =   120
            TabIndex        =   112
            Top             =   720
            Width           =   2175
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Herþeyi Topla"
            Height          =   255
            Index           =   16
            Left            =   120
            TabIndex        =   111
            Top             =   480
            Value           =   -1  'True
            Width           =   1335
         End
         Begin VB.CheckBox ch 
            Caption         =   "Seçili Itemlerden                  Olanlarý Topla"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   120
            Left            =   120
            TabIndex        =   110
            Top             =   1200
            Width           =   3495
         End
         Begin VB.CommandButton Command13 
            Caption         =   "Item Listesi"
            Height          =   375
            Index           =   5
            Left            =   2520
            TabIndex        =   109
            Top             =   840
            Width           =   1095
         End
         Begin VB.Label lb 
            AutoSize        =   -1  'True
            Caption         =   "Uzaklýk :"
            Height          =   195
            Index           =   18
            Left            =   2640
            TabIndex        =   119
            Top             =   525
            Width           =   585
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Oto TS"
         Height          =   735
         Index           =   3
         Left            =   -74880
         TabIndex        =   104
         Top             =   5520
         Width           =   3855
         Begin VB.CommandButton btn 
            Caption         =   "Ts Kullan"
            Height          =   300
            Index           =   3
            Left            =   1920
            TabIndex        =   107
            Top             =   240
            Width           =   855
         End
         Begin VB.CheckBox ch 
            Caption         =   "Oto Ts "
            Height          =   255
            Index           =   8
            Left            =   2880
            TabIndex        =   106
            ToolTipText     =   "Otomatik olarak ts basar.."
            Top             =   270
            Width           =   795
         End
         Begin VB.ComboBox cb 
            Height          =   315
            Index           =   3
            ItemData        =   "Form1.frx":150A9
            Left            =   120
            List            =   "Form1.frx":150E3
            Style           =   2  'Dropdown List
            TabIndex        =   105
            ToolTipText     =   "Oto Ts Ýçin Yaratýk Seç"
            Top             =   240
            Width           =   1695
         End
      End
      Begin VB.CheckBox ch 
         Caption         =   "Bot'u Yukarda Tut"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Index           =   15
         Left            =   -72840
         TabIndex        =   87
         Top             =   360
         Value           =   1  'Checked
         Width           =   1815
      End
      Begin VB.Frame fr 
         Caption         =   "Genel Ayarlar"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2805
         Index           =   52
         Left            =   -74880
         TabIndex        =   85
         Top             =   2640
         Width           =   3855
         Begin VB.CheckBox ch 
            Caption         =   "Minor Fixer"
            Height          =   255
            Index           =   102
            Left            =   2040
            TabIndex        =   539
            Top             =   1440
            Width           =   1290
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Manuel Rota"
            Height          =   195
            Index           =   34
            Left            =   1680
            TabIndex        =   507
            Top             =   1920
            Width           =   1455
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Otomatik Rota"
            Height          =   195
            Index           =   33
            Left            =   240
            TabIndex        =   506
            Top             =   1920
            Value           =   -1  'True
            Width           =   1455
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   53
            Left            =   3360
            TabIndex        =   503
            Text            =   "5"
            Top             =   1680
            Width           =   375
         End
         Begin VB.CheckBox ch 
            Caption         =   "Sürekli Speed Hack"
            Height          =   255
            Index           =   67
            Left            =   240
            TabIndex        =   478
            ToolTipText     =   "Ýstediðiniz Yere Hýzlýca Gitmenizi Saðlar.."
            Top             =   1680
            Width           =   1935
         End
         Begin VB.CheckBox ch 
            Caption         =   "Party Baþkaný Takip"
            Height          =   255
            Index           =   11
            Left            =   240
            TabIndex        =   473
            ToolTipText     =   "Duvarlardan ve Bütün Objelerden Kolayca Geçmeye Yarar . Ancak Hapise Düþürebilir Dikkatlý Olun.."
            Top             =   960
            Width           =   1695
         End
         Begin VB.CheckBox ch 
            Caption         =   "Pazar Tut"
            Height          =   255
            Index           =   10
            Left            =   240
            TabIndex        =   472
            ToolTipText     =   "Duvarlardan ve Bütün Objelerden Kolayca Geçmeye Yarar . Ancak Hapise Düþürebilir Dikkatlý Olun.."
            Top             =   1200
            Width           =   1335
         End
         Begin VB.CheckBox Check10 
            Caption         =   "Öldüðün Yere Dön"
            Enabled         =   0   'False
            Height          =   255
            Index           =   5
            Left            =   2040
            TabIndex        =   411
            Top             =   240
            Width           =   1695
         End
         Begin VB.CheckBox ch 
            Caption         =   "Trade Red"
            Enabled         =   0   'False
            Height          =   255
            Index           =   124
            Left            =   2040
            TabIndex        =   103
            ToolTipText     =   "Exp Kasarken birilerinin trade atmasýný engellemek için kullanabilirsiniz."
            Top             =   1200
            Width           =   1050
         End
         Begin VB.CommandButton btn 
            Caption         =   "Pet"
            Height          =   255
            Index           =   1
            Left            =   1920
            TabIndex        =   102
            ToolTipText     =   "Presiz Pet Çýkarmanýzý Saðlar"
            Top             =   2400
            Width           =   735
         End
         Begin VB.CommandButton btn 
            Caption         =   "Fake GB"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   101
            ToolTipText     =   "Üstünüzde 21 gb niz olur ancak kullanýlamaz sadece buy pazar kurabilirsiniz ancak itemi yinede satýn alamassýnýz."
            Top             =   2400
            Width           =   735
         End
         Begin VB.CommandButton Command13 
            Caption         =   "Delos"
            Height          =   255
            Index           =   4
            Left            =   1080
            TabIndex        =   100
            Top             =   2400
            Width           =   735
         End
         Begin VB.CommandButton Command19 
            Caption         =   "Kulebug"
            Height          =   255
            Index           =   0
            Left            =   2880
            TabIndex        =   99
            Top             =   2400
            Width           =   735
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   38
            Left            =   3120
            TabIndex        =   97
            Text            =   "500"
            Top             =   2160
            Width           =   615
         End
         Begin VB.CheckBox ch 
            Caption         =   "Zýrh Rpr"
            Height          =   255
            Index           =   94
            Left            =   840
            TabIndex        =   96
            Top             =   2160
            Width           =   975
         End
         Begin VB.CheckBox ch 
            Caption         =   "Rpr"
            Height          =   255
            Index           =   72
            Left            =   240
            TabIndex        =   95
            Top             =   2160
            Width           =   735
         End
         Begin VB.CheckBox ch 
            Caption         =   "Tuþla Town "
            Height          =   255
            Index           =   6
            Left            =   240
            TabIndex        =   94
            ToolTipText     =   "Ani durumlarda hp niz ne olursa olsun town atmanýzý saðlar"
            Top             =   480
            Width           =   1335
         End
         Begin VB.CheckBox ch 
            Caption         =   "Karakteri Sabitle"
            Height          =   255
            Index           =   7
            Left            =   2040
            TabIndex        =   93
            ToolTipText     =   "Karakteri bulundugu yerden bi yere kýpýrdayamaz."
            Top             =   960
            Width           =   1575
         End
         Begin VB.CheckBox ch 
            Caption         =   "Tuþla Ýntihar"
            Height          =   255
            Index           =   122
            Left            =   240
            TabIndex        =   92
            ToolTipText     =   "Ani durumlarda exp - np kaybetmemek için kullanabilirsiniz."
            Top             =   720
            Width           =   1455
         End
         Begin VB.CheckBox Check10 
            Caption         =   "Basit Oto Kutu"
            Height          =   255
            Index           =   1
            Left            =   2040
            TabIndex        =   91
            Top             =   720
            Width           =   1455
         End
         Begin VB.CheckBox Check10 
            Caption         =   "Oto Kalk"
            Height          =   255
            Index           =   2
            Left            =   2040
            TabIndex        =   90
            Top             =   480
            Width           =   1215
         End
         Begin VB.CheckBox ch 
            Caption         =   "Speed Hack (G)"
            Height          =   255
            Index           =   123
            Left            =   240
            TabIndex        =   88
            ToolTipText     =   "Ýstediðiniz Yere Hýzlýca Gitmenizi Saðlar.."
            Top             =   1440
            Width           =   1455
         End
         Begin VB.CheckBox ch 
            Caption         =   "Wall Hack"
            Height          =   195
            Index           =   4
            Left            =   240
            TabIndex        =   86
            ToolTipText     =   "Duvarlardan ve Bütün Objelerden Kolayca Geçmeye Yarar . Ancak Hapise Düþürebilir Dikkatlý Olun.."
            Top             =   240
            Width           =   1335
         End
         Begin VB.Label lb 
            AutoSize        =   -1  'True
            Caption         =   "Durabilty Sýnýrý :"
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   45
            Left            =   1920
            TabIndex        =   98
            Top             =   2160
            Width           =   1125
         End
         Begin VB.Label Label25 
            Caption         =   "SH Hýz (1-10) :"
            Height          =   255
            Left            =   2280
            TabIndex        =   89
            Top             =   1680
            Width           =   1095
         End
      End
      Begin VB.Frame fr 
         Caption         =   "Saðlýk Ayarlarý"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1965
         Index           =   18
         Left            =   -74880
         TabIndex        =   67
         Top             =   600
         Width           =   3855
         Begin VB.OptionButton Opt 
            Caption         =   "Yarý Manuel Pot"
            Height          =   195
            Index           =   1
            Left            =   1920
            TabIndex        =   483
            Top             =   240
            Value           =   -1  'True
            Width           =   1455
         End
         Begin VB.OptionButton Opt 
            Caption         =   "Akýllý Pot"
            Height          =   195
            Index           =   0
            Left            =   600
            TabIndex        =   482
            Top             =   240
            Width           =   1095
         End
         Begin VB.Timer tmminor 
            Interval        =   100
            Left            =   2040
            Top             =   1320
         End
         Begin VB.TextBox Text10 
            Alignment       =   1  'Right Justify
            Height          =   285
            Left            =   3120
            TabIndex        =   83
            Text            =   "100"
            Top             =   1200
            Width           =   495
         End
         Begin VB.CheckBox ch 
            Caption         =   "P.Minor  %"
            Height          =   255
            Index           =   79
            Left            =   2040
            TabIndex        =   82
            ToolTipText     =   "Party'te Oto Rogue Minor"
            Top             =   1560
            Width           =   1095
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   36
            Left            =   3120
            MaxLength       =   2
            TabIndex        =   81
            Text            =   "30"
            ToolTipText     =   "Party'e Minor Atýlacak Hp Limit Yüzdesi"
            Top             =   1560
            Width           =   495
         End
         Begin VB.CheckBox ch 
            Caption         =   "Ýntahar  % "
            Height          =   255
            Index           =   3
            Left            =   240
            TabIndex        =   80
            ToolTipText     =   "Ýntihar Etme ( Exp - Np) Gitmez.."
            Top             =   1560
            Width           =   1095
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   3
            Left            =   1320
            MaxLength       =   2
            TabIndex        =   79
            Text            =   "10"
            ToolTipText     =   "Ýntihar Edilecek Hp Limit Yüzdesi"
            Top             =   1560
            Width           =   495
         End
         Begin VB.TextBox txt 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   2
            Left            =   1320
            MaxLength       =   2
            TabIndex        =   77
            Text            =   "70"
            ToolTipText     =   "Minor Yapýlacak Hp Limit Yüzdesi"
            Top             =   1200
            Width           =   495
         End
         Begin VB.CheckBox ch 
            Caption         =   "Minor"
            Height          =   255
            Index           =   2
            Left            =   240
            TabIndex        =   76
            ToolTipText     =   "Rogue Oto Minor"
            Top             =   1200
            Width           =   855
         End
         Begin VB.Frame fr 
            Caption         =   "Pot Ayarlarý"
            Height          =   615
            Index           =   2
            Left            =   120
            TabIndex        =   68
            Top             =   480
            Width           =   3615
            Begin VB.TextBox txt 
               Alignment       =   1  'Right Justify
               ForeColor       =   &H00FF0000&
               Height          =   285
               Index           =   0
               Left            =   3120
               MaxLength       =   2
               TabIndex        =   74
               Text            =   "10"
               ToolTipText     =   "Potun Basýlacaðý Mp Limit  Yüzdesi"
               Top             =   240
               Width           =   375
            End
            Begin VB.TextBox txt 
               Alignment       =   1  'Right Justify
               ForeColor       =   &H000000FF&
               Height          =   285
               Index           =   1
               Left            =   1200
               MaxLength       =   2
               TabIndex        =   73
               Text            =   "90"
               ToolTipText     =   "Potun Basýlacagý Hp Limit Yüzdesi"
               Top             =   240
               Width           =   375
            End
            Begin VB.CheckBox ch 
               Caption         =   "MP Pot %"
               ForeColor       =   &H00FF0000&
               Height          =   255
               Index           =   1
               Left            =   2040
               TabIndex        =   72
               ToolTipText     =   "Mp Pot Ayarý"
               Top             =   240
               Width           =   1095
            End
            Begin VB.CheckBox ch 
               Caption         =   "HP Pot %"
               ForeColor       =   &H000000FF&
               Height          =   255
               Index           =   0
               Left            =   120
               TabIndex        =   71
               ToolTipText     =   "Hp Pot Ayarý"
               Top             =   240
               Width           =   1080
            End
            Begin VB.ComboBox cb 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   162
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FF0000&
               Height          =   285
               Index           =   1
               ItemData        =   "Form1.frx":151AB
               Left            =   2160
               List            =   "Form1.frx":151D7
               Style           =   2  'Dropdown List
               TabIndex        =   70
               ToolTipText     =   "Mp Pot Seç"
               Top             =   840
               Width           =   1200
            End
            Begin VB.ComboBox cb 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   162
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000FF&
               Height          =   285
               Index           =   0
               ItemData        =   "Form1.frx":151F5
               Left            =   240
               List            =   "Form1.frx":1521C
               Style           =   2  'Dropdown List
               TabIndex        =   69
               ToolTipText     =   "Hp Pot Seç"
               Top             =   840
               Width           =   1200
            End
            Begin VB.Label lb 
               AutoSize        =   -1  'True
               Caption         =   "%                                       %"
               Height          =   195
               Index           =   71
               Left            =   1080
               TabIndex        =   75
               Top             =   1080
               Width           =   2445
            End
         End
         Begin VB.Label Label22 
            Caption         =   "Hýz:"
            Height          =   255
            Index           =   3
            Left            =   2760
            TabIndex        =   84
            Top             =   1200
            Width           =   495
         End
         Begin VB.Label lb 
            Caption         =   " %"
            Height          =   255
            Index           =   1
            Left            =   1080
            TabIndex        =   78
            Top             =   1200
            Width           =   255
         End
      End
      Begin VB.Label Label7 
         Caption         =   "www.besthile.com"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   2
         Left            =   -74280
         LinkItem        =   "www.chaoskoxp.net"
         MouseIcon       =   "Form1.frx":15237
         MousePointer    =   4  'Icon
         TabIndex        =   498
         Top             =   3000
         Width           =   3135
      End
      Begin VB.Label Label22 
         Caption         =   "Botu Gizleme Tuþu : F11"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   12
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF00FF&
         Height          =   375
         Index           =   1
         Left            =   -74280
         TabIndex        =   370
         Top             =   5040
         Width           =   2895
      End
      Begin VB.Label Label20 
         Caption         =   "Moschino - Stuff"
         BeginProperty Font 
            Name            =   "Trebuchet MS"
            Size            =   14.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   -74040
         TabIndex        =   369
         Top             =   4440
         Width           =   2415
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         Caption         =   $"Form1.frx":43C91
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   12
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2415
         Left            =   -74760
         TabIndex        =   362
         Top             =   1200
         Width           =   3735
      End
      Begin VB.Label Label9 
         Alignment       =   1  'Right Justify
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Trebuchet MS"
            Size            =   9.75
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -72480
         TabIndex        =   361
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label10 
         Caption         =   "DK"
         BeginProperty Font 
            Name            =   "Trebuchet MS"
            Size            =   9.75
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -71640
         TabIndex        =   360
         Top             =   600
         Width           =   495
      End
      Begin VB.Label Label8 
         Caption         =   "Oyunda Kalma Süreniz "
         BeginProperty Font 
            Name            =   "Trebuchet MS"
            Size            =   9.75
            Charset         =   162
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -74640
         TabIndex        =   359
         Top             =   600
         Width           =   2535
      End
   End
   Begin VB.Timer Timer13 
      Interval        =   10
      Left            =   5520
      Top             =   2520
   End
   Begin VB.Timer Timer9 
      Enabled         =   0   'False
      Interval        =   1500
      Left            =   5160
      Top             =   3000
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Rota Ýþlemleri"
      Height          =   375
      Left            =   16800
      TabIndex        =   63
      Top             =   1680
      Width           =   2775
   End
   Begin VB.Frame Frame6 
      Height          =   1215
      Left            =   10560
      TabIndex        =   60
      Top             =   4080
      Width           =   3375
      Begin VB.OptionButton Opt 
         Caption         =   "Iþýnlanarak"
         Enabled         =   0   'False
         Height          =   195
         Index           =   20
         Left            =   360
         TabIndex        =   62
         Top             =   600
         Value           =   -1  'True
         Width           =   1215
      End
      Begin VB.OptionButton Opt 
         Caption         =   "Koþarak"
         Enabled         =   0   'False
         Height          =   195
         Index           =   21
         Left            =   1560
         TabIndex        =   61
         Top             =   600
         Width           =   975
      End
   End
   Begin VB.Frame Frame11 
      Caption         =   "Mage Tp (ID)"
      Height          =   2175
      Index           =   0
      Left            =   10440
      TabIndex        =   55
      Top             =   4560
      Visible         =   0   'False
      Width           =   4335
      Begin VB.CommandButton Command18 
         Caption         =   "Gizle (X)"
         Height          =   255
         Left            =   480
         TabIndex        =   58
         Top             =   1800
         Width           =   3615
      End
      Begin VB.CheckBox Check11 
         Caption         =   "Oto TP Baþlat"
         Height          =   495
         Index           =   0
         Left            =   2520
         Style           =   1  'Graphical
         TabIndex        =   57
         Top             =   360
         Width           =   1455
      End
      Begin VB.Frame Frame11 
         Caption         =   "ID Kaydet"
         Height          =   1215
         Index           =   2
         Left            =   480
         TabIndex        =   56
         Top             =   360
         Width           =   1695
         Begin VB.Label TpCap 
            Alignment       =   2  'Center
            Caption         =   "ID"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   59
            Top             =   240
            Visible         =   0   'False
            Width           =   1215
         End
      End
   End
   Begin VB.Frame Frame13 
      Caption         =   "Pm Gönder"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   9960
      TabIndex        =   43
      Top             =   7560
      Visible         =   0   'False
      Width           =   4575
      Begin VB.CheckBox Check5 
         Caption         =   "Pm Gönder"
         Height          =   255
         Left            =   120
         TabIndex        =   54
         Top             =   0
         Width           =   1215
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         Height          =   495
         Left            =   2040
         TabIndex        =   53
         Text            =   "Gönderilecek PM"
         Top             =   1080
         Width           =   2175
      End
      Begin VB.CheckBox Check4 
         Caption         =   "Pm Göndermeyi Baþlat"
         Height          =   375
         Left            =   2160
         Style           =   1  'Graphical
         TabIndex        =   52
         Top             =   1680
         Width           =   1935
      End
      Begin VB.CommandButton Command14 
         Caption         =   "Taramayý Baþlat"
         Height          =   375
         Left            =   120
         TabIndex        =   51
         Top             =   1680
         Width           =   1935
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Priest"
         Height          =   255
         Index           =   3
         Left            =   960
         TabIndex        =   50
         Top             =   1320
         Width           =   975
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Warrior"
         Height          =   255
         Index           =   2
         Left            =   960
         TabIndex        =   49
         Top             =   960
         Width           =   975
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Mage"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   48
         Top             =   1320
         Width           =   735
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Rogue"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   47
         Top             =   960
         Width           =   855
      End
      Begin VB.ListBox List2 
         Height          =   645
         Left            =   2040
         TabIndex        =   46
         Top             =   240
         Width           =   2175
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Herkesi Tara"
         Height          =   240
         Left            =   120
         TabIndex        =   45
         Top             =   360
         Width           =   1455
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Seçili Class'ý Tara"
         Height          =   255
         Left            =   120
         TabIndex        =   44
         Top             =   600
         Width           =   1575
      End
   End
   Begin VB.Timer TmRotaKontrol 
      Interval        =   500
      Left            =   5160
      Top             =   2520
   End
   Begin VB.Timer Tpid 
      Enabled         =   0   'False
      Interval        =   900
      Left            =   6240
      Top             =   3000
   End
   Begin VB.CheckBox ch 
      Caption         =   "Oto Str"
      Height          =   195
      Index           =   98
      Left            =   3240
      TabIndex        =   42
      Top             =   9960
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Timer Timer10 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   5880
      Top             =   3000
   End
   Begin VB.Timer Timer8 
      Interval        =   1000
      Left            =   3480
      Top             =   11400
   End
   Begin VB.TextBox txt 
      Alignment       =   1  'Right Justify
      Height          =   285
      Index           =   52
      Left            =   3360
      TabIndex        =   41
      Text            =   "1299"
      ToolTipText     =   "Hýz Belirtin "
      Top             =   10320
      Width           =   855
   End
   Begin VB.Timer Timer7 
      Interval        =   1000
      Left            =   5880
      Top             =   2520
   End
   Begin VB.ListBox lst 
      Height          =   1035
      Index           =   0
      ItemData        =   "Form1.frx":43D18
      Left            =   16440
      List            =   "Form1.frx":43D1A
      TabIndex        =   40
      ToolTipText     =   "Skill Listesi"
      Top             =   1920
      Width           =   2100
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   1575
      Left            =   12000
      TabIndex        =   39
      Top             =   5760
      Width           =   3735
      ExtentX         =   6588
      ExtentY         =   2778
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
   Begin VB.TextBox Text5 
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
      Left            =   7320
      TabIndex        =   38
      Text            =   "ChaosKoxp"
      Top             =   3120
      Width           =   1815
   End
   Begin VB.TextBox Text4 
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
      Left            =   7440
      TabIndex        =   37
      Text            =   "Karakterin Dc Oldu . Your Character Is Disconnect"
      Top             =   2640
      Width           =   2295
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7320
      TabIndex        =   36
      Text            =   "Karakterin Oldu , Your Character Is Dead ."
      Top             =   2160
      Width           =   2295
   End
   Begin VB.Timer Timer6 
      Enabled         =   0   'False
      Interval        =   250
      Left            =   6600
      Top             =   2520
   End
   Begin VB.TextBox txt 
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   54
      Left            =   5760
      TabIndex        =   35
      Text            =   "10"
      Top             =   5520
      Width           =   375
   End
   Begin VB.CheckBox ch 
      Caption         =   "Ekran Görüntüsü Kaydet"
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
      Index           =   112
      Left            =   5400
      TabIndex        =   32
      Top             =   5160
      Width           =   2415
   End
   Begin VB.Timer Timer5 
      Interval        =   1000
      Left            =   6240
      Top             =   2520
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   5520
      Top             =   3000
   End
   Begin VB.Timer Timer2 
      Interval        =   60000
      Left            =   6600
      Top             =   3000
   End
   Begin VB.PictureBox pic2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1935
      Left            =   13200
      ScaleHeight     =   1905
      ScaleWidth      =   2385
      TabIndex        =   20
      Top             =   1800
      Width           =   2415
      Begin VB.CommandButton Command11 
         Caption         =   "Gizle"
         Height          =   240
         Left            =   0
         TabIndex        =   28
         Top             =   1680
         Width           =   2415
      End
      Begin TabDlg.SSTab SSTab4 
         Height          =   1695
         Left            =   0
         TabIndex        =   21
         Top             =   120
         Width           =   2445
         _ExtentX        =   4313
         _ExtentY        =   2990
         _Version        =   393216
         Style           =   1
         TabHeight       =   520
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         TabCaption(0)   =   "Speed Hack"
         TabPicture(0)   =   "Form1.frx":43D1C
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame9(0)"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         TabCaption(1)   =   "Town"
         TabPicture(1)   =   "Form1.frx":43D38
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame9(1)"
         Tab(1).ControlCount=   1
         TabCaption(2)   =   "Intihar"
         TabPicture(2)   =   "Form1.frx":43D54
         Tab(2).ControlEnabled=   0   'False
         Tab(2).Control(0)=   "Frame9(2)"
         Tab(2).ControlCount=   1
         Begin VB.Frame Frame9 
            Caption         =   "Tuþ Seç"
            Height          =   1095
            Index           =   0
            Left            =   240
            TabIndex        =   26
            Top             =   360
            Width           =   2055
            Begin VB.ComboBox cb 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   162
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   39
               ItemData        =   "Form1.frx":43D70
               Left            =   240
               List            =   "Form1.frx":43D80
               Style           =   2  'Dropdown List
               TabIndex        =   27
               ToolTipText     =   "Speed Hack Ýçin Tuþ Seç"
               Top             =   360
               Width           =   1455
            End
         End
         Begin VB.Frame Frame9 
            Caption         =   "Tuþ Seç"
            Height          =   1095
            Index           =   1
            Left            =   -74760
            TabIndex        =   24
            Top             =   360
            Width           =   2055
            Begin VB.ComboBox cb 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   162
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   2
               ItemData        =   "Form1.frx":43D8D
               Left            =   240
               List            =   "Form1.frx":43D9D
               Style           =   2  'Dropdown List
               TabIndex        =   25
               ToolTipText     =   "Town için Tuþ Seç"
               Top             =   360
               Width           =   1455
            End
         End
         Begin VB.Frame Frame9 
            Caption         =   "Tuþ Seç"
            Height          =   1095
            Index           =   2
            Left            =   -74760
            TabIndex        =   22
            Top             =   360
            Width           =   2055
            Begin VB.ComboBox cb 
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   6.75
                  Charset         =   162
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Index           =   38
               ItemData        =   "Form1.frx":43DC5
               Left            =   240
               List            =   "Form1.frx":43DD5
               Style           =   2  'Dropdown List
               TabIndex        =   23
               ToolTipText     =   "Ýhtihar Ýçin Tuþ Seç"
               Top             =   360
               Width           =   1455
            End
         End
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "GEREKSÝZ"
      Height          =   1455
      Left            =   8400
      TabIndex        =   15
      Top             =   14760
      Width           =   2775
      Begin VB.Label lb 
         Caption         =   "Sað item Durbility.:"
         ForeColor       =   &H000000C0&
         Height          =   255
         Index           =   42
         Left            =   360
         TabIndex        =   19
         Top             =   720
         Width           =   3495
      End
      Begin VB.Label lb 
         Caption         =   "Sol item Durbility.:"
         ForeColor       =   &H000000C0&
         Height          =   255
         Index           =   43
         Left            =   120
         TabIndex        =   18
         Top             =   360
         Width           =   3495
      End
      Begin VB.Label lb 
         Caption         =   "Sol item Durbility.:"
         ForeColor       =   &H000000C0&
         Height          =   255
         Index           =   5
         Left            =   960
         TabIndex        =   17
         Top             =   840
         Width           =   3495
      End
      Begin VB.Label lb 
         Caption         =   "Sað item Durbility.:"
         ForeColor       =   &H000000C0&
         Height          =   255
         Index           =   9
         Left            =   840
         TabIndex        =   16
         Top             =   720
         Width           =   3495
      End
   End
   Begin VB.PictureBox frmico 
      Height          =   300
      Left            =   9360
      Picture         =   "Form1.frx":43DFD
      ScaleHeight     =   240
      ScaleWidth      =   240
      TabIndex        =   14
      Top             =   3120
      Width           =   300
   End
   Begin VB.PictureBox pcKpt 
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   5760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   12
      Top             =   2400
      Width           =   255
   End
   Begin VB.PictureBox pcAlarm 
      Height          =   1215
      Left            =   23880
      ScaleHeight     =   1155
      ScaleWidth      =   3315
      TabIndex        =   8
      Top             =   3720
      Width           =   3375
      Begin VB.CommandButton btn 
         Caption         =   "Alarmý Durdur"
         Height          =   375
         Index           =   48
         Left            =   840
         TabIndex        =   10
         Top             =   720
         Width           =   1815
      End
      Begin VB.Label lb 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label1"
         Height          =   195
         Index           =   69
         Left            =   1440
         TabIndex        =   11
         Top             =   240
         Width           =   465
      End
      Begin VB.Label lb 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Alarm!"
         BeginProperty Font 
            Name            =   "Trebuchet MS"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   8
         Left            =   1455
         TabIndex        =   9
         Top             =   0
         Width           =   540
      End
   End
   Begin VB.PictureBox çokluSkill 
      BorderStyle     =   0  'None
      Height          =   1335
      Left            =   15720
      ScaleHeight     =   1335
      ScaleWidth      =   2175
      TabIndex        =   3
      Top             =   -120
      Visible         =   0   'False
      Width           =   2175
      Begin VB.ListBox lst 
         Height          =   840
         Index           =   14
         ItemData        =   "Form1.frx":52F6F
         Left            =   0
         List            =   "Form1.frx":52F71
         TabIndex        =   7
         Top             =   480
         Width           =   2055
      End
      Begin VB.CommandButton btn 
         Caption         =   "< Ekle"
         Height          =   255
         Index           =   32
         Left            =   0
         TabIndex        =   6
         Top             =   120
         Width           =   1095
      End
      Begin VB.CommandButton btn 
         Caption         =   "Tamam"
         Height          =   270
         Index           =   33
         Left            =   0
         TabIndex        =   5
         Top             =   1005
         Width           =   2055
      End
      Begin VB.CommandButton btn 
         Caption         =   "Kaldýr >"
         Height          =   255
         Index           =   31
         Left            =   1080
         TabIndex        =   4
         Top             =   120
         Width           =   975
      End
   End
   Begin VB.PictureBox efPC 
      BorderStyle     =   0  'None
      Height          =   615
      Left            =   0
      ScaleHeight     =   615
      ScaleWidth      =   4455
      TabIndex        =   0
      Top             =   8280
      Width           =   4455
      Begin VB.CheckBox chatack 
         Caption         =   "Atak Baþlat"
         Height          =   375
         Left            =   1440
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Atak Baþlatýr."
         Top             =   0
         Width           =   1215
      End
      Begin VB.CommandButton btnKaydet 
         Caption         =   "Ayar Kaydet"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   2
         ToolTipText     =   "Seçtiðiniz Ayarlar Kaybolmasýn Ýstiyorsanýz Ayarlarý Kaydedin."
         Top             =   0
         Width           =   1215
      End
      Begin VB.CommandButton btnBotDr 
         Caption         =   "Aktif"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   1
         ToolTipText     =   "Bottaki Özelilikler Aktif Olur.."
         Top             =   0
         Width           =   1215
      End
   End
   Begin VB.Label ynst 
      Caption         =   "0"
      Height          =   375
      Left            =   5040
      TabIndex        =   540
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label lb 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "..\Kayýtlar"
      ForeColor       =   &H80000008&
      Height          =   240
      Index           =   47
      Left            =   5880
      TabIndex        =   293
      Top             =   6360
      Width           =   1515
   End
   Begin VB.Label Label28 
      Caption         =   "X"
      Height          =   375
      Index           =   0
      Left            =   4320
      TabIndex        =   65
      Top             =   9600
      Width           =   975
   End
   Begin VB.Label Label28 
      Caption         =   "Y"
      Height          =   375
      Index           =   1
      Left            =   4440
      TabIndex        =   64
      Top             =   10200
      Width           =   975
   End
   Begin VB.Label lb 
      AutoSize        =   -1  'True
      Caption         =   "Her             dk.da bir görüntü kaydet"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   14
      Left            =   5400
      TabIndex        =   34
      Top             =   5430
      Width           =   2745
   End
   Begin VB.Label lb 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "..\Kayýtlar\Ekran Görüntüleri"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   240
      Index           =   10
      Left            =   5520
      TabIndex        =   33
      Top             =   5760
      Width           =   2055
   End
   Begin VB.Label Label19 
      Caption         =   "Label19"
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
      Left            =   3360
      TabIndex        =   31
      Top             =   9480
      Width           =   615
   End
   Begin VB.Label serAbout 
      Alignment       =   2  'Center
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   9.75
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   8520
      TabIndex        =   30
      Top             =   9840
      Width           =   4215
   End
   Begin VB.Label lb 
      AutoSize        =   -1  'True
      Caption         =   "x"
      BeginProperty Font 
         Name            =   "Webdings"
         Size            =   8.25
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   255
      Index           =   59
      Left            =   720
      TabIndex        =   29
      Top             =   12720
      Width           =   165
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public nero As MSHTML.HTMLDocument
Public neroq As MSHTML.IHTMLElement
Dim kas As Integer, SçAyarLb As Integer
Private Sub aktifmnu_Click()
If aktifmnu.Checked = False Then btnBotDr_Click
End Sub

Private Sub alis_Click()

End Sub

Private Sub alisveris_Click()

End Sub

Private Sub bot_Click()

End Sub

Private Sub btn_Click(Index As Integer)
ii = Index
Select Case Index
Case 61
pcItemEkleManu.Visible = False
Case 64
fr(51).Visible = False
Case 60
If txt(58).Enabled = False Then
lst(8).AddItem txt(57)
Else
FrmLoot.list(1).AddItem txt(57).Text
FrmLoot.list(1).ItemData(FrmLoot.list(1).NewIndex) = txt(58).Text
Form2.LstKutuTopla.AddItem txt(58).Text
End If
txt(58) = ""
txt(57) = ""
Case 62
lb(48).Enabled = False
txt(58).Enabled = False
pcItemEkleManu.Top = 2040
pcItemEkleManu.Left = 240
pcItemEkleManu.Visible = True
Case 63
ÇantaOku lst(12), 1
pcItemEkle.Top = 480
pcItemEkle.Left = 240
pcItemEkle.Visible = True
lb(70) = Index
Case 0
lst_DblClick (16)
Case 1 'pet
If btn(ii).Caption = "Pet Çýkar" Then Paket ("760105010100FD0600000800654D6F5374794C65650100002300230014001400022105"): MsgBox "Eðer Çýkmadýysa Köpeði Üstünüzden Çýkarýp Geri Koyun.", vbInformation: btn(ii).Caption = "Pet Öldür": Exit Sub Else Paket ("760105020100FD060000"): btn(ii).Caption = "Pet Çýkar"
Case 2 ' gb
WriteLong KO_ADR_CHR + &H9D0, "2100000000"
Case 3 'TS
Tskullan cb(3).ListIndex
Case 22
lst_DblClick 7
Case 52
txt(51) = ""
Case 23
lst_DblClick 8
Case 43
Form4.KayýtTipi = 0
Form4.Show
 SetWindowPos Form4.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
Case 50
Form4.KayýtTipi = 1
Form4.Show
 SetWindowPos Form4.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
Case 51
Form4.KayýtTipi = 2
Form4.Show
 SetWindowPos Form4.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
Case 44
If cb(32).ListIndex <> -1 And RPRYapýlýyor = False Then RepairYap IIf(Opt(14) = True, 1, 0), "\Rotalar\Repair\" & cb(32).Text
Case 30
If KonuþDurum = False Then
btn(ii).Caption = "Durdur"
KonuþDurum = True
Exit Sub
End If
If KonuþDurum = True Then
btn(ii).Caption = "Baþlat"
KonuþDurum = False
End If
Case 36
lb(26) = "Bu özellik;Slot Listesi Dýþýndaki Yaratýklarýn Karakter Yanýna Yaklaþtýðý anda Görünmezlik (hide) Skillini Kullanarak Charý ölmekten Korur.(ÖR:Troll Warior Yanýna Yaklaþtýðý Anda Hide Skillini Kullanýr ve Ataðý Durdurur."
 lb(60) = "Anti MOB Açýklama!"
 uyarý.Top = 1800
uyarý.Left = 300
 uyarý.Visible = True
 
Case 13
If MOBAdý3 <> "" Then lst(5).AddItem MOBAdý3
Case 14
If lst(5).ListIndex > -1 Then lst(5).RemoveItem lst(5).ListIndex
Case 15
lst(5).Clear
Case 16
If txt(10).Text <> "" Then lst(5).AddItem txt(10)
If Durum(3) = False Then
Durum(3) = True
End If
Case 29
If lstw.ListItems.Count > 0 Then ÇýkarParty PartyCharID(lstw.SelectedItem.Index)
Case 27
If lstw.ListItems.Count > 0 Then PMat lstw.SelectedItem.SubItems(1)
Case 28
If lstw.ListItems.Count > 0 Then ÇekMage PartyCharID(lstw.SelectedItem.Index)

Case 40: If MOBAdý3 <> "" Then lst(18).AddItem MOBAdý3
Case 39: lst(18).Clear
Case 38: If lst(18).ListIndex > -1 Then lst(18).RemoveItem lst(18).ListIndex
Case 37
If txt(39).Text <> "" Then lst(18).AddItem txt(39)
If Durum(5) = False Then
Durum(5) = True
End If


Case 17
If MOBAdý3 <> "" Then lst(6).AddItem MOBAdý3
Case 18
If txt(11).Text <> "" Then lst(6).AddItem txt(11)
If Durum(4) = False Then
Durum(4) = True
End If
Case 19
If lst(6).Text <> "" Then lst(6).RemoveItem lst(6).ListIndex
Case 20
lst(6).Clear

Case 5
If Opt(2) = True Then
If MOBAdý3 <> "" Then lst(3).AddItem MOBAdý3
If MOBAdý3 <> "" Then Form2.lstSlot(0).AddItem MOBAdý3: Form2.lstSlot(1).AddItem MOBAdý3
Else
lst(3).Clear
For i = -5 To 5
lst(3).AddItem (ReadLong(KO_ADR_CHR + KO_OFF_MOB) + i)
Form2.lstSlot(0).AddItem (ReadLong(KO_ADR_CHR + KO_OFF_MOB) + i)
Form2.lstSlot(1).AddItem (ReadLong(KO_ADR_CHR + KO_OFF_MOB) + i)
Next
End If
Case 7
On Error Resume Next: lst(3).RemoveItem (lst(3).ListIndex): Form2.lstSlot(0).RemoveItem (lst(3).ListIndex): Form2.lstSlot(1).RemoveItem (lst(3).ListIndex)

Case 48
pcAlarm.Visible = False
Call sndPlaySound(App.Path & "", 1)
Form2.tmAlarm = False

Case 9
Dim a As String
a = DosyaSeç(Me, "..\..\Program Files", "Gm Listesi(*.txt)" + Chr$(0) + "*.txt" + Chr$(0) + "Tüm Dosyalar(*.*)" + Chr$(0) + "*.*" + Chr$(0), "", "", "Gm Listesinin Olduðu Dosyayý Seçin.")
If a = "" Then Exit Sub
Open a For Input As 1
lst(4).Clear
Do Until EOF(1)
Line Input #1, st
lst(4).AddItem st
Loop
Close 1


Case 10
lst(4).AddItem txt(9)

Case 11
If lst(4).Text <> "" Then
lst(4).RemoveItem (lst(4).ListIndex)
End If

Case 12
lst(4).Clear

Case 8
lst(3).Clear
Form2.lstSlot(0).Clear: Form2.lstSlot(1).Clear
Case 6
lst(3).AddItem txt(8)
If Durum(1) = False Then
Durum(1) = True
End If
Case 47
uyarý.Visible = False
Case 42
If MsgBox("Duvar Hack Açýlsýn mý?", vbExclamation + vbYesNo + vbSystemModal) = vbYes Then ch(4) = 1
YürüXY txt(49), txt(50)
Case 41
Form2.ýþýnLanTm = True
Case 35
fr(47).Visible = False
Case 34
çokluSkill.Top = 720
çokluSkill.Left = 2520
 çokluSkill.Visible = True
Case 31
lst_DblClick (0)
Case 32
lst_DblClick (14)
Case 33
çokluSkill.Visible = False
End Select
End Sub

Private Sub btnBotDr_Click()
If btnBotDr.Caption = "Pasif" Then
btnBotDr.Caption = "Aktif"
BotDurum = False
Form2.BotDurdur
'pasifmnu.Checked = True: aktifmnu.Checked = False
Exit Sub
End If
If btnBotDr.Caption = "Aktif" Then
btnBotDr.Caption = "Pasif"
Form2.charMaxHp = 0
BotDurum = True
Form2.BotBaþlat
'aktifmnu.Checked = True: pasifmnu.Checked = False

End If
End Sub

Private Sub btnKaydet_Click()
On Error Resume Next
Dim YER As String
YER = "\Kayýtlar\Ayarlar\Ayar_" & c.isim & ".ini"
Dim i As Integer
For i = 0 To 135
IniYaz "Chk", "ch" & i, ch(i).Value, YER
IniYaz "Cmb", "cb" & i, cb(i).ListIndex, YER
IniYaz "Txt", "txt" & i, txt(i).Text, YER
IniYaz "Opt", "opt" & i, Opt(i).Value, YER
IniYaz "CharAyar", "Cbiþlem" & i, cbIþlem(i).ListIndex, YER
Next
Dim j As Integer
For j = 0 To lst(1).ListCount - 1
IniYaz "ZamanSkill", "S_" & lst(1).list(j), lst(1).Selected(j), YER
Next
For j = 0 To lst(3).ListCount - 1
IniYaz "MOBList", "Sýra_" & j, lst(3).list(j), YER
IniYaz "MOBList", "Miktar", lst(3).ListCount, YER
Next
For j = 0 To lst(5).ListCount - 1
IniYaz "KabulEtParty", "OyuncuAdý_" & j, lst(5).list(j), YER
IniYaz "KabulEtParty", "Miktar", lst(5).ListCount, YER
Next
For j = 0 To lst(6).ListCount - 1
IniYaz "YollaParty", "OyuncuAdý_" & j, lst(6).list(j), YER
IniYaz "YollaParty", "Miktar", lst(6).ListCount, YER
Next
For j = 0 To lst(18).ListCount - 1
IniYaz "KomutEt", "OyuncuAdý_" & j, lst(18).list(j), YER
IniYaz "KomutEt", "Miktar", lst(18).ListCount, YER
Next
For j = 0 To FrmLoot.list(1).ListCount - 1
IniYaz "Kutu", "ItemAdý_" & j, FrmLoot.list(1).list(j), YER
IniYaz "Kutu", "ItemData_" & j, FrmLoot.list(1).ItemData(j), YER
IniYaz "Kutu", "Miktar", FrmLoot.list(1).ListCount, YER
Next
For j = 0 To List3.ListCount - 1
IniYaz "Satýlmayacak", "ItemAdý_" & j, List3.list(j), YER
IniYaz "Satýlmayacak", "Miktar", List3.ListCount, YER
Next


Select Case ClassAdý
Case "Priest"
Dim a As Integer
For a = 0 To PriList.ListCount - 1
IniYaz "AtakList", "Priest_" & a, PriList.Selected(a), YER
Next
Case "Warior"
Dim b As Integer
For b = 0 To WarList.ListCount - 1
IniYaz "AtakList", "Warrior_" & WarList.list(b), WarList.Selected(b), YER
Next
Case "Rogue"
Dim f As Integer
For f = 0 To OkcuList.ListCount - 1
IniYaz "AtakList", "Okcu_" & f, OkcuList.Selected(f), YER
Next
Dim z As Integer
For z = 0 To asaslist.ListCount - 1
IniYaz "AtakList", "asas_" & z, asaslist.Selected(z), YER
Next
Case "Mage"
Dim s As Integer
For s = 0 To MageList.ListCount - 1
IniYaz "AtakList", "mage_" & s, MageList.Selected(s), YER
Next
Dim l As Integer
For l = 0 To NovaList.ListCount - 1
IniYaz "AlanList", "alan_" & l, NovaList.Selected(l), YER
Next
End Select








'
'For j = 0 To List3.ListCount - 1
'IniYaz "Sell", "satislist" & j, List3.List(j), YER
'IniYaz "Sell", "Miktar" & j, List3.ListCount, YER
'Next
End Sub

Private Sub cb_Click(Index As Integer)
On Error Resume Next
Select Case Index
Case 32
If cb(Index).Text = "[Yenile...]" Then
cb(Index).Clear
Form2.flRota.Path = App.Path & "\Rotalar\Repair\"
Form2.flRota.Refresh
For i = 0 To Form2.flRota.ListCount - 1
cb(Index).AddItem Form2.flRota.list(i)
Next
If cb(Index).ListCount = 0 Then cb(Index).AddItem "Rota Bulunamadý..."
cb(Index).AddItem "[Yenile...]": cb(Index).ListIndex = 0
End If
Case 33
If cb(Index).Text = "[Yenile...]" Then
cb(Index).Clear
Form2.flRota.Path = App.Path & "\Rotalar\Satýn Al\"
Form2.flRota.Refresh
For i = 0 To Form2.flRota.ListCount - 1
cb(Index).AddItem Form2.flRota.list(i)
Next
If cb(Index).ListCount = 0 Then cb(Index).AddItem "Rota Bulunamadý..."
cb(Index).AddItem "[Yenile...]": cb(Index).ListIndex = 0
End If
Case 34
If cb(Index).Text = "[Yenile...]" Then
cb(Index).Clear
Form2.flRota.Path = App.Path & "\Rotalar\Bankadan Al\"
Form2.flRota.Refresh
For i = 0 To Form2.flRota.ListCount - 1
cb(Index).AddItem Form2.flRota.list(i)
Next
If cb(Index).ListCount = 0 Then cb(Index).AddItem "Rota Bulunamadý..."
cb(Index).AddItem "[Yenile...]": cb(Index).ListIndex = 0
End If
Case 35
If cb(Index).Text = "[Yenile...]" Then
cb(Index).Clear
Form2.flRota.Path = App.Path & "\Rotalar\Repair\"
Form2.flRota.Refresh
For i = 0 To Form2.flRota.ListCount - 1
cb(Index).AddItem Form2.flRota.list(i)
Next
If cb(Index).ListCount = 0 Then cb(Index).AddItem "Rota Bulunamadý..."
cb(Index).AddItem "[Yenile...]": cb(Index).ListIndex = 0
End If
Case 36
If cb(Index).Text = "[Yenile...]" Then
cb(Index).Clear
Form2.flRota.Path = App.Path & "\Rotalar\Satýn Al\"
Form2.flRota.Refresh
For i = 0 To Form2.flRota.ListCount - 1
cb(Index).AddItem Form2.flRota.list(i)
Next
If cb(Index).ListCount = 0 Then cb(Index).AddItem "Rota Bulunamadý..."
cb(Index).AddItem "[Yenile...]": cb(Index).ListIndex = 0
End If
End Select
End Sub

Private Sub chAlanAtack_Click()
If chAlanAtack = 1 Then
If BotDurum = True Then tmAlanAtack = True
chAlanAtack.Caption = "Durdur"
Else
tmAlanAtack = False
chAlanAtack.Caption = "Baþlat"
End If
End Sub

Private Sub chatack_Click()
If chatack = 1 Then
If BotDurum = True Then Atacktimer = True
chatack.Caption = "Atak Durdur"
If ch(22).Value = 1 Or ch(23).Value = 1 And Label2.Caption = "0/0" Then
mx = c.kX
my = c.kY
Label2.Caption = mx & "/" & my
End If
Label28(0).Caption = ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_X)
Label28(1).Caption = ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Y)
Else
Atacktimer = False
chatack.Caption = "Atak Baþlat"
End If
End Sub

Private Sub chDebuff_Click()
If chDebuff = 1 Then
chDebuff.Caption = "Durdur"
tmDebuff = True
Else
chDebuff.Caption = "Baþlat"
tmDebuff = False
End If
End Sub










Private Sub Check10_Click(Index As Integer)
If BotDurum = True Then

If Index = 1 Then
If Check10(1).Value = 1 Then
WriteByte ReadLong(KO_PTR_DLG) + &H7BC, 1
Else
WriteByte ReadLong(KO_PTR_DLG) + &H7BC, 0
End If
End If

If Index = 3 Then
If Check10(3).Value = 1 Then
Timer1.Enabled = True
Else
Timer1.Enabled = False
End If
End If


End If
End Sub

Private Sub Check16_Click()

End Sub




Private Sub Check4_Click()
List2.ListIndex = List2.ListCount - List2.ListCount
End Sub

Private Sub Check5_Click()
If Check5.Value = 1 Then
Timer6.Enabled = True
Option1.Enabled = True
Option2.Enabled = True
Check3(0).Enabled = True
Check3(1).Enabled = True
Check3(2).Enabled = True
Check3(3).Enabled = True
Command14.Enabled = True
Check4.Enabled = True
Text1.Enabled = True
List2.Enabled = True
Else
Timer6.Enabled = False
Option1.Enabled = False
Option2.Enabled = False
Check3(0).Enabled = False
Check3(1).Enabled = False
Check3(2).Enabled = False
Check3(3).Enabled = False
Command14.Enabled = False
Check4.Enabled = False
Text1.Enabled = False
List2.Enabled = False
End If
End Sub



Private Sub chKS_Click()

End Sub

Private Sub Combo1_Click(Index As Integer)
If Index = 2 Then
If Combo1(2).ListIndex = 0 Then
OkcuList.Visible = True
asaslist.Visible = False
ch(16).Enabled = False
End If
If Combo1(2).ListIndex = 1 Then
asaslist.Visible = True
OkcuList.Visible = False
ch(16).Enabled = True
End If
End If
End Sub


Private Sub Command1_Click()
mx = c.kX
my = c.kY
Label2.Caption = mx & "/" & my
End Sub

Private Sub Command13_Click(Index As Integer)
If Index = 0 Then
Text7(0).Text = MOBID
End If

If Index = 3 Then
InvOku
End If

If Index = 2 Then
List4.AddItem Text7(3).Text
End If

If Index = 4 Then
Paket "550210373030315F64756E6765756E2E6C7561"
End If

If Index = 5 Then
FrmLoot.Visible = True
End If

If Index = 1 Then
fr(43).Visible = False
End If



End Sub
Private Sub Command16_Click()
fr(43).Top = 760
fr(43).Left = 0
End Sub
Private Sub Command18_Click()
Frame11(0).Visible = False
End Sub

Private Sub Command19_Click(Index As Integer)
Select Case Index
Case 0
Paket "290103"

Case 1
Form6.Show

End Select
End Sub

Private Sub Command2_Click()
Form4.Visible = True
End Sub




Private Sub Command3_Click()
Form6.Show
End Sub

Private Sub Command4_Click()
Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "640781260000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"
End Sub

Private Sub Command5_Click()
Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"


End Sub

Private Sub Command6_Click()
Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

Paket "2001" + MOBID + "FFFFFFFF"
Paket "6407C90F0000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"

End Sub

Private Sub Command7_Click()
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
Paket "2001"
Paket "6407544E0000"
Paket "55001033313531315F5069746D616E2E6C7561"
End Sub


Private Sub Command9_Click()
fr(11).Left = 5640
End Sub


Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Shell_NotifyIcon &H2, t
End Sub

Private Sub Form_Unload(Cancel As Integer)
Unload Form1
Unload Form2
Unload Form3
Unload Form4
Unload Form5
Unload FrmLoot
Shell_NotifyIcon &H2, t
OpenBrowser "www.besthile.com"
End
End Sub



Private Sub Label4_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
pcLB.Visible = True
Label4.ForeColor = vbRed
End Sub

Private Sub Label4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'If pcLB.Left > 3720 Then pcLB.Left = 3720: Exit Sub
'If pcLB.Left < 1680 Then pcLB.Left = 1680: Exit Sub
If Label4.Left > 3720 Then Label4.Left = 3720: Exit Sub
If Label4.Left < 1680 Then Label4.Left = 1680: Exit Sub
If Button = 1 Then If Label4.Left >= 1680 And Label4.Left <= 3720 Then Label4.Left = Label4.Left + (X - 50)
If Button = 1 Then If pcLB.Left >= 1680 And pcLB.Left <= 3720 Then pcLB.Left = pcLB.Left + (X - 50)
pcLB.Width = Label3.Width
End Sub

Private Sub Label4_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
pcLB.Visible = False
Label4.ForeColor = vbBlack
End Sub

Private Sub Label6_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label4.Left = Label6.Left + (X - 50)
pcLB.Left = Label6.Left + (X - 50)
pcLB.Visible = True
End Sub

Private Sub Label6_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
pcLB.Visible = False
End Sub

Private Sub btnSAkla_Click()
t.cbSize = Len(t)
t.hWnd = Me.hWnd
t.uld = 1&
t.uFlags = NIF_ICON Or NIF_TIP Or NIF_MESSAGE
t.uCallbackMessage = WM_MOUSEMOVE
t.hIcon = frmico.Picture
t.szTip = "Winamp" & Chr$(0)
Shell_NotifyIcon NIM_ADD, t
App.TaskVisible = False
Me.Hide
End Sub


Private Sub ch_Click(Index As Integer)
 ii = Index
Set chi = ch(Index)
Select Case Index
Case 21
If chi = 1 Then enbT Opt(4): enbT Opt(5) Else enbF Opt(4): enbF Opt(5)
Case 10
If chi = 1 Then Timer10.Enabled = True Else Timer10.Enabled = False
Case 19
If chi = 1 Then ch(17).Value = 0 Else ch(17).Value = 1
Case 16
If chi = 1 Then Timer9.Enabled = True Else Timer9.Enabled = False
Case 99
If chi = 1 Then Tpid.Enabled = True Else Tpid.Enabled = False
Case 100
If chi = 1 Then Timer1.Enabled = True Else Timer1.Enabled = False
Case 102
If chi = 1 Then getCooldown_fixer (0) Else getCooldown_fixer (1)
Case 70
If chi = 1 Then enbT Opt(20): enbT Opt(21) Else enbF Opt(20): enbF Opt(21)
Case 30
If chi = 1 Then enbT txt(10): enbT btn(13): enbT btn(14): enbT btn(15): enbT btn(16) Else enbF txt(10): enbF btn(13): enbF btn(14): enbF btn(15): enbF btn(16)
Case 15 'üstte
If ch(ii).Value = 1 Then SetWindowPos Me.hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE Else SetWindowPos Me.hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE Or SWP_SHOWWINDOW Or SWP_NOMOVE Or SWP_NOSIZE
Case 4 'duvar hack
If ch(ii) = 1 Then WriteLong KO_ADR_CHR + KO_OFF_WH, 0 Else WriteLong KO_ADR_CHR + KO_OFF_WH, 1
Case 7 'sabitle
If ch(ii) = 1 Then WriteLong KO_ADR_CHR + 1686, 0 Else WriteLong KO_ADR_CHR + 1686, 16256
Case 72
If chi = 1 Then enbT fr(8): enbT Opt(14): Opt(14).Value = 1 Else enbF Opt(14): Opt(14).Value = 0: enbF fr(8)
Case 64
If chi = 1 Then enbT fr(33): enbT Opt(8): Opt(8).Value = 1 Else enbT fr(33): enbT Opt(8): Opt(8).Value = 0
Case 65
If chi = 1 Then enbT fr(32): enbT Opt(10): Opt(10).Value = 1 Else enbT fr(32): enbT Opt(10): Opt(10).Value = 0
Case 66
If chi = 1 Then enbT fr(31): enbT Opt(6): enbT Opt(7) Else enbT Opt(6): enbT Opt(7): enbT fr(31)
Case 80
If chi = 1 Then enbT cb(12): enbT lb(38): enbT lb(39): enbT lb(40): enbT lb(41) Else enbF cb(12): enbF lb(38): enbF lb(39): enbF lb(40): enbF lb(41)
Case 117
If chi = 1 Then enbT lb(18): enbT ch(118): enbT txt(55) Else enbF lb(18): enbF ch(118): enbF txt(55)
Case 75
If chi = 1 Then enbT ch(76): PartySwiftKontrol Else enbF ch(76)
Case 22
If ch(ii) = 1 Then ch(23) = 0
Case 23
If ch(ii) = 1 Then ch(22) = 0
Case 119 'oto kutu uniqe
If chi = 0 Then enbT Opt(16): enbT Opt(17): enbT Opt(18): enbT Opt(19) Else enbF Opt(16): enbF Opt(17): enbF Opt(18): enbF Opt(19):
Opt(16) = False: Opt(17) = False: Opt(18) = False: Opt(19) = False
Case 96
If chi = 1 Then enbT lst(6): enbT btn(17): enbT ch(119): enbT txt(11): enbT btn(18): enbT btn(19): enbT btn(20) Else: enbF lst(6): enbF btn(17): enbF btn(18): enbF btn(19): enbF btn(20): enbF txt(11)
Case 44
If chi = 1 Then enbT txt(56): enbT cb(37): enbT lb(20) Else enbF txt(56): enbF cb(37): enbF lb(20)
'Case 85
'If lst(7).ListCount = 0 Then itemYükle 0
'If chi = 1 Then enbT txt(31): enbT lst(7): enbT lst(8): enbT lb(53): enbT lb(52): enbT lb(54): enbT btn(22): enbT btn(23): enbT btn(63): enbT btn(62) Else enbF txt(31): enbF lst(7): enbF lst(8): enbF lb(53): enbF lb(52): enbF lb(54): enbF btn(22): enbF btn(23): enbF btn(63): enbF btn(62)
Case 32
If chi = 1 Then
If Form2.CharClan = "" Then: chi.Value = 0: MsgBox "Clanýnýz Yok", vbCritical
End If
Case 36 To 43
If chi = 1 Then cbIþlem(Index - 36).Enabled = False Else cbIþlem(Index - 36).Enabled = True
'Case 90
'If chi = 1 Then cbIþlem(9).Enabled = False Else cbIþlem(9).Enabled = True
Case 108
If chi = 1 Then cbIþlem(8).Enabled = False Else cbIþlem(8).Enabled = True
'Case 84 'oto kutu
'If chi = 1 Then
'If Form8.list(0).ListCount = 0 Then itemYükle 1
Case 115
If chi = 1 Then enbT lst(3): enbT lb(7): enbT txt(8): enbT Opt(2): enbT Opt(3): enbT btn(5): enbT btn(6):: enbT btn(7):: enbT btn(8):: enbT btn(36):: enbT ch(24) Else enbF lb(7): enbF Opt(2): enbF Opt(3): enbF btn(5): enbF btn(6):: enbF btn(7):: enbF btn(8):: enbF btn(36):: enbF ch(24):  enbF txt(8): enbF lst(3): If BotDurum = True And chatack = 1 Then Atacktimer = True
Case 116
If chi = 1 Then enbT btn(9): enbT btn(10): enbT btn(11): enbT btn(12): enbT lst(4): enbT txt(9) Else enbF btn(9): enbF btn(10): enbF btn(11): enbF btn(12): enbF lst(4): enbF txt(9)


'                 /¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\
'                |    ••Çoklu Skill••      |
'                 \_______________________/
Case 94

If ch(ii) = 1 Then
Select Case ClassAdý
Case "Warior"
skillyükleWarior lst(14) ' _-_-_-_-_-_-_-_-*Warior-_-_-_-_-_-_-_-_

Case "Rogue" ' _-_-_-_-_-_-_-_-*Rogue-_-_-_-_-_-_-_-_
'If optRogue(0).BackColor = &HC0C0C0 Then
'skillyükleArcher lst(14)
'Else
'skillyükleAsas lst(14)
'End If

Case "Priest"  ' _-_-_-_-_-_-_-*Priest-_-_-_-_-_-_-_-_-_
skillyüklepri lst(14)

Case "Mage" ' _-_-_-_-_-_-_-*Mage-_-_-_-_-_-_-_-_-_
skillyükleMage lst(14)
End Select
lst(0).Clear
çokluSkill.Top = 720
çokluSkill.Left = 2520
 çokluSkill.Visible = True
 'btn(34).Visible = True


Else ' ' _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-Çoklu skill kapatýlýnca-_-_-_-_-_-_-_-_-_-_-_-_-_-_

If çokluSkill.Visible = True Then çokluSkill.Visible = False

Select Case ClassAdý
Case "Warior" ' _-_-_-_-_-_-_-_-*Warior-_-_-_-_-_-_-_-_
skillyükleWarior lst(0)

Case "Rogue" ' _-_-_-_-_-_-_-_-*Rogue-_-_-_-_-_-_-_-_

'If optRogue(0).BackColor = &HC0C0C0 Then
'skillyükleArcher lst(0)
'Else
'skillyükleAsas lst(0)
'End If


Case "Priest" ' _-_-_-_-_-_-_-_-*Priest-_-_-_-_-_-_-_-_

skillyüklepri lst(0)

Case "Mage" ' _-_-_-_-_-_-_-*Mage-_-_-_-_-_-_-_-_-_
skillyükleMage lst(0)


End Select

 'btn(34).Visible = False

End If
Case 82
ChtChDurumlarý
Case 109
ChtChDurumlarý
Case 110
ChtChDurumlarý



Case 54
If Durum(6) = False Then
lb(26) = "Chatten yazýlan harflerin büyük ve küçüklüðüne dikkat edilmelidir.Koordinat'ýn X ve Y'si 4 basamaklý olmalýdýr.Eðer 3 veya 2 basamaklý ise  baþýna 0(sýfýr) getirilerek 4 basamaða tamamlanmalýdýr."
lb(60) = "Karakter Komut Uyarý!"
 Durum(6) = True
 End If
If chi = 1 Then
For i = 46 To 53: enbT ch(i): Next
For i = 13 To 20: enbT txt(i): Next
Else
For i = 46 To 53: enbF ch(i): Next
For i = 13 To 20: enbF txt(i): Next
End If
End Select
End Sub

Private Sub Form_Load()
On Error Resume Next
'Form2.Show
'Label22.Caption = 900
'pic(0).Visible = True
CharBilgiOKU
InvOku
'YazýYükle
RotaYükle
Me.Caption = "Winamp-" & c.isim
For Each Control In Form1.Controls
  If TypeOf Control Is ComboBox Then If Control.ListCount > 0 Then Control.ListIndex = 0
  Next
PotZaman = Now
PotionSyc = Now
SçAyarLb = 16
skillyükleZamanLý lst(1), ClassAdý
ClassAyarlarý
Karýþýk
kas = 100
OkuTümMob2
Dim a As String
a = App.Path & "\Ses\GMListe.ini"
If a = "" Then Exit Sub
Open a For Input As 1
lst(4).Clear
Do Until EOF(1)
Line Input #1, st
lst(4).AddItem st
Loop
Close 1
Form2.BotDurdur
Form2.aboutTM = True
If Dir(App.Path & "\Kayýtlar\Ayarlar\Ayar_" & c.isim & ".ini") = "" Then: ch(116) = 1: Exit Sub
Dim YER As String
YER = "\Kayýtlar\Ayarlar\Ayar_" & c.isim & ".ini"
On Error Resume Next
Dim i As Integer
For i = 0 To 135
If i <> 67 Then ch(i) = IniOku("Chk", "ch" & i, YER)
cb(i).ListIndex = IniOku("Cmb", "cb" & i, YER)
txt(i).Text = IniOku("Txt", "txt" & i, YER)
Opt(i).Value = IniOku("Opt", "opt" & i, YER)
cbIþlem(i).ListIndex = IniOku("CharAyar", "Cbiþlem" & i, YER)
Next
Dim j As Integer
For j = 0 To lst(1).ListCount - 1
lst(1).Selected(j) = IniOku("ZamanSkill", "S_" & lst(1).list(j), YER)
Next
For j = 0 To IniOku("MOBList", "Miktar", YER)
If IniOku("MOBList", "Sýra_" & j, YER) <> "" Then lst(3).AddItem IniOku("MOBList", "Sýra_" & j, YER)
If IniOku("MOBList", "Sýra_" & j, YER) <> "" Then Form2.lstSlot(0).AddItem IniOku("MOBList", "Sýra_" & j, YER)
Next
For j = 0 To IniOku("KabulEtParty", "Miktar", YER)
If IniOku("KabulEtParty", "OyuncuAdý_" & j, YER) <> "" Then lst(5).AddItem IniOku("KabulEtParty", "OyuncuAdý_" & j, YER)
Next
For j = 0 To IniOku("YollaParty", "Miktar", YER)
If IniOku("YollaParty", "OyuncuAdý_" & j, YER) <> "" Then lst(6).AddItem IniOku("YollaParty", "OyuncuAdý_" & j, YER)
Next
For j = 0 To IniOku("KomutEt", "Miktar", YER)
If IniOku("KomutEt", "OyuncuAdý_" & j, YER) <> "" Then lst(18).AddItem IniOku("KomutEt", "OyuncuAdý_" & j, YER)
Next
For j = 0 To IniOku("Kutu", "Miktar", YER)
If IniOku("Kutu", "ItemAdý_" & j, YER) <> "" Then
FrmLoot.list(1).AddItem IniOku("Kutu", "ItemAdý_" & j, YER)
FrmLoot.list(1).ItemData(FrmLoot.list(1).NewIndex) = IniOku("Kutu", "ItemData_" & j, YER)
Form2.LstKutuTopla.AddItem IniOku("Kutu", "ItemData_" & j, YER)
FrmLoot.List1.Text = IniOku("Kutu", "ItemAdý_" & j, YER): FrmLoot.List1.RemoveItem (lst(2).ListIndex)
End If
Next

For j = 0 To IniOku("Satýlmayacak", "Miktar", YER)
If IniOku("Satýlmayacak", "ItemAdý_" & j, YER) <> "" Then
List3.AddItem IniOku("Satýlmayacak", "ItemAdý_" & j, YER)
'lst(7).text = IniOku("Satýlmayacak", "ItemAdý_" & j, YER): lst(7).RemoveItem (lst(7).ListIndex)
End If
Next






Select Case ClassAdý
Case "Priest"
Dim av As Integer
For av = 0 To PriList.ListCount - 1
PriList.Selected(av) = IniOku("AtakList", "Priest_" & av, YER)
Next
Case "Warior"
Dim b As Integer
For b = 0 To WarList.ListCount - 1
WarList.Selected(b) = IniOku("AtakList", "Warrior_" & b, YER)
Next
Case "Rogue"
Dim f As Integer
For f = 0 To OkcuList.ListCount - 1
OkcuList.Selected(f) = IniOku("AtakList", "okcu_" & f, YER)
Next
Dim z As Integer
For z = 0 To asaslist.ListCount - 1
asaslist.Selected(z) = IniOku("AtakList", "asas_" & z, YER)
Next
Case "Mage"
Dim s As Integer
For s = 0 To MageList.ListCount - 1
MageList.Selected(s) = IniOku("AtakList", "mage_" & s, YER)
Next
Dim fg As Integer
For fg = 0 To NovaList.ListCount - 1
NovaList.Selected(fg) = IniOku("AlanList", "alan_" & fg, YER)
Next
End Select

For j = 0 To IniOku("Sell", "Miktar", YER)
If IniOku("Sell", "satislist_" & j, YER) <> "" Then
List3.AddItem IniOku("Sell", "satislist_" & j, YER)
'IniYaz "Sell", "satislist_" & j, List3.list(j), YER
'IniYaz "Sell", "Miktar" & j, List3.ListCount, YER
End If
Next
Form2.BotDurdur
Label9.Caption = 0
End Sub
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Static rec As Boolean, msg As Long
msg = X / Screen.TwipsPerPixelX
If rec = False Then
rec = True
Select Case msg
Case WM_LBUTTONDBLCLK:
Me.Show
Shell_NotifyIcon &H2, t
Case WM_RBUTTONUP:
Call PopupMenu(opsmnu, , , , göstermnu)
End Select
rec = False
End If
End Sub

Public Sub göstermnu_Click()
Me.Show
Shell_NotifyIcon &H2, t
End Sub


Private Sub Form1_DblClick()

End Sub

Private Sub lb_Click(Index As Integer)
Select Case Index
Case 47
Call ShellExecute(&O0, vbNullString, App.Path & "\Kayýtlar", vbNullString, vbNullString, vbNormalFocus)
Case 10
Call ShellExecute(&O0, vbNullString, App.Path & "\Kayýtlar\Ekran Görüntüleri", vbNullString, vbNullString, vbNormalFocus)
Case 66
Call ShellExecute(&O0, vbNullString, App.Path & "\Kayýtlar", vbNullString, vbNullString, vbNormalFocus)
Case 65
Call ShellExecute(&O0, vbNullString, App.Path & "\Kayýtlar", vbNullString, vbNullString, vbNormalFocus)

Case 59
fr(48).Visible = False
End Select
End Sub

Private Sub lb_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)

Select Case Index


End Select
End Sub

Private Sub lb_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Select Case Index

Case 12
btnSeç.SetFocus
btnSeç.Value = True
End Select
End Sub



Private Sub List3_Click()
On Error Resume Next
Dim i As Integer
For i = 0 To List3.ListCount - 1
If List3.Selected(i) = True Then
If i = List3.ListCount Then Exit Sub
List3.RemoveItem i
i = i - 1
End If
Next
End Sub

Private Sub List4_Click()
On Error Resume Next
Dim i As Integer
List3.AddItem List4.Text
List3.ItemData(List3.NewIndex) = List4.ItemData(List4.ListIndex)
For i = 0 To List1.ListCount - 1
If List4.Selected(i) = True Then
If i = List1.ListCount Then Exit Sub
List4.RemoveItem i
i = i - 1
End If
Next
End Sub

Private Sub lst_DblClick(Index As Integer)
Select Case Index
Case 10
'If optMage(1).BackColor = &HC0C0C0 And lst(10).ListIndex > -1 Then lst(9).AddItem lst(10).text: lst(10).RemoveItem lst(10).ListIndex
Case 9
'If optMage(1).BackColor = &HC0C0C0 And lst(9).ListIndex > -1 Then lst(10).AddItem lst(9).text: lst(9).RemoveItem lst(9).ListIndex
Case 16
'If optPri(1).BackColor = &HC0C0C0 And lst(16).ListIndex > -1 Then lst(15).AddItem lst(16).text: lst(16).RemoveItem lst(16).ListIndex
Case 15
'If optPri(1).BackColor = &HC0C0C0 And lst(15).ListIndex > -1 Then lst(16).AddItem lst(15).text: lst(15).RemoveItem lst(15).ListIndex
'Case 2
'If lst(2).ListIndex > -1 Then
'Form2.LstKutuTopla.AddItem lst(2).ItemData(lst(2).ListIndex)
'lst(11).AddItem lst(2).list(lst(2).ListIndex): lst(11).ItemData(lst(11).NewIndex) = lst(2).ItemData(lst(2).ListIndex)
'lst(2).RemoveItem lst(2).ListIndex
'End If
'Case 11
'If lst(11).ListIndex > -1 Then
'Form2.LstKutuTopla.RemoveItem (lst(11).ListIndex): lst(2).AddItem lst(11).list(lst(11).ListIndex): lst(2).ItemData(lst(2).NewIndex) = lst(11).ItemData(lst(11).ListIndex)
'lst(11).RemoveItem lst(11).ListIndex
'End If
'Case 7
If lst(Index).ListIndex > -1 Then lst(8).AddItem lst(7).Text: lst(7).RemoveItem lst(7).ListIndex
Case 8
If lst(Index).ListIndex > -1 Then lst(7).AddItem lst(8).Text: lst(8).RemoveItem lst(8).ListIndex
Case 14
If lst(14).Text <> "" Then lst(0).AddItem lst(14).Text: lst(14).RemoveItem lst(14).ListIndex
End Select
End Sub

Private Sub lst_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
If ClassAdý = "Mage" And Index = 1 Then
For i = 0 To lst(Index).ListCount - 2
lst(Index).Selected(i) = False
Next
End If
End Sub

Private Sub lstHata_DblClick()
lstHata.Text = "": frmico.SetFocus
End Sub

Private Sub lstHata_KeyDown(KeyCode As Integer, Shift As Integer)
lstHata.Text = "": frmico.SetFocus
End Sub

Private Sub lstHata_KeyUp(KeyCode As Integer, Shift As Integer)
lstHata.Text = "": frmico.SetFocus
End Sub

Private Sub lstHata_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
lstHata.Text = "": frmico.SetFocus
End Sub

Private Sub LuferTm_Timer()


End Sub

Private Sub magetp_Click()
Frame11(0).Left = 120
Frame11(0).Top = 3240
Frame11(0).Visible = True
End Sub

Private Sub MoradonTm_Timer()


End Sub

Private Sub opt_Click(Index As Integer)
ii = Index
Select Case Index
Case 33
fr(40).Visible = False: fr(0).Visible = False: fr(1).Visible = False: TmRotaKontrol.Enabled = True
Case 34
fr(40).Visible = True: fr(0).Visible = True: fr(1).Visible = True: TmRotaKontrol.Enabled = False
Case 22
 enbF txt(1): enbF txt(0): enbF ch(0): enbF ch(1): enbF cb(1): enbF cb(0): enbF lb(0): enbF fr(2):
Case 2
lst(3).Clear
Case 12
txt(32).Visible = False: scroll2.Visible = False
Case 13
txt(32).Visible = True: scroll2.Visible = True
Case 27
enbF lst(18): enbF btn(37): enbF btn(38): enbF btn(39): enbF btn(40): enbF txt(39)
Case 26
enbT lst(18): enbT btn(37): enbT btn(38): enbT btn(39): enbT btn(40): enbT txt(39)
Case 16 To 17
enbF ch(120): enbF cb(27)
Case 19
enbF ch(120): enbF cb(27)
Case 18
enbT ch(120): enbT cb(27)
Case 1
If Opt(1).Value = True Then
ch(0).Enabled = True
ch(1).Enabled = True
txt(0).Enabled = True
txt(1).Enabled = True
cb(0).Enabled = True
cb(1).Enabled = True
End If
Case 0
If Opt(0).Value = True Then
ch(0).Enabled = False
ch(1).Enabled = False
txt(0).Enabled = False
txt(1).Enabled = False
cb(0).Enabled = False
cb(1).Enabled = False
End If
End Select
End Sub

Private Sub Option2_Click()
If Option2.Value = 1 Then
Check3(0).Enabled = False
Check3(1).Enabled = False
Check3(2).Enabled = False
Check3(3).Enabled = False
Else
Check3(0).Enabled = True
Check3(1).Enabled = True
Check3(2).Enabled = True
Check3(3).Enabled = True
End If
End Sub





Private Sub pasifmnu_Click()
 If pasifmnu.Checked = False Then btnBotDr_Click
End Sub

Private Sub RtszRpr_Timer()
If MOBAdý3 = "Bulcan" Then
If KarakterZone = "Moradon" Then
cb(32).Text = "Moradon_Bulcan.srt"
End If
End If
End Sub


Private Sub scroll_Change(Index As Integer)
Select Case scroll(Index).Value
Case 1
If Index = 0 Then ch(41).Caption = "5       dk Exp Gelmezse ––––" Else ch(35).Caption = "30      Dk 'dan Fazla Slotta Olmayanlarý Party den At"
Case 2
If Index = 0 Then ch(41).Caption = "10      dk Exp Gelmezse ––––" Else ch(35).Caption = "40      Dk 'dan Fazla Slotta Olmayanlarý Party den At"
Case 3
If Index = 0 Then ch(41).Caption = "15      dk Exp Gelmezse ––––" Else ch(35).Caption = "50      Dk 'dan Fazla Slotta Olmayanlarý Party den At"
Case 4
 ch(41).Caption = "20      dk Exp Gelmezse ––––"
End Select
End Sub

Private Sub scroll2_Change()
txt(32).SelStart = 1
txt(32).SelLength = 2
txt(32).SelText = scroll2.Value
End Sub

Private Sub tabs4_DblClick()

End Sub

Private Sub Text9_Change()

End Sub

Private Sub SSTab5_DblClick()

End Sub

Private Sub Timer1_Timer()
If PaketGönderiliyor = False Then
If MOBID <> "FFFF" Then
Paket "080101" & MOBID & "FF00000000"
End If
End If
End Sub

Private Sub Timer10_Timer()
If PaketGönderiliyor = False Then
Paket "6805" + MOBID
End If
End Sub

Private Sub Timer12_Timer()
If ch(36).Value = 1 Then
If cbIþlem(0).Text = "PC Kapat" Then
If CharDC = True Then
Shell ("shutdown -s -f -t 1"), vbNormalFocus
End If
End If
End If

If ch(37).Value = 1 Then
If cbIþlem(1).Text = "PC Kapat" Then
If c.HP = "0" Then
Shell ("shutdown -s -f -t 1"), vbNormalFocus
End If
End If
End If

End Sub

Private Sub Timer11_Timer()



End Sub

Private Sub Timer13_Timer()
If RPRYapýlýyor = True Or ItemSatýnAlýnýyor = True Or ItemBankadanAlýnýyor = True Or ItemSatýlýyor = True Then Exit Sub
If BotDurum = True Then
If TarihKontrol(PotionSyc) > 2 Then
If PaketGönderiliyor = False Then
If Form1.ch(0).Value = 1 Then
If c.HP < YüzdeAl(c.MaxHP, Form1.txt(1).Text) And c.HP > 0 Then
If InvKontrol("B09E3517") = True Then PotBas 500145: PotionSyc = Now: Exit Sub  'pre pot
If InvKontrol("B0BC3017") = True Then PotBas 490071: PotionSyc = Now: Exit Sub
If InvKontrol("F0E12F17") = True Then PotBas 490014: PotionSyc = Now: Exit Sub
If InvKontrol("08DE2F17") = True Then PotBas 490013: PotionSyc = Now: Exit Sub
If InvKontrol("20DA2F17") = True Then PotBas 490012: PotionSyc = Now: Exit Sub
If InvKontrol("38D62F17") = True Then PotBas 490011: PotionSyc = Now: Exit Sub
If InvKontrol("50D22F17") = True Then PotBas 490010: PotionSyc = Now: Exit Sub
End If
End If
If Form1.ch(1).Value = 1 Then
If c.MP < YüzdeAl(c.MaxMP, Form1.txt(0).Text) Then
If InvKontrol("C0C53517") = True Then PotBas 500146: PotionSyc = Now: Exit Sub 'pre pot
If InvKontrol("10A73117") = True Then PotBas 490072: PotionSyc = Now: Exit Sub
If InvKontrol("60F92F17") = True Then PotBas 490020: PotionSyc = Now: Exit Sub
If InvKontrol("78F52F17") = True Then PotBas 490019: PotionSyc = Now: Exit Sub
If InvKontrol("90F12F17") = True Then PotBas 490018: PotionSyc = Now: Exit Sub
If InvKontrol("A8ED2F17") = True Then PotBas 490017: PotionSyc = Now: Exit Sub
If InvKontrol("C0E92F17") = True Then PotBas 490016: PotionSyc = Now: Exit Sub
End If
End If
End If
End If
End If
End Sub

Private Sub Timer15_Timer()

End Sub

Private Sub Timer14_Timer()

End Sub

Private Sub Timer2_Timer()
Label9.Caption = Label9.Caption + 1
ynst.Caption = ynst.Caption + 1
If ynst.Caption = "15" Then
AlanTemizle
ynst.Caption = "0"
End If
End Sub

Private Sub Timer3_Timer()
Label14.Caption = Label14.Caption - 1
End Sub



Private Sub Timer5_Timer()
If RPRYapýlýyor = True Or ItemSatýnAlýnýyor = True Or ItemBankadanAlýnýyor = True Or ItemSatýlýyor = True Then Exit Sub

Label19.Caption = Healskillseç1
If BotDurum = True Then
If PaketGönderiliyor = False Then

If c.HP <> 0 Then
If ch(126).Value = 1 Then
Heallkendines
End If
End If

If ch(95).Value = 1 Then
PartyHeal
End If

End If
End If
End Sub

Private Sub Timer7_Timer()
'On Error Resume Next
MassiveTime = MassiveTime - 1
ParasiteTime = ParasiteTime - 1
MaliceTime = MaliceTime - 1
StabTime = StabTime - 1
Stab2Time = Stab2Time - 1
JabTime = JabTime - 1
BloodTime = BloodTime - 1
PierceTime = PierceTime - 1
ShockTime = ShockTime - 1
IllusionTime = IllusionTime - 1
ThrustTime = ThrustTime - 1
CutTime = CutTime - 1
VampiricTime = VampiricTime - 1
SpikeTime = SpikeTime - 1
BloodyTime = BloodyTime - 1
BlindingTime = BlindingTime - 1
BeastTime = BeastTime - 1
CriticalTime = CriticalTime - 1
ArrowShowerTime = ArrowShowerTime - 1
PowerShotTime = PowerShotTime - 1
BlindingStrafeTime = BlindingStrafeTime - 1
BlowArrowTime = BlowArrowTime - 1
LightingShotTime = LightingShotTime - 1
IceShotTime = IceShotTime - 1
CounterStrikeTime = CounterStrikeTime - 1
ViperTime = ViperTime - 1
ExplosiveShotTime = ExplosiveShotTime - 1
PoisonShotTime = PoisonShotTime - 1
FireShotTime = FireShotTime - 1
PoisonArrowTime = PoisonArrowTime - 1
FireArrowTime = FireArrowTime - 1
BloodingTime = BloodingTime - 1
ManglingTime = ManglingTime - 1
MultipleShorkTime = MultipleShorkTime - 1
SeverTime = SeverTime - 1
LegCuttingTime = LegCuttingTime - 1
ShearTime = ShearTime - 1
HashTime = HashTime - 1
PiercingTime = PiercingTime - 1
CrashTime = CrashTime - 1
SlashTime = SlashTime - 1
Flash = Flash - 1
Shiver = Shiver - 1
Flame = Flame - 1
ColdWave = ColdWave - 1
Spark = Spark - 1
Blaze = Blaze - 1
FireBall = FireBall - 1
Ignition = Ignition - 1
FireSpear = FireSpear - 1
FireBlast = FireBlast - 1
HellFire = HellFire - 1
PillarofFire = PillarofFire - 1
FireThorn = FireThorn - 1
FireImpact = FireImpact - 1
Incineration = Incineration - 1
VampiricFire = VampiricFire - 1
Igzination = Igzination - 1
Chill = Chill - 1
IceArrow = IceArrow - 1
Solid = Solid - 1
IceOrb = IceOrb - 1
IceBlast = IceBlast - 1
Frostbite = Frostbite - 1
IceComet = IceComet - 1
IceImpact = IceImpact - 1
Prismatic = Prismatic - 1
FreezingDistance = FreezingDistance - 1
CounterSpell = CounterSpell - 1
Lightning = Lightning - 1
StaticHemispher = StaticHemispher - 1
Thunder = Thunder - 1
ThunderBlast = ThunderBlast - 1
Discharge = Discharge - 1
StaticOrb = StaticOrb - 1
StaticThorn = StaticThorn - 1
ThunderImpact = ThunderImpact - 1
StunCloud = StunCloud - 1
If Form1.NovaList.Selected(1) = True Then
FireBurst = FireBurst - 1
Else
FireBurst = 1
End If
If Form1.NovaList.Selected(2) = True Then
IceBurst = IceBurst - 1
Else
IceBurst = 1
End If
If Form1.NovaList.Selected(3) = True Then
MeteorTime = MeteorTime - 1
Else
MeteorTime = 1
End If
If Form1.NovaList.Selected(4) = True Then
NovaTime = NovaTime - 1
Else
NovaTime = 1
End If
If Form1.NovaList.Selected(5) = True Then
InfernoTime = InfernoTime - 1
Else
InfernoTime = 1
End If
If Form1.NovaList.Selected(6) = True Then
IceStormTime = IceStormTime - 1
Else
IceStormTime = 1
End If
If Form1.NovaList.Selected(7) = True Then
FrostTime = FrostTime - 1
Else
FrostTime = 1
End If
If Form1.NovaList.Selected(8) = True Then
BliTime = BliTime - 1
Else
BliTime = 1
End If
If Form1.NovaList.Selected(9) = True Then
ChaTime = ChaTime - 1
Else
ChaTime = 1
End If
If Form1.NovaList.Selected(10) = True Then
StaTime = StaTime - 1
Else
StaTime = 1
End If
If Form1.NovaList.Selected(11) = True Then
ThuTime = ThuTime - 1
Else
ThuTime = 1
End If


'Priest Atak
If Form1.PriList.ListCount > 0 Then
If Form1.PriList.Selected(0) = True Then
pStrokeTime = pStrokeTime - 1
Else
pStrokeTime = 1
End If
If Form1.PriList.Selected(13) = True Then
JudgmentTime = JudgmentTime - 1
Else
JudgmentTime = 1
End If
If Form1.PriList.Selected(14) = True Then
HelisTime = HelisTime - 1
Else
HelisTime = 1
End If
If Form1.PriList.Selected(3) = True Then
RuinTime = RuinTime - 1
Else
RuinTime = 1
End If
If Form1.PriList.Selected(4) = True Then
HellishTime = HellishTime - 1
Else
HellishTime = 1
End If
If Form1.PriList.Selected(7) = True Then
HarshTime = HarshTime - 1
Else
HarshTime = 1
End If
If Form1.PriList.Selected(8) = True Then
CollapseTime = CollapseTime - 1
Else
CollapseTime = 5
End If
If Form1.PriList.Selected(11) = True Then
RavingTime = RavingTime - 1
Else
RavingTime = 1
End If
If Form1.PriList.Selected(12) = True Then
HadesTime = HadesTime - 1
Else
HadesTime = 1
End If
End If


End Sub

Private Sub Timer8_Timer()
If ClassAdý = "Rogue" Then
If Check9.Value = 1 Then
Form2.AsasAtaks.Interval = Text6.Text
Form2.RogueAtak.Interval = Text6.Text
End If
End If

If ClassAdý = "Mage" Then
If Check9.Value = 1 Then
Form2.MageAtak.Interval = Text6.Text
End If
End If

If ClassAdý = "Warrior" Then
If Check9.Value = 1 Then
Form2.WarAtak.Interval = Text6.Text
End If
End If

If ClassAdý = "Priest" Then
If Check9.Value = 1 Then
Form2.PriAtak.Interval = Text6.Text
End If
End If

'If Opt(23).Value = True Then
'f Check9.Value = 0 Then
'If ClassAdý = "Rogue" Then
'Form2.RogueAtak.Interval = "2200"
'End If

'If ClassAdý = "Mage" Then
'Form2.MageAtak.Interval = "2400"
'End If

If ClassAdý = "Mage" Then
Form1.Tpid.Interval = Text7(2).Text
End If



If ch(2).Value = 1 Then
tmminor.Interval = Text10.Text
End If

If ch(100).Value = 1 Then
Timer1.Interval = txt(43).Text
End If
End Sub

Private Sub Timer9_Timer()
If RPRYapýlýyor = True Or ItemSatýnAlýnýyor = True Or ItemBankadanAlýnýyor = True Or ItemSatýlýyor = True Or PaketGönderiliyor = True Then Exit Sub
If Atacktimer = True Then
Paket "080101" & MOBID & "FF00000000"
End If
End Sub

Private Sub tkp_Timer()

End Sub

Private Sub tmminor_Timer()
If BotDurum = True Then
If Form1.ch(2).Value = 1 Then
If c.HP < YüzdeAl(c.MaxHP, Form1.txt(2).Text) Then
DefansBas ("705")
End If
End If
End If
End Sub

Public Sub ClassAyarlarý()
Select Case ClassAdý
Case "Warior"
Form1.ch(16).Enabled = True
fr(20).Visible = True
Form1.fr(36).Visible = True
skillyükleWarior lst(0)
PriList.Visible = False
asaslist.Visible = False
MageList.Visible = False
NovaList.Visible = False
OkcuList.Visible = False
'WarList.Visible = False
Combo1(2).Visible = False
Form2.tmSw.Enabled = False
Form2.tmRestore.Enabled = False
Form2.tmTuþlaÇek.Enabled = False
Form2.tmOtoHeal.Enabled = False
Form1.tmminor.Enabled = False

Case "Rogue"
Form1.ch(16).Enabled = False
skillyükleArcher lst(0)
'optRogue(0).Visible = True: optRogue(1).Visible = True
Form1.fr(35).Visible = True: ch(24).Visible = True: btn(36).Visible = True
fr(9).Visible = True
PriList.Visible = False
'asaslist.Visible = False
MageList.Visible = False
NovaList.Visible = False
'OkcuList.Visible = False
WarList.Visible = False
'Form2.tmSw.Enabled = False
Form2.tmRestore.Enabled = False
Form2.tmTuþlaÇek.Enabled = False
Form2.tmOtoHeal.Enabled = False
'Form1.tmminor.Enabled = False


Case "Mage"
Form1.ch(16).Enabled = True
Form1.fr(21).Visible = True
enbT btn(28): ch(80).Visible = True
fr(34).Visible = True
'optMage(0).Visible = True: optMage(1).Visible = True
skillyükleMage lst(0): skillyükleFR cb(10)
'skillyükleAlan lst(10)
Combo1(2).Visible = False
PriList.Visible = False
asaslist.Visible = False
'MageList.Visible = False
'NovaList.Visible = False
OkcuList.Visible = False
WarList.Visible = False
Form2.tmSw.Enabled = False
Form2.tmRestore.Enabled = False
'Form2.tmTuþlaÇek.Enabled = False
Form2.tmOtoHeal.Enabled = False
Form1.tmminor.Enabled = False

Case "Priest"
PriZaman
'skillyükleDebuff lst(16)
'optPri(0).Visible = True: optPri(1).Visible = True
skillyükleBuff cb(23):: skillyükleAc cb(24):: skillyükleresist cb(25): skillyükleRestore cb(26)
fr(34).Visible = True
fr(36).Visible = True
'PriList.Visible = False
asaslist.Visible = False
MageList.Visible = False
Combo1(2).Visible = False
NovaList.Visible = False
OkcuList.Visible = False
WarList.Visible = False
Form2.tmSw.Enabled = False
'Form2.tmRestore.Enabled = False
Form2.tmTuþlaÇek.Enabled = False
'Form2.tmOtoHeal.Enabled = False
Form1.tmminor.Enabled = False
Form1.ch(16).Enabled = True
Form2.OtoCure.Enabled = True
Form2.PriZamanlý.Enabled = True
Case Else
PriList.Visible = False
asaslist.Visible = False
MageList.Visible = False
NovaList.Visible = False
OkcuList.Visible = False
WarList.Visible = False
Combo1(2).Visible = False


End Select

End Sub

Private Sub TmRotaKontrol_Timer()
If RPRYapýlýyor = True Or ItemSatýnAlýnýyor = True Or ItemBankadanAlýnýyor = True Or ItemSatýlýyor = True = True Then Exit Sub

If KarakterZone = "Moradon" Then
If MobOku = "Worm" Or MobOku = "Bandicoot" Or MobOku = "Kecoon" Or MobOku = "Kecoon Captain" Or MobOku = "Kecoon warrior" Or MobOku = "Gavolt" Or MobOku = "Giant gavolt" Or MobOku = "Bulcan" Or MobOku = "Wild bulcan" Or MobOku = "Blood worm" Or MobOku = "Scavenger Bandicoot" Then
cb(32).Text = "m_center1.srt"
cb(36).Text = "m_center_pot.srt"
cb(33).Text = "moradon_buy.srt"
cb(34).Text = "moradon_banka.srt"
cb(35).Text = "moradon_buy.srt"
Else
If MobOku = "Werewolf" Or MobOku = "Giant bulcan" Or MobOku = "Bulture" Or MobOku = "Silan" Then
cb(32).Text = "f_center_bulcan.srt"
cb(36).Text = "f_center1.pot.srt"
cb(33).Text = "falk_bulcan_buy.srt"
cb(34).Text = "falk_banka.srt"
cb(35).Text = "falk_bulcan_buy.srt"
Else
If MobOku = "Skeleton" Or MobOku = "Lycan" Or MobOku = "Dire wolf" Or MobOku = "Dark eyes" Or MobOku = "Smilodon" Or MobOku = "Wild smilodon" Or MobOku = "Orc Watcher" Or MOBAdý3 = "Gloomwing" Or MOBAdý3 = "Glyptodont" Or MOBAdý3 = "Scorpion" Or MOBAdý3 = "Pincers scorpion" Or MOBAdý3 = "Paralzyer" Or MOBAdý3 = "Rotten Eyes" Or MobOku = "Battalion" Or MobOku = "Undying" Or MobOku = "spoiler" Or MobOku = "Loup-garou" Or MobOku = "Shadow seeker" Then
cb(32).Text = "f_center2.srt"
cb(36).Text = "f_center2_pot.srt"
cb(33).Text = "falk_center_buy.srt"
cb(34).Text = "falk_banka_center.srt"
cb(35).Text = "falk_center_buy.srt"
End If
End If
End If
End If ' Moradon Bitiþ
 
If KarakterZone = "Luferson" Then
If MobOku = "Smilodon" Or MobOku = "Meganthereon" Or MobOku = "saber tooth" Or MobOku = "KOBOLD " Or MobOku = "BUGBEAR" Or MobOku = "GOBLIN bouncer" Or MobOku = "Cardinal" Or MOBAdý3 = "Scolar" Or MOBAdý3 = "Lard Orc" Or MOBAdý3 = "GRELL" Or MOBAdý3 = "Hell hound" Or MOBAdý3 = "Blood Don" Or MOBAdý3 = "POOKA" Or MobOku = "Machirodus" Or MobOku = "Baron" Then
cb(32).Text = "bellua_rpr.srt"
cb(36).Text = "bellua_pot.srt"
cb(33).Text = "bellua_buy.srt"
cb(34).Text = "bellua_banka.srt"
cb(35).Text = "bellua_buy.srt"
Else
If MobOku = "Apostle" Or MobOku = "Deruvish" Or MobOku = "Lamia" Or MobOku = "Harpy" Or MobOku = "Raven Harpy" Or MobOku = "Uruk Tron" Or MobOku = "Uruk Hai" Or MobOku = "HORNET" Or MobOku = "Manticore" Or MobOku = "Stone golem" Or MobOku = "Giant golem" Or MobOku = "Flame Rock" Or MOBAdý3 = "Dragon Tooth Skeleton" Or MobOku = "Dragon Tooth commander" Or MobOku = "Dragon Tooth soldier" Or MobOku = "Troll" Or MobOku = "Troll Warrior" Or MobOku = "Ancient" Or MobOku = "treant" Or MOBAdý3 = "Ash knight" Or MobOku = "Uruk Blade" Then
cb(32).Text = "linate_rpr.srt"
cb(36).Text = "linate_pot.srt"
cb(33).Text = "linate_buy.srt"
cb(34).Text = "linate_banka.srt"
cb(35).Text = "linate_buy.srt"
Else
cb(32).Text = "lufer_rpr.srt"
cb(36).Text = "lufer_pot.srt"
cb(33).Text = "lufer_buy.srt"
cb(34).Text = "lufer_banka.srt"
cb(35).Text = "lufer_buy.srt"
End If
End If
End If

If KarakterZone = "El Morad" Then

If MobOku = "Ape" And c.kX < 1500 And c.kX > 1396 Then
cb(32).Text = "asga_rpr.srt"
cb(36).Text = "asga_pot.srt"
cb(33).Text = "asga_buy.srt"
cb(34).Text = "asga_banka.srt"
cb(35).Text = "asga_buy.srt"
Else
If MobOku = "Smilodon" Or MobOku = "Meganthereon" Or MobOku = "saber tooth" Or MobOku = "KOBOLD " Or MobOku = "BUGBEAR" Or MobOku = "GOBLIN bouncer" Or MobOku = "Cardinal" Or MobOku = "Scolar" Or MobOku = "Lard Orc" Or MobOku = "GRELL" Or MobOku = "Hell hound" Or MobOku = "Blood Don" Or MobOku = "POOKA" Or MMobOku = "Machirodus" Or MobOku = "Baron" Then
cb(32).Text = "asga_rpr.srt"
cb(36).Text = "asga_pot.srt"
cb(33).Text = "asga_buy.srt"
cb(34).Text = "asga_banka.srt"
cb(35).Text = "asga_buy.srt"
Else
If MobOku = "Apostle" Or MobOku = "Deruvish" Or MobOku = "Lamia" Or MobOku = "Harpy" Or MobOku = "Raven Harpy" Or MobOku = "Uruk Tron" Or MobOku = "Uruk Hai" Or MobOku = "HORNET" Or MobOku = "Manticore" Or MobOku = "Stone golem" Or MobOku = "Giant golem" Or MobOku = "Flame Rock" Or MobOku = "Dragon Tooth Skeleton" Or MobOku = "Dragon Tooth commander" Or MobOku = "Dragon Tooth soldier" Or MobOku = "Troll" Or MobOku = "Troll Warrior" Or MobOku = "Ancient" Or MobOku = "treant" Or MobOku = "Ash knight" Or MobOku = "Uruk Blade" Then
cb(32).Text = "laiba_center.srt"
cb(36).Text = "laiba_pot.srt"
cb(33).Text = "laiba_buy.srt"
cb(34).Text = "laiba_banka.srt"
cb(35).Text = "laiba_buy.srt"
Else
cb(32).Text = "centere.srt"
cb(36).Text = "centerep.srt"
cb(33).Text = "emc_buy.srt"
cb(34).Text = "emc_banka.srt"
cb(35).Text = "emc_buy.srt"
End If
End If
End If
End If

If KarakterZone = "Karus - Eslant" Then
cb(32).Text = "karus_eslant_rpr.srt"
cb(33).Text = "lufer_eslant_buy.srt"
cb(34).Text = "lufer_eslant_banka.srt"
cb(35).Text = "lufer_eslant_buy.srt"
End If ' Karus Eslant


If KarakterZone = "Human - Eslant" Then
cb(32).Text = "elmorad_eslant_rpr.srt"
cb(33).Text = "emc_eslant_buy.srt"
cb(34).Text = "emc_eslant_Banka.srt"
cb(35).Text = "emc_eslant_buy.srt"
End If

End Sub

Private Sub Tpid_Timer()
If RPRYapýlýyor = True Or ItemSatýnAlýnýyor = True Or ItemBankadanAlýnýyor = True Or ItemSatýlýyor = True Or PaketGönderiliyor = True Then Exit Sub
If BotDurum = True Then
If ClassAdý = "Mage" Then
CodesTP
End If
End If
End Sub

Private Sub txt_Change(Index As Integer)
Select Case Index
'Case 33
'ListBoxtaAra lst(2), txt(33), False
Case 31
ListBoxtaAra lst(7), txt(31), False

Case 53
If txt(53).Text = "1" Then
shhiz.Text = "120"
End If
If txt(53).Text = "2" Then
shhiz.Text = "110"
End If
If txt(53).Text = "3" Then
shhiz.Text = "100"
End If
If txt(53).Text = "4" Then
shhiz.Text = "90"
End If
If txt(53).Text = "5" Then
shhiz.Text = "80"
End If
If txt(53).Text = "6" Then
shhiz.Text = "70"
End If
If txt(53).Text = "7" Then
shhiz.Text = "60"
End If
If txt(53).Text = "8" Then
shhiz.Text = "50"
End If
If txt(53).Text = "9" Then
shhiz.Text = "40"
End If
If txt(53).Text = "10" Then
shhiz.Text = "30"
End If
End Select
End Sub

Private Sub txt_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
Case 0 To 7
TexteGir KeyAscii, True
Case 21 To 30
TexteGir KeyAscii, True
Case 38 Or 32 Or 53 Or 35 Or 43 Or 41 Or 34 Or 36 Or 54
TexteGir KeyAscii, True
Case 32
If KeyAscii = Asc("") And Opt(13).Value = True And Len(txt(32)) = 1 Then
KeyAscii = 0
End If
If Opt(13).Value = True And Len(txt(32)) = 3 And KeyAscii <> Asc("") Then
'KeyAscii = 0
End If
End Select
End Sub

Private Sub txt_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Select Case Index
Case 32
If txt(32).SelText = "%" Then txt(32).SelText = "%"
If Left(txt(32), 1) <> "%" Then: txt(32).SelText = "%"
If Left(txt(32).SelText, 1) = "%" Then txt(32).SelStart = 1: txt(32).SelLength = 2
End Select
End Sub
Public Sub ChtChDurumlarý()
If ch(82) = 1 Or ch(109) = 1 Or ch(110) = 1 Then
Select Case ClassAdý
Case "Rogue": enbT ch(106): enbT ch(107): enbT txt(47): enbT txt(48):
Case "Mage": enbT txt(42): enbT ch(103)
Case "Priest": enbT ch(97): enbT ch(104): enbT ch(105): enbT txt(44): enbT txt(45): enbT txt(46)
End Select
Else
Select Case ClassAdý
Case "Rogue": enbF ch(106): enbF ch(107): enbF txt(47): enbF txt(48):
Case "Mage": enbF txt(42): enbF ch(103)
Case "Priest": enbF ch(97): enbF ch(104): enbF ch(105): enbF txt(44): enbF txt(45): enbF txt(46)
End Select
End If
End Sub


Public Sub RotaYükle()
Form2.flRota.Path = App.Path & "\Rotalar\Repair"
Form2.flRota.Refresh
For i = 0 To Form2.flRota.ListCount - 1
cb(32).AddItem Form2.flRota.list(i)
Next
cb(32).AddItem "[Yenile...]"

Form2.flRota.Path = App.Path & "\Rotalar\Satýn Al"
Form2.flRota.Refresh
For i = 0 To Form2.flRota.ListCount - 1
cb(33).AddItem Form2.flRota.list(i)
Next
cb(33).AddItem "[Yenile...]"

Form2.flRota.Path = App.Path & "\Rotalar\Satýn Al"
Form2.flRota.Refresh
For i = 0 To Form2.flRota.ListCount - 1
cb(36).AddItem Form2.flRota.list(i)
Next
cb(36).AddItem "[Yenile...]"

Form2.flRota.Path = App.Path & "\Rotalar\Bankadan Al"
Form2.flRota.Refresh
For i = 0 To Form2.flRota.ListCount - 1
cb(34).AddItem Form2.flRota.list(i)
Next
cb(34).AddItem "[Yenile...]"


Form2.flRota.Path = App.Path & "\Rotalar\Satýn Al"
Form2.flRota.Refresh
For i = 0 To Form2.flRota.ListCount - 1
cb(35).AddItem Form2.flRota.list(i)
Next
cb(35).AddItem "[Yenile...]"
End Sub
Public Sub PartyBoz(isim As String)
Dim pStr As String
Dim pBytes() As Byte
Dim pmlen As String
pmlen = Len(isim)
If pmlen < 9 Then
pmlen = "0" & pmlen
Else
pmlen = "0" & Hex(pmlen)
End If
pStr = "2f05" + pmlen + "00" + HexString(isim)
ConvHEX2ByteArray pStr, pBytes
SendPackets pBytes
End Sub

Private Sub upgrade_Click()
Form6.Show
End Sub

Private Sub uyarý_Click()
End Sub

