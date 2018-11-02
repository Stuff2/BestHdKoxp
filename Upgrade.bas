Attribute VB_Name = "Upgrade"
Public Sub InventoryOku23()
      Dim tmpBase As Long, tmpLng1 As Long, tmpLng2 As Long, tmpLng3 As Long, tmpLng4 As Long
      Dim lngItemID As Long, lngItemID_Ext As Long, lngItemNameLen As Long, AdrItemName As Long
      Dim ItemNameB() As Byte
      Dim ItemName As String
      Dim i As Integer

      tmpBase = ReadLong(KO_PTR_DLG)  'read KO_DLGBMA adress
      tmpLng1 = ReadLong(tmpBase + &H1A0) 'first pointer
      Form6.canta.Clear
For i = 26 To 53 'read 0 to 41 inventory slots (0=earring, 1=helmet, 2=earring, 3=necklace, 4=pauldron ....14=first inventory slot)
          tmpLng2 = ReadLong(tmpLng1 + (&H148 + (4 * i))) 'inventory slot
          tmpLng3 = ReadLong(tmpLng2 + &H38) 'item id adress
          tmpLng4 = ReadLong(tmpLng2 + &H3C) 'item id_ext adress
          
          lngItemID = ReadLong(tmpLng3) 'item id value
          lngItemID_Ext = ReadLong(tmpLng4) 'item id_ext value
          lngItemID = lngItemID + lngItemID_Ext 'real item id
          lngItemNameLen = ReadLong(tmpLng3 + &H10) 'n° characters in item name
          AdrItemName = ReadLong(tmpLng3 + &HC) 'item name adress
          
          ItemName = "" 'reset ItemName variable
          If lngItemNameLen > 0 Then
              ReadByteArray AdrItemName, ItemNameB, lngItemNameLen 'get item name (byte array)
              ItemName = StrConv(ItemNameB, vbUnicode) 'convert it to string
          End If
          'If ItemName = "" Then Else Form1.canta.AddItem ItemName & "   " & lngItemID
          'If ItemName = "" Then Else Form1.canta.ItemData(Form1.List1(2).NewIndex) = lngItemID
               'Form1.List1(2).AddItem Format$(i, "00") & "- " & ItemName & " " & lngItemID
Form6.canta.AddItem Form6.canta.ListCount + 1 & "-) " & ItemName
If ItemName <> "" Then
'If Mid(ItemName, 1, 6) = "Potion" Then Form1.List1(9).AddItem ItemName
'If Mid(ItemName, 1, 5) = "Water" Then Form1.List1(9).AddItem ItemName
'If Mid(ItemName, 1, 4) = "Holy" Then Form1.List1(9).AddItem ItemName
End If
      Next
End Sub

Public Function ItemAdet()
If Form6.up(7).text = "0" Then
  ItemAdet = "0" & Hex(CLng("00"))
Else
  ItemAdet = Hex(CLng(Form6.up(7).text))
End If
If Form6.up(7).text = "1" Then
  ItemAdet = "0" & Hex(CLng("01"))
End If
If Form6.up(7).text = "2" Then
  ItemAdet = "0" & Hex(CLng("02"))
End If
If Form6.up(7).text = "3" Then
  ItemAdet = "0" & Hex(CLng("03"))
End If
If Form6.up(7).text = "4" Then
  ItemAdet = "0" & Hex(CLng("04"))
End If
If Form6.up(7).text = "5" Then
  ItemAdet = "0" & Hex(CLng("05"))
End If
If Form6.up(7).text = "6" Then
  ItemAdet = "0" & Hex(CLng("06"))
End If
If Form6.up(7).text = "7" Then
  ItemAdet = "0" & Hex(CLng("07"))
End If
If Form6.up(7).text = "8" Then
  ItemAdet = "0" & Hex(CLng("08"))
End If
If Form6.up(7).text = "9" Then
  ItemAdet = "0" & Hex(CLng("09"))
End If

End Function

Public Function GetInventory(GetSlot As Integer, ByRef ItemAdi As String, ByRef ItemSayisi As String)
Dim Base As Long, Lng1 As Long, Lng2 As Long, Lng3 As Long, Lng4 As Long
Dim lngItemID As Long, lngItemID_Ext As Long, lngItemNameLen As Long, AdrItemName As Long
Dim ItemNameB() As Byte
Dim ItemName As String
Dim lngKacTane, lngcurdura, ItemUpgrade As Long
      
Base = ReadLong(KO_PTR_DLG)
Lng1 = ReadLong(Base + &H1A0)
      
i = GetSlot + 13
If i < 1 Or i > 41 Then
MsgBox "Inventory Slot 1 ile 28 Arasýndadýr!!!", vbCritical, "HATA"
Exit Function
End If

Lng2 = ReadLong(Lng1 + (&H178 + (4 * i)))
Lng3 = ReadLong(Lng2 + &H38)
Lng4 = ReadLong(Lng2 + &H3C)

lngKacTane = ReadLong(Lng2 + &H40)
lngcurdura = ReadLong(Lng2 + &H44)
        
tmpLng4 = ReadLong(Lng2 + &H3C)
lngItemID = ReadLong(Lng3)
lngItemID_Ext = ReadLong(Lng4)
lngItemID = lngItemID + lngItemID_Ext
lngItemNameLen = ReadLong(Lng3 + &H10)
AdrItemName = ReadLong(Lng3 + &HC)
ItemName = ""
If lngItemNameLen > 0 Then
ReadByteArray AdrItemName, ItemNameB, lngItemNameLen
ItemName = StrConv(ItemNameB, vbUnicode)
End If

ItemAdi = ItemName
ItemSayisi = lngKacTane
ItemUpgrade = lngItemID_Ext
GetInventory = lngItemID
End Function
Public Sub Upgrade1()
Dim ScrollID As String

If Form6.scrolllist.text = "Low Class" Then
ScrollID = Strings.Mid(AlignDWORD("379221000"), 1, 8)
End If
If Form6.scrolllist.text = "Middle Class" Then
ScrollID = Strings.Mid(AlignDWORD("379205000"), 1, 8)
End If
If Form6.scrolllist.text = "High Class" Then
ScrollID = Strings.Mid(AlignDWORD("379016000"), 1, 8)
End If

If Form6.canta.Selected(0) Then
  Dim ItemID As Long, ItemAD As String, ItemND As String, ItemUpg As String
  ItemID = GetInventory(1, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "00" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(1) Then
  ItemID = GetInventory(2, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "01" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(2) Then
  ItemID = GetInventory(3, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "02" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(3) Then
  ItemID = GetInventory(4, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "03" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(4) Then
 ItemID = GetInventory(5, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "04" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If

If Form6.canta.Selected(5) Then
  ItemID = GetInventory(6, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "05" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(6) Then
  ItemID = GetInventory(7, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "06" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(7) Then
  ItemID = GetInventory(8, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "07" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If

If Form6.canta.Selected(8) Then
  ItemID = GetInventory(9, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "08" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(9) Then
ItemID = GetInventory(10, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "09" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(10) Then
  ItemID = GetInventory(11, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "10" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(11) Then
 ItemID = GetInventory(12, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "11" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(12) Then
 ItemID = GetInventory(13, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "12" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If

If Form6.canta.Selected(13) Then
 ItemID = GetInventory(14, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "13" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(14) Then
  ItemID = GetInventory(15, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "14" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(15) Then
  ItemID = GetInventory(16, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND 'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + "15" + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(16) Then
  ItemID = GetInventory(17, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("16")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(17) Then
 ItemID = GetInventory(18, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("17")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(18) Then
 ItemID = GetInventory(19, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("18")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(19) Then
  ItemID = GetInventory(20, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("19")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(20) Then
   ItemID = GetInventory(21, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("20")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(21) Then
   ItemID = GetInventory(22, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("21")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(22) Then
   ItemID = GetInventory(23, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("22")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(23) Then
   ItemID = GetInventory(24, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("23")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(24) Then
  ItemID = GetInventory(25, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("24")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(25) Then
   ItemID = GetInventory(26, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("25")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(26) Then
   ItemID = GetInventory(27, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("26")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form6.canta.Selected(27) Then
   ItemID = GetInventory(28, ItemAD, ItemND)
  Form6.up(2).text = Strings.Mid(AlignDWORD(ItemID), 1, 8)
  Form6.up(3).text = ItemAD 'Item adý
  Form6.up(6).text = ItemND  'Kac adet oldugu
  Form6.up(7).text = ItemUpgrade 'Kac adet oldugu
  
 Paket "5B02" + "01" + "1427" + Form6.up(2).text + Hex(CLng("27")) + ScrollID + "1B" + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
End Sub


