VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form FrmLoot 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Item Listesi"
   ClientHeight    =   3300
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9285
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   162
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form8.frx":0000
   LinkTopic       =   "Form8"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3300
   ScaleWidth      =   9285
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.Frame fr 
      Caption         =   "Item Aðacý"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3255
      Index           =   4
      Left            =   120
      TabIndex        =   10
      Top             =   0
      Width           =   2415
      Begin MSComctlLib.TreeView TreeView1 
         Height          =   2895
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Width           =   2175
         _ExtentX        =   3836
         _ExtentY        =   5106
         _Version        =   393217
         Style           =   7
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Manuel Ekle"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   3
      Left            =   5880
      TabIndex        =   6
      Top             =   4080
      Width           =   3255
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   320
         Index           =   1
         Left            =   120
         TabIndex        =   8
         Top             =   240
         Width           =   2175
      End
      Begin VB.CommandButton Command1 
         Caption         =   "EKLE"
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
         Left            =   2400
         TabIndex        =   7
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Item Ara"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   2
      Left            =   2640
      TabIndex        =   2
      Top             =   2640
      Width           =   3255
      Begin VB.CommandButton Command2 
         Caption         =   "Ara"
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
         TabIndex        =   9
         Top             =   240
         Width           =   855
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   320
         Index           =   0
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Toplanacaklar Listesi"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3255
      Index           =   1
      Left            =   6000
      TabIndex        =   1
      Top             =   0
      Width           =   3255
      Begin VB.ListBox list 
         Height          =   2790
         Index           =   1
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Width           =   3015
      End
   End
   Begin VB.Frame fr 
      Caption         =   "Item Listesi"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Index           =   0
      Left            =   2640
      TabIndex        =   0
      Top             =   0
      Width           =   3255
      Begin VB.ListBox list1 
         Height          =   2205
         Left            =   120
         TabIndex        =   4
         Top             =   240
         Width           =   3015
      End
   End
End
Attribute VB_Name = "FrmLoot"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Change()

End Sub

Private Sub Command1_Click()
List(1).AddItem Text1(1).Text
End Sub

Private Sub Command2_Click()
For i = son To List1.ListCount - 1
a = InStr(1, List1.List(i), Text1(0).Text, vbTextCompare)
If a <> 0 Then
List1.ListIndex = i
son = i + 1
toplam = toplam + 1
Exit Sub
End If
Next
son = 0
toplam = 0
List1.ListIndex = -1
End Sub

Private Sub Form_Load()
Dim nodX As Node
Set nodX = TreeView1.Nodes.Add(, , , "Silahlar")
Set nodX = TreeView1.Nodes.Add(, , , "Armorlar")
Set nodX = TreeView1.Nodes.Add(, , , "Takýlar")
Set nodX = TreeView1.Nodes.Add(, , , "Scroll")
Set nodX = TreeView1.Nodes.Add(, , , "Diðer")
Set nodX = TreeView1.Nodes.Add(, , , "Lune Item")

Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "Dagger")
Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "Bow")
Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "One-Handed Axe")
Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "One-Handed Club")
Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "One-Handed Spear")
Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "One-Handed Sword")
Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "Two-Handed Axe")
Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "Two-Handed Club")
Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "Two-Handed Spear")
Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "Two-Handed Sword")
Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "Staff")
Set nodX = TreeView1.Nodes.Add(1, tvwChild, , "Shield")

Set nodX = TreeView1.Nodes.Add(2, tvwChild, , "Warrior")
Set nodX = TreeView1.Nodes.Add(2, tvwChild, , "Rogue")
Set nodX = TreeView1.Nodes.Add(2, tvwChild, , "Mage")
Set nodX = TreeView1.Nodes.Add(2, tvwChild, , "Priest")

Set nodX = TreeView1.Nodes.Add(3, tvwChild, , "Earing")
Set nodX = TreeView1.Nodes.Add(3, tvwChild, , "Necklace")
Set nodX = TreeView1.Nodes.Add(3, tvwChild, , "Belt")
Set nodX = TreeView1.Nodes.Add(3, tvwChild, , "Ring")

Set nodX = TreeView1.Nodes.Add(4, tvwChild, , "Upgrade Scroll")
Set nodX = TreeView1.Nodes.Add(4, tvwChild, , "Image Change Scroll")
End Sub

Private Sub Form_Unload(Cancel As Integer)
Cancel = True
Me.Hide

End Sub

Private Sub list_Click(Index As Integer)
Select Case Index
Case 1
If List(1).ListIndex > -1 Then
Form2.LstKutuTopla.RemoveItem (List(1).ListIndex): List1.AddItem List(1).List(List(1).ListIndex): List1.ItemData(List1.NewIndex) = List(1).ItemData(List(1).ListIndex)
List(1).RemoveItem List(1).ListIndex
End If
End Select
End Sub

Private Sub list1_Click()
If List1.ListIndex > -1 Then
Form2.LstKutuTopla.AddItem List1.ItemData(List1.ListIndex)
List(1).AddItem List1.List(List1.ListIndex): List(1).ItemData(List(1).NewIndex) = List1.ItemData(List1.ListIndex)
List1.RemoveItem List1.ListIndex
End If
End Sub

Private Sub TreeView1_NodeClick(ByVal Node As MsComctlLib.Node)
If Node.Index = 5 Then
Karýþýk
End If
If Node.Index = 6 Then
LuneItem
End If
If Node.Index = 7 Then
Dagger
End If
If Node.Index = 8 Then
Bow
End If
If Node.Index = 9 Then
OneHandedAxe
End If
If Node.Index = 10 Then
OneHandedClub
End If
If Node.Index = 11 Then
OneHandedSpear
End If
If Node.Index = 12 Then
OneHandedSword
End If
If Node.Index = 13 Then
TwoHandedAxe
End If
If Node.Index = 14 Then
TwoHandedClub
End If
If Node.Index = 15 Then
TwoHandedSpear
End If
If Node.Index = 16 Then
TwoHandedSword
End If
If Node.Index = 17 Then
Staff
End If
If Node.Index = 18 Then
Shield
End If
If Node.Index = 19 Then
WarriorArmor
End If
If Node.Index = 20 Then
RogueArmor
End If
If Node.Index = 21 Then
MageArmor
End If
If Node.Index = 22 Then
PriestArmor
End If
If Node.Index = 23 Then
Earing
End If
If Node.Index = 24 Then
Necklace
End If
If Node.Index = 25 Then
Belt
End If
If Node.Index = 26 Then
Ring
End If
If Node.Index = 27 Then
UpgradeScroll
End If
If Node.Index = 28 Then
ImageScroll
End If
End Sub
