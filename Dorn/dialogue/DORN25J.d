// creator  : weidu (version 23800)
// argument : DORN25J.DLG
// game     : .
// source   : ./DATA/25DIALOG.BIF
// dialog   : .\lang\en_us/dialog.tlk
// dialogF  : (none)

BEGIN ~DORN25J~

IF ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",17)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I can think of few more appropriate places to meet my end, <CHARNAME>—but I'd rather not meet it yet.~ #83156 */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",18)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",15)
~ EXIT
  IF ~  IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERD25J~ 16
  IF ~  IfValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGA25J~ 17
  IF ~  IfValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIE25J~ 36
  IF ~  IfValidForPartyDialogue("JAN")
~ THEN EXTERN ~JAN25J~ 20
  IF ~  IfValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~VALYG25J~ 24
  IF ~  IfValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEI25J~ 47
  IF ~  IfValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERA25J~ 1
END

IF ~  AreaCheck("OH4220")
Global("OHR_FINALE","GLOBAL",24)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~We took care of the hard part.~ #83251 */
  IF ~~ THEN EXTERN ~OHRDWS01~ 11
  IF ~  StateCheck("OHRDWS01",STATE_REALLY_DEAD)
~ THEN EXTERN ~OHRDWS02~ 6
  IF ~  IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERD25J~ 17
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~If you'd really like to know, I've some theories I could share with you.~ #83273 */
  IF ~~ THEN EXTERN ~RASAA25J~ 158
  IF ~  IfValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERA25J~ 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~For myself!~ #82717 */
  IF ~~ THEN EXIT
  IF ~  IfValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~HEXXA25J~ 5
  IF ~  IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSC25J~ 15
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~Try it, Sharran! I'll chop your mountain down with the side of my hand!~ #82701 */
  IF ~~ THEN EXIT
END

IF ~  Global("DornToBLovetalks","GLOBAL",2)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~We are partners, are we not? ~ #96863 */
  IF ~~ THEN REPLY @7 /* ~We're far more than that, I think.~ #96815 */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 300
  IF ~~ THEN REPLY @8 /* ~Lovers, not partners. ~ #96816 */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 300
  IF ~~ THEN REPLY @9 /* ~Call it what you will.~ #96817 */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 300
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.1 5.0
  SAY @10 /* ~I once predicted you would become a power in the realms... and I was right.~ #96864 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @11 /* ~I have stood by you and fought by your side. We have become lovers and more. ~ #96865 */
  IF ~~ THEN REPLY @12 /* ~Much more.~ #96818 */ GOTO 8
  IF ~~ THEN REPLY @13 /* ~Much to my astonishment. But somehow... so we have.~ #96819 */ GOTO 8
  IF ~~ THEN REPLY @14 /* ~What do you want?~ #96820 */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2 7.1 7.0
  SAY @15 /* ~I would be more than your lover, <CHARNAME>. I would be your sworn brother, an avatar of your will in the realms.~ #96866 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @16 /* ~Will you grant me this boon, <CHARNAME>? Will you share with me your glory?~ #96867 */
  IF ~~ THEN REPLY @17 /* ~It will be yours.~ #96821 */ GOTO 10
  IF ~~ THEN REPLY @18 /* ~That's a lot to ask for, Dorn.~ #96822 */ GOTO 11
  IF ~~ THEN REPLY @19 /* ~You're mad, half-orc.~ #96823 */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 12.0 11.0 9.0
  SAY @20 /* ~We WILL make our mark upon the realms, <CHARNAME>. I promise you that.~ #96868 */
  IF ~~ THEN GOTO 304
END

IF ~~ THEN BEGIN 11 // from: 9.2 9.1
  SAY @21 /* ~I simply ask you to share your power with me. Is that not what partners do?~ #96869 */
  IF ~~ THEN REPLY @22 /* ~I suppose. Fine, then. You will have it.~ #96824 */ GOTO 10
  IF ~~ THEN REPLY @23 /* ~Not these partners.~ #96825 */ GOTO 12
  IF ~~ THEN REPLY @24 /* ~This is what you wanted all along, wasn't it? I was nothing to you but a means to an end.~ #96826 */ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY @25 /* ~Then you do not truly love me. What is it? Do you love me, or do you distrust me?~ #96870 */
  IF ~~ THEN REPLY @26 /* ~If it will make you happy, Dorn, I will share what power I can.~ #96827 */ GOTO 10
  IF ~~ THEN REPLY @27 /* ~I can't. I'm sorry.~ #96828 */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY @28 /* ~You are not the <PRO_MANWOMAN> I thought you were. We are finished, you and I. ~ #96871 */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
SetGlobal("OHD_romancerejected","GLOBAL",1)
RealSetGlobalTimer("OHD_rejected_timer","GLOBAL",ONE_DAY)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY @29 /* ~I thought you more than that. Much more.~ #96872 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @30 /* ~I see now I was wrong. We are finished, you and I. ~ #96873 */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
SetGlobal("OHD_romancerejected","GLOBAL",1)
RealSetGlobalTimer("OHD_rejected_timer","GLOBAL",ONE_DAY)
~ EXIT
END

IF ~  Global("DornToBLovetalks","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY @31 /* ~The time is almost upon us. We will face Amelyssan, and you will take your rightful place as a new power in the realms.~ #96874 */
  IF ~~ THEN REPLY @32 /* ~Let's just get this over with.~ #96829 */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY @33 /* ~WE will take our rightful place as a power in the realms. ~ #96830 */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY @34 /* ~Yes. I will. ~ #96831 */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @35 /* ~Of course.~ #96875 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 16.2 16.0
  SAY @36 /* ~How do you feel?~ #96876 */
  IF ~~ THEN REPLY @37 /* ~I am eager to see this done.~ #96832 */ GOTO 19
  IF ~~ THEN REPLY @38 /* ~Worried. A little anxious. ~ #96833 */ GOTO 20
  IF ~~ THEN REPLY @39 /* ~A little peckish. I could use a sandwich right about now.~ #96834 */ GOTO 313
  IF ~~ THEN REPLY @40 /* ~Relieved. This has been a long time coming.~ #96835 */ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @41 /* ~As am I. It will be a good fight.~ #96877 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY @42 /* ~Do not be. We WILL get what we deserve.~ #96878 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 18.3
  SAY @43 /* ~It has.~ #96879 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 18.2
  SAY @44 /* ~What?! I give you my love and devotion, and this is how you repay me?~ #96885 */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 23 // from: 21.0 20.0 19.0
  SAY @45 /* ~Remember what you feel at this moment. What happens next will shape the fate of the realms.~ #96881 */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @46 /* ~Do not forget what you have promised me, <CHARNAME>. ~ #96882 */
  IF ~~ THEN REPLY @47 /* ~I won't. We shall wield a power supreme.~ #96836 */ GOTO 25
  IF ~~ THEN REPLY @48 /* ~I can't give you that sort of power, Dorn.~ #96837 */ GOTO 26
  IF ~~ THEN REPLY @49 /* ~I'm sorry, Dorn. I can't give you what you want.~ #96838 */ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 26.0 24.0
  SAY @50 /* ~A force like none the realms have seen before.~ #96883 */
  IF ~~ THEN GOTO 314
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY @51 /* ~You WILL grant me the power you have promised, my love. Or I will take it from you.~ #96884 */
  IF ~~ THEN REPLY @52 /* ~Hah! That's my man. Don't worry, Dorn: I will share it when the time comes.~ #96839 */ GOTO 25
  IF ~~ THEN REPLY @53 /* ~You'll try. And then you'll die.~ #96840 */ GOTO 53
END

IF ~~ THEN BEGIN 27 // from: 30.1 29.2 28.2 24.2
  SAY @44 /* ~What?! I give you my love and devotion, and this is how you repay me?~ #96885 */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 28 // from: 25.0
  SAY @54 /* ~<CHARNAME> of Candlekeep. Bhaalspawn. Will you bleed for love of me?~ #96886 */
  IF ~~ THEN REPLY @55 /* ~I will.~ #96841 */ GOTO 29
  IF ~~ THEN REPLY @56 /* ~You would have me cut myself?~ #96842 */ GOTO 30
  IF ~~ THEN REPLY @57 /* ~No. I'm sorry, Dorn. I can't do it.~ #96843 */ GOTO 27
END

IF ~~ THEN BEGIN 29 // from: 30.0 28.0
  SAY @58 /* ~There. Now say the words.~ #96887 */
  IF ~~ THEN REPLY @59 /* ~Dorn of clan Il-Khan. Scourge of the Sword Coast. Will you bleed for love of me?~ #96844 */ GOTO 31
  IF ~~ THEN REPLY @60 /* ~Dorn Il-Khan, blah blah blah, cut yourself and bleed on me. ~ #96845 */ GOTO 32
  IF ~~ THEN REPLY @61 /* ~I... I can't. I'm sorry.~ #96846 */ GOTO 27
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY @62 /* ~Take the knife, <CHARNAME>. ~ #96888 */
  IF ~~ THEN REPLY @63 /* ~Very well.~ #96847 */ GOTO 29
  IF ~~ THEN REPLY @64 /* ~Forget it, Dorn. This isn't happening.~ #96848 */ GOTO 27
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY @65 /* ~I will. ~ #96889 */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 29.1
  SAY @66 /* ~You would make a mockery of a sacred rite of binding?~ #96890 */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 33 // from: 31.0
  SAY @67 /* ~Now clasp my hand in yours.~ #96891 */
  IF ~  Gender(Player1,MALE)
~ THEN GOTO 34
  IF ~  Gender(Player1,FEMALE)
~ THEN GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @68 /* ~Hear me, Amelyssan! <CHARNAME> and I are bonded, blood brothers, companions, and lovers!~ #96892 */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY @69 /* ~Hear me, Amelyssan! <CHARNAME> and I are bonded in blood, companions and lovers!~ #96893 */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0 34.0
  SAY @70 /* ~Do you feel the ground shake beneath you? You should, for WE ARE COMING FOR YOU!~ #96894 */
  IF ~~ THEN REPLY @71 /* ~You can run, but you can't hide, you misbegotten harlot!~ #96849 */ GOTO 37
  IF ~~ THEN REPLY @72 /* ~That's a bit much, don't you think?~ #96850 */ GOTO 38
  IF ~~ THEN REPLY @73 /* ~I love you.~ #96851 */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY @74 /* ~Hah! She will indeed. Let us go, then, my love. The future is ours for the taking.~ #96895 */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY @75 /* ~She should quake before us.~ #96896 */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 36.2
  SAY @76 /* ~And I you.~ #96897 */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 38.0
  SAY @77 /* ~Let us go, my love. The future is ours for the taking. ~ #96898 */
  IF ~~ THEN GOTO 319
END

IF ~  Global("OHD_saradushtalk","GLOBAL",1)
~ THEN BEGIN 41 // from:
  SAY @78 /* ~Yaga-Shura dead, a city burning, and you well on your way to victory. This is no contest; it is a slaughter. Our enemies fall before us.~ #96899 */
  IF ~~ THEN DO ~SetGlobal("OHD_saradushtalk","GLOBAL",2)
RealSetGlobalTimer("DornToBLovetalksTimer","GLOBAL",5400)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @79 /* ~This is a glorious day.~ #96900 */
  IF ~~ THEN REPLY @80 /* ~A lucky one, you mean.~ #96852 */ GOTO 43
  IF ~~ THEN REPLY @81 /* ~I can think of a few good ways to celebrate...~ #96853 */ GOTO 44
  IF ~~ THEN REPLY @82 /* ~Glorious? I think not.~ #96854 */ GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY @83 /* ~More than lucky. ~ #96901 */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 44 // from: 42.1
  SAY @84 /* ~As can I. ~ #96902 */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 45 // from: 42.2
  SAY @85 /* ~Are you not pleased, my love? ~ #96903 */
  IF ~~ THEN REPLY @86 /* ~I just—this wasn't what I expected.~ #96855 */ GOTO 48
  IF ~~ THEN REPLY @87 /* ~A city destroyed and its inhabitants dead? Oh, yes. I'm thrilled. ~ #96856 */ GOTO 46
  IF ~~ THEN REPLY @88 /* ~Only a madman could find pleasure in this.~ #96857 */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY @89 /* ~So you should be.~ #96904 */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY @90 /* ~A madman, am I? You will regret your words, <CHARNAME>! ~ #96905 */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.0 45.0 44.0 43.0
  SAY @91 /* ~This is our destiny, <CHARNAME>. I have never been more sure of it. ~ #96906 */
  IF ~~ THEN REPLY @92 /* ~Nor have I. Whatever Bhaalspawn remain will fall before me. I WILL claim the power that is my birthright.~ #96858 */ GOTO 49
  IF ~~ THEN REPLY @93 /* ~I'm glad one of us is feeling confident.~ #96859 */ GOTO 50
  IF ~~ THEN REPLY @94 /* ~We'll see.~ #96860 */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY @95 /* ~You are magnificent. ~ #96907 */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY @96 /* ~It is a certainty. ~ #96908 */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 48.2
  SAY @97 /* ~Indeed we will, my love. ~ #96909 */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0 50.0 49.0
  SAY @98 /* ~The others are not awake yet... let us TRULY celebrate this great victory.~ #96910 */
  IF ~~ THEN REPLY @99 /* ~I'm game if you are... ~ #96861 */ DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
Wait(2)
SmallWait(1)
EndCutSceneMode()
~ EXIT
  IF ~~ THEN REPLY @100 /* ~Later. We've a long day ahead of us first.~ #96862 */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 32.0 27.0 26.1 22.0
  SAY @101 /* ~If you will not share your power with me, <CHARNAME>, I will take it!~ #96911 */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~  Global("OHD_romancerejected","GLOBAL",2)
~ THEN BEGIN 54 // from:
  SAY @101 /* ~If you will not share your power with me, <CHARNAME>, I will take it!~ #96911 */
  IF ~~ THEN DO ~SetGlobal("OHD_romancerejected","GLOBAL",3)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY @102 /* ~A dark fate? I think you mean a glorious one.~ #98517 */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 56 // from:
  SAY @103 /* ~Mind yourself, taleteller, or you'll find yourself in darkness's embrace. I'll hear no more of this "dark fate" nonsense.~ #98520 */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 57 // from:
  SAY @104 /* ~Hahah! At last the time has come. Fulfill your destiny, <CHARNAME>! Become the new god of murder and usher in a new age of chaos and destruction!~ [OH95203] #95203 */
  IF ~True()~ THEN EXTERN ~FINSOL01~ 28
  IF ~IsValidForPartyDialog("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 3
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 11
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 8
  IF ~IsValidForPartyDialog("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 9
  IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 9
  IF ~IsValidForPartyDialog("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 2
  IF ~IsValidForPartyDialog("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 10
  IF ~IsValidForPartyDialog("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 6
  IF ~IsValidForPartyDialog("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 7
  IF ~IsValidForPartyDialog("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 7
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 15
  IF ~IsValidForPartyDialog("Sarevok")
!Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 2
  IF ~IsValidForPartyDialog("Sarevok")
Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 3
  IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSC25J~ 0
  IF ~IsValidForPartyDialog("Nalia")~ THEN EXTERN ~NALIA25J~ 1
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN EXTERN ~HAERD25J~ 1
  IF ~IsValidForPartyDialog("Jan")~ THEN EXTERN ~JAN25J~ 3
  IF ~IsValidForPartyDialog("Cernd")~ THEN EXTERN ~CERND25J~ 0
  IF ~IsValidForPartyDialog("Mazzy")~ THEN EXTERN ~MAZZY25J~ 0
  IF ~IsValidForPartyDialog("Edwin")~ THEN EXTERN ~EDWIN25J~ 0
  IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGA25J~ 2
  IF ~IsValidForPartyDialog("Keldorn")~ THEN EXTERN ~KELDO25J~ 0
  IF ~  IfValidForPartyDialogue("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAA25J~ 76
  IF ~  IfValidForPartyDialogue("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAA25J~ 81
END

IF ~~ THEN BEGIN 58 // from:
  SAY @105 /* ~Yes! The time has come, <CHARNAME>! Fulfill our destinies! Become the new god of murder, and together we will usher in an age of chaos and destruction!~ [OH95206] #95206 */
  IF ~True()~ THEN EXTERN ~FINSOL01~ 28
  IF ~IsValidForPartyDialog("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 3
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 11
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 8
  IF ~IsValidForPartyDialog("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 9
  IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 9
  IF ~IsValidForPartyDialog("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 2
  IF ~IsValidForPartyDialog("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 10
  IF ~IsValidForPartyDialog("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 6
  IF ~IsValidForPartyDialog("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 7
  IF ~IsValidForPartyDialog("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 7
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 15
  IF ~IsValidForPartyDialog("Sarevok")
!Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 2
  IF ~IsValidForPartyDialog("Sarevok")
Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 3
  IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSC25J~ 0
  IF ~IsValidForPartyDialog("Nalia")~ THEN EXTERN ~NALIA25J~ 1
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN EXTERN ~HAERD25J~ 1
  IF ~IsValidForPartyDialog("Jan")~ THEN EXTERN ~JAN25J~ 3
  IF ~IsValidForPartyDialog("Cernd")~ THEN EXTERN ~CERND25J~ 0
  IF ~IsValidForPartyDialog("Mazzy")~ THEN EXTERN ~MAZZY25J~ 0
  IF ~IsValidForPartyDialog("Edwin")~ THEN EXTERN ~EDWIN25J~ 0
  IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGA25J~ 2
  IF ~IsValidForPartyDialog("Keldorn")~ THEN EXTERN ~KELDO25J~ 0
  IF ~  IfValidForPartyDialogue("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAA25J~ 76
  IF ~  IfValidForPartyDialogue("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAA25J~ 81
END

IF ~~ THEN BEGIN 59 // from:
  SAY @106 /* ~YES! Take what is rightfully yours! Take the power, become a god, and know that I, Dorn Il-Khan, am the first and most devoted worshipper of <CHARNAME>, <PRO_LADYLORD> of Murder!~ #100192 */
  IF ~True()~ THEN EXTERN ~FINSOL01~ 33
  IF ~IsValidForPartyDialog("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 11
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 20
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 18
  IF ~IsValidForPartyDialog("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 20
  IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 18
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 18
  IF ~IsValidForPartyDialog("Sarevok")
Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 4
  IF ~IsValidForPartyDialog("Sarevok")
!Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 6
  IF ~  IfValidForPartyDialogue("Rasaad")
Global("OHR_PCGod","GLOBAL",0)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHR_PCGod","GLOBAL",1)
~ EXTERN ~RASAA25J~ 84
END

IF ~~ THEN BEGIN 60 // from:
  SAY @107 /* ~<CHARNAME>! You have the power of a god at your fingertips and you do not take it? Hmm. I would call you a fool—but you'd be a greater fool still to have left my side. I am... pleased with your decision.~ #100193 */
  IF ~True()~ THEN EXTERN ~FINSOL01~ 33
  IF ~IsValidForPartyDialog("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)~ THEN EXTERN ~VALYG25J~ 12
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ 21
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~VICON25J~ 19
  IF ~IsValidForPartyDialog("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~AERIE25J~ 21
  IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~JAHEI25J~ 19
  IF ~IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN25J~ 19
  IF ~IsValidForPartyDialog("Sarevok")
Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 5
  IF ~IsValidForPartyDialog("Sarevok")
!Alignment("Sarevok",MASK_EVIL)~ THEN EXTERN ~SAREV25J~ 7
  IF ~  IfValidForPartyDialogue("Rasaad")
Global("OHR_PCNotGod","GLOBAL",0)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHR_PCNotGod","GLOBAL",1)
~ EXTERN ~RASAA25J~ 85
END

IF ~~ THEN BEGIN 61 // from:
  SAY @108 /* ~I'll show you pain, wraith. The Bhaalspawn will not harm me.~ #99050 */
  IF ~~ THEN EXTERN ~HGWRA01~ 24
END

IF ~  Global("OHD_wraith","GLOBAL",1)
~ THEN BEGIN 62 // from:
  SAY @109 /* ~Kryll? But I saw you die—I broke your neck. What trickery is this?~ #99051 */
  IF ~~ THEN EXTERN ~OHDKRYLL~ 0
END

IF ~~ THEN BEGIN 63 // from:
  SAY @110 /* ~Aye. And then you betrayed me and left me to die!~ #99052 */
  IF ~~ THEN EXTERN ~OHDKRYLL~ 1
END

IF ~~ THEN BEGIN 64 // from:
  SAY @111 /* ~Do not call me that. ~ #99053 */
  IF ~~ THEN EXTERN ~OHDKRYLL~ 2
END

IF ~~ THEN BEGIN 65 // from:
  SAY @112 /* ~You got what you deserved.~ #99054 */
  IF ~~ THEN EXTERN ~OHDKRYLL~ 3
END

IF ~~ THEN BEGIN 66 // from:
  SAY @113 /* ~No! No, I—I did not—~ #99055 */
  IF ~~ THEN REPLY @114 /* ~You didn't know, Dorn!~ #99062 */ DO ~SetGlobal("OHD_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY @115 /* ~No more, Gorion! This is beyond cruelty!~ #99063 */ DO ~SetGlobal("OHD_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY @116 /* ~Do not speak to him that way, specter.~ #99064 */ DO ~SetGlobal("OHD_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY @117 /* ~It's not real, Dorn! It's a lie!~ #99065 */ DO ~SetGlobal("OHD_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
END

IF ~  Global("OHD_bollard","OH5500",1)
~ THEN BEGIN 67 // from:
  SAY @118 /* ~That man there—he seems familiar. Where do I know him from...?~ [OH89870] #89870 */
  IF ~~ THEN REPLY @119 /* ~While I normally encourage pausing to reflect, this isn't the best time for it.~ #89922 */ DO ~SetGlobal("OHD_bollard","OH5500",2)
~ EXIT
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY @120 /* ~Oh, crap. It's Bollard Firejaw.~ #89923 */ DO ~SetGlobal("OHD_bollard","OH5500",2)
~ GOTO 68
  IF ~  CheckStatLT(Player1,14,INT)
~ THEN REPLY @121 /* ~Best not hang around and figure out where you've met before. Whoever he is, I doubt it's a cherished memory.~ #89924 */ DO ~SetGlobal("OHD_bollard","OH5500",2)
~ EXIT
  IF ~~ THEN REPLY @122 /* ~Ignore him. We've got more important things to worry about than some sorry choirboy.~ #89925 */ DO ~SetGlobal("OHD_bollard","OH5500",2)
~ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY @123 /* ~Who?~ [OH89871] #89871 */
  IF ~~ THEN REPLY @124 /* ~He was a priest. You killed him.~ #89926 */ GOTO 69
  IF ~~ THEN REPLY @125 /* ~I'll tell you later. We've got to get out of here.~ #89927 */ GOTO 71
  IF ~~ THEN REPLY @126 /* ~A priest you murdered.~ #89928 */ GOTO 72
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY @127 /* ~I've killed a lot of priests.~ [OH89872] #89872 */
  IF ~~ THEN REPLY @128 /* ~The Temple of the Radiant Heart. There was a wedding. You don't remember this?~ #89929 */ GOTO 70
  IF ~~ THEN REPLY @129 /* ~If you want to live to kill more, then move!~ #89930 */ EXIT
  IF ~~ THEN REPLY @130 /* ~This may be the one who kills you.~ #89931 */ GOTO 72
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @131 /* ~Hrmm... I remember him now.~ [OH89875] #89875 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from: 68.1
  SAY @132 /* ~I'll take your word for it.~ [OH89877] #89877 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from: 69.2 68.2
  SAY @133 /* ~Curse the luck! I need to silence him before he recognizes me and raises an alarm.~ [OH89879] #89879 */
  IF ~~ THEN REPLY @134 /* ~No, we need to get out of here before he recognizes you.~ #89932 */ EXIT
  IF ~~ THEN REPLY @135 /* ~Quiet and subtle isn't your strong suit, Dorn. Are you sure you're up for this?~ #89933 */ EXIT
  IF ~~ THEN REPLY @136 /* ~Do it quickly.~ #89934 */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY @137 /* ~One death is enough for most, priest!~ [OH89894] #89894 */
  IF ~~ THEN DO ~ActionOverride("OHDBOLL",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY @138 /* ~Speak for yourself, <CHARNAME>.~ [OH89903] #89903 */
  IF ~~ THEN EXTERN ~OHDBOLL~ 2
END

IF ~~ THEN BEGIN 75 // from:
  SAY @139 /* ~I can't believe that worked.~ [OH89918] #89918 */
  IF ~~ THEN REPLY @140 /* ~I'm a little surprised myself.~ #89950 */ GOTO 76
  IF ~~ THEN REPLY @141 /* ~Shut up and walk.~ #89951 */ GOTO 77
  IF ~~ THEN REPLY @142 /* ~There's no fool greater than a holy fool.~ #89952 */ GOTO 78
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY @143 /* ~Let's begone from this place quickly, before we have any other unexpected reunions.~ [OH89919] #89919 */
  IF ~~ THEN DO ~SetGlobal("OHD_bollreturns","OH5500",1)
ActionOverride("OHDBOLL",EscapeAreaDestroy(5))
~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY @144 /* ~Mind your place, <PRO_RACE>. I'm not your servant.~ [OH89920] #89920 */
  IF ~~ THEN DO ~SetGlobal("OHD_bollreturns","OH5500",1)
ActionOverride("OHDBOLL",EscapeAreaDestroy(5))
~ EXIT
END

IF ~~ THEN BEGIN 78 // from: 75.2
  SAY @145 /* ~Truer words were never spoken—certainly not in this place.~ [OH89921] #89921 */
  IF ~~ THEN DO ~SetGlobal("OHD_bollreturns","OH5500",1)
ActionOverride("OHDBOLL",EscapeAreaDestroy(5))
~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY @146 /* ~Taste the Abyss, planetar!~ [OH89782] #89782 */
  IF ~~ THEN DO ~Shout(310)
ActionOverride("OHDPLANL",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY @147 /* ~We aren't here to listen to some god's toady wax on about the joys of divine servitude, <CHARNAME>...~ [OH89696] #89696 */
  IF ~~ THEN EXTERN ~OHDPLANL~ 20
END

IF ~~ THEN BEGIN 81 // from:
  SAY @148 /* ~I'm with you, <CHARNAME>.~ [OH89697] #89697 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY @149 /* ~On the other hand, one of those sigils would come in handy...~ [OH89699] #89699 */
  IF ~~ THEN DO ~SetGlobal("OHD_said_sigil_handy","OH5500",1)
~ EXTERN ~OHDPLANL~ 21
END

IF ~  Global("OHD_gateearly","OH5500",1)
~ THEN BEGIN 83 // from:
  SAY @150 /* ~Are you truly going to return through the gateway before our work is finished? We only get one shot at this, <CHARNAME>.~ [OH89678] #89678 */
  IF ~~ THEN REPLY @151 /* ~The scroll. Right. I forgot.~ #89684 */ DO ~SetGlobal("OHD_gateearly","OH5500",0)
~ EXIT
  IF ~~ THEN REPLY @152 /* ~Remind me again why we're here?~ #89685 */ DO ~SetGlobal("OHD_gateearly","OH5500",0)
~ GOTO 84
  IF ~~ THEN REPLY @153 /* ~I'm sorry, Dorn, but I'm leaving this place behind.~ #89686 */ DO ~SetGlobal("OHD_gateearly","OH5500",0)
~ GOTO 85
END

IF ~~ THEN BEGIN 84 // from: 83.1
  SAY @154 /* ~We must erase my name from the Scroll of Retribution, else avenging planetars will continue to plague us. I imagine that Tyr does not look kindly upon those that defile his realm. We must hurry before he or something else takes notice.~ [OH89679] #89679 */
  IF ~~ THEN REPLY @155 /* ~In fairness, these people were just trying to kill me.~ #79687 */ EXIT
  IF ~  !IfValidForPartyDialogue("neera")
~ THEN REPLY @156 /* ~All right. Hey, while we're here, can we go check out Mount Celestia? I hear they have some solars you wouldn't believe poking around up there.~ #89688 */ GOTO 87
  IF ~  IfValidForPartyDialogue("neera")
~ THEN REPLY @156 /* ~All right. Hey, while we're here, can we go check out Mount Celestia? I hear they have some solars you wouldn't believe poking around up there.~ #89688 */ EXTERN ~NEERA25J~ 6
  IF ~~ THEN REPLY @157 /* ~This is your burden to bear, Dorn. I'm leaving.~ #89689 */ GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.3 83.2
  SAY @158 /* ~I... see. I always worked better alone anyway. Hrmm. I won't pretend to be upset about our parting, <CHARNAME>. I doubt we will see each other again.~ [OH89680] #89680 */
  IF ~~ THEN REPLY @159 /* ~Wait—I've changed my mind.~ #89690 */ GOTO 86
  IF ~~ THEN REPLY @160 /* ~Farewell, Dorn Il-Khan.~ #89691 */ DO ~AddJournalEntry(89694,INFO)
LeaveParty()
EscapeAreaDestroy(5)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY @161 /* ~Very well then. Let's get going... the innocence of this place produces a stench that hangs in my nostrils.~ [OH89681] #89681 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87 // from: 84.1
  SAY @162 /* ~This is no time for chasing after angels.~ [OH89683] #89683 */
  IF ~~ THEN REPLY @163 /* ~Let's go, then.~ #89693 */ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY @164 /* ~I shall. Make sure not to fall behind.~ [OH89668] #89668 */
  IF ~~ THEN DO ~ActionOverride("OHDSWORD",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY @165 /* ~You knew we'd find little welcome here, <CHARNAME>. Better this than the alternative.~ [OH89669] #89669 */
  IF ~~ THEN DO ~ActionOverride("OHDSWORD",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN 90 // from:
  SAY @166 /* ~Agreed.~ [OH89670] #89670 */
  IF ~~ THEN DO ~ActionOverride("OHDSWORD",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN 91 // from:
  SAY @167 /* ~<CHARNAME>! What is happening here?~ [OH93035] #93035 */
  IF ~~ THEN REPLY @168 /* ~You are paying for your crimes, Dorn.~ #93039 */ GOTO 93
  IF ~~ THEN REPLY @169 /* ~They must have learned what we did.~ #93040 */ GOTO 92
  IF ~~ THEN REPLY @170 /* ~Isn't it obvious?~ #93041 */ GOTO 94
END

IF ~~ THEN BEGIN 92 // from: 91.1
  SAY @171 /* ~Curse your incompetence! I should have been the one to hold the quill.~ [OH93036] #93036 */
  IF ~~ THEN EXTERN ~OHDPLANJ~ 1
END

IF ~~ THEN BEGIN 93 // from: 91.0
  SAY @172 /* ~You didn't remove my name from the Scroll? I'll have your head for this!~ [OH93037] #93037 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 94 // from: 91.2
  SAY @173 /* ~You left my name in the Scroll of Retribution? You treacherous bastard, I'll see you to the Abyss in pieces for this!~ [OH93038] #93038 */
  IF ~~ THEN EXIT
END

IF ~  Global("OHD_inscribed_azothet","GLOBAL",3)
~ THEN BEGIN 95 // from:
  SAY @174 /* ~A word, <CHARNAME>?~ [OH93000] #93000 */
  IF ~~ THEN REPLY @175 /* ~What can I do for you, Dorn?~ #93026 */ DO ~SetGlobal("OHD_inscribed_azothet","GLOBAL",4)
~ GOTO 96
  IF ~~ THEN REPLY @176 /* ~Can it wait?~ #93015 */ DO ~SetGlobal("OHD_inscribed_azothet","GLOBAL",4)
~ GOTO 97
  IF ~~ THEN REPLY @177 /* ~Not now, Dorn.~ #93027 */ DO ~SetGlobal("OHD_inscribed_azothet","GLOBAL",4)
~ GOTO 98
END

IF ~~ THEN BEGIN 96 // from: 98.0 97.0 95.0
  SAY @178 /* ~I would have you know that I— I—~ [OH93001] #93001 */
  IF ~~ THEN REPLY @179 /* ~Are you all right?~ #93017 */ GOTO 99
  IF ~~ THEN REPLY @180 /* ~You don't look so good, Dorn. Worse than usual, I mean.~ #93028 */ GOTO 99
  IF ~~ THEN REPLY @181 /* ~Spit it out.~ #93019 */ GOTO 99
END

IF ~~ THEN BEGIN 97 // from: 95.1
  SAY @182 /* ~It cannot.~ [OH93002] #93002 */
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 98 // from: 95.2
  SAY @183 /* ~Now, <CHARNAME>.~ [OH93003] #93003 */
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 99 // from: 96.2 96.1 96.0
  SAY @184 /* ~Something has happened. My powers, they are diminished!~ [OH93004] #93004 */
  IF ~~ THEN GOTO 110
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 2
END

IF ~~ THEN BEGIN 100 // from:
  SAY @185 /* ~Azothet is dead. I am a blackguard no more.~ [OH93043] #93043 */
  IF ~~ THEN GOTO 111
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 3
END

IF ~~ THEN BEGIN 101 // from:
  SAY @186 /* ~I am free. For the first time in—I know not how long—Dorn Il-Khan is free.~ [OH93006] #93006 */
  IF ~~ THEN REPLY @187 /* ~Enjoy it, my friend. You've earned it.~ #93020 */ GOTO 102
  IF ~~ THEN REPLY @188 /* ~I sense the Scroll of Retribution at work.~ #93021 */ GOTO 103
  IF ~~ THEN REPLY @189 /* ~Use it well.~ #93022 */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.2 101.0
  SAY @190 /* ~I did not do it alone. I'll not forget how you assisted me in Lunia. You will be rewarded, I promise you.~ [OH93007] #93007 */
  IF ~~ THEN EXIT
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 4
END

IF ~~ THEN BEGIN 103 // from: 101.1
  SAY @191 /* ~Hah! Our names will be remembered in legend, <CHARNAME>! The gods themselves do our bidding!~ [OH93008] #93008 */
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY @192 /* ~I'll not forget how you assisted me in Lunia. You will be rewarded, <CHARNAME>, I promise you that.~ [OH93009] #93009 */
  IF ~~ THEN EXIT
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 4
END

IF ~  Global("OHD_inscribed_urgothoz","GLOBAL",3)
~ THEN BEGIN 105 // from:
  SAY @174 /* ~A word, <CHARNAME>?~ [OH93000] #93000 */
  IF ~~ THEN REPLY @193 /* ~What is it, Dorn?~ #93014 */ DO ~SetGlobal("OHD_inscribed_urgothoz","GLOBAL",4)
~ GOTO 106
  IF ~~ THEN REPLY @176 /* ~Can it wait?~ #93015 */ DO ~SetGlobal("OHD_inscribed_urgothoz","GLOBAL",4)
~ GOTO 107
  IF ~~ THEN REPLY @194 /* ~Not right now, Dorn.~ #93016 */ DO ~SetGlobal("OHD_inscribed_urgothoz","GLOBAL",4)
~ GOTO 108
END

IF ~~ THEN BEGIN 106 // from: 108.0 107.0 105.0
  SAY @178 /* ~I would have you know that I— I—~ [OH93001] #93001 */
  IF ~~ THEN REPLY @179 /* ~Are you all right?~ #93017 */ GOTO 109
  IF ~~ THEN REPLY @195 /* ~You don't look so good, Dorn. I mean, you never look good, but right now you look even worse than usual.~ #93018 */ GOTO 109
  IF ~~ THEN REPLY @181 /* ~Spit it out.~ #93019 */ GOTO 109
END

IF ~~ THEN BEGIN 107 // from: 105.1
  SAY @196 /* ~I'll do it myself if you'd like. Just give me some ink and sand.~ #92002 */
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 108 // from: 105.2
  SAY @197 /* ~Never mind. I'll do it myself.~ #92003 */
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 109 // from: 106.2 106.1 106.0
  SAY @184 /* ~Something has happened. My powers, they are diminished!~ [OH93004] #93004 */
  IF ~~ THEN GOTO 110
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 5
END

IF ~~ THEN BEGIN 110 // from: 109.0 99.0
  SAY @198 /* ~Ur-Gothoz is dead. I am a blackguard no more.~ [OH93005] #93005 */
  IF ~~ THEN GOTO 111
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 6
END

IF ~~ THEN BEGIN 111 // from: 110.0 100.0
  SAY @186 /* ~I am free. For the first time in—I know not how long—Dorn Il-Khan is free.~ [OH93006] #93006 */
  IF ~~ THEN REPLY @187 /* ~Enjoy it, my friend. You've earned it.~ #93020 */ GOTO 112
  IF ~~ THEN REPLY @188 /* ~I sense the Scroll of Retribution at work.~ #93021 */ GOTO 113
  IF ~~ THEN REPLY @189 /* ~Use it well.~ #93022 */ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.2 111.0
  SAY @190 /* ~I did not do it alone. I'll not forget how you assisted me in Lunia. You will be rewarded, I promise you.~ [OH93007] #93007 */
  IF ~~ THEN EXIT
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 7
END

IF ~~ THEN BEGIN 113 // from: 111.1
  SAY @191 /* ~Hah! Our names will be remembered in legend, <CHARNAME>! The gods themselves do our bidding!~ [OH93008] #93008 */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY @192 /* ~I'll not forget how you assisted me in Lunia. You will be rewarded, <CHARNAME>, I promise you that.~ [OH93009] #93009 */
  IF ~~ THEN EXIT
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 7
END

IF ~~ THEN BEGIN 115 // from:
  SAY @199 /* ~Silence, Azothet! You serve me now—don't ever forget that.~ [OH93010] #93010 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY @200 /* ~Saemon Havarian, dead at an angel's hand. The Scroll of Retribution has done its work.~ [OH92602] #92602 */
  IF ~~ THEN REPLY @201 /* ~Remember, that could very easily be us lying there.~ #92611 */ DO ~AddJournalEntry(93044,INFO)
~ GOTO 117
  IF ~~ THEN REPLY @202 /* ~Well. That's mildly unsettling.~ #92612 */ DO ~AddJournalEntry(93044,INFO)
~ GOTO 119
  IF ~~ THEN REPLY @203 /* ~If the gods only knew, eh, Dorn?~ #92613 */ DO ~AddJournalEntry(93044,INFO)
~ GOTO 118
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY @204 /* ~But it isn't, <CHARNAME>. The strong survive, as always.~ [OH92603] #92603 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 118 // from: 116.2
  SAY @205 /* ~Someday they will, <CHARNAME>. I'll tell them myself, as they kneel before me.~ [OH92604] #92604 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 119 // from: 116.1
  SAY @206 /* ~Unsettling, <CHARNAME>? Nay. Call it poetic, or glorious, or at the least, amusing.~ [OH92605] #92605 */
  IF ~~ THEN EXIT
END

IF ~  Global("OHD_gromnir","AR5002",1)
~ THEN BEGIN 120 // from:
  SAY @207 /* ~Hold, <CHARNAME>. I recognize that half-orc. When I first heard the name, I suspected as much—but this confirms it. An elder cousin of mine sits before us.~ [OH92253] #92253 */
  IF ~~ THEN REPLY @208 /* ~You're related to Gromnir, a Bhaalspawn?~ #92271 */ GOTO 121
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY @209 /* ~We are merely of the same tribe. Our blood relation is less... clear now that I know of his lineage. But I warn you, <CHARNAME>: While our human blood made both Gromnir and me outcasts in our own tribe, he was always different. He took to slaughter a little too eagerly. ~ [OH92254] #92254 */
  IF ~~ THEN GOTO 122
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERA25J~ 7
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY @210 /* ~That I, of all people, say this should tell you something of Gromnir's depravity. He celebrated his victories in excessive and disgusting fashion—and bear in mind, I was told this by someone whose mouth was stuffed with raw pig fat at the time. The shamans didn't know what to do with him. He was eventually cast out.~ #92256 */
  IF ~~ THEN REPLY @211 /* ~The blood of Bhaal courses through his veins; I know all too well what it can drive someone to do.~ #92272 */ GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY @212 /* ~I as well, <CHARNAME>. I as well.~ [OH92257] #92257 */
  IF ~~ THEN DO ~SetGlobal("OHD_gromnir","AR5002",2)
~ EXIT
END

IF ~  Global("OHD_gromnir","AR5002",3)
~ THEN BEGIN 124 // from:
  SAY @213 /* ~Things are starting to unravel. If Gromnir makes an attempt on our lives, I will not stay my hand.~ [OH92259] #92259 */
  IF ~~ THEN REPLY @214 /* ~You would stand against your own cousin?~ #92274 */ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY @215 /* ~Without hesitation. Family has little value for me, and Gromnir has always been a poor brawler. Even now he holds his weapon foolishly, with a carelessly weak grip. Cutting him down will be a simple matter.~ [OH92260] #92260 */
  IF ~~ THEN DO ~SetGlobal("OHD_gromnir","AR5002",4)
SetGlobal("OHD_gromnir_talk","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("OHDGROM1")
~ EXIT
END

IF ~  Global("OHD_gromnir_talk","GLOBAL",3)
~ THEN BEGIN 126 // from:
  SAY @216 /* ~Gromnir was less of a pushover than I had anticipated, and yet he was still a fool to stand against us.~ [OH92262] #92262 */
  IF ~  !IfValidForPartyDialogue("sarevok")
~ THEN REPLY @217 /* ~How does it feel to have slain your own kin?~ #92275 */ DO ~SetGlobal("OHD_gromnir_talk","GLOBAL",4)
~ GOTO 127
  IF ~  IfValidForPartyDialogue("sarevok")
~ THEN REPLY @217 /* ~How does it feel to have slain your own kin?~ #92275 */ DO ~SetGlobal("OHD_gromnir_talk","GLOBAL",4)
~ EXTERN ~SAREV25J~ 22
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY @218 /* ~Hrmm. It is... strange. Family is of little consequence as far as I am concerned, and I have spurned closer relations in the past. And yet... <CHARNAME>, why does one surround themselves with allies, as you have with me?~ [OH92264] #92264 */
  IF ~~ THEN REPLY @219 /* ~So that I may lead them on adventures the likes of which they will never see again.~ #92276 */ GOTO 128
  IF ~~ THEN REPLY @220 /* ~For protection. There is safety in numbers.~ #92277 */ GOTO 129
  IF ~~ THEN REPLY @221 /* ~I need their strength to accomplish my goals.~ #92278 */ GOTO 129
  IF ~~ THEN REPLY @222 /* ~For companionship. The journey is long, and stories mixed with backtalk are the lifeblood of a traveler.~ #92279 */ GOTO 132
END

IF ~~ THEN BEGIN 128 // from: 127.0
  SAY @223 /* ~Truly? I can say that you have indeed done so, then. But I have no interest in excitement for its own sake, or in entertaining lesser beings. If that is why you lead this motley band, then perhaps you and I are more different than I thought.~ [OH92266] #92266 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from: 127.1
  SAY @224 /* ~Hrmm. A rare showing of wisdom. You are powerful, <CHARNAME>. More powerful than I, though I am loath to admit it. Yet still you seek protection. I... believe I understand. A battle won with crushing victory is more satisfying than the one you lose by the width of a hair.~ [OH92267] #92267 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 130 // from: 127.2
  SAY @225 /* ~Yes! They are but tools, tools to be used! Exploited! You and I, we are artisans of destruction. We create art each time our swords are drawn. Those who would follow you are merely brushes used to create masterpieces.~ [OH92268] #92268 */
  IF ~~ THEN REPLY @226 /* ~But Dorn, you follow me. Are you a tool to be used?~ #92280 */ GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY @227 /* ~Hah! <CHARNAME>, you and I know better than that.~ [OH92269] #92269 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 132 // from: 127.3
  SAY @228 /* ~You fear the calls of the night, the glowing eyes that gaze upon you from the darkness while you make camp? You disappoint me, <CHARNAME>. What tales worth hearing have your companions shared? Marital woes? Their god hasn't looked upon them kindly in the last while? Feh! Yours is a tale of deities and demons, of divinity itself! That you would turn an ear to the mewlings of such mundane creatures disgusts me.~ [OH92270] #92270 */
  IF ~~ THEN EXIT
END

IF ~  Global("OHD_homeagain_dorn","OH5400",1)
~ THEN BEGIN 133 // from:
  SAY @229 /* ~Hah! We've done a great thing this day, <CHARNAME>. We have defied the gods themselves and triumphed! I can scarcely believe it, but the divine blood spattered upon my hands is proof enough.~ [OH92244] #92244 */
  IF ~~ THEN REPLY @230 /* ~I wish that I could be as happy about that as you seem to be. We prevailed today, but the gods have long memories.~ #92249 */ GOTO 134
  IF ~~ THEN REPLY @231 /* ~Not a bad day, to be sure. It won't be easy to top it.~ #92250 */ GOTO 136
  IF ~~ THEN REPLY @232 /* ~What we achieved was more than a great thing. It is the stuff of legends.~ #92251 */ GOTO 135
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY @233 /* ~Hrmm. Let them come. They had a scroll with my name on it, but I've got a sword with theirs.~ [OH92245] #92245 */
  IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.0 133.2
  SAY @234 /* ~Mark my words, <CHARNAME>. A day is coming when the gods themselves will tremble to hear our names. I can feel it. This is only the beginning... friend.~ [OH92246] #92246 */
  IF ~~ THEN DO ~AddJournalEntry(92252,INFO)
SetGlobal("OHD_homeagain_dorn","OH5400",2)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from: 133.1
  SAY @235 /* ~Have a little faith... friend. I'm sure we'll think of something.~ [OH92247] #92247 */
  IF ~~ THEN DO ~AddJournalEntry(92252,INFO)
SetGlobal("OHD_homeagain_dorn","OH5400",2)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY @236 /* ~Damn you, <CHARNAME>! And damn me for letting you lead me to my doom!~ [OH92216] #92216 */
  IF ~~ THEN DO ~SetGlobal("OHD_timeout","OH5500",2)
SetGlobal("OHD_LuniaHostile","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from:
  SAY @237 /* ~You'll know it twice as well soon, fool!~ [OH92203] #92203 */
  IF ~~ THEN DO ~SetGlobal("OHD_bollreturns","OH5500",3)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY @238 /* ~"Would" defile it? We HAVE defiled it, you silver-scaled vermin.~ [OH92108] #92108 */
  IF ~~ THEN REPLY @239 /* ~We don't have time for this, Dorn. If they close the portals, we'll have no way to escape!~ #92148 */ GOTO 141
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY @240 /* ~If we do this, we do it quickly. Anyone who falls gets left behind. Understood?~ #92149 */ EXTERN ~OHDDIXTH~ 8
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY @240 /* ~If we do this, we do it quickly. Anyone who falls gets left behind. Understood?~ #92149 */ GOTO 145
  IF ~  !IfValidForPartyDialogue("dorn")
~ THEN REPLY @241 /* ~And we're about to defile it some more.~ #92150 */ EXTERN ~OHDDIXTH~ 6
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN REPLY @241 /* ~And we're about to defile it some more.~ #92150 */ GOTO 145
END

IF ~~ THEN BEGIN 140 // from:
  SAY @242 /* ~Don't talk to these silver-scaled vermin, <CHARNAME>. Kill them!~ [OH92117] #92117 */
  IF ~~ THEN REPLY @239 /* ~We don't have time for this, Dorn. If they close the portals, we'll have no way to escape!~ #92151 */ GOTO 141
  IF ~~ THEN REPLY @240 /* ~If we do this, we do it quickly. Anyone who falls gets left behind. Understood?~ #92153 */ EXTERN ~OHDDIXTH~ 8
  IF ~~ THEN REPLY @240 /* ~If we do this, we do it quickly. Anyone who falls gets left behind. Understood?~ #92153 */ GOTO 145
  IF ~~ THEN REPLY @243 /* ~After you, half-orc.~ #92154 */ GOTO 145
END

IF ~~ THEN BEGIN 141 // from: 140.0 139.0
  SAY @244 /* ~Count your blessings, snakes!~ [OH92118] #92118 */
  IF ~~ THEN DO ~ActionOverride("OHDDIXTH",Enemy())
ActionOverride("OHDDDOLR",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY @245 /* ~Die for Ur-Gothoz, dragon!~ [OH92130] #92130 */
  IF ~~ THEN DO ~ActionOverride("OHDDIXTH",Enemy())
ActionOverride("OHDDDOLR",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 143 // from:
  SAY @246 /* ~Dragon's blood for my patron, Azothet!~ [OH92131] #92131 */
  IF ~~ THEN DO ~ActionOverride("OHDDIXTH",Enemy())
ActionOverride("OHDDDOLR",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY @247 /* ~From Lunia to the Abyss, Tyr-lover!~ [OH92136] #92136 */
  IF ~~ THEN DO ~ActionOverride("OHDDIXTH",Enemy())
ActionOverride("OHDDDOLR",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 145 // from: 140.3 140.2 139.4 139.2
  SAY @248 /* ~Any who fall get left behind. Agreed?~ [OH92109] #92109 */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 6
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERA25J~ 10
  IF ~  IfValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICON25J~ 50
  IF ~  IfValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSC25J~ 19
  IF ~  IfValidForPartyDialogue("haerdalis")
~ THEN EXTERN ~HAERD25J~ 19
  IF ~  IfValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWIN25J~ 16
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXA25J~ 14
  IF ~  IfValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGA25J~ 27
END

IF ~  Global("OHD_planetar","OH5400",1)
~ THEN BEGIN 146 // from:
  SAY @249 /* ~Hold, <CHARNAME>! Something appears!~ [OH89622] #89622 */
  IF ~~ THEN DO ~SetGlobal("OHD_planetar","OH5400",2)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from:
  SAY @250 /* ~That's precisely what it is.~ [OH89626] #89626 */
  IF ~~ THEN EXTERN ~OHDPLANJ~ 9
END

IF ~~ THEN BEGIN 148 // from:
  SAY @251 /* ~With me, <CHARNAME>! Help me drive this prancing cockatiel back to Lunia!~ [OH89629] #89629 */
  IF ~~ THEN DO ~ActionOverride("OHDPLANJ",Enemy())
~ EXIT
END

IF ~  Global("OHD_planetar","OH5400",7)
~ THEN BEGIN 149 // from:
  SAY @252 /* ~We have triumphed... for the moment. Planetars are implacable foes. As long as my name is in this Scroll of Retribution, she and her kind will keep on coming, in greater and greater numbers.~ [OH89631] #89631 */
  IF ~~ THEN REPLY @254 /* ~Things will only get worse from here.~ #89646 */ DO ~SetGlobal("OHD_planetar","OH5400",8)
EraseJournalEntry(@253)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(89660,QUEST)
AddJournalEntry(89658,INFO)
~ GOTO 150
  IF ~~ THEN REPLY @255 /* ~And now my name's going in the Scroll. Great.~ #89647 */ DO ~SetGlobal("OHD_planetar","OH5400",8)
EraseJournalEntry(@253)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(89660,QUEST)
AddJournalEntry(89658,INFO)
~ GOTO 156
  IF ~~ THEN REPLY @256 /* ~There must be a way to erase our names from the Scroll.~ #89648 */ DO ~SetGlobal("OHD_planetar","OH5400",8)
EraseJournalEntry(@253)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(89660,QUEST)
AddJournalEntry(89658,INFO)
~ GOTO 151
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY @257 /* ~They will, until our names are removed from the scroll.~ [OH89632] #89632 */
  IF ~~ THEN REPLY @258 /* ~Is that even possible?~ #89649 */ GOTO 156
  IF ~~ THEN REPLY @259 /* ~Where is the Scroll kept?~ #89650 */ GOTO 151
  IF ~~ THEN REPLY @260 /* ~What are you suggesting, here, Dorn?~ #89651 */ GOTO 158
END

IF ~~ THEN BEGIN 151 // from: 150.1 149.2
  SAY @261 /* ~Most likely in Lunia.~ [OH89633] #89633 */
  IF ~  OR(3)
PartyHasItem("ohdsw2hb")
PartyHasItem("ohdsw2hc")
PartyHasItem("ohdsw2hd")
~ THEN EXTERN ~OHDSWORD~ 10
  IF ~  !PartyHasItem("ohdsw2hb")
!PartyHasItem("ohdsw2hc")
!PartyHasItem("ohdsw2hd")
~ THEN GOTO 156
END

IF ~~ THEN BEGIN 152 // from:
  SAY @262 /* ~You are being uncharacteristically helpful, Azothet.~ [OH89635] #89635 */
  IF ~~ THEN EXTERN ~OHDSWORD~ 11
END

IF ~~ THEN BEGIN 153 // from:
  SAY @263 /* ~You are being uncharacteristically helpful, Ur-Gothoz.~ [OH89636] #89636 */
  IF ~~ THEN EXTERN ~OHDSWORD~ 11
END

IF ~~ THEN BEGIN 154 // from: 156.2 155.0
  SAY @264 /* ~What I'm suggesting is that we go to war, <CHARNAME>. We go to war with Heaven.~ [OH89638] #89638 */
  IF ~~ THEN DO ~SetGlobal("ohd_portalon","OH5400",1)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY @265 /* ~With this feather from the planetar's wing, I can open a portal to Lunia any time I wish.~ [OH89639] #89639 */
  IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 156 // from: 151.1 150.0 149.1
  SAY @266 /* ~We have a feather from the planetar's wing. That should enable us to open a portal to Lunia.~ [OH89640] #89640 */
  IF ~~ THEN REPLY @267 /* ~And what do we do then?~ #89655 */ GOTO 157
  IF ~~ THEN REPLY @268 /* ~Isn't Lunia the exact place we should be avoiding at all costs?~ #89656 */ GOTO 158
  IF ~~ THEN REPLY @269 /* ~You suggest we attack the gods in their place of power?~ #89657 */ GOTO 154
END

IF ~~ THEN BEGIN 157 // from: 156.0
  SAY @270 /* ~Then, <CHARNAME>? Then we go to war. We go to war with Heaven.~ [OH89641] #89641 */
  IF ~~ THEN DO ~SetGlobal("ohd_portalon","OH5400",1)
~ EXIT
END

IF ~~ THEN BEGIN 158 // from: 156.1 150.2
  SAY @271 /* ~Not if we want to clear our names from the Scroll of Retribution. Not if we want to live.~ [OH89642] #89642 */
  IF ~~ THEN DO ~SetGlobal("ohd_portalon","OH5400",1)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY @272 /* ~Come and try it! The gods can always use more martyrs!~ [OH92101] #92101 */
  IF ~~ THEN DO ~SetGlobal("OHD_gods_damned_martyrs","OH5500",2)
~ EXIT
END

IF ~  Global("OHD_finished_comments","OH5500",1)
~ THEN BEGIN 160 // from:
  SAY @273 /* ~There, it is done. Our mission is finished, and we should move quickly to leave. Cut down all who oppose us!~ [OH92099] #92099 */
  IF ~~ THEN DO ~SetGlobal("OHD_finished_comments","OH5500",2)
~ EXIT
END

IF ~~ THEN BEGIN 161 // from:
  SAY @274 /* ~And my name is the last you'll ever hear!~ [OH91387] #91387 */
  IF ~~ THEN DO ~ActionOverride("OHDRDEF",Enemy())
ActionOverride("OHDNAIMA",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 162 // from:
  SAY @275 /* ~Get ready to eat your own fingers, scribe.~ [OH91970] #91970 */
  IF ~~ THEN DO ~ActionOverride("OHDRDEF",Enemy())
ActionOverride("OHDNAIMA",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 163 // from:
  SAY @276 /* ~To the Abyss with you, secretary!~ [OH91974] #91974 */
  IF ~~ THEN DO ~ActionOverride("OHDRDEF",Enemy())
ActionOverride("OHDNAIMA",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY @277 /* ~Enough blather! I'll see you dead!~ [OH91425] #91425 */
  IF ~~ THEN EXTERN ~OHDRDEF~ 22
END

IF ~~ THEN BEGIN 165 // from:
  SAY @277 /* ~Enough blather! I'll see you dead!~ [OH91425] #91425 */
  IF ~~ THEN EXTERN ~OHDRDEF~ 22
END

IF ~~ THEN BEGIN 166 // from:
  SAY @278 /* ~I'll not let this sanctimonious cretin stand between us and the scroll!~ [OH91434] #91434 */
  IF ~~ THEN DO ~AddJournalEntry(91526,INFO)
ActionOverride("OHDRDEF",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 167 // from:
  SAY @279 /* ~Death to the righteous!~ [OH91438] #91438 */
  IF ~~ THEN DO ~AddJournalEntry(91526,INFO)
ActionOverride("OHDRDEF",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 168 // from:
  SAY @280 /* ~No excuses! Die for your wretched god!~ [OH91462] #91462 */
  IF ~~ THEN DO ~AddJournalEntry(91526,INFO)
ActionOverride("OHDRDEF",Enemy())
Attack("OHDNAIMA")
~ EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY @281 /* ~Die as you lived, righteous and blind fools!~ [OH91465] #91465 */
  IF ~~ THEN DO ~AddJournalEntry(91526,INFO)
ActionOverride("OHDRDEF",Enemy())
Attack("OHDNAIMA")
~ EXIT
END

IF ~~ THEN BEGIN 170 // from:
  SAY @282 /* ~Die as you lived, righteous and blind!~ [OH91467] #91467 */
  IF ~~ THEN DO ~AddJournalEntry(91526,INFO)
ActionOverride("OHDRDEF",Enemy())
Attack("OHDNAIMA")
~ EXIT
END

IF ~  Global("OHD_playerkillstree","OH5500",3)
~ THEN BEGIN 171 // from:
  SAY @283 /* ~Mine must be the hand that corrupts this tree!~ [OH90142] #90142 */
  IF ~~ THEN REPLY @284 /* ~Dorn, please. Leave this to me.~ #90158 */ DO ~SetGlobal("OHD_playerkillstree","OH5500",4)
~ EXIT
  IF ~~ THEN REPLY @285 /* ~You idiot, you're going to get us killed!~ #90159 */ DO ~SetGlobal("OHD_playerkillstree","OH5500",4)
~ EXIT
  IF ~~ THEN REPLY @286 /* ~I told you I'd take care of it.~ #90160 */ DO ~SetGlobal("OHD_playerkillstree","OH5500",4)
~ EXIT
END

IF ~  Global("OHD_playerkillstree","OH5500",5)
Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN BEGIN 172 // from:
  SAY @287 /* ~YES! Ur-Gothoz is pleased!~ [OH90143] #90143 */
  IF ~~ THEN REPLY @288 /* ~I'm glad to hear it, but I'd be even more glad if NOBODY ELSE heard it.~ #90161 */ GOTO 174
  IF ~~ THEN REPLY @289 /* ~I can't tell you how terribly happy I am for him. Let's get out of here before someone notices what you've done.~ #90162 */ GOTO 177
  IF ~~ THEN REPLY @290 /* ~Dorn, I swear, if we make it out of Lunia, you and I are going to have words about this.~ #90163 */ GOTO 178
END

IF ~  Global("OHD_playerkillstree","OH5500",5)
Global("OHD_azothet_patron","GLOBAL",1)
~ THEN BEGIN 173 // from:
  SAY @291 /* ~YES! Azothet's delight knows no bounds!~ [OH90144] #90144 */
  IF ~~ THEN REPLY @288 /* ~I'm glad to hear it, but I'd be even more glad if NOBODY ELSE heard it.~ #90161 */ GOTO 174
  IF ~~ THEN REPLY @292 /* ~I can't tell you how terribly happy I am for her. Let's get out of here before someone notices what you've done.~ #99391 */ GOTO 177
  IF ~~ THEN REPLY @290 /* ~Dorn, I swear, if we make it out of Lunia, you and I are going to have words about this.~ #90163 */ GOTO 178
END

IF ~~ THEN BEGIN 174 // from: 173.0 172.0
  SAY @293 /* ~I care not! All that matters is my patron's pleasure!~ [OH90145] #90145 */
  IF ~~ THEN DO ~SetGlobal("OHD_playerkillstree","OH5500",6)
~ EXIT
END

IF ~~ THEN BEGIN 175 // from:
  SAY @294 /* ~What Ur-Gothoz wills!~ [OH90148] #90148 */
  IF ~~ THEN DO ~ActionOverride("OHDZARA",Enemy())
ActionOverride("OHDRIKKO",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 176 // from:
  SAY @295 /* ~Whatever my patron, Azothet, desires!~ [OH90149] #90149 */
  IF ~~ THEN DO ~ActionOverride("OHDZARA",Enemy())
ActionOverride("OHDRIKKO",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 177 // from: 173.1 172.1
  SAY @296 /* ~Very well!~ [OH90150] #90150 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 178 // from: 173.2 172.2
  SAY @297 /* ~If you would challenge me, <CHARNAME>, do it here and now.~ [OH90151] #90151 */
  IF ~~ THEN DO ~SetGlobal("OHD_playerkillstree","OH5500",8)
~ EXIT
END

IF ~~ THEN BEGIN 179 // from:
  SAY @298 /* ~Die for Ur-Gothoz!~ [OH90154] #90154 */
  IF ~~ THEN DO ~ActionOverride("OHDZARA",Enemy())
ActionOverride("OHDRIKKO",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 180 // from:
  SAY @299 /* ~I shed her blood for you, Azothet!~ [OH90155] #90155 */
  IF ~~ THEN DO ~ActionOverride("OHDZARA",Enemy())
ActionOverride("OHDRIKKO",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 181 // from:
  SAY @300 /* ~I would.~ [OH90113] #90113 */
  IF ~~ THEN EXTERN ~OHDZARA~ 8
END

IF ~~ THEN BEGIN 182 // from:
  SAY @301 /* ~Let's see how ready you are, fool!~ [OH90124] #90124 */
  IF ~~ THEN DO ~ActionOverride("OHDZARA",Enemy())
ActionOverride("OHDRIKKO",Enemy())
~ EXIT
END

IF ~  Global("OHD_dornkillstree","OH5500",2)
~ THEN BEGIN 183 // from:
  SAY @302 /* ~It is done.~ [OH90105] #90105 */
  IF ~  !Global("OHD_azothet_sword","GLOBAL",1)
!Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY @303 /* ~Good. Let's get out of here before anyone realizes.~ #90110 */ DO ~SetGlobal("OHD_dornkillstree","OH5500",3)
~ EXIT
  IF ~  OR(2)
Global("OHD_azothet_sword","GLOBAL",1)
Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY @303 /* ~Good. Let's get out of here before anyone realizes.~ #90110 */ DO ~SetGlobal("OHD_dornkillstree","OH5500",3)
~ EXTERN ~OHDSWORD~ 12
  IF ~~ THEN REPLY @304 /* ~Are you sure? Nothing's happening.~ #90111 */ DO ~SetGlobal("OHD_dornkillstree","OH5500",3)
~ GOTO 185
  IF ~  !Global("OHD_azothet_sword","GLOBAL",1)
!Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY @305 /* ~Excellent.~ #90112 */ DO ~SetGlobal("OHD_dornkillstree","OH5500",3)
~ EXIT
  IF ~  OR(2)
Global("OHD_azothet_sword","GLOBAL",1)
Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY @305 /* ~Excellent.~ #90112 */ DO ~SetGlobal("OHD_dornkillstree","OH5500",3)
~ EXTERN ~OHDSWORD~ 12
END

IF ~~ THEN BEGIN 184 // from:
  SAY @306 /* ~I like you where you are, demon.~ [OH90107] #90107 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 185 // from: 183.2
  SAY @307 /* ~It will, and soon. We'd best be away from here before that happens.~ [OH90108] #90108 */
  IF ~  !Global("OHD_azothet_sword","GLOBAL",1)
!Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXIT
  IF ~  OR(2)
Global("OHD_azothet_sword","GLOBAL",1)
Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 12
END

IF ~~ THEN BEGIN 186 // from:
  SAY @308 /* ~We'd best be on our way before anyone realizes what has happened.~ [OH90109] #90109 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 187 // from:
  SAY @309 /* ~Might I have a word in private, <CHARNAME>?~ [OH89984] #89984 */
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
!Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY @310 /* ~Of course, Dorn.~ #90056 */ GOTO 190
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
!Global("OHD_azothet_sword","GLOBAL",1)
~ THEN REPLY @310 /* ~Of course, Dorn.~ #90056 */ GOTO 191
  IF ~~ THEN REPLY @311 /* ~Later, Dorn.~ #90058 */ GOTO 188
  IF ~~ THEN REPLY @312 /* ~Say your piece, Dorn.~ #90060 */ GOTO 189
END

IF ~~ THEN BEGIN 188 // from: 187.2
  SAY @313 /* ~NOW, <CHARNAME>.~ [OH89986] #89986 */
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
!Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY @314 /* ~Very well, if you insist.~ #90062 */ GOTO 190
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
!Global("OHD_azothet_sword","GLOBAL",1)
~ THEN REPLY @314 /* ~Very well, if you insist.~ #90062 */ GOTO 191
END

IF ~~ THEN BEGIN 189 // from: 187.3
  SAY @315 /* ~In private, <CHARNAME>.~ [OH89989] #89989 */
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
!Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY @314 /* ~Very well, if you insist.~ #90062 */ GOTO 190
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
!Global("OHD_azothet_sword","GLOBAL",1)
~ THEN REPLY @314 /* ~Very well, if you insist.~ #90062 */ GOTO 191
END

IF ~~ THEN BEGIN 190 // from: 189.0 188.0 187.0
  SAY @316 /* ~Ur-Gothoz demands the tree's corruption.~ [OH89991] #89991 */
  IF ~~ THEN REPLY @317 /* ~And how does he propose you accomplish this?~ #90066 */ GOTO 193
  IF ~~ THEN REPLY @318 /* ~If he wants the tree corrupted, he can damn well come do it himself.~ #90068 */ GOTO 192
  IF ~~ THEN REPLY @319 /* ~Ur-Gothoz demands too much.~ #90069 */ GOTO 192
END

IF ~~ THEN BEGIN 191 // from: 189.1 188.1 187.1
  SAY @320 /* ~Azothet commands me to destroy the tree.~ [OH89994] #89994 */
  IF ~~ THEN REPLY @321 /* ~She what? How are you supposed to manage that?~ #90070 */ GOTO 193
  IF ~~ THEN REPLY @322 /* ~Azothet can take a flying leap into the Abyss.~ #90071 */ GOTO 192
  IF ~~ THEN REPLY @323 /* ~Azothet is more eager to see you perish than I expected.~ #90072 */ GOTO 192
END

IF ~~ THEN BEGIN 192 // from: 191.2 191.1 190.2 190.1
  SAY @324 /* ~I must do as my patron bids.~ [OH89996] #89996 */
  IF ~~ THEN REPLY @325 /* ~Of course. How will you do the deed?~ #90073 */ GOTO 193
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
!Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY @326 /* ~How many times must I hear this song before you tire of singing it?~ #90074 */ GOTO 194
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
!Global("OHD_azothet_sword","GLOBAL",1)
~ THEN REPLY @326 /* ~How many times must I hear this song before you tire of singing it?~ #90074 */ GOTO 195
  IF ~~ THEN REPLY @327 /* ~You're a damned fool, Dorn. You should have had done with patrons once and for all in the great tree.~ #90075 */ GOTO 196
END

IF ~~ THEN BEGIN 193 // from: 195.0 194.0 192.0 191.0 190.0
  SAY @328 /* ~A divine sword plunged into the tree's base should get the job done.~ [OH89998] #89998 */
  IF ~~ THEN REPLY @329 /* ~You go get a sword. I'm going to take advantage of the divine flesh.~ #90076 */ DO ~SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
  IF ~~ THEN REPLY @330 /* ~Fortunately, there's plenty of those around. Unfortunately, you're going to use one to corrupt a holy tree and get us both killed.~ #90077 */ GOTO 204
END

IF ~~ THEN BEGIN 194 // from: 192.1
  SAY @331 /* ~As many times as Ur-Gothoz requires.~ [OH90000] #90000 */
  IF ~~ THEN GOTO 193
END

IF ~~ THEN BEGIN 195 // from: 192.2
  SAY @332 /* ~For as long as she commands me, I'll sing as many verses as Azothet deems fit.~ [OH90002] #90002 */
  IF ~~ THEN GOTO 193
END

IF ~~ THEN BEGIN 196 // from: 192.3
  SAY @333 /* ~You call me a fool, <CHARNAME>?~ [OH90005] #90005 */
  IF ~~ THEN REPLY @334 /* ~Of course not, Dorn. Why would I ever do that?~ #90078 */ GOTO 204
  IF ~~ THEN REPLY @335 /* ~I call myself a fool for ever coming to this place. But I'd rather live as a fool than die as one like your patron proposes.~ #90079 */ GOTO 200
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,13,CHR)
~ THEN REPLY @336 /* ~Lower your voice or I'll call you a dead fool.~ #90080 */ GOTO 197
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY @336 /* ~Lower your voice or I'll call you a dead fool.~ #90080 */ GOTO 198
END

IF ~~ THEN BEGIN 197 // from: 196.2
  SAY @337 /* ~You dare speak to me thus? The only thing you'll call me is your killer!~ #98216 */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 198 // from: 196.3
  SAY @338 /* ~Count yourself lucky we are where we are, <PRO_RACE>. ~ [OH90007] #90007 */
  IF ~~ THEN REPLY @339 /* ~Yeah, I don't think that's going to happen. Now let's find the Scroll and do what we came here to do.~ #90081 */ GOTO 199
  IF ~~ THEN REPLY @340 /* ~It's your good fortune, Dorn.~ #90082 */ GOTO 207
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY @341 /* ~We shall—after I deal with the tree.~ [OH90010] #90010 */
  IF ~~ THEN DO ~SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF ~~ THEN BEGIN 200 // from: 196.1
  SAY @342 /* ~Do as you will, <PRO_RACE>. Leave the tree to me.~ [OH90012] #90012 */
  IF ~~ THEN REPLY @343 /* ~I can't let you do that, Dorn.~ #90083 */ GOTO 201
  IF ~~ THEN REPLY @344 /* ~No. I'll do it.~ #90084 */ GOTO 203
  IF ~~ THEN REPLY @345 /* ~Finish it quickly, and please, for once in your misbegotten life, try not to call attention to yourself.~ #90085 */ GOTO 208
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY @346 /* ~You think you can stop me?~ [OH90014] #90014 */
  IF ~~ THEN REPLY @347 /* ~I think I must.~ #90086 */ GOTO 202
  IF ~~ THEN REPLY @348 /* ~You're as subtle as an umber hulk in an antiques shop. Let me handle the tree.~ #90087 */ GOTO 203
  IF ~~ THEN REPLY @349 /* ~I think you're going to get us killed.~ #90088 */ GOTO 204
END

IF ~~ THEN BEGIN 202 // from: 204.2 201.0
  SAY @350 /* ~Damn you, <CHARNAME>! This wasn't how I wanted things to end.~ [OH90019] #90019 */
  IF ~~ THEN REPLY @351 /* ~Wait, we don't have to end things like this.~ #90089 */ GOTO 207
  IF ~~ THEN REPLY @352 /* ~Fine. Have at thee, Dorn Il-Khan!~ #90090 */ DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 203 // from: 201.1 200.1
  SAY @353 /* ~I knew there was a reason I liked you, <CHARNAME>.~ [OH90022] #90022 */
  IF ~~ THEN DO ~AddJournalEntry(90095,INFO)
SetGlobal("OHD_playerkillstree","OH5500",1)
SetGlobal("OHD_treereminder","OH5500",1)
SetGlobalTimer("OHD_treereminder_timer","OH5500",300)
~ EXIT
END

IF ~~ THEN BEGIN 204 // from: 201.2 196.0 193.1
  SAY @354 /* ~Damn it, <CHARNAME>, as a babe at your mother's teat, I doubt you whined so much.~ [OH90025] #90025 */
  IF ~~ THEN REPLY @355 /* ~I never knew my mother, Dorn. Go, do what you're going to do, and be quick about it.~ #90091 */ GOTO 205
  IF ~~ THEN REPLY @356 /* ~Well, why would I? As a babe with a teat, I was probably in good spirits.~ #90092 */ GOTO 206
  IF ~~ THEN REPLY @357 /* ~You go too far, half-orc.~ #90093 */ GOTO 202
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY @358 /* ~I will be.~ [OH90028] #90028 */
  IF ~~ THEN DO ~AddJournalEntry(90095,INFO)
SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF ~~ THEN BEGIN 206 // from: 204.1
  SAY @359 /* ~Keep that image in mind and be silent a moment while I deal with the silver tree.~ [OH90032] #90032 */
  IF ~~ THEN DO ~AddJournalEntry(90095,INFO)
SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF ~~ THEN BEGIN 207 // from: 202.0 198.1
  SAY @360 /* ~When we're out of this place, you and I are going to talk about this, <CHARNAME>. But right now, I've other matters to attend to.~ [OH90034] #90034 */
  IF ~~ THEN DO ~AddJournalEntry(90095,INFO)
SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF ~~ THEN BEGIN 208 // from: 200.2
  SAY @361 /* ~I'll see what I can do.~ [OH90036] #90036 */
  IF ~~ THEN DO ~AddJournalEntry(90095,INFO)
SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF ~  Global("OHD_treereminder","OH5500",2)
~ THEN BEGIN 209 // from:
  SAY @362 /* ~<CHARNAME>. When are you going to deal with the tree?~ [OH90038] #90038 */
  IF ~~ THEN DO ~SetGlobal("OHD_treereminder","OH5500",3)
SetGlobalTimer("OHD_treereminder_timer","OH5500",300)
~ EXIT
END

IF ~  Global("OHD_treereminder","OH5500",4)
~ THEN BEGIN 210 // from:
  SAY @363 /* ~My patron grows impatient, <CHARNAME>. The tree must be corrupted, now.~ [OH90039] #90039 */
  IF ~~ THEN DO ~SetGlobal("OHD_treereminder","OH5500",5)
SetGlobalTimer("OHD_treereminder_timer","OH5500",300)
~ EXIT
END

IF ~  Global("OHD_treereminder","OH5500",6)
~ THEN BEGIN 211 // from:
  SAY @364 /* ~Damn your lying tongue, <CHARNAME>! I'll kill the tree myself.~ [OH90040] #90040 */
  IF ~~ THEN DO ~SetGlobal("OHD_treereminder","OH5500",7)
SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF ~~ THEN BEGIN 212 // from:
  SAY @365 /* ~Enough! No more words. Let the killing commence!~ #85443 */
  IF ~~ THEN DO ~SetGlobal("OHH_phreya_z","OH7300",1)
SetGlobal("OHH_phreya","OH7300",2)
~ EXIT
END

IF ~~ THEN BEGIN 213 // from:
  SAY @366 /* ~I'll tear your web to shreds!~ #85461 */
  IF ~~ THEN DO ~SetGlobal("OHH_phreya","OH7300",2)
~ EXIT
END

IF ~  Global("OHH_necroticcomment","OH7300",1)
InParty("hexxat")
~ THEN BEGIN 214 // from:
  SAY @367 /* ~The necrotic barrier rips and tears at your living flesh. Only something already dead can cross this barrier.~ #85598 */
  IF ~~ THEN EXTERN ~HEXXA25J~ 209
END

IF ~~ THEN BEGIN 215 // from:
  SAY @368 /* ~It wouldn't.~ #85600 */
  IF ~~ THEN EXTERN ~HEXXA25J~ 210
END

IF ~  Global("OHH_necroticcomment","OH7300",1)
!InParty("hexxat")
~ THEN BEGIN 216 // from:
  SAY @369 /* ~A necrotic barrier. The living cannot pass through here.~ #85614 */
  IF ~~ THEN REPLY @370 /* ~Are you sure?~ #85618 */ DO ~SetGlobal("OHH_necroticcomment","OH7300",2)
AddJournalEntry(86490,INFO)
~ GOTO 217
  IF ~~ THEN REPLY @371 /* ~There must be a way to get through.~ #85619 */ DO ~SetGlobal("OHH_necroticcomment","OH7300",2)
AddJournalEntry(86490,INFO)
~ GOTO 218
  IF ~~ THEN REPLY @372 /* ~There must be something we can do to disrupt the barrier.~ #85620 */ DO ~SetGlobal("OHH_necroticcomment","OH7300",2)
AddJournalEntry(86490,INFO)
~ GOTO 219
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY @373 /* ~Feel free to test it and find out for yourself.~ #85615 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 218 // from: 216.1
  SAY @374 /* ~There is. But dying would defeat the purpose of this venture.~ #85616 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 219 // from: 216.2
  SAY @375 /* ~Undoubtedly. But we might spend the rest of eternity figuring out what it is.~ #85617 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 220 // from:
  SAY @376 /* ~It can—if it knows the penalty for treachery is greater than doing what it promises.~ #85766 */
  IF ~~ THEN EXTERN ~OHHKORK~ 9
END

IF ~~ THEN BEGIN 221 // from:
  SAY @377 /* ~Just say the word, <CHARNAME>...~ #85767 */
  IF ~~ THEN EXTERN ~OHHKORK~ 9
END

IF ~~ THEN BEGIN 222 // from:
  SAY @378 /* ~You've accomplished much. You cannot deny it.~ #86276 */
  IF ~~ THEN EXTERN ~HEXXA25J~ 286
END

IF ~  Global("OHH_hexxatdeadcomments","GLOBAL",1)
~ THEN BEGIN 223 // from:
  SAY @379 /* ~There's nothing here to mourn. She got what she desired, and that's the end of it.~ #86292 */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatdeadcomments","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 224 // from:
  SAY @380 /* ~We will kill him, woman, but fret not—you'll not live to see it!~ #102317 */
  IF ~True()~ THEN EXTERN ~HGNYA01~ 30
  IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSC25J~ 7
  IF ~IsValidForPartyDialog("Valygar")~ THEN EXTERN ~VALYG25J~ 18
  IF ~IsValidForPartyDialog("Cernd")~ THEN EXTERN ~CERND25J~ 7
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN EXTERN ~HAERD25J~ 13
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXA25J~ 316
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERA25J~ 43
  IF ~  IfValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAA25J~ 247
END

IF ~~ THEN BEGIN 225 // from:
  SAY @381 /* ~A worthy ally, if not a particularly trustworthy one.~ #102321 */
  IF ~True()~ THEN UNSOLVED_JOURNAL @382 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ #73858 */ EXIT
  IF ~IsValidForPartyDialog("Keldorn")~ THEN UNSOLVED_JOURNAL @382 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ #73858 */ EXTERN ~KELDO25J~ 5
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN UNSOLVED_JOURNAL @382 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ #73858 */ EXTERN ~HAERD25J~ 6
  IF ~IsValidForPartyDialog("Jaheira")~ THEN UNSOLVED_JOURNAL @382 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ #73858 */ EXTERN ~JAHEI25J~ 30
  IF ~IsValidForPartyDialog("Valygar")~ THEN UNSOLVED_JOURNAL @382 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ #73858 */ EXTERN ~VALYG25J~ 15
  IF ~  IfValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAA25J~ 250
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERA25J~ 45
END

IF ~~ THEN BEGIN 300 // from: 5.2 5.1 5.0
  SAY @396 /* ~It is truly inspiring. Very few mortals get to play at this level of power.~ #96864 */
  IF ~~ THEN GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 6.0
  SAY @397 /* ~Do you have any regrets? ~ #96865 */
  IF ~~ THEN REPLY @398 /* ~No. Things happened the way I wanted and planned.~ #96818 */ GOTO 302
  IF ~~ THEN REPLY @399 /* ~Perhaps some things could've been different. But it doesn't matter anymore.~ #96819 */ GOTO 303
END

IF ~~ THEN BEGIN 302 // from: 5.2 5.1 5.0
  SAY @400 /* ~Good. You have a confidence beffiting to one of your stature.~ #96864 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 303 // from: 5.2 5.1 5.0
  SAY @401 /* ~True. But mistakes can also teach you a valuable lesson. You taught me that.~ #96864 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 304 // from: 6.0
  SAY @402 /* ~Still, it pleases me to no end, to see we have confidence in eachother.~ #96865 */
  IF ~~ THEN REPLY @403 /* ~How exactly will you become the avatar of my will?~ #96818 */ GOTO 306
  IF ~~ THEN REPLY @404 /* ~Keep in mind it might not happen the way you and I plan it. Gods have different rules.~ #96819 */ GOTO 305
END

IF ~~ THEN BEGIN 305 // from: 5.2 5.1 5.0
  SAY @405 /* ~That is correct, but it is your intentnions that matter.~ #96864 */
  IF ~~ THEN GOTO 306
END

IF ~~ THEN BEGIN 306 // from: 5.2 5.1 5.0
  SAY @406 /* ~Understand, <CHARNAME>, I'm not asking to be a god alongside you. That will probably be your privilege alone.~ #96864 */
  IF ~~ THEN GOTO 307
END

IF ~~ THEN BEGIN 307 // from: 5.2 5.1 5.0
  SAY @407 /* ~I wish to become your worshipper, your favored, and when I give my life in your name, to be accepted in your realm where I may stand next to the throne of your power.~ #96864 */
  IF ~~ THEN GOTO 308
END

IF ~~ THEN BEGIN 308 // from: 6.0
  SAY @408 /* ~In short I seek to bond myself to you permanently, benefit from your power and keep adding my strength to yours.~ #96865 */
  IF ~~ THEN REPLY @409 /* ~And you would be satisfied with second-in-command position?~ #96818 */ GOTO 309
  IF ~~ THEN REPLY @410 /* ~Our partnership will become much more uneven in that sense. Does it not bother you?~ #96819 */ GOTO 309
END

IF ~~ THEN BEGIN 309 // from: 5.2 5.1 5.0
  SAY @411 /* ~The irony is not lost on me. But you did not force me, it is my wish.~ #96864 */
  IF ~~ THEN GOTO 310
END

IF ~~ THEN BEGIN 310 // from: 5.2 5.1 5.0
  SAY @412 /* ~I told you before, I trust you and I care for you. You already got much from me, and in the end it seems you will have everything.~ #96864 */
  IF ~~ THEN GOTO 311
END

IF ~~ THEN BEGIN 311 // from: 6.0
  SAY @413 /* ~But I suspect that is the nature of divine attention. I love you, <CHARNAME>. If there should be someone to call my better, I'm pleased it would be you.~ #96865 */
  IF ~~ THEN REPLY @414 /* ~I love you too, Dorn. Remain loyal to me, and you will have all that you desire.~ #96818 */ GOTO 312
  IF ~~ THEN REPLY @415 /* ~I know you do not say this lightly. I love you too, Dorn.~ #96819 */ GOTO 312
END

IF ~~ THEN BEGIN 312 // from: 5.2 5.1 5.0
  SAY @416 /* ~We WILL make our mark upon the realms, <CHARNAME>. I promise you that.~ #96864 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 313 // from: 5.2 5.1 5.0
  SAY @417 /* ~Your cursed wit will never leave you it seems. But be serious for a moment.~ #96864 */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 314 // from: 5.2 5.1 5.0
  SAY @418 /* ~I thought about something for a while and I have a proposition for you <CHARNAME>.~ #96864 */
  IF ~~ THEN GOTO 315
END

IF ~~ THEN BEGIN 315 // from: 5.2 5.1 5.0
  SAY @419 /* ~Beside our word, we never had any ceremony to seal our union.~ #96864 */
  IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 6.0
  SAY @420 /* ~I would like us to become blood brothers, to mark the closenes of our bond. It is a sacred rite from my tribe, not unlike a marriage.~ #96865 */
  IF ~~ THEN REPLY @421 /* ~Are you proposing me? Surprises never cease with you, do they?~ #96818 */ GOTO 317
  IF ~~ THEN REPLY @422 /* ~Marriage? How interesting.~ #96819 */ GOTO 317
END

IF ~~ THEN BEGIN 317 // from: 6.0
  SAY @423 /* ~Do you accept this bond?~ #96865 */
  IF ~~ THEN REPLY @424 /* ~Yes.~ #96818 */ GOTO 318
  IF ~~ THEN REPLY @450 /* ~No.~ #96818 */ GOTO 27
END

IF ~~ THEN BEGIN 318 // from: 5.2 5.1 5.0
  SAY @425 /* ~Then repeat what I do.~ #96864 */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 319 // from: 5.2 5.1 5.0
  SAY @426 /* ~...~ #96864 */
  IF ~~ THEN GOTO 320
END

IF ~~ THEN BEGIN 320 // from: 5.2 5.1 5.0
  SAY @428 /* ~Let us go now, my love. The future is ours for the taking.~ #96864 */
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 321 // from: 5.2 5.1 5.0
  SAY @427 /* ~Let us go now, my love. The future is ours for the taking.~ #96864 */
  IF ~~ THEN EXIT
END

IF ~  Global("OHD_wraith","GLOBAL",2)
~ THEN BEGIN 322 // from:   
  SAY @429 /* ~Damnable waith! I should make it suffer thousands of deats for daring to play with my head!~ #96874 */
  IF ~~ THEN REPLY @430 /* ~You didn't know, Dorn.~ #96829 */ DO ~SetGlobal("OHD_wraith","GLOBAL",3)
~ GOTO 323
  IF ~~ THEN REPLY @431 /* ~You were easy to distract. ~ #96830 */ DO ~SetGlobal("OHD_wraith","GLOBAL",3)
~ GOTO 323
  IF ~~ THEN REPLY @432 /* ~I'm surprised. You showed much sentiment.~ #96831 */ DO ~SetGlobal("OHD_wraith","GLOBAL",3)
~ GOTO 323
END

IF ~~ THEN BEGIN 323 // from: 5.2 5.1 5.0
  SAY @433 /* ~Worse yet, it shows I still have some weakness for that wretch Kryll.~ #96864 */
  IF ~~ THEN GOTO 324
END

IF ~~ THEN BEGIN 324 // from: 6.0
  SAY @434 /* ~Do not misunderstand, I'm done with her, but the betrayal, the anger, it still lingers.~ #96865 */
  IF ~~ THEN REPLY @435 /* ~You were intimate. It is understandable you are not indifferent.~ #96818 */ GOTO 325
END

IF ~~ THEN BEGIN 325 // from: 5.2 5.1 5.0
  SAY @436 /* ~I suppose. I promise such failing will not happen again.~ #96864 */
  IF ~~ THEN GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 5.2 5.1 5.0
  SAY @437 /* ~And <CHARNAME>, thank you for the support.~ #96864 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("AR6100")
Global("OHD_wraith","GLOBAL",4)
~ THEN BEGIN 330 // from:
  SAY @438 /* ~What kind of god will you be, <CHARNAME>?~ #96874 */
  IF ~~ THEN REPLY @439 /* ~I intend to turn the tide of Bhaal's powers. I will be a force for balance.~ #96829 */ DO ~SetGlobal("OHD_wraith","GLOBAL",5)
~ GOTO 331
  IF ~~ THEN REPLY @440 /* ~Chaos and destruction will be of my utmost concern. ~ #96830 */ DO ~SetGlobal("OHD_wraith","GLOBAL",5)
~ GOTO 333
  IF ~~ THEN REPLY @441 /* ~Tyranny. Worshipers will adore me and dispair. Bane himself won't be able to outplay my game.~ #96831 */ DO ~SetGlobal("OHD_wraith","GLOBAL",5)
~ GOTO 333
END

IF ~~ THEN BEGIN 331 // from: 5.2 5.1 5.0
  SAY @442 /* ~You are stubborn. You refuse to embrace darkness, but know that there is enough of it in you, for me to know you won't dissapoint either way.~ #96864 */
  IF ~~ THEN GOTO 334
END

IF ~~ THEN BEGIN 332 // from: 5.2 5.1 5.0
  SAY @443 /* ~Yes, you always had an eye for beauty in life and using it to it's fullest potential.~ #96864 */
  IF ~~ THEN GOTO 334
END

IF ~~ THEN BEGIN 333 // from: 5.2 5.1 5.0
  SAY @444 /* ~It will be an exciting thing to witness. You are a master of the game.~ #96864 */
  IF ~~ THEN GOTO 334
END

IF ~~ THEN BEGIN 334 // from: 5.2 5.1 5.0
  SAY @445 /* ~But I suspect it will also be much of the same as you do now.~ #96864 */
  IF ~~ THEN GOTO 335
END

IF ~~ THEN BEGIN 335 // from: 6.0
  SAY @446 /* ~I feel confident I will enjoy the benefits the work for you will provide.~ #96865 */
  IF ~~ THEN REPLY @447 /* ~I am definitely sure you will.~ #96818 */ GOTO 336
END

IF ~~ THEN BEGIN 336 // from: 5.2 5.1 5.0
  SAY @448 /* ~I look forward to spread the word of a new god to this filthy realm.~ #96864 */
  IF ~~ THEN GOTO 337
END

IF ~~ THEN BEGIN 337 // from: 5.2 5.1 5.0
  SAY @449 /* ~Come, my love. Let us crush what opposition there remains.~ #96864 */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("AR6000")
Global("OHD_wraith","GLOBAL",3)
~ THEN BEGIN 338 // from:
  SAY @451 /* ~What kind of god will you be, <CHARNAME>?~ #96874 */
  IF ~~ THEN REPLY @452 /* ~I intend to turn the tide of Bhaal's powers. I will be a force for balance.~ #96829 */ DO ~SetGlobal("OHD_wraith","GLOBAL",4)
~ GOTO 339
  IF ~~ THEN REPLY @453 /* ~Chaos and destruction will be of my utmost concern. ~ #96830 */ DO ~SetGlobal("OHD_wraith","GLOBAL",4)
~ GOTO 340
  IF ~~ THEN REPLY @454 /* ~Tyranny. Worshipers will adore me and dispair. Bane himself won't be able to outplay my game.~ #96831 */ DO ~SetGlobal("OHD_wraith","GLOBAL",4)
~ GOTO 341
END

IF ~~ THEN BEGIN 339 // from: 5.2 5.1 5.0
  SAY @455 /* ~You are stubborn. You refuse to embrace darkness, but know that there is enough of it in you, for me to know you won't dissapoint either way.~ #96864 */
  IF ~~ THEN GOTO 342
END

IF ~~ THEN BEGIN 340 // from: 5.2 5.1 5.0
  SAY @456 /* ~Yes, you always had an eye for beauty in life and using it to it's fullest potential.~ #96864 */
  IF ~~ THEN GOTO 342
END

IF ~~ THEN BEGIN 341 // from: 5.2 5.1 5.0
  SAY @457 /* ~It will be an exciting thing to witness. You are a master of the game.~ #96864 */
  IF ~~ THEN GOTO 342
END

IF ~~ THEN BEGIN 342 // from: 5.2 5.1 5.0
  SAY @458 /* ~But I suspect it will also be much of the same as you do now.~ #96864 */
  IF ~~ THEN GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 6.0
  SAY @459 /* ~I feel confident I will enjoy the benefits the work for you will provide.~ #96865 */
  IF ~~ THEN REPLY @460 /* ~I am definitely sure you will.~ #96818 */ GOTO 346
  IF ~~ THEN REPLY @464 /* ~I am definitely sure you will.~ #96818 */ GOTO 344
  IF ~~ THEN REPLY @463 /* ~I am definitely sure you will.~ #96818 */ GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 5.2 5.1 5.0
  SAY @461 /* ~I look forward to spread the word of a new god to this filthy realm.~ #96864 */
  IF ~~ THEN GOTO 345
END

IF ~~ THEN BEGIN 345 // from: 6.0
  SAY @462 /* ~I feel confident I will enjoy the benefits the work for you will provide.~ #96865 */
  IF ~~ THEN REPLY @467 /* ~I am definitely sure you will.~ #96818 */ GOTO 347
  IF ~~ THEN REPLY @466 /* ~I am definitely sure you will.~ #96818 */ GOTO 347
END

IF ~~ THEN BEGIN 347 // from: 5.2 5.1 5.0
  SAY @468 /* ~Come, my love. Let us crush what opposition there remains.~ #96864 */
  IF ~~ THEN GOTO 348
END

IF ~~ THEN BEGIN 346 // from: 5.2 5.1 5.0
  SAY @465 /* ~I look forward to spread the word of a new god to this filthy realm.~ #96864 */
  IF ~~ THEN GOTO 344
END

IF ~~ THEN BEGIN 348 // from: 5.2 5.1 5.0
  SAY @469 /* ~Come, my love. Let us crush what opposition there remains.~ #96864 */
  IF ~~ THEN EXIT
END


INTERJECT ABAZIGAL 1 dobazigal
  == dorn25J IF ~InParty("dorn")
                 !StateCheck("dorn",CD_STATE_NOTVALID)~ THEN @383
END ABAZIGAL 2                 


INTERJECT GORAPP1 10 dornodren
  == dorn25J IF ~InParty("dorn")
                 !StateCheck("dorn",CD_STATE_NOTVALID)
                 GlobalLT("Chapter","GLOBAL",8)~ THEN @390
END GORAPP1 11

INTERJECT GORAPP1 10 dornodren
  == dorn25J IF ~InParty("dorn")
                 !StateCheck("dorn",CD_STATE_NOTVALID)
                 GlobalGT("Chapter","GLOBAL",7)~ THEN @391
END GORAPP1 11


I_C_T HGNYA01 6 dornNyal
  == dorn25J IF ~InParty("dorn")
                 !StateCheck("dorn",CD_STATE_NOTVALID)~ THEN @392
END


INTERJECT SAREV25A 41 dornSarev
  == dorn25J IF ~InParty("dorn")
                 !StateCheck("dorn",CD_STATE_NOTVALID)
                 OR(2)
                   !InParty("Imoen2")
                   !StateCheck("Imoen2",CD_STATE_NOTVALID)
                 Global("DornRomanceActive","GLOBAL",2)~ THEN @393
END SAREV25A 42


I_C_T SENGUA01 12 dorndrow
  == dorn25J IF ~InParty("dorn")
                 !StateCheck("dorn",CD_STATE_NOTVALID)~ THEN @395
END