VERSION 5.00
Begin VB.Form Form4 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Rota Kayýt"
   ClientHeight    =   2250
   ClientLeft      =   -15
   ClientTop       =   375
   ClientWidth     =   4695
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   162
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form4.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2250
   ScaleWidth      =   4695
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnyardým 
      Caption         =   "Bilgilendirme"
      Height          =   375
      Left            =   6240
      TabIndex        =   19
      Top             =   480
      Width           =   1935
   End
   Begin VB.Timer tmKaydet 
      Enabled         =   0   'False
      Interval        =   1500
      Left            =   2280
      Top             =   0
   End
   Begin VB.Timer tmfrm 
      Interval        =   1
      Left            =   3240
      Top             =   4800
   End
   Begin VB.ListBox lstNoktaX 
      Height          =   1425
      ItemData        =   "Form4.frx":F172
      Left            =   120
      List            =   "Form4.frx":F174
      TabIndex        =   15
      Top             =   4440
      Width           =   1335
   End
   Begin VB.ListBox lstNoktaY 
      Height          =   1425
      ItemData        =   "Form4.frx":F176
      Left            =   1680
      List            =   "Form4.frx":F178
      TabIndex        =   14
      Top             =   4440
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      Height          =   2175
      Left            =   4920
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   9
      Text            =   "Form4.frx":F17A
      Top             =   120
      Width           =   4575
   End
   Begin VB.Frame frana 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   4575
      Begin VB.ListBox lst 
         BackColor       =   &H8000000F&
         Height          =   645
         ItemData        =   "Form4.frx":F42B
         Left            =   120
         List            =   "Form4.frx":F42D
         TabIndex        =   10
         Top             =   360
         Width           =   1935
      End
      Begin VB.FileListBox FLRT 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000F&
         ForeColor       =   &H00FF0000&
         Height          =   810
         Left            =   120
         Pattern         =   "*.srt"
         TabIndex        =   7
         Top             =   2520
         Width           =   4335
      End
      Begin VB.Frame frkaydet 
         Caption         =   "Rotayý Kaydet"
         Height          =   735
         Left            =   120
         TabIndex        =   3
         Top             =   1200
         Width           =   4335
         Begin VB.CommandButton btnRTkaydet 
            Caption         =   " Rotayý Kaydet"
            Height          =   375
            Left            =   3000
            TabIndex        =   6
            Top             =   240
            Width           =   1215
         End
         Begin VB.TextBox txtRTisim 
            Height          =   285
            Left            =   1080
            TabIndex        =   4
            Top             =   280
            Width           =   1815
         End
         Begin VB.Label lb 
            Caption         =   "Ýsim Belirle :"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   5
            Top             =   300
            Width           =   855
         End
      End
      Begin VB.CommandButton btnBaþlaDur 
         Caption         =   "Rota Çizmeye Baþla"
         Height          =   615
         Left            =   2280
         TabIndex        =   1
         Top             =   360
         Width           =   1935
      End
      Begin VB.Label rotaYenile 
         AutoSize        =   -1  'True
         Caption         =   "Yenile"
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
         Left            =   3840
         TabIndex        =   16
         Top             =   2280
         Width           =   510
      End
      Begin VB.Label lb 
         Caption         =   "Kaydedilen Rotalar:"
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
         Index           =   2
         Left            =   120
         TabIndex        =   8
         Top             =   2280
         Width           =   1455
      End
      Begin VB.Label lb 
         BackStyle       =   0  'Transparent
         Caption         =   "Kaydedilen Koordinatlar"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   2
         Top             =   120
         Width           =   1935
      End
   End
   Begin VB.Label KayýtTipi 
      Caption         =   "0"
      Height          =   255
      Left            =   120
      TabIndex        =   18
      Top             =   3480
      Width           =   135
   End
   Begin VB.Label NPCID 
      Caption         =   "0000"
      Height          =   255
      Left            =   3960
      TabIndex        =   17
      Top             =   4680
      Width           =   615
   End
   Begin VB.Label NPCY 
      AutoSize        =   -1  'True
      Caption         =   "NPCY"
      Height          =   195
      Left            =   4800
      TabIndex        =   13
      Top             =   4440
      Width           =   390
   End
   Begin VB.Label NPCX 
      AutoSize        =   -1  'True
      Caption         =   "NPCX"
      Height          =   195
      Left            =   4320
      TabIndex        =   12
      Top             =   4440
      Width           =   390
   End
   Begin VB.Label lbsayý 
      Caption         =   "0"
      Height          =   255
      Left            =   4080
      TabIndex        =   11
      Top             =   240
      Width           =   255
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim aç As Boolean

Private Sub btnBaþlaDur_Click()
If btnBaþlaDur.Caption = "Rota Çizmeye Bitir" Then
btnBaþlaDur.Caption = "Rota Çizmeye Baþla"
tmKaydet = False
btnBaþlaDur.Enabled = False
enbT frkaydet: enbT txtRTisim: enbT lb(1): enbT btnRTkaydet
Exit Sub
End If
If btnBaþlaDur.Caption = "Rota Çizmeye Baþla" Then
If MOBID = "FFFF" Then
MsgBox "NPC'YE týklayýn.", vbCritical: Exit Sub
End If
btnBaþlaDur.Caption = "Rota Çizmeye Bitir"
lst.AddItem "NPC_XY:" & OkuMobX & "," & OkuMobY
NPCX = OkuMobX
NPCY = OkuMobY
NPCID = MOBID
tmKaydet = True
End If
End Sub

Private Sub btnRTkaydet_Click()
If KayýtTipi = 0 Then 'repair
If txtRTisim = "" Then
MsgBox "Hata Lütfen Bir Rota ismi Girin.", vbCritical
Exit Sub
End If
Call IniYaz("NPC", "NPC_X", NPCX.Caption, "\Rotalar\Repair\" & txtRTisim & ".srt")
Call IniYaz("NPC", "NPC_Y", NPCY.Caption, "\Rotalar\Repair\" & txtRTisim & ".srt")
Call IniYaz("NPC", "NPC_ID", NPCID.Caption, "\Rotalar\Repair\" & txtRTisim & ".srt")
For i = 0 To lstNoktaX.ListCount - 1
Call IniYaz("Rotalar", "Nokta_X" & i, lstNoktaX.List(i), "\Rotalar\Repair\" & txtRTisim & ".srt")
Call IniYaz("Rotalar", "Nokta_Y" & i, lstNoktaY.List(i), "\Rotalar\Repair\" & txtRTisim & ".srt")
Next
Call IniYaz("Rotalar", "Sayýsý", lstNoktaX.ListCount - 1, "\Rotalar\Repair\" & txtRTisim & ".srt")
End If

If KayýtTipi = 1 Then 'satýn al
If txtRTisim = "" Then
MsgBox "Hata Lütfen Bir Rota ismi Girin.", vbCritical
Exit Sub
End If
Call IniYaz("NPC", "NPC_X", NPCX.Caption, "\Rotalar\Satýn Al\" & txtRTisim & ".srt")
Call IniYaz("NPC", "NPC_Y", NPCY.Caption, "\Rotalar\Satýn Al\" & txtRTisim & ".srt")
Call IniYaz("NPC", "NPC_ID", NPCID.Caption, "\Rotalar\Satýn Al\" & txtRTisim & ".srt")
For i = 0 To lstNoktaX.ListCount - 1
Call IniYaz("Rotalar", "Nokta_X" & i, lstNoktaX.List(i), "\Rotalar\Satýn Al\" & txtRTisim & ".srt")
Call IniYaz("Rotalar", "Nokta_Y" & i, lstNoktaY.List(i), "\Rotalar\Satýn Al\" & txtRTisim & ".srt")
Next
Call IniYaz("Rotalar", "Sayýsý", lstNoktaX.ListCount - 1, "\Rotalar\Satýn Al\" & txtRTisim & ".srt")
End If

If KayýtTipi = 2 Then ' Bankadan al
If txtRTisim = "" Then
MsgBox "Hata Lütfen Bir Rota ismi Girin.", vbCritical
Exit Sub
End If
Call IniYaz("NPC", "NPC_X", NPCX.Caption, "\Rotalar\Bankadan Al\" & txtRTisim & ".srt")
Call IniYaz("NPC", "NPC_Y", NPCY.Caption, "\Rotalar\Bankadan Al\" & txtRTisim & ".srt")
Call IniYaz("NPC", "NPC_ID", NPCID.Caption, "\Rotalar\Bankadan Al\" & txtRTisim & ".srt")
For i = 0 To lstNoktaX.ListCount - 1
Call IniYaz("Rotalar", "Nokta_X" & i, lstNoktaX.List(i), "\Rotalar\Bankadan Al\" & txtRTisim & ".srt")
Call IniYaz("Rotalar", "Nokta_Y" & i, lstNoktaY.List(i), "\Rotalar\Bankadan Al\" & txtRTisim & ".srt")
Next
Call IniYaz("Rotalar", "Sayýsý", lstNoktaX.ListCount - 1, "\Rotalar\Bankadan Al\" & txtRTisim & ".srt")
End If
End Sub

Private Sub btnyardým_Click()
If aç = True Then
btnyardým.Caption = "Açýklama [?] >"
aç = False: tmfrm = True: Exit Sub
Else
btnyardým.Caption = "Açýklama [?] <"
aç = True: tmfrm = True: Exit Sub
End If
End Sub

Private Sub Form_Load()
FLRT.Path = App.Path & "\Rotalar\Repair\"
FLRT.Refresh
End Sub

Private Sub rotaYenile_Click()
FLRT.Path = App.Path & "\Rotalar\Repair\"
FLRT.Refresh
End Sub

Private Sub tmfrm_Timer()
If aç = True Then If Me.Width < 9550 Then Me.Width = Me.Width + 150 Else tmfrm = True
If aç = False Then If Me.Width > 4945 Then Me.Width = Me.Width - 150 Else tmfrm = True
End Sub

Private Sub tmKaydet_Timer()
lbsayý = lbsayý + 1
CharBilgiOKU
lst.AddItem "Nokta" & lbsayý & "_XY:" & c.kX & "," & c.kY
lstNoktaX.AddItem c.kX: lstNoktaY.AddItem c.kY
End Sub
