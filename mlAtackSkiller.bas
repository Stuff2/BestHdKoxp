Attribute VB_Name = "mlAtackSkiller"
'Priest Atak Skill
Public RuinTime As Long
Public HellishTime As Long
Public HarshTime As Long
Public CollapseTime As Long
Public RavingTime As Long
Public HadesTime As Long
Public pStrokeTime As Long
Public JudgmentTime As Long
Public HelisTime As Long
'Priest Debuff Time
Public MassiveTime As Long
Public ParasiteTime As Long
Public MaliceTime As Long
Public MassiveID As Long
Public ParasiteID As Long
Public MaliceID As Long
Public LastDebuffID As Long
'Mage Alan Skilleri
Public MeteorTime As Long
Public NovaTime As Long
Public InfernoTime As Long
Public IceStormTime As Long
Public FrostTime As Long
Public BliTime As Long
Public ChaTime As Long
Public StaTime As Long
Public ThuTime As Long
Public FireBurst As Long
Public IceBurst As Long
'Assassin Skillleri
Public StabTime As Long
Public Stab2Time As Long
Public JabTime As Long
Public BloodTime As Long
Public PierceTime As Long
Public ShockTime As Long
Public IllusionTime As Long
Public ThrustTime As Long
Public CutTime As Long
Public VampiricTime As Long
Public SpikeTime As Long
Public BloodyTime As Long
Public BlindingTime As Long
Public BeastTime As Long
Public CriticalTime As Long
'Okçu Skilleri
Public FireArrowTime As Long
Public PoisonArrowTime As Long
Public FireShotTime As Long
Public PoisonShotTime As Long
Public ExplosiveShotTime As Long
Public ViperTime As Long
Public CounterStrikeTime As Long
Public IceShotTime As Long
Public LightingShotTime As Long
Public BlowArrowTime As Long
Public BlindingStrafeTime As Long
Public PowerShotTime As Long
Public ArrowShowerTime As Long
'Warrior Atak Skill
Public BloodingTime As Long
Public ManglingTime As Long
Public MultipleShorkTime As Long
Public SeverTime As Long
Public LegCuttingTime As Long
Public ShearTime As Long
Public HashTime As Long
Public PiercingTime As Long
Public CrashTime As Long
Public SlashTime As Long
'Mage Atak Skill
Public Flash As Long
Public Shiver As Long
Public Flame As Long
Public ColdWave As Long
Public Spark As Long
Public Ignition As Long
Public Solid As Long
Public StaticHemispher As Long
Public Blaze As Long
Public FireBall As Long
Public FireSpear As Long
Public FireBlast As Long
Public HellFire As Long
Public PillarofFire As Long
Public FireThorn As Long
Public FireImpact As Long
Public Incineration As Long
Public VampiricFire As Long
Public Igzination As Long
Public Chill As Long
Public IceArrow As Long
Public IceOrb As Long
Public IceBlast As Long
Public Frostbite As Long
Public IceComet As Long
Public IceImpact As Long
Public Prismatic As Long
Public FreezingDistance As Long
Public CounterSpell As Long
Public Lightning As Long
Public Thunder As Long
Public ThunderBlast As Long
Public Discharge As Long
Public StaticOrb As Long
Public StaticThorn As Long
Public ThunderImpact As Long
Public StunCloud As Long
Public zMobName As String

Function AsasAtak()
If Form1.chatack = 1 Then
If VampiricTime <= 0 And CharSkill2 >= "50" And MobUzaklýK <= 14 And c.MP >= "50" And Form1.asaslist.Selected(10) = True Then VampiricTime = 61:  AsasSkill DüþmanID, Form1.asaslist.ItemData(10): Exit Function
If BloodTime <= 0 And CharSkill2 >= "10" And MobUzaklýK <= 14 And c.MP >= "20" And Form1.asaslist.Selected(4) = True Then BloodTime = 61:  AsasSkill DüþmanID, Form1.asaslist.ItemData(4): Exit Function
If IllusionTime <= 0 And CharSkill2 >= "30" And MobUzaklýK <= 14 And c.MP >= "30" And Form1.asaslist.Selected(7) = True Then IllusionTime = 11:  AsasSkill DüþmanID, Form1.asaslist.ItemData(7): Exit Function
If CriticalTime <= 0 And CharSkill2 >= "80" And MobUzaklýK <= 14 And c.MP >= "200" And Form1.asaslist.Selected(15) = True Then CriticalTime = 61:  AsasSkill DüþmanID, Form1.asaslist.ItemData(15): Exit Function
If BeastTime <= 0 And CharSkill2 >= "75" And MobUzaklýK <= 14 And c.MP >= "250" And Form1.asaslist.Selected(14) = True Then BeastTime = 41:  AsasSkill DüþmanID, Form1.asaslist.ItemData(14): Exit Function
If BlindingTime <= 0 And CharSkill2 >= "72" And MobUzaklýK <= 14 And c.MP >= "200" And Form1.asaslist.Selected(13) = True Then BlindingTime = 61:  AsasSkill DüþmanID, Form1.asaslist.ItemData(13): Exit Function
If BloodyTime <= 0 And CharSkill2 >= "70" And MobUzaklýK <= 14 And c.MP >= "100" And Form1.asaslist.Selected(12) = True Then BloodyTime = 6:  AsasSkill DüþmanID, Form1.asaslist.ItemData(12): Exit Function
If SpikeTime <= 0 And CharSkill2 >= "55" And MobUzaklýK <= 14 And c.MP >= "100" And Form1.asaslist.Selected(11) = True Then SpikeTime = 12:  AsasSkill DüþmanID, Form1.asaslist.ItemData(11): Exit Function
If CutTime <= 0 And CharSkill2 >= "40" And MobUzaklýK <= 14 And c.MP >= "50" And Form1.asaslist.Selected(9) = True Then CutTime = 6:  AsasSkill DüþmanID, Form1.asaslist.ItemData(9): Exit Function
If ThrustTime <= 0 And CharSkill2 >= "35" And MobUzaklýK <= 14 And c.MP >= "50" And Form1.asaslist.Selected(8) = True Then ThrustTime = 11:  AsasSkill DüþmanID, Form1.asaslist.ItemData(8): Exit Function
If ShockTime <= 0 And CharSkill2 >= "20" And MobUzaklýK <= 14 And c.MP >= "20" And Form1.asaslist.Selected(6) = True Then ShockTime = 6:  AsasSkill DüþmanID, Form1.asaslist.ItemData(6): Exit Function
If PierceTime <= 0 And CharSkill2 >= "15" And MobUzaklýK <= 14 And c.MP >= "20" And Form1.asaslist.Selected(5) = True Then PierceTime = 11:  AsasSkill DüþmanID, Form1.asaslist.ItemData(5): Exit Function
If JabTime <= 0 And c.MP >= "10" And MobUzaklýK <= 14 And Form1.asaslist.Selected(3) = True Then JabTime = 6:  AsasSkill DüþmanID, Form1.asaslist.ItemData(3): Exit Function
If Stab2Time <= 0 And c.MP >= "5" And MobUzaklýK <= 14 And Form1.asaslist.Selected(2) = True Then Stab2Time = 6:  AsasSkill DüþmanID, Form1.asaslist.ItemData(2): Exit Function
If StabTime <= 0 And c.MP >= "5" And MobUzaklýK <= 14 And Form1.asaslist.Selected(1) = True Then StabTime = 6:  AsasSkill DüþmanID, Form1.asaslist.ItemData(1): Exit Function
If Form1.asaslist.Selected(0) = True And c.MP >= "2" And MobUzaklýK <= 14 Then StrokeAtak DüþmanID: Exit Function
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
'Paket "080101" + HexFormatla(Hex(MOBID), 4) + "A000090000"
End If
End Function
Function AsasSkill(UserID As Long, skillNo As Long)
On Error Resume Next
If skillNo = "1610" Or skillNo = "1650" Then 'Yüzde ise
Paket "3101" + Strings.Mid(AlignDWORD(c.class & Right(skillNo, 3)), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000001000"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & Right(skillNo, 3)), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "000000000000000000000000"
Else
Paket "3103" + Strings.Mid(AlignDWORD(c.class & Right(skillNo, 3)), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0100010000000000000000000000"
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
'Paket "080101" + HexFormatla(Hex(MOBID), 4) + "A000090000"
'End If
End If
End Function
Function PriestAtakVur()
If Form1.chatack = 1 Then
If HellishTime <= 0 And CharSkill1 >= "51" And MobUzaklýK <= 14 And c.MP >= "120" And Form1.PriList.Selected(4) = True Then HellishTime = 3:  PriestAtak DüþmanID, Form1.PriList.ItemData(4): Exit Function
If CollapseTime <= 0 And CharSkill2 >= "51" And MobUzaklýK <= 14 And c.MP >= "120" And Form1.PriList.Selected(8) = True Then CollapseTime = 3:  PriestAtak DüþmanID, Form1.PriList.ItemData(8): Exit Function
If HadesTime <= 0 And CharSkill3 >= "51" And MobUzaklýK <= 14 And c.MP >= "120" And Form1.PriList.Selected(12) = True Then HadesTime = 3:  PriestAtak DüþmanID, Form1.PriList.ItemData(12): Exit Function
If RuinTime <= 0 And CharSkill1 >= "42" And MobUzaklýK <= 14 And c.MP >= "100" And Form1.PriList.Selected(3) = True Then RuinTime = 2:  PriestAtak DüþmanID, Form1.PriList.ItemData(3): Exit Function
If HarshTime <= 0 And CharSkill2 >= "42" And MobUzaklýK <= 14 And c.MP >= "100" And Form1.PriList.Selected(7) = True Then HarshTime = 2:  PriestAtak DüþmanID, Form1.PriList.ItemData(7): Exit Function
If RavingTime <= 0 And CharSkill3 >= "42" And MobUzaklýK <= 14 And c.MP >= "100" And Form1.PriList.Selected(11) = True Then RavingTime = 2:  PriestAtak DüþmanID, Form1.PriList.ItemData(11): Exit Function
If CharSkill4 >= "12" And c.MP >= "350" And MobUzaklýK <= 14 And Form1.PriList.Selected(14) = True Then PriestAtak DüþmanID, Form1.PriList.ItemData(14): Exit Function
If CharSkill4 >= "2" And c.MP >= "200" And MobUzaklýK <= 14 And Form1.PriList.Selected(13) = True Then PriestAtak DüþmanID, Form1.PriList.ItemData(13): Exit Function
If CharSkill1 >= "21" And c.MP >= "40" And MobUzaklýK <= 14 And Form1.PriList.Selected(2) = True Then PriestAtak DüþmanID, Form1.PriList.ItemData(2): Exit Function
If CharSkill2 >= "21" And c.MP >= "40" And MobUzaklýK <= 14 And Form1.PriList.Selected(6) = True Then PriestAtak DüþmanID, Form1.PriList.ItemData(6): Exit Function
If CharSkill3 >= "21" And c.MP >= "40" And MobUzaklýK <= 14 And Form1.PriList.Selected(10) = True Then PriestAtak DüþmanID, Form1.PriList.ItemData(10): Exit Function
If CharSkill1 >= "12" And c.MP >= "30" And MobUzaklýK <= 14 And Form1.PriList.Selected(1) = True Then PriestAtak DüþmanID, Form1.PriList.ItemData(1): Exit Function
If CharSkill2 >= "12" And c.MP >= "30" And MobUzaklýK <= 14 And Form1.PriList.Selected(5) = True Then PriestAtak DüþmanID, Form1.PriList.ItemData(5): Exit Function
If CharSkill3 >= "12" And c.MP >= "30" And MobUzaklýK <= 14 And Form1.PriList.Selected(9) = True Then PriestAtak DüþmanID, Form1.PriList.ItemData(9): Exit Function
If Form1.PriList.Selected(0) = True And c.MP >= "2" And MobUzaklýK <= 14 Then StrokeAtak DüþmanID: Exit Function
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
'Paket "080101" + HexFormatla(Hex(MOBID), 4) + "A000090000"
End If
End Function
Public Sub PriestAtak(UserID As Long, skillNo As Long)
On Error Resume Next
Dim SkillID As String
SkillID = Strings.Mid(AlignDWORD(c.class & Right(skillNo, 3)), 1, 6)
Paket "3103" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0100010000000000000000000000"
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
'Paket "080101" + HexFormatla(Hex(MOBID), 4) + "A000090000"
'End If
End Sub
Function DebuffAtak()

If DüþmanID <> "FFFF" Then
If CharSkill3 >= "60" And MassiveTime <= 0 And MobUzaklýK <= 28 And MassiveID <> DüþmanID And Form1.DebuffList.Selected(0) = True Then PriestBuffSkill DüþmanID, "760", True:  MassiveTime = 11: If Form1.Check15.Value = 1 Then Konuþ 2, MOBAdý3
If CharSkill3 >= "45" And ParasiteTime <= 0 And MobUzaklýK <= 28 And ParasiteID <> DüþmanID And Form1.DebuffList.Selected(1) = True Then PriestBuffSkill DüþmanID, "745", True: ParasiteTime = 9: If Form1.Check15.Value = 1 Then Konuþ 2, MOBAdý3
If CharSkill3 >= "3" And MaliceTime <= 0 And MobUzaklýK <= 28 And MaliceID <> DüþmanID And Form1.DebuffList.Selected(2) = True Then PriestBuffSkill DüþmanID, "703", True: MaliceTime = 9: If Form1.Check15.Value = 1 Then Konuþ 2, MOBAdý3
End If
End Function
Function PriestBuffSkill(UserID As Long, skillNo As Long, Optional Toplu As Boolean = False)
On Error Resume Next
If Form1.ch(101).Value = 1 And Toplu = True Then
    Paket "3101" + Strings.Mid(AlignDWORD(skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Mobx), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "0000000000000F00"
    Paket "3103" + Strings.Mid(AlignDWORD(skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Mobx), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "0000000000000000"
Else
    Paket "3101" + Strings.Mid(AlignDWORD(skillNo), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000F00"
    Paket "3103" + Strings.Mid(AlignDWORD(skillNo), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "000000000000000000000000"
End If


If Form1.ch(101).Value = 1 And Toplu = True Then
    Paket "3101" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(OkuMobX), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "0000000000000F00"
    Paket "3103" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(OkuMobX), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "0000000000000000"
Else
    Paket "3101" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000F00"
    Paket "3103" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "000000000000000000000000"
End If
End Function
Function MageAtakVur()
If Form1.chatack = 1 Then
'Alan
If IceStormTime <= 0 And CharSkill2 >= "70" And c.MP >= "600" And MobUzaklýK <= 27 And Form1.NovaList.Selected(6) = True Then IceStormTime = 17:  MageNova OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(6): Exit Function
If MeteorTime <= 0 And CharSkill1 >= "70" And c.MP >= "600" And MobUzaklýK <= 27 And Form1.NovaList.Selected(3) = True Then MeteorTime = 17:  MageNova OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(3): Exit Function
If ChaTime <= 0 And CharSkill3 >= "70" And c.MP >= "600" And MobUzaklýK <= 27 And Form1.NovaList.Selected(9) = True Then ChaTime = 17:  MageNova OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(9): Exit Function
If FrostTime <= 0 And CharSkill2 >= "60" And c.MP >= "400" And MobUzaklýK <= 27 And Form1.NovaList.Selected(7) = True Then FrostTime = 17:  MageNova OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(7): Exit Function
If NovaTime <= 0 And CharSkill1 >= "60" And c.MP >= "400" And MobUzaklýK <= 27 And Form1.NovaList.Selected(4) = True Then NovaTime = 17:  MageNova OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(4): Exit Function
If StaTime <= 0 And CharSkill3 >= "60" And c.MP >= "400" And MobUzaklýK <= 27 And Form1.NovaList.Selected(10) = True Then StaTime = 17:  MageNova OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(10): Exit Function
If BliTime <= 0 And CharSkill2 >= "45" And c.MP >= "200" And MobUzaklýK <= 27 And Form1.NovaList.Selected(8) = True Then BliTime = 17:  MageNova OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(8): Exit Function
If InfernoTime <= 0 And CharSkill1 >= "45" And c.MP >= "200" And MobUzaklýK <= 27 And Form1.NovaList.Selected(5) = True Then InfernoTime = 17:  MageNova OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(5): Exit Function
If ThuTime <= 0 And CharSkill3 >= "45" And c.MP >= "200" And MobUzaklýK <= 27 And Form1.NovaList.Selected(11) = True Then ThuTime = 17:  MageNova OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(11): Exit Function
If CharSkill1 >= "33" And c.MP >= "150" And MobUzaklýK <= 27 And Form1.NovaList.Selected(0) = True Then MageAlan OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(0)
If CharSkill2 >= "33" And c.MP >= "150" And MobUzaklýK <= 27 And Form1.NovaList.Selected(1) = True Then MageAlan OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(1)
If CharSkill3 >= "33" And c.MP >= "150" And MobUzaklýK <= 27 And Form1.NovaList.Selected(2) = True Then MageAlan OkuMobX, OkuMobY, MobZ, Form1.NovaList.ItemData(2)
'Zamanlýlar
If Igzination <= 0 And CharSkill1 >= "80" And c.MP >= "390" And MobUzaklýK <= 40 And Form1.MageList.Selected(23) = True Then Igzination = 23:  MageAtak3 DüþmanID, Form1.MageList.ItemData(22): Exit Function
If VampiricFire <= 0 And CharSkill1 >= "80" And c.MP >= "350" And MobUzaklýK <= 40 And Form1.MageList.Selected(22) = True Then VampiricFire = 61:  MageAtak3 DüþmanID, Form1.MageList.ItemData(22): Exit Function
If FreezingDistance <= 0 And CharSkill2 >= "80" And c.MP >= "350" And MobUzaklýK <= 40 And Form1.MageList.Selected(38) = True Then FreezingDistance = 61:  MageAtak3 DüþmanID, Form1.MageList.ItemData(38): Exit Function
If Prismatic <= 0 And CharSkill2 >= "70" And c.MP >= "390" And MobUzaklýK <= 40 And Form1.MageList.Selected(36) = True Then Prismatic = 22:  MageAtak3 DüþmanID, Form1.MageList.ItemData(36): Exit Function
If StunCloud <= 0 And CharSkill3 >= "70" And c.MP >= "390" And MobUzaklýK <= 40 And Form1.MageList.Selected(52) = True Then StunCloud = 22:  MageAtak3 DüþmanID, Form1.MageList.ItemData(52): Exit Function
If Incineration <= 0 And CharSkill1 >= "70" And c.MP >= "390" And MobUzaklýK <= 40 And Form1.MageList.Selected(20) = True Then Incineration = 22:  MageAtak3 DüþmanID, Form1.MageList.ItemData(20): Exit Function
If FireImpact <= 0 And CharSkill1 >= "57" And c.MP >= "220" And MobUzaklýK <= 40 And Form1.MageList.Selected(19) = True Then FireImpact = 21:  MageAtak2 DüþmanID, Form1.MageList.ItemData(19): Exit Function
If IceImpact <= 0 And CharSkill2 >= "57" And c.MP >= "220" And MobUzaklýK <= 40 And Form1.MageList.Selected(35) = True Then IceImpact = 21:  MageAtak2 DüþmanID, Form1.MageList.ItemData(35): Exit Function
If ThunderImpact <= 0 And CharSkill3 >= "57" And c.MP >= "220" And MobUzaklýK <= 40 And Form1.MageList.Selected(51) = True Then ThunderImpact = 21:  MageAtak1 DüþmanID, Form1.MageList.ItemData(51): Exit Function
If FireThorn <= 0 And CharSkill1 >= "54" And c.MP >= "220" And MobUzaklýK <= 40 And Form1.MageList.Selected(17) = True Then FireThorn = 7:  MageAtak2 DüþmanID, Form1.MageList.ItemData(17): Exit Function
If StaticThorn <= 0 And CharSkill3 >= "54" And c.MP >= "220" And MobUzaklýK <= 40 And Form1.MageList.Selected(49) = True Then StaticThorn = 7:  MageAtak2 DüþmanID, Form1.MageList.ItemData(49): Exit Function
If PillarofFire <= 0 And CharSkill1 >= "51" And c.MP >= "160" And MobUzaklýK <= 40 And Form1.MageList.Selected(16) = True Then PillarofFire = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(16): Exit Function
If IceComet <= 0 And CharSkill2 >= "51" And c.MP >= "160" And MobUzaklýK <= 40 And Form1.MageList.Selected(33) = True Then IceComet = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(33): Exit Function
If StaticOrb <= 0 And CharSkill3 >= "51" And c.MP >= "160" And MobUzaklýK <= 40 And Form1.MageList.Selected(48) = True Then StaticOrb = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(48): Exit Function
If HellFire <= 0 And CharSkill1 >= "39" And c.MP >= "150" And MobUzaklýK <= 40 And Form1.MageList.Selected(13) = True Then HellFire = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(13): Exit Function
If Frostbite <= 0 And CharSkill2 >= "39" And c.MP >= "150" And MobUzaklýK <= 40 And Form1.MageList.Selected(30) = True Then Frostbite = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(30): Exit Function
If Discharge <= 0 And CharSkill3 >= "39" And c.MP >= "150" And MobUzaklýK <= 40 And Form1.MageList.Selected(45) = True Then Discharge = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(45): Exit Function
If FireBlast <= 0 And CharSkill1 >= "35" And c.MP >= "150" And MobUzaklýK <= 49 And Form1.MageList.Selected(12) = True Then FireBlast = 6: MageAtak2 DüþmanID, Form1.MageList.ItemData(12): Exit Function
If IceBlast <= 0 And CharSkill2 >= "35" And c.MP >= "150" And MobUzaklýK <= 49 And Form1.MageList.Selected(29) = True Then IceBlast = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(29): Exit Function
If ThunderBlast <= 0 And CharSkill3 >= "35" And c.MP >= "150" And MobUzaklýK <= 49 And Form1.MageList.Selected(44) = True Then ThunderBlast = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(44): Exit Function
If FireSpear <= 0 And CharSkill1 >= "27" And c.MP >= "80" And MobUzaklýK <= 49 And Form1.MageList.Selected(11) = True Then FireSpear = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(11): Exit Function
If IceOrb <= 0 And CharSkill2 >= "27" And c.MP >= "80" And MobUzaklýK <= 49 And Form1.MageList.Selected(28) = True Then IceOrb = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(28): Exit Function
If Thunder <= 0 And CharSkill3 >= "27" And c.MP >= "80" And MobUzaklýK <= 49 And Form1.MageList.Selected(43) = True Then Thunder = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(43): Exit Function
If FireBall <= 0 And CharSkill1 >= "15" And c.MP >= "50" And MobUzaklýK <= 49 And Form1.MageList.Selected(9) = True Then FireBall = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(9): Exit Function
If IceArrow <= 0 And CharSkill2 >= "15" And c.MP >= "50" And MobUzaklýK <= 49 And Form1.MageList.Selected(26) = True Then IceArrow = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(26): Exit Function
If Lightning <= 0 And CharSkill3 >= "15" And c.MP >= "50" And MobUzaklýK <= 49 And Form1.MageList.Selected(41) = True Then Lightning = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(41): Exit Function
If Blaze <= 0 And CharSkill1 >= "9" And c.MP >= "30" And MobUzaklýK <= 39 And Form1.MageList.Selected(8) = True Then Blaze = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(8): Exit Function
If Chill <= 0 And CharSkill2 >= "9" And c.MP >= "30" And MobUzaklýK <= 39 And Form1.MageList.Selected(25) = True Then Chill = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(25): Exit Function
If CounterSpell <= 0 And CharSkill3 >= "9" And c.MP >= "30" And MobUzaklýK <= 39 And Form1.MageList.Selected(40) = True Then CounterSpell = 6:  MageAtak2 DüþmanID, Form1.MageList.ItemData(40): Exit Function
If Spark <= 0 And c.MP >= "15" And MobUzaklýK <= 39 And Form1.MageList.Selected(5) = True Then Spark = 5: MageAtak2 DüþmanID, Form1.MageList.ItemData(5): Exit Function
If ColdWave <= 0 And c.MP >= "7" And MobUzaklýK <= 39 And Form1.MageList.Selected(4) = True Then ColdWave = 5:  MageAtak2 DüþmanID, Form1.MageList.ItemData(4): Exit Function
If Flame <= 0 And c.MP >= "5" And MobUzaklýK <= 39 And Form1.MageList.Selected(3) = True Then Flame = 5:  MageAtak2 DüþmanID, Form1.MageList.ItemData(3): Exit Function
If Shiver <= 0 And c.MP >= "5" And MobUzaklýK <= 39 And Form1.MageList.Selected(2) = True Then Shiver = 5:  MageAtak2 DüþmanID, Form1.MageList.ItemData(2): Exit Function
If Flash <= 0 And c.MP >= "4" And MobUzaklýK <= 39 And Form1.MageList.Selected(1) = True Then Flash = 5:  MageAtak2 DüþmanID, Form1.MageList.ItemData(1): Exit Function
'Seriler
If CharSkill1 >= "56" And c.MP >= "95" And MobUzaklýK <= 19 And Form1.MageList.Selected(18) = True Then MageAtak1 DüþmanID, Form1.MageList.ItemData(18): Exit Function
If CharSkill2 >= "56" And c.MP >= "95" And MobUzaklýK <= 19 And Form1.MageList.Selected(34) = True Then MageAtak1 DüþmanID, Form1.MageList.ItemData(34): Exit Function
If CharSkill3 >= "56" And c.MP >= "95" And MobUzaklýK <= 19 And Form1.MageList.Selected(50) = True Then MageAtak1 DüþmanID, Form1.MageList.ItemData(50): Exit Function
If CharSkill1 >= "43" And c.MP >= "75" And MobUzaklýK <= 19 And Form1.MageList.Selected(15) = True Then MageAtak1 DüþmanID, Form1.MageList.ItemData(15): Exit Function
If CharSkill2 >= "43" And c.MP >= "75" And MobUzaklýK <= 19 And Form1.MageList.Selected(32) = True Then MageAtak1 DüþmanID, Form1.MageList.ItemData(32): Exit Function
If CharSkill3 >= "43" And c.MP >= "75" And MobUzaklýK <= 19 And Form1.MageList.Selected(47) = True Then MageAtak1 DüþmanID, Form1.MageList.ItemData(47): Exit Function
If CharSkill1 >= "18" And c.MP >= "60" And MobUzaklýK <= 27 And Form1.MageList.Selected(10) = True Then MageAtak1 DüþmanID, Form1.MageList.ItemData(10): Exit Function
If CharSkill2 >= "18" And c.MP >= "60" And MobUzaklýK <= 27 And Form1.MageList.Selected(27) = True Then MageAtak2 DüþmanID, Form1.MageList.ItemData(27): Exit Function
If CharSkill3 >= "18" And c.MP >= "60" And MobUzaklýK <= 27 And Form1.MageList.Selected(42) = True Then MageAtak2 DüþmanID, Form1.MageList.ItemData(42): Exit Function
If CharSkill1 >= "3" And c.MP >= "20" And MobUzaklýK <= 19 And Form1.MageList.Selected(7) = True Then MageAtak1 DüþmanID, Form1.MageList.ItemData(7): Exit Function
If CharSkill2 >= "3" And c.MP >= "20" And MobUzaklýK <= 19 And Form1.MageList.Selected(24) = True Then MageAtak2 DüþmanID, Form1.MageList.ItemData(24): Exit Function
If CharSkill3 >= "3" And c.MP >= "20" And MobUzaklýK <= 19 And Form1.MageList.Selected(39) = True Then MageAtak2 DüþmanID, Form1.MageList.ItemData(39): Exit Function
'Stafflar
If CharSkill1 >= "72" And c.MP >= "300" And MobUzaklýK <= 14 And Form1.MageList.Selected(21) = True Then MageAtak2 DüþmanID, Form1.MageList.ItemData(21): Exit Function
If CharSkill2 >= "72" And c.MP >= "300" And MobUzaklýK <= 14 And Form1.MageList.Selected(37) = True Then MageAtak2 DüþmanID, Form1.MageList.ItemData(37): Exit Function
If CharSkill3 >= "72" And c.MP >= "300" And MobUzaklýK <= 14 And Form1.MageList.Selected(53) = True Then MageAtak2 DüþmanID, Form1.MageList.ItemData(53): Exit Function
If CharSkill1 >= "42" And c.MP >= "100" And MobUzaklýK <= 14 And Form1.MageList.Selected(14) = True Then MageAtak2 DüþmanID, Form1.MageList.ItemData(14): Exit Function
If CharSkill2 >= "42" And c.MP >= "100" And MobUzaklýK <= 14 And Form1.MageList.Selected(31) = True Then MageStaff DüþmanID, Form1.MageList.ItemData(31): Exit Function
If CharSkill3 >= "42" And c.MP >= "100" And MobUzaklýK <= 14 And Form1.MageList.Selected(46) = True Then MageStaff DüþmanID, Form1.MageList.ItemData(46): Exit Function
If Form1.MageList.Selected(6) = True And c.MP >= "10" And MobUzaklýK <= 14 Then MageStaff DüþmanID, Form1.MageList.ItemData(6): Exit Function
If Form1.MageList.Selected(0) = True And c.MP >= "2" And MobUzaklýK <= 14 Then MageStaff DüþmanID, Form1.MageList.ItemData(0): Exit Function
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
'Paket "080101" + HexFormatla(Hex(MOBID), 4) + "A000090000"
End If
End Function
Function MageAlan(Target_X As Long, Target_Y As Long, Target_Z As Long, skillNo As Long)
On Error Resume Next
Paket "3101" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Target_X), 1, 4) + Strings.Mid(AlignDWORD(Target_Z), 1, 4) + Strings.Mid(AlignDWORD(Target_Y), 1, 4) + "0000000000000F00"
Paket "3102" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Target_X), 1, 4) + Strings.Mid(AlignDWORD(Target_Z), 1, 4) + Strings.Mid(AlignDWORD(Target_Y), 1, 4) + "000000000000"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Target_X), 1, 4) + Strings.Mid(AlignDWORD(Target_Z), 1, 4) + Strings.Mid(AlignDWORD(Target_Y), 1, 4) + "0000000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Target_X), 1, 4) + Strings.Mid(AlignDWORD(Target_Z), 1, 4) + Strings.Mid(AlignDWORD(Target_Y), 1, 4) + "9BFF000000000000"
If Form1.Check9.Value = 0 Then
Form2.MageAtak.Interval = 2500
End If

'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
 'Paket "080101" + HexFormatla(Hex(UserID), 4) + "FF000000"
'End If
End Function
Function MageNova(Target_X As Long, Target_Y As Long, Target_Z As Long, skillNo As Long)
On Error Resume Next
If skillNo = 571 Then
Paket "3101" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Target_X), 1, 4) + "0000" & Strings.Mid(AlignDWORD(Target_Y), 1, 4) + "0000000000000D00"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Target_X), 1, 4) + "0000" & Strings.Mid(AlignDWORD(Target_Y), 1, 4) + "000000000000"
ElseIf skillNo = 771 Then
Paket "3101" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Target_X), 1, 4) + Strings.Mid(AlignDWORD(Target_Z), 1, 4) + Strings.Mid(AlignDWORD(Target_Y), 1, 4) + "0000000000000D00"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Target_X), 1, 4) + Strings.Mid(AlignDWORD(Target_Z), 1, 4) + Strings.Mid(AlignDWORD(Target_Y), 1, 4) + "000000000000"
Else
Paket "3101" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Target_X), 1, 4) + Strings.Mid(AlignDWORD(Target_Z), 1, 4) + Strings.Mid(AlignDWORD(Target_Y), 1, 4) + "0000000000000F00"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & skillNo), 1, 6) + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(Target_X), 1, 4) + Strings.Mid(AlignDWORD(Target_Z), 1, 4) + Strings.Mid(AlignDWORD(Target_Y), 1, 4) + "000000000000"
End If
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
' Paket "080101" + HexFormatla(Hex(UserID), 4) + "FF000000"
'End If
End Function
Public Sub MageStaff(UserID As Long, skillNo As Long)
SkillID = Strings.Mid(AlignDWORD(c.class & Right(skillNo, 3)), 1, 6)
Paket "3103" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0100010000000000000000000000"
End Sub
Public Sub MageAtak1(UserID As Long, skillNo As Long)
SkillID = Strings.Mid(AlignDWORD(c.class & Right(skillNo, 3)), 1, 6)
If Form1.PKMode.Value = 1 Then
    Paket "3101" + SkillID + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(OkuMobX), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "0000000000000A00"
Else
    Paket "3101" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000A00"
End If

If skillNo = "1757" Then
Paket "3102" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "000000000000000000000000"
End If

If skillNo = "1757" Then
If Form1.PKMode.Value = 1 Then
     Paket "3103" + SkillID + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(OkuMobX), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "0000000000000000"
Else
    Paket "3103" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000000"
End If
End If

If skillNo <> "1757" Then
If Form1.PKMode.Value = 1 Then
    Paket "3103" + SkillID + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(OkuMobX), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "0000000000000000"
Else
    Paket "3103" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + HexFormatla(Hex(OkuMobX), 4) + HexFormatla(Hex(MobZ), 4) + HexFormatla(Hex(OkuMobY), 4) + "000000000000"
End If
End If

If skillNo = "1757" Then
Paket "3104" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + HexFormatla(Hex(OkuMobX), 4) + HexFormatla(Hex(MobZ), 4) + HexFormatla(Hex(OkuMobY), 4) + "9BFF00000000"
End If
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
 'Paket "080101" + HexFormatla(Hex(UserID), 4) + "FF000000"
'End If

End Sub

Public Sub MageAtak2(UserID As Long, skillNo As Long)
SkillID = Strings.Mid(AlignDWORD(c.class & Right(skillNo, 3)), 1, 6)
If Form1.PKMode.Value = 1 Then
    Paket "3101" + SkillID + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(OkuMobX), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "0000000000000F00"
Else
    Paket "3101" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000F00"
End If

If skillNo = "1509" Or skillNo = "1515" Or skillNo = "1527" Or skillNo = "1535" Or skillNo = "1557" Or skillNo = "1615" Or skillNo = "1627" Or skillNo = "1635" Or skillNo = "1735" Or skillNo = "1751" Or skillNo = "1754" Then
Paket "3102" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + HexFormatla(Hex(c.kX), 4) + HexFormatla(Hex(c.kZ), 4) + HexFormatla(Hex(c.kY), 4) + "000000000000"
End If

If skillNo = "1509" Or skillNo = "1515" Or skillNo = "1527" Or skillNo = "1535" Or skillNo = "1557" Or skillNo = "1615" Or skillNo = "1627" Or skillNo = "1635" Or skillNo = "1735" Or skillNo = "1751" Or skillNo = "1754" Then
If Form1.PKMode.Value = 1 Then
    Paket "3103" + SkillID + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(OkuMobX), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "0000000000000000"
Else
    Paket "3103" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000000"
End If
End If

If skillNo <> "1509" Or skillNo <> "1515" Or skillNo <> "1527" Or skillNo <> "1535" Or skillNo <> "1557" Or skillNo = "1615" Or skillNo <> "1627" Or skillNo <> "1635" Or skillNo <> "1735" Or skillNo <> "1751" Or skillNo <> "1754" Then
If Form1.PKMode.Value = 1 Then
   ' Paket "3103" + SkillID + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(okumobx), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(okumoby), 1, 4) + "0000000000000000"
Else
    Paket "3103" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + HexFormatla(Hex(OkuMobX), 4) + HexFormatla(Hex(MobZ), 4) + HexFormatla(Hex(OkuMobY), 4) + "000000000000"
End If
End If

If skillNo = "1509" Or skillNo = "1515" Or skillNo = "1527" Or skillNo = "1535" Or skillNo = "1557" Or skillNo = "1615" Or skillNo = "1627" Or skillNo = "1635" Or skillNo = "1735" Or skillNo = "1751" Or skillNo = "1754" Then
Paket "3104" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + HexFormatla(Hex(c.kX), 4) + HexFormatla(Hex(c.kZ), 4) + HexFormatla(Hex(c.kY), 4) + "9BFF000000000000"
End If

'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
' Paket "080101" + HexFormatla(Hex(UserID), 4) + "FF000000"
'End If
End Sub

Public Sub MageAtak3(UserID As Long, skillNo As Long)
SkillID = Strings.Mid(AlignDWORD(c.class & Right(skillNo, 3)), 1, 6)

If Form1.PKMode.Value = 1 Then
    Paket "3101" + SkillID + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(OkuMobX), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "0000000000000F00"
    Paket "3103" + SkillID + "00" + CharID + "FFFF" + Strings.Mid(AlignDWORD(OkuMobX), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "0000000000000000"
Else
    Paket "3101" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000B00"
    Paket "3103" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "000000000000000000000000"
End If

'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
 'Paket "080101" + HexFormatla(Hex(UserID), 4) + "FF000000"
'End If
End Sub
Function OkcuAtak()
If Form1.chatack = 1 Then

'If VampiricTime <= 0 And CharSkill2 >= "50" And c.MP >= "50" And Form1.OkcuList.Selected(25) = True Then DaggerTak: VampiricTime = 61: AsasSkill Düþmanid, Form1.OkcuList.ItemData(25): DaggerÇýkar: Exit Function
'If BloodTime <= 0 And CharSkill2 >= "10" And c.MP >= "20" And Form1.OkcuList.Selected(24) = True Then DaggerTak: BloodTime = 61: AsasSkill Düþmanid, Form1.OkcuList.ItemData(24):  DaggerÇýkar: Exit Function
If Form1.OkcuList.Selected(14) = True And Form1.OkcuList.Selected(6) = True Then '8li baþlangýç
If ArrowShowerTime <= 0 And CharSkill1 >= "55" And c.MP >= "150" And MobUzaklýK <= 3 Then ArrowShowerTime = 2:  BesliOk DüþmanID
If CharSkill1 >= "15" And c.MP >= "40" And MobUzaklýK <= 3 Then UcluOk DüþmanID: Exit Function
ElseIf Form1.OkcuList.Selected(14) = True And Form1.OkcuList.Selected(6) = False Then
If ArrowShowerTime <= 0 And CharSkill1 >= "55" And c.MP >= "150" And MobUzaklýK <= 3 Then ArrowShowerTime = 2:  BesliOk DüþmanID: Exit Function
ElseIf Form1.OkcuList.Selected(14) = False And Form1.OkcuList.Selected(6) = True Then
If CharSkill1 >= "15" And c.MP >= "40" And MobUzaklýK <= 3 Then UcluOk DüþmanID: Exit Function
End If '8li Bitiþ
If PowerShotTime <= 0 And CharSkill1 >= "80" And MobUzaklýK <= 55 And c.MP >= "400" And Form1.OkcuList.Selected(23) = True Then PowerShotTime = 61:  RogueAtak DüþmanID, Form1.OkcuList.ItemData(23): Exit Function
If BlindingStrafeTime <= 0 And CharSkill1 >= "75" And MobUzaklýK <= 55 And c.MP >= "300" And Form1.OkcuList.Selected(22) = True Then BlindingStrafeTime = 61:  RogueAtak DüþmanID, Form1.OkcuList.ItemData(22): Exit Function
If LightingShotTime <= 0 And CharSkill1 >= "66" And MobUzaklýK <= 55 And c.MP >= "200" And Form1.OkcuList.Selected(19) = True Then LightingShotTime = 7:  RogueAtak DüþmanID, Form1.OkcuList.ItemData(19): Exit Function
If IceShotTime <= 0 And CharSkill1 >= "62" And MobUzaklýK <= 55 And c.MP >= "200" And Form1.OkcuList.Selected(18) = True Then IceShotTime = 7:  RogueAtak DüþmanID, Form1.OkcuList.ItemData(18): Exit Function
If CounterStrikeTime <= 0 And CharSkill1 >= "52" And MobUzaklýK <= 55 And c.MP >= "150" And Form1.OkcuList.Selected(15) = True Then CounterStrikeTime = 61:  RogueAtak DüþmanID, Form1.OkcuList.ItemData(15): Exit Function
If ViperTime <= 0 And CharSkill1 >= "50" And MobUzaklýK <= 55 And c.MP >= "50" And Form1.OkcuList.Selected(13) = True Then ViperTime = 5:  RogueAtak DüþmanID, Form1.OkcuList.ItemData(13): Exit Function
If ExplosiveShotTime <= 0 And CharSkill1 >= "45" And MobUzaklýK <= 55 And MobUzaklýK <= 51 And c.MP >= "50" And Form1.OkcuList.Selected(12) = True Then ExplosiveShotTime = 5:  RogueAtak DüþmanID, Form1.OkcuList.ItemData(12): Exit Function
If PoisonShotTime <= 0 And CharSkill1 >= "35" And MobUzaklýK <= 55 And c.MP >= "30" And Form1.OkcuList.Selected(10) = True Then PoisonShotTime = 5:  RogueAtak DüþmanID, Form1.OkcuList.ItemData(10): Exit Function
If FireShotTime <= 0 And CharSkill1 >= "30" And MobUzaklýK <= 55 And c.MP >= "30" And Form1.OkcuList.Selected(9) = True Then FireShotTime = 5:  RogueAtak DüþmanID, Form1.OkcuList.ItemData(9): Exit Function
If PoisonArrowTime <= 0 And CharSkill1 >= "10" And MobUzaklýK <= 55 And c.MP >= "10" And Form1.OkcuList.Selected(5) = True Then PoisonArrowTime = 5:  RogueAtak DüþmanID, Form1.OkcuList.ItemData(5): Exit Function
If FireArrowTime <= 0 And CharSkill1 >= "5" And MobUzaklýK <= 55 And c.MP >= "10" And Form1.OkcuList.Selected(4) = True Then FireArrowTime = 4:  RogueAtak DüþmanID, Form1.OkcuList.ItemData(4): Exit Function
If CharSkill1 >= "72" And MobUzaklýK <= 55 And Form1.OkcuList.Selected(21) = True Then RogueAtak DüþmanID, Form1.OkcuList.ItemData(21): Exit Function
If CharSkill1 >= "70" And MobUzaklýK <= 55 And Form1.OkcuList.Selected(20) = True Then RogueAtak DüþmanID, Form1.OkcuList.ItemData(20): Exit Function
If CharSkill1 >= "60" And MobUzaklýK <= 55 And Form1.OkcuList.Selected(17) = True Then RogueAtak DüþmanID, Form1.OkcuList.ItemData(17): Exit Function
If CharSkill1 >= "57" And MobUzaklýK <= 55 And Form1.OkcuList.Selected(16) = True Then RogueAtak DüþmanID, Form1.OkcuList.ItemData(16): Exit Function
If CharSkill1 >= "40" And MobUzaklýK <= 55 And Form1.OkcuList.Selected(11) = True Then RogueAtak DüþmanID, Form1.OkcuList.ItemData(11): Exit Function
If CharSkill1 >= "25" And MobUzaklýK <= 55 And Form1.OkcuList.Selected(8) = True Then RogueAtak DüþmanID, Form1.OkcuList.ItemData(8): Exit Function
If CharSkill1 >= "20" And MobUzaklýK <= 55 And Form1.OkcuList.Selected(7) = True Then RogueAtak DüþmanID, Form1.OkcuList.ItemData(7): Exit Function
If Form1.OkcuList.Selected(3) = True And MobUzaklýK <= 55 Then RogueAtak DüþmanID, Form1.OkcuList.ItemData(3): Exit Function
If Form1.OkcuList.Selected(2) = True And MobUzaklýK <= 55 Then RogueAtak DüþmanID, Form1.OkcuList.ItemData(2): Exit Function
If Form1.OkcuList.Selected(1) = True And MobUzaklýK <= 55 Then RogueAtak DüþmanID, Form1.OkcuList.ItemData(1): Exit Function
If Form1.OkcuList.Selected(0) = True And MobUzaklýK <= 14 Then StrokeAtak DüþmanID: Exit Function
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
 'Paket "080101" + HexFormatla(Hex(DüþmanID), 4) + "FF000000"
End If
End Function
Public Sub RogueAtak(UserID As Long, skillNo As Long)
On Error Resume Next
Dim SkillID As String
SkillID = Strings.Mid(AlignDWORD(c.class & Right(skillNo, 3)), 1, 6)
If skillNo = "1552" Or skillNo = "1585" Then
Paket "3101" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000A00"
Bekle "10"
Paket "3102" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "000000000000000000000000"
Bekle "10"
Paket "3103" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000000"
Bekle "10"
Paket "3104" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + HexFormatla(Hex(OkuMobX), 4) + HexFormatla(Hex(MobZ), 4) + HexFormatla(Hex(OkuMobY), 4) + "9BFF00000000"
Else
Paket "3101" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000D00"
Bekle "10"
Paket "3102" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "000000000000000000000000"
Bekle "10"
Paket "3103" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000000"
Bekle "10"
Paket "3104" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + HexFormatla(Hex(OkuMobX), 4) + HexFormatla(Hex(MobZ), 4) + HexFormatla(Hex(OkuMobY), 4) + "9BFF00000000"
End If
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
 'Paket "080101" + HexFormatla(Hex(UserID), 4) + "FF000000"
'End If
End Sub
Function WarriorAtakVur()
If Form1.chatack = 1 Then

If BloodingTime <= 0 And CharSkill1 >= "75" And MobUzaklýK <= 14 And c.MP >= "350" And Form1.WarList.Selected(19) = True Then BloodingTime = 22:  WarriorAtak DüþmanID, Form1.WarList.ItemData(19): Exit Function
If ManglingTime <= 0 And CharSkill1 >= "50" And MobUzaklýK <= 14 And c.MP >= "60" And Form1.WarList.Selected(14) = True Then ManglingTime = 4:  WarriorAtak DüþmanID, Form1.WarList.ItemData(14): Exit Function
If MultipleShorkTime <= 0 And CharSkill1 >= "40" And MobUzaklýK <= 14 And c.MP >= "60" And Form1.WarList.Selected(12) = True Then MultipleShorkTime = 4:  WarriorAtak DüþmanID, Form1.WarList.ItemData(12): Exit Function
If SeverTime <= 0 And CharSkill1 >= "30" And MobUzaklýK <= 14 And c.MP >= "40" And Form1.WarList.Selected(10) = True Then SeverTime = 4:  WarriorAtak DüþmanID, Form1.WarList.ItemData(10): Exit Function
If LegCuttingTime <= 0 And CharSkill1 >= "20" And MobUzaklýK <= 14 And c.MP >= "84" And Form1.WarList.Selected(8) = True Then LegCuttingTime = 6:  WarriorAtak DüþmanID, Form1.WarList.ItemData(8): Exit Function
If ShearTime <= 0 And CharSkill1 >= "10" And MobUzaklýK <= 14 And c.MP >= "20" And Form1.WarList.Selected(6) = True Then ShearTime = 4:  WarriorAtak DüþmanID, Form1.WarList.ItemData(6): Exit Function
If HashTime <= 0 And c.MP >= "10" And MobUzaklýK <= 14 And Form1.WarList.Selected(4) = True Then HashTime = 4:  WarriorAtak DüþmanID, Form1.WarList.ItemData(4): Exit Function
If PiercingTime <= 0 And c.MP >= "9" And MobUzaklýK <= 14 And Form1.WarList.Selected(3) = True Then PiercingTime = 4:  WarriorAtak DüþmanID, Form1.WarList.ItemData(3): Exit Function
If CrashTime <= 0 And c.MP >= "4" And MobUzaklýK <= 14 And Form1.WarList.Selected(2) = True Then CrashTime = 4:  WarriorAtak DüþmanID, Form1.WarList.ItemData(2): Exit Function
If SlashTime <= 0 And c.MP >= "4" And MobUzaklýK <= 14 And Form1.WarList.Selected(1) = True Then SlashTime = 4:  WarriorAtak DüþmanID, Form1.WarList.ItemData(1): Exit Function
If CharSkill1 >= "80" And c.MP >= "400" And MobUzaklýK <= 14 And Form1.WarList.Selected(20) = True Then WarriorAtak DüþmanID, Form1.WarList.ItemData(20): Exit Function
If CharSkill1 >= "70" And c.MP >= "400" And MobUzaklýK <= 14 And Form1.WarList.Selected(18) = True Then WarriorAtak DüþmanID, Form1.WarList.ItemData(18): Exit Function
If CharSkill1 >= "60" And c.MP >= "300" And MobUzaklýK <= 14 And Form1.WarList.Selected(17) = True Then WarriorAtak DüþmanID, Form1.WarList.ItemData(17): Exit Function
If CharSkill1 >= "57" And c.MP >= "250" And MobUzaklýK <= 14 And Form1.WarList.Selected(16) = True Then WarriorAtak DüþmanID, Form1.WarList.ItemData(16): Exit Function
If CharSkill1 >= "55" And c.MP >= "200" And MobUzaklýK <= 14 And Form1.WarList.Selected(15) = True Then WarriorAtak DüþmanID, Form1.WarList.ItemData(15): Exit Function
If CharSkill1 >= "45" And c.MP >= "150" And MobUzaklýK <= 14 And Form1.WarList.Selected(13) = True Then WarriorAtak DüþmanID, Form1.WarList.ItemData(13): Exit Function
If CharSkill1 >= "35" And c.MP >= "120" And MobUzaklýK <= 14 And Form1.WarList.Selected(11) = True Then WarriorAtak DüþmanID, Form1.WarList.ItemData(11): Exit Function
If CharSkill1 >= "25" And c.MP >= "90" And MobUzaklýK <= 14 And Form1.WarList.Selected(9) = True Then WarriorAtak DüþmanID, Form1.WarList.ItemData(9): Exit Function
If CharSkill1 >= "15" And c.MP >= "60" And MobUzaklýK <= 14 And Form1.WarList.Selected(7) = True Then WarriorAtak DüþmanID, Form1.WarList.ItemData(7): Exit Function
If CharSkill1 >= "5" And c.MP >= "30" And MobUzaklýK <= 14 And Form1.WarList.Selected(5) = True Then WarriorAtak DüþmanID, Form1.WarList.ItemData(5): Exit Function
If Form1.WarList.Selected(0) = True And c.MP >= "2" And MobUzaklýK <= 14 Then StrokeAtak DüþmanID: Exit Function
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
' Paket "080101" + HexFormatla(Hex(DüþmanID), 4) + "FF000000"
End If
End Function
Public Sub WarriorAtak(UserID As Long, skillNo As Long)
On Error Resume Next
Dim SkillID As String
SkillID = Strings.Mid(AlignDWORD(c.class & Right(skillNo, 3)), 1, 6)
Paket "3103" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0100010000000000000000000000"
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
'Paket "080101" + HexFormatla(Hex(UserID), 4) + "FF000000"
'End If
End Sub
Function CharSkill1() As Long
CharSkill1 = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1D0) + &H12C)
End Function

Function CharSkill2() As Long
CharSkill2 = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1D0) + &H130)
End Function

Function CharSkill3() As Long
CharSkill3 = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1D0) + &H134)
End Function

Function CharSkill4() As Long
CharSkill4 = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1D0) + &H138)
End Function
Function MobUzaklýK() As Long
On Error Resume Next
If DüþmanID = "FFFF" Then MobUzaklýK = 255: Exit Function
MobUzaklýK = Sqr((OkuMobX - c.kX) ^ 2 + (OkuMobY - c.kY) ^ 2)
End Function
Function BesliOk(UserID As Long)
Paket "3101" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000F00"
Bekle "10"
Paket "3102" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "000000000000010000000000"
Bekle "10"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000100000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + Strings.Mid(AlignDWORD(c.kX), 1, 4) + Strings.Mid(AlignDWORD(c.kZ), 1, 4) + Strings.Mid(AlignDWORD(c.kY), 1, 4) + "9BFF010000000000"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000200000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + Strings.Mid(AlignDWORD(c.kX), 1, 4) + Strings.Mid(AlignDWORD(c.kZ), 1, 4) + Strings.Mid(AlignDWORD(c.kY), 1, 4) + "9BFF020000000000"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000100000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + Strings.Mid(AlignDWORD(c.kX), 1, 4) + Strings.Mid(AlignDWORD(c.kZ), 1, 4) + Strings.Mid(AlignDWORD(c.kY), 1, 4) + "9BFF010000000000"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000300000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + Strings.Mid(AlignDWORD(OkuMobX), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "9BFF030000000000"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000400000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(c.class & "555"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + Strings.Mid(AlignDWORD(c.kX), 1, 4) + Strings.Mid(AlignDWORD(c.kZ), 1, 4) + Strings.Mid(AlignDWORD(c.kY), 1, 4) + "9BFF040000000000"
End Function

Function UcluOk(UserID As Long)
Paket "3101" + Strings.Mid(AlignDWORD(c.class & "515"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000000000000000D00"
Bekle "10"
Paket "3102" + Strings.Mid(AlignDWORD(c.class & "515"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "000000000000010000000000"
Bekle "10"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & "515"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000100000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(c.class & "515"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + Strings.Mid(AlignDWORD(c.kZ), 1, 4) + Strings.Mid(AlignDWORD(c.kY), 1, 4) + "9BFF010000000000"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & "515"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000100000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(c.class & "515"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + Strings.Mid(AlignDWORD(c.kZ), 1, 4) + Strings.Mid(AlignDWORD(c.kY), 1, 4) + "9BFF010000000000"
Paket "3103" + Strings.Mid(AlignDWORD(c.class & "515"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0000000000000200000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(c.class & "515"), 1, 6) + "00" + CharID + HexFormatla(Hex(UserID), 4) + Strings.Mid(AlignDWORD(OkuMobX), 1, 4) + Strings.Mid(AlignDWORD(MobZ), 1, 4) + Strings.Mid(AlignDWORD(OkuMobY), 1, 4) + "9BFF020000000000"
End Function
Public Sub StrokeAtak(UserID As Long)
On Error Resume Next
Dim SkillID As String
SkillID = Strings.Mid(AlignDWORD(c.class & "001"), 1, 6)
Paket "3103" + SkillID + "00" + CharID + HexFormatla(Hex(UserID), 4) + "0100010000000000000000000000"
'If Form1.Check8.Value = 1 And MobUzaklýK <= 7 Then
'Paket "080101" + HexFormatla(Hex(UserID), 4) + "FF000000"
'End If
End Sub
Function AsasMý() As Boolean
If Form1.Combo1(2).ListIndex = 1 Then AsasMý = True: Exit Function
If CharSkill2 > CharSkill1 Then
AsasMý = True
Else
AsasMý = False
End If
End Function

Function OkcuMu() As Boolean
If Form1.Combo1(2).ListIndex = 0 Then OkcuMu = True: Exit Function
If CharSkill1 >= CharSkill2 Then
OkcuMu = True
Else
OkcuMu = False
End If
End Function
