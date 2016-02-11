BEGIN ~DORNJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~A principle for fools and weaklings looking for excuses not to do as they will. Why are you wasting time with this monk, <CHARNAME>?~ #77661 */
  IF ~~ THEN REPLY @2 /* ~I have no idea, but I shall waste no more.~ #77662 */ EXTERN ~RASAAD~ 8
  IF ~~ THEN REPLY @3 /* ~His tale interests me, Dorn. Be silent, or leave us. Go on, Rasaad. You were telling of your recent ventures.~ #77663 */ EXTERN ~RASAAD~ 26
END

IF ~~ THEN BEGIN 1 // from:
  SAY @4 /* ~Looks like the killers missed a few.~ #78532 */
  IF ~~ THEN EXTERN ~RASAADJ~ 417
END

IF ~~ THEN BEGIN 2 // from:
  SAY @5 /* ~But fine sport he'd make.~ #79229 */
  IF ~~ THEN EXTERN ~OHRJOLST~ 8
END

IF ~~ THEN BEGIN 3 // from:
  SAY @6 /* ~Bollard Firejaw! Come and meet your doom!~ [OH74795] #74795 */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 16
END

IF ~~ THEN BEGIN 4 // from:
  SAY @7 /* ~Your feelings on the matter are of no consequence. All that matters is that you die in the name of my master, Ur-Gothoz!~ [OH74797] #74797 */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 17
END

IF WEIGHT #3 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_KILL_GUESTS","LOCALS",1)
!IfValidForPartyDialogue("JAHEIRA")
~ THEN BEGIN 5 // from:
  SAY @8 /* ~Kill them all! None must live to tell of our deeds.~ [OH74802] #74802 */
  IF ~~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~OHDBRIDE~ 0
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~EDWINJ~ 198
  IF ~  IfValidForPartyDialogue("KORGAN")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~KORGANJ~ 239
  IF ~  IfValidForPartyDialogue("VICONIA")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~VICONIJ~ 415
  IF ~  IfValidForPartyDialogue("IMOEN2")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~IMOEN2J~ 58
END

IF WEIGHT #4 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_KILL_GUESTS","LOCALS",1)
IfValidForPartyDialogue("JAHEIRA")
~ THEN BEGIN 6 // from:
  SAY @8 /* ~Kill them all! None must live to tell of our deeds.~ [OH74802] #74802 */
  IF ~~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~JAHEIRAJ~ 538
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~EDWINJ~ 199
  IF ~  IfValidForPartyDialogue("KORGAN")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~KORGANJ~ 240
  IF ~  IfValidForPartyDialogue("VICONIA")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~VICONIJ~ 416
  IF ~  IfValidForPartyDialogue("IMOEN2")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~IMOEN2J~ 59
END

IF ~~ THEN BEGIN 7 // from:
  SAY @9 /* ~I would never betray Ur-Gothoz. I let Azothet believe I would to discover her scheme.~ [OH75392] #75392 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 41
END

IF ~~ THEN BEGIN 8 // from:
  SAY @10 /* ~All I ask is that I be allowed to view the malevolent snake when you do.~ [OH75394] #75394 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 42
END

IF ~~ THEN BEGIN 9 // from: 455.0
  SAY @11 /* ~I would never betray you, Ur-Gothoz. I will never relinquish my grasp on the power you supply. I let Azothet believe I would to discover her scheme.~ [OH75436] #75436 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 43
END

IF ~~ THEN BEGIN 10 // from:
  SAY @12 /* ~I tell you I am a loyal servant, and I've the blood on my hands to prove it. I've half-filled a Hell at your command. Watch your foes continue to fall beneath my blade or end me now. The choice is yours.~ [OH75438] #75438 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 44
END

IF ~~ THEN BEGIN 11 // from:
  SAY @13 /* ~Silence, demon!~ [OH77311] #77311 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 46
END

IF ~~ THEN BEGIN 12 // from:
  SAY @14 /* ~It's yours no longer, glabrezu!~ [OH77317] #77317 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 48
END

IF ~~ THEN BEGIN 13 // from:
  SAY @15 /* ~Someday, perhaps. But not today.~ [OH77319] #77319 */
  IF ~~ THEN DO ~ActionOverride("ohdugoth",Enemy())
Attack("ohdugoth")
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY @16 /* ~What nonsense is this? I'll hear no more of it!~ #98500 */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 15 // from:
  SAY @17 /* ~Insight? From you? I care naught for your insight, woman. Play your mind games with someone else!~ #98521 */
  IF ~~ THEN EXTERN ~TRGYP02~ 31
END

IF ~~ THEN BEGIN 16 // from: 840.8 839.8 838.8
  SAY @18 /* ~You should have gone out of your way to hide, vampire. You'll regret your carelessness by the time I'm done with you.~ #98515 */
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IfValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IfValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
END

IF ~~ THEN BEGIN 17 // from:
  SAY @19 /* ~What infernal land have you dragged me to now, <CHARNAME>? Tell me what new creatures will fall before us!~ #98501 */
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Edwin")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXIT
  IF ~  IfValidForPartyDialogue("Imoen2")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~IMOEN2J~ 10
  IF ~  !IfValidForPartyDialogue("Imoen2")
IfValidForPartyDialogue("Aerie")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~AERIEJ~ 131
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Minsc")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~MINSCJ~ 155
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Valygar")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~VALYGARJ~ 77
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Korgan")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~KORGANJ~ 115
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Jan")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~JANJ~ 147
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Viconia")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~VICONIJ~ 117
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Yoshimo")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~YOSHJ~ 90
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
IfValidForPartyDialogue("Jaheira")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~JAHEIRAJ~ 450
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Cernd")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~CERNDJ~ 100
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
IfValidForPartyDialogue("Mazzy")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~MAZZYJ~ 166
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Anomen")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~ANOMENJ~ 258
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("HaerDalis")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~HAERDAJ~ 100
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("HaerDalis")
IfValidForPartyDialogue("Keldorn")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~KELDORJ~ 189
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Nalia")
~ THEN UNSOLVED_JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ EXTERN ~NALIAJ~ 268
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Nalia")
IfValidForPartyDialogue("Edwin")
~ THEN JOURNAL @20 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ #23537 */ FLAGS 128 EXTERN ~EDWINJ~ 95
  IF ~  Global("OHR_rinthell","GLOBAL",0)
InParty("rasaad")
IfValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rinthell","GLOBAL",1)
~ EXTERN ~RASAADJ~ 313
END

IF ~~ THEN BEGIN 18 // from:
  SAY @21 /* ~Pretty words, mage. But pretty words will not save you from my wrath!~ #98502 */
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut85c")
~ EXIT
  IF ~  IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IfValidForPartyDialogue("Cernd")
IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell","GLOBAL",0)
InParty("rasaad")
IfValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell","GLOBAL",1)
~ EXTERN ~RASAADJ~ 314
END

IF ~~ THEN BEGIN 19 // from:
  SAY @21 /* ~Pretty words, mage. But pretty words will not save you from my wrath!~ #98502 */
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut85c")
~ EXIT
  IF ~  IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IfValidForPartyDialogue("Cernd")
IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell2","GLOBAL",0)
InParty("rasaad")
IfValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell2","GLOBAL",1)
~ EXTERN ~RASAADJ~ 315
END

IF ~~ THEN BEGIN 20 // from:
  SAY @21 /* ~Pretty words, mage. But pretty words will not save you from my wrath!~ #98502 */
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut85c")
~ EXIT
  IF ~  IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IfValidForPartyDialogue("Cernd")
IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  Gender(Player1,MALE)
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  Gender(Player1,FEMALE)
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell3","GLOBAL",0)
InParty("rasaad")
IfValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell3","GLOBAL",1)
~ EXTERN ~RASAADJ~ 316
END

IF ~~ THEN BEGIN 21 // from:
  SAY @21 /* ~Pretty words, mage. But pretty words will not save you from my wrath!~ #98502 */
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut85c")
~ EXIT
  IF ~  IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IfValidForPartyDialogue("Cernd")
IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Imoen2")
Gender(Player1,MALE)
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  !IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Imoen2")
Gender(Player1,FEMALE)
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell4","GLOBAL",0)
InParty("rasaad")
IfValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell4","GLOBAL",1)
~ EXTERN ~RASAADJ~ 317
END

IF ~~ THEN BEGIN 22 // from:
  SAY @22 /* ~I pick my own fights, <PRO_RACE>. And I choose this one.~ #98512 */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IfValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IfValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IfValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IfValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IfValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IfValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IfValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IfValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IfValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IfValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IfValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
END

IF ~~ THEN BEGIN 23 // from:
  SAY @23 /* ~No challenge is insurmountable to Dorn Il-Khan!~ #98513 */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IfValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IfValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IfValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IfValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IfValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IfValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IfValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IfValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IfValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IfValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IfValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
END

IF ~~ THEN BEGIN 24 // from:
  SAY @24 /* ~Oh, shut up.~ #98505 */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @25 /* ~Neither you nor I will be satisfied with this husk of a <PRO_MANWOMAN> standing before me.~ #98506 */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @26 /* ~Let's go make you complete once more.~ #98507 */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IfValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IfValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IfValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IfValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IfValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IfValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IfValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IfValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
  IF ~  IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IfValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IfValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IfValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
END

IF ~~ THEN BEGIN 27 // from:
  SAY @27 /* ~I would see him live again a thousand times that I might slay him a thousand times more—but a single death with suffice for our purposes. You are victorious, <CHARNAME>!~ #98514 */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 28 // from:
  SAY @28 /* ~What's the problem, <CHARNAME>?~ #98523 */
  IF ~~ THEN REPLY @29 /* ~No problem, Dorn. Why do you ask?~ #98536 */ GOTO 29
  IF ~~ THEN REPLY @30 /* ~I'm not sure. For a moment there, it felt like—I wasn't myself. Like I was losing control...~ #98537 */ GOTO 32
  IF ~~ THEN REPLY @31 /* ~My problem is with half-orcs poking their tusks into my business.~ #98538 */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @32 /* ~You faltered there a moment. It was subtle, but noticeable.~ #98524 */
  IF ~~ THEN REPLY @33 /* ~You see issues where none exist, Dorn. Let's carry on.~ #98539 */ GOTO 31
  IF ~~ THEN REPLY @34 /* ~I felt, for a second, like I was—was losing control...~ #98540 */ GOTO 32
  IF ~~ THEN REPLY @35 /* ~You see what you want to see, half-orc. You are a predator, looking for weakness—I have none.~ #98541 */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2
  SAY @36 /* ~If that's your only problem, then we've no problem at all.~ #98525 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY @37 /* ~Hmm. As you wish.~ #98526 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 28.1
  SAY @38 /* ~A troubling notion. Focus yourself, <PRO_MANWOMAN>. The last thing we need now is you getting distracted.~ #98527 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY @39 /* ~Hah! The avatar of Bhaal stands revealed at last! You are the Slayer, <CHARNAME>!~ #98528 */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY @40 /* ~I never knew you had it in you!~ #98529 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY @41 /* ~You tremble like a child, <CHARNAME>. What's the problem now?~ #98530 */
  IF ~~ THEN REPLY @42 /* ~Get away from me, Dorn. I don't know what's happening.~ #98542 */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",93)
~ GOTO 36
  IF ~~ THEN REPLY @43 /* ~Where do I begin, you bloody great oaf? Oh, I know—I'M LOSING CONTROL!~ #98543 */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",93)
~ GOTO 36
  IF ~~ THEN REPLY @44 /* ~No problem at all, unless you get in my way.~ #98544 */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",93)
~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.2 35.1 35.0
  SAY @45 /* ~What? Your lips move, but nothing comes out. Speak up, <PRO_MANWOMAN>!~ #98531 */
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
~ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY @46 /* ~Such power...! You are magnificent, <CHARNAME>!~ #98532 */
  IF ~~ THEN REPLY @47 /* ~I'd feel more magnificent if I could control the transformation.~ #98545 */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 38
  IF ~~ THEN REPLY @48 /* ~You need to leave, Dorn. You aren't safe around me.~ #98546 */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 39
  IF ~~ THEN REPLY @49 /* ~I turned into a bloody monster and you call that magnificent?~ #98547 */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY @50 /* ~The power of the gods cannot be controlled—it can only be savored. I advise you to do so as often as possible.~ #98533 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY @51 /* ~When has it ever been safe to walk beside the Bhaalspawn? No, I'll not leave you, especially not now that I've seen the true extent of your power. Forward!~ #98534 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.2
  SAY @52 /* ~What else could I call such a display of raw divine might?~ #98535 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY @53 /* ~I'll not bow to you or any worldly entity, vampire.~ [OH95204] #95204 */
  IF ~~ THEN EXTERN ~BODHIAMB~ 26
END

IF ~~ THEN BEGIN 42 // from:
  SAY @54 /* ~You will feel my strength now. I'll show you a darkness you never imagined!~ [OH95202] #95202 */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
ActionOverride("bodhiamb",ForceSpell(Myself,DRYAD_TELEPORT))
Wait(1)
SetGlobal("Deactivate0801","AR0800",3)
ActionOverride("bodhiamb",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY @55 /* ~My patron grants me more power than you ever could, vampire. And I doubt he'll let me bow to another.~ [OH95198] #95198 */
  IF ~~ THEN EXTERN ~BODHIAMB~ 28
END

IF ~~ THEN BEGIN 44 // from:
  SAY @56 /* ~You should have listened to me, vampire. Now I'll show you a darkness you never imagined!~ [OH95201] #95201 */
  IF ~~ THEN DO ~SetGlobal("OHD_bodhiamb","AR0800",2)
DialogueInterrupt(FALSE)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
ActionOverride("bodhiamb",ForceSpell(Myself,DRYAD_TELEPORT))
Wait(1)
SetGlobal("Deactivate0801","AR0800",3)
ActionOverride("bodhiamb",DestroySelf())
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_suldanessellar","AR2800",1)
~ THEN BEGIN 45 // from:
  SAY @57 /* ~The great elven city of Suldanessellar, brought to its knees by a single mage. Pathetic.~ #102404 */
  IF ~~ THEN DO ~SetGlobal("OHD_suldanessellar","AR2800",2)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY @58 /* ~Hah! You dragons are all the same. All sound and fury, creatures of pure bluster! Come and fight us, you great coward!~ #102401 */
  IF ~~ THEN EXTERN ~FIRKRA02~ 25
END

IF ~~ THEN BEGIN 47 // from:
  SAY @59 /* ~I will treasure this moment, gnome. You are exactly where you belong.~ #102402 */
  IF ~  !IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("CERND")
~ THEN EXTERN ~PPTIAX~ 2
  IF ~  IfValidForPartyDialogue("JAN")
~ THEN EXTERN ~JANJ~ 152
  IF ~  IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("JAN")
~ THEN EXTERN ~HAERDAJ~ 106
  IF ~  IfValidForPartyDialogue("CERND")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("JAN")
~ THEN EXTERN ~CERNDJ~ 107
END

IF ~~ THEN BEGIN 48 // from:
  SAY @60 /* ~We slaughtered your miserable hide last time, ogre. I will take great joy in doing so again!~ #102403 */
  IF ~~ THEN DO ~ActionOverride("tazok",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY @61 /* ~And you take pride in your survival? Wretch! Better to die on your feet than live on your knees.~ #102405 */
  IF ~  !IfValidForPartyDialogue("Korgan")
~ THEN DO ~SetGlobal("TalkedToHendak","AR0406",1)
~ EXTERN ~HENDAK~ 2
  IF ~  IfValidForPartyDialogue("Korgan")
~ THEN DO ~SetGlobal("TalkedToHendak","AR0406",1)
~ EXTERN ~KORGANJ~ 46
END

IF WEIGHT #6 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",2)
Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN BEGIN 50 // from:
  SAY @62 /* ~It is good to be traveling with you once more, <CHARNAME>. ~ #96394 */
  IF ~~ THEN DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY @63 /* ~We are a formidable pair, you and I. ~ #96395 */
  IF ~  NumInPartyLT(3)
~ THEN REPLY @64 /* ~We are indeed. ~ #96396 */ EXIT
  IF ~  NumInPartyGT(2)
~ THEN REPLY @64 /* ~We are indeed. ~ #96396 */ GOTO 52
  IF ~  NumInPartyGT(2)
~ THEN REPLY @65 /* ~Part of an excellent team.~ #96397 */ GOTO 53
  IF ~~ THEN REPLY @66 /* ~Let me make this clear: We are not a pair. ~ #96398 */ GOTO 54
END

IF ~~ THEN BEGIN 52 // from: 54.1 53.0 51.1
  SAY @67 /* ~I see you still have other... companions. ~ #96399 */
  IF ~~ THEN REPLY @68 /* ~One can never have too many friends.~ #96400 */ GOTO 55
  IF ~~ THEN REPLY @69 /* ~For the time being, yes.~ #96401 */ GOTO 55
  IF ~~ THEN REPLY @70 /* ~You have a problem with that?~ #96402 */ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 51.2
  SAY @71 /* ~Yes...~ #96403 */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 54 // from: 51.3
  SAY @72 /* ~We battle together, we eat together, we defend one another. Like it or not, we ARE a pair.~ #96404 */
  IF ~~ THEN EXIT
  IF ~  NumInPartyGT(2)
~ THEN GOTO 52
END

IF ~~ THEN BEGIN 55 // from: 52.2 52.1 52.0
  SAY @73 /* ~You must know they will aid you only while it is convenient. You can trust no one but yourself.~ #96405 */
  IF ~~ THEN REPLY @74 /* ~My enemies are too numerous and too powerful to face alone.~ #96406 */ GOTO 56
  IF ~~ THEN REPLY @75 /* ~You misunderstand. They are here only while it is convenient for ME. The moment their usefulness ends, so will they.~ #96407 */ GOTO 64
  IF ~~ THEN REPLY @76 /* ~Yourself included?~ #96408 */ GOTO 65
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY @77 /* ~Your enemies may walk beside you without you knowing.~ #96409 */
  IF ~~ THEN REPLY @78 /* ~What happened to you was regrettable, but it will not happen to me.~ #96410 */ GOTO 57
  IF ~~ THEN REPLY @79 /* ~I'm well aware of that. You're one of the ones who walk beside me, after all.~ #96411 */ GOTO 65
  IF ~~ THEN REPLY @80 /* ~Enemies or not, I have need of their skills. ~ #96412 */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.2 56.0
  SAY @81 /* ~Fine: Trust them and bear the consequences. They will cut your legs from under you, and I will laugh as they do so.~ #96413 */
  IF ~~ THEN REPLY @82 /* ~They will not betray me, Dorn.~ #96414 */ GOTO 59
  IF ~~ THEN REPLY @83 /* ~And I will laugh as they prove you wrong time and time again.~ #96415 */ EXIT
  IF ~~ THEN REPLY @84 /* ~We will see who laughs last, Dorn.~ #96416 */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.2
  SAY @85 /* ~We will indeed.~ #96417 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY @86 /* ~Trust is for children and old women. Those with power have no need of it. ~ #96418 */
  IF ~~ THEN REPLY @87 /* ~Need it? No. But I choose to have it, all the same.~ #96419 */ GOTO 62
  IF ~~ THEN REPLY @88 /* ~You didn't have many friends as a child, did you?~ #96420 */ GOTO 63
  IF ~~ THEN REPLY @89 /* ~Keep talking and you'll see my power firsthand, half-orc.~ #96421 */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.2
  SAY @90 /* ~A tempting offer. Or did you mean it as a threat?~ #96423 */
  IF ~~ THEN REPLY @91 /* ~You can't tell...? Your loss, half-orc.~ #96424 */ EXIT
  IF ~~ THEN REPLY @92 /* ~When—IF I make you an offer, you'll know it.~ #96425 */ GOTO 61
  IF ~~ THEN REPLY @93 /* ~It was definitely a threat.~ #96426 */ GOTO 66
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY @94 /* ~So it was a threat.~ #96427 */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 62 // from: 59.0
  SAY @95 /* ~Enjoy your childhood while it lasts.~ #96428 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1
  SAY @96 /* ~No.~ #96429 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from: 55.1
  SAY @97 /* ~I am glad to hear it. But watch them carefully. If you see so much as a hint of weakness or insubordination, destroy them before they destroy you.~ #96430 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65 // from: 56.1 55.2
  SAY @98 /* ~Hah! No, you may trust me. Our goals align, and our relationship is one of mutual benefit. I will not betray you so long as you do not betray me.~ #96431 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from: 61.0 60.2
  SAY @99 /* ~Peace, <CHARNAME>. I was simply making conversation. I'd not see you die this <DAYNIGHTALL>.~ #96432 */
  IF ~~ THEN REPLY @100 /* ~Nor I you.~ #96433 */ GOTO 68
  IF ~~ THEN REPLY @101 /* ~My death isn't the one you should be worried about.~ #96434 */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY @102 /* ~Enough words. When you are ready to do more than talk, you know where to find me.~ #96435 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from: 66.0
  SAY @103 /* ~You have grown claws since we parted. Mind that those claws stay sheathed lest I am forced to remove them.~ #96436 */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",2)
ReputationGT(Player1,11)
~ THEN BEGIN 69 // from:
  SAY @104 /* ~When I joined you, I believed our goals were more closely aligned. I see now I was wrong. Your knees are so weak it's a wonder you don't lie face-down in the dirt.~ #96438 */
  IF ~~ THEN REPLY @105 /* ~Choosing a path other than violence is no weakness, Dorn.~ #96439 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 70
  IF ~~ THEN REPLY @106 /* ~Shall I show you just how "weak" I am, half-orc? Has the time come?~ #96440 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 70
  IF ~~ THEN REPLY @107 /* ~Explain yourself, Dorn. For your sake, I hope the explanation is a good one.~ #96441 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.2 69.1 69.0
  SAY @108 /* ~Your lack of ambition disgusts me. I should kill you where you stand and feed your soul to Ur-Gothoz.~ #96442 */
  IF ~~ THEN REPLY @109 /* ~Don't threaten me, half-orc. You won't like where that leads.~ #96443 */ GOTO 71
  IF ~~ THEN REPLY @110 /* ~You don't like the way I handle things, Dorn? What would you have me do differently?~ #96444 */ GOTO 71
  IF ~~ THEN REPLY @111 /* ~You should try. No, seriously. Try to kill me where I stand. See where it leads.~ #96445 */ GOTO 72
END

IF ~~ THEN BEGIN 71 // from: 70.1 70.0
  SAY @112 /* ~I tell you this, <CHARNAME>. My blade thirsts for blood, and soon. You had best act quickly to ensure it doesn't drink yours.~ #96446 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from: 70.2
  SAY @113 /* ~I will rip you limb from limb!~ #96447 */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",2)
~ THEN BEGIN 73 // from:
  SAY @114 /* ~It is good to be traveling with one who knows <PRO_HISHER> bloody path, <CHARNAME>. My patron is pleased.~ #96448 */
  IF ~~ THEN REPLY @115 /* ~Likewise. Ours will be a fruitful alliance, I suspect.~ #96449 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 75
  IF ~~ THEN REPLY @116 /* ~I'm glad to hear it. Your patron's desires are my paramount concern.~ #96450 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 74
  IF ~  NumInPartyGT(2)
~ THEN REPLY @117 /* ~So he should be. You have proved your value many times over, to him and me alike.~ #96451 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 76
  IF ~  NumInPartyLT(3)
~ THEN REPLY @117 /* ~So he should be. You have proved your value many times over, to him and me alike.~ #96451 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 85
END

IF ~~ THEN BEGIN 74 // from: 73.1
  SAY @118 /* ~I am glad to hear it.~ #96452 */
  IF ~  NumInPartyGT(2)
~ THEN GOTO 76
  IF ~  NumInPartyLT(3)
~ THEN GOTO 85
END

IF ~~ THEN BEGIN 75 // from: 73.0
  SAY @119 /* ~Yes, I believe it will. ~ #96453 */
  IF ~  NumInPartyGT(2)
~ THEN GOTO 76
  IF ~  NumInPartyLT(3)
~ THEN GOTO 85
END

IF ~~ THEN BEGIN 76 // from: 75.0 74.0 73.2
  SAY @120 /* ~Would that these others you surround yourself with could say the same. I am concerned with these others, however. Are you sure you can trust them?~ #96454 */
  IF ~~ THEN REPLY @121 /* ~With my life.~ #96455 */ GOTO 77
  IF ~~ THEN REPLY @122 /* ~Who are you to question those I trust?~ #96456 */ GOTO 78
  IF ~~ THEN REPLY @123 /* ~Trust them? No. But I need them, for now.~ #96457 */ GOTO 79
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY @124 /* ~Then you are a fool.~ #96458 */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 78 // from: 76.1
  SAY @125 /* ~Someone who's known betrayal.~ #96459 */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0 77.0 76.2
  SAY @126 /* ~Watch them carefully, <CHARNAME>. And when they are no longer of use, send them on their way, or better still, destroy them.~ #96460 */
  IF ~~ THEN REPLY @127 /* ~Is that how you'd have me treat you?~ #96461 */ GOTO 80
  IF ~~ THEN REPLY @128 /* ~Do me a favor, Dorn. When I'm no longer of use to you, just cast me aside. I'd rather not fight you over it.~ #96462 */ GOTO 81
  IF ~~ THEN REPLY @129 /* ~And if I said you were no longer of use?~ #96463 */ GOTO 82
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY @130 /* ~Of course! But then, I know my own value. You will always find me of use.~ #96464 */
  IF ~~ THEN REPLY @131 /* ~You think highly of yourself, half-orc. Too highly.~ #96465 */ GOTO 82
  IF ~~ THEN REPLY @132 /* ~I hope you're right, for your sake.~ #96466 */ EXIT
  IF ~~ THEN REPLY @133 /* ~Keep thinking that way, Dorn. It'll make my life much easier.~ #96467 */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 79.1
  SAY @134 /* ~You are wise, <CHARNAME>. But I'll make you no promises.~ #96468 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.0 79.2
  SAY @135 /* ~Then strike me down—if you can.~ #96470 */
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY @136 /* ~But you won't. You won't even try. You would be a fool to cast me aside, and you are no fool.~ #96471 */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY @137 /* ~But if the day comes that you would turn on me... woe be unto you, <CHARNAME>. That day will be your last.~ #96472 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 75.1 74.1 73.3
  SAY @138 /* ~We make a good team, you and I. ~ #96473 */
  IF ~~ THEN REPLY @139 /* ~We do indeed. ~ #96615 */ EXIT
  IF ~~ THEN REPLY @140 /* ~A good team of bad, bad people.~ #96474 */ EXIT
  IF ~~ THEN REPLY @141 /* ~The one who does the least work usually thinks so.~ #96475 */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.2
  SAY @142 /* ~Is that wit you're attempting, <CHARNAME>?~ #96476 */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY @143 /* ~Because you shouldn't.~ #96477 */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",4)
~ THEN BEGIN 88 // from:
  SAY @144 /* ~This mage you chase. How did he earn your ire? ~ #96478 */
  IF ~~ THEN REPLY @145 /* ~He tortured and experimented on Imoen and me. He will pay for our pain a thousand times over with his own.~ #96479 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 89
  IF ~~ THEN REPLY @146 /* ~He did things to me no person should do to another.~ #96480 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 89
  IF ~~ THEN REPLY @147 /* ~I'd rather not speak of it.~ #96481 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 89
END

IF ~~ THEN BEGIN 2289 // from: 88.1 88.0
  SAY @148 /* ~How did you allow this to happen?~ #96482 */
  IF ~~ THEN REPLY @149 /* ~Some fights cannot be won.~ #96483 */ GOTO 90
  IF ~~ THEN REPLY @150 /* ~Well, you know my love of cages and chains...~ #96484 */ GOTO 90
  IF ~~ THEN REPLY @151 /* ~I don't want to talk about it.~ #96485 */ GOTO 90
END

IF ~~ THEN BEGIN 2290 // from: 88.2
  SAY @152 /* ~No, please. Tell me of this mage who single-handedly overcame, captured, and tortured you.~ #96486 */
  IF ~~ THEN REPLY @153 /* ~He didn't do it single-handedly.~ #96487 */ GOTO 92
  IF ~~ THEN REPLY @154 /* ~What part of "I'd rather not speak of it" do you not understand?~ #96488 */ GOTO 92
  IF ~~ THEN REPLY @155 /* ~Shut your mouth lest you feel some of what I did firsthand.~ #96489 */ GOTO 92
END

IF ~~ THEN BEGIN 2291 // from: 92.0 90.0 89.0
  SAY @156 /* ~So this wizard and his minions overcame you.~ #96490 */
  IF ~~ THEN REPLY @157 /* ~They would have done the same to you, believe me.~ #96491 */ GOTO 94
  IF ~~ THEN REPLY @158 /* ~I don't like your tone, Dorn.~ #96492 */ GOTO 94
  IF ~~ THEN REPLY @159 /* ~I didn't go down without a fight.~ #96493 */ GOTO 94
END

IF ~~ THEN BEGIN 2292 // from: 89.1
  SAY @160 /* ~Your idiocy knows no bounds.~ #96497 */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 2293 // from: 90.2 90.1 89.2
  SAY @161 /* ~I would be embarrassed too.~ #96498 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2294 // from: 91.1
  SAY @162 /* ~I will speak to you as I see fit, <PRO_RACE>. ~ #96499 */
  IF ~~ THEN REPLY @163 /* ~Then you are free to leave.~ #96502 */ GOTO 93
  IF ~  CheckStatLT(Player1,13,STR)
~ THEN REPLY @164 /* ~I hope you're ready to pay the price for it.~ #96504 */ GOTO 93
  IF ~  CheckStatGT(Player1,12,STR)
~ THEN REPLY @164 /* ~I hope you're ready to pay the price for it.~ #96504 */ GOTO 93
END

IF ~~ THEN BEGIN 2295 // from: 91.2
  SAY @165 /* ~I would hope not.~ #96506 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2296 // from: 94.2
  SAY @166 /* ~Whenever you're ready to collect.~ #96509 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2297 // from: 94.1
  SAY @167 /* ~Gladly!~ #96511 */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2298 // from: 94.0
  SAY @168 /* ~I am at that, and am glad to do so. If this is how you deal with harsh words, I'd hate to count on you in actual battle.~ #96512 */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2299 // from: 91.0
  SAY @169 /* ~I'm sure it comforts you to think so.~ #96513 */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",6)
~ THEN BEGIN 100 // from:
  SAY @170 /* ~Ah! This endless walking makes me restless.~ #96914 */
  IF ~~ THEN REPLY @171 /* ~You think I like it any better?~ #96520 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 101
  IF ~~ THEN REPLY @172 /* ~Funny. It usually tires me out.~ #96523 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 101
  IF ~~ THEN REPLY @173 /* ~Your whining won't make it go any faster.~ #96524 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.2 100.1 100.0
  SAY @174 /* ~I've an idea. You and I will spar. To the victor, the glory! ~ #96525 */
  IF ~~ THEN REPLY @175 /* ~Excellent idea! I could use an easy win. ~ #96526 */ GOTO 102
  IF ~~ THEN REPLY @176 /* ~Very well.~ #96527 */ GOTO 104
  IF ~~ THEN REPLY @177 /* ~Let's finish walking first.~ #96529 */ GOTO 103
  IF ~~ THEN REPLY @178 /* ~Ah... oh no, my leg really hurts. I'm going to have to pass.~ #96530 */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY @179 /* ~Then you're about to be disappointed.~ #96531 */
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 103 // from: 101.3 101.2
  SAY @180 /* ~Irenicus's dungeon has left you weak, is that it? Or do you fear the might of the great Dorn Il-Khan?~ #96532 */
  IF ~~ THEN REPLY @181 /* ~I'll not be goaded into a pointless battle.~ #96533 */ GOTO 105
  IF ~~ THEN REPLY @182 /* ~Whatever will shut you up, that's why I don't want to beat the living hells out of you. Let's keep moving.~ #96534 */ GOTO 105
  IF ~~ THEN REPLY @183 /* ~I'll show you how much I fear you, half-orc.~ #96535 */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.2 102.0 101.1
  SAY @184 /* ~No weapons, no armor, no magic. A true match of prowess. ~ #96536 */
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 105 // from: 103.1 103.0
  SAY @185 /* ~Bah. You're an old <PRO_MANWOMAN>, <CHARNAME>. ~ #96537 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 104.0
  SAY @186 /* ~Prepare yourself!~ #96538 */
  IF ~~ THEN DO ~SetGlobal("OHD_sparring","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(2)
SmallWait(1)
EndCutSceneMode()
StartDialogNoSet(Player1)
~ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_sparring","LOCALS",1)
CheckStatGT(Player1,15,STR)
OR(2)
RandomNum(2,1)
CheckStatGT(Player1,17,STR)
~ THEN BEGIN 107 // from:
  SAY @187 /* ~Hmm. You are more skilled in the art of battle than I'd thought.~ #96546 */
  IF ~~ THEN REPLY @188 /* ~Let this be a lesson to you. Never underestimate your opponent.~ #96547 */ GOTO 112
  IF ~~ THEN REPLY @189 /* ~You're a formidable opponent, Dorn.~ #96548 */ GOTO 111
  IF ~~ THEN REPLY @190 /* ~No surprise there. Thinking isn't your strong suit.~ #96549 */ GOTO 112
END

IF WEIGHT #12 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_sparring","LOCALS",1)
~ THEN BEGIN 108 // from:
  SAY @191 /* ~Your form is poor, and you hold back when you should strike. You have much to learn, <CHARNAME>.~ #96540 */
  IF ~~ THEN REPLY @192 /* ~You'll find me a fast learner.~ #96541 */ GOTO 112
  IF ~~ THEN REPLY @193 /* ~Good gods. I think I need some healing.~ #96542 */ GOTO 109
  IF ~~ THEN REPLY @194 /* ~Things will go differently the next time you face me.~ #96543 */ GOTO 110
END

IF ~~ THEN BEGIN 109 // from: 108.1
  SAY @195 /* ~After the beating you just took? Yes, I'd imagine so.~ #96544 */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 110 // from: 108.2
  SAY @196 /* ~I look forward to it.~ #96545 */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 111 // from: 107.1
  SAY @197 /* ~Yes, I am. And it takes a formidable warrior to match my strength. ~ #96550 */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0 110.0 109.0 108.0 107.2 107.0
  SAY @198 /* ~You are an attractive <PRO_MANWOMAN>, <CHARNAME>. ~ #96551 */
  IF ~~ THEN REPLY @199 /* ~Ah. I think you may have the wrong idea, Dorn. I'm not interested in you.~ #96552 */ DO ~SetGlobal("OHD_sparring","LOCALS",2)
SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 115
  IF ~~ THEN REPLY @200 /* ~I must admit, you have a rugged... tusked allure yourself.~ #96553 */ DO ~SetGlobal("OHD_sparring","LOCALS",2)
~ GOTO 114
  IF ~~ THEN REPLY @201 /* ~You're very observant.~ #96555 */ DO ~SetGlobal("OHD_sparring","LOCALS",2)
~ GOTO 114
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY @202 /* ~A pity. You don't know what you're missing.~ #96556 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 114 // from: 112.2 112.1
  SAY @203 /* ~Next time, perhaps the sparring will be a little more intimate.~ #96557 */
  IF ~~ THEN REPLY @204 /* ~I'd like that.~ #96558 */ GOTO 113
  IF ~~ THEN REPLY @205 /* ~In your dreams, half-orc. It certainly won't happen in this world.~ #96559 */ GOTO 115
  IF ~~ THEN REPLY @206 /* ~Don't count on it.~ #96560 */ GOTO 115
END

IF ~~ THEN BEGIN 115 // from: 114.2 114.1
  SAY @207 /* ~A shame. You'd have enjoyed it.~ #96561 */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",8)
~ THEN BEGIN 116 // from:
  SAY @208 /* ~You feel it as strongly as I, do you not? ~ #96564 */
  IF ~~ THEN REPLY @209 /* ~Uh... maybe? What are you talking about?~ #96565 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 117
  IF ~~ THEN REPLY @210 /* ~If you're thinking what I'm thinking, then most definitely.~ #96566 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 117
  IF ~~ THEN REPLY @211 /* ~We don't have time for this, Dorn.~ #96567 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.2 116.1 116.0
  SAY @212 /* ~I can see the hunger in your eyes.~ #96568 */
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY @213 /* ~I can wait no longer. I would have you as mine, <CHARNAME>. ~ #96569 */
  IF ~~ THEN REPLY @214 /* ~I'm sorry?~ #96570 */ GOTO 121
  IF ~~ THEN REPLY @215 /* ~Well, it's about damn time. This will be a night for the ages.~ #96571 */ GOTO 121
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY @216 /* ~You will wait as long as I desire.~ #96572 */ GOTO 119
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY @216 /* ~You will wait as long as I desire.~ #96572 */ GOTO 121
END

IF ~~ THEN BEGIN 119 // from: 118.2
  SAY @217 /* ~You think I serve your will, <PRO_RACE>?~ #96573 */
  IF ~~ THEN DO ~SetGlobal("OHD_lt4","GLOBAL",1)
Enemy()
~ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_lt4","GLOBAL",2)
~ THEN BEGIN 120 // from:
  SAY @218 /* ~Such strength—such power! You are everything I've ever wanted, <CHARNAME>!~ #96574 */
  IF ~~ THEN DO ~SetGlobal("OHD_lt4","GLOBAL",3)
~ GOTO 121
END

IF ~~ THEN BEGIN 121 // from: 120.0 118.3 118.0
  SAY @219 /* ~I will give you pleasure as none have before. ~ #96575 */
  IF ~~ THEN REPLY @220 /* ~You're going to have to work harder than that.~ #96577 */ GOTO 126
  IF ~~ THEN REPLY @221 /* ~I'll hold you to that.~ #96578 */ GOTO 130
  IF ~  !Gender(Player1,FEMALE)
!IfValidForPartyDialogue("viconia")
~ THEN REPLY @222 /* ~You presume too much.~ #96579 */ GOTO 124
  IF ~  Gender(Player1,FEMALE)
!IfValidForPartyDialogue("anomen")
~ THEN REPLY @222 /* ~You presume too much.~ #96579 */ GOTO 124
  IF ~  IfValidForPartyDialogue("anomen")
Gender(Player1,FEMALE)
~ THEN REPLY @222 /* ~You presume too much.~ #96579 */ EXTERN ~ANOMENJ~ 324
  IF ~  IfValidForPartyDialogue("viconia")
Gender(Player1,MALE)
~ THEN REPLY @222 /* ~You presume too much.~ #96579 */ EXTERN ~VICONIJ~ 418
END

IF ~~ THEN BEGIN 122 // from:
  SAY @223 /* ~Let her speak for herself. What say you, <CHARNAME>? You want this as much as I, admit it.~ #96581 */
  IF ~~ THEN REPLY @224 /* ~I do want it. But you'll have to work harder than that.~ #96582 */ GOTO 126
  IF ~~ THEN REPLY @225 /* ~It's true. Gods help me.~ #96583 */ GOTO 130
  IF ~~ THEN REPLY @226 /* ~I'm not sure about that. You seem to want it very, very badly.~ #96584 */ GOTO 125
  IF ~~ THEN REPLY @227 /* ~I admit nothing of the sort.~ #96585 */ GOTO 126
END

IF ~~ THEN BEGIN 123 // from:
  SAY @228 /* ~Let him speak for himself. What say you, <CHARNAME>? You want this as much as I, admit it.~ #96588 */
  IF ~~ THEN REPLY @224 /* ~I do want it. But you'll have to work harder than that.~ #96582 */ GOTO 126
  IF ~~ THEN REPLY @229 /* ~I do. Gods help me.~ #96589 */ GOTO 130
  IF ~~ THEN REPLY @226 /* ~I'm not sure about that. You seem to want it very, very badly.~ #96590 */ GOTO 125
  IF ~~ THEN REPLY @230 /* ~I'll not be coerced into making a decision before I'm ready.~ #96591 */ GOTO 126
END

IF ~~ THEN BEGIN 124 // from: 121.3 121.2
  SAY @231 /* ~You want this as much as I.~ #96603 */
  IF ~~ THEN REPLY @224 /* ~I do want it. But you'll have to work harder than that.~ #96604 */ GOTO 126
  IF ~~ THEN REPLY @229 /* ~I do. Gods help me.~ #96605 */ GOTO 130
  IF ~~ THEN REPLY @226 /* ~I'm not sure about that. You seem to want it very, very badly.~ #96606 */ GOTO 125
  IF ~~ THEN REPLY @232 /* ~So you want to believe.~ #96607 */ GOTO 126
END

IF ~~ THEN BEGIN 125 // from: 124.2 123.2 122.2
  SAY @233 /* ~And you do not?~ #96608 */
  IF ~~ THEN REPLY @234 /* ~Oh, I do. You have no idea.~ #96609 */ GOTO 130
  IF ~~ THEN REPLY @235 /* ~I haven't decided yet.~ #96610 */ GOTO 127
  IF ~~ THEN REPLY @236 /* ~With you? No. No, I don't.~ #96611 */ GOTO 128
END

IF ~~ THEN BEGIN 126 // from: 124.3 124.0 123.3 123.0 122.3 122.0 121.0
  SAY @237 /* ~What? You would spurn Dorn Il-Khan?~ #96612 */
  IF ~~ THEN REPLY @238 /* ~I'm not spurning anyone yet. I just need more time.~ #96613 */ GOTO 127
  IF ~~ THEN REPLY @239 /* ~Patience, Dorn.~ #96614 */ GOTO 127
  IF ~~ THEN REPLY @240 /* ~Yes. Enthusiastically.~ #96616 */ GOTO 128
END

IF ~~ THEN BEGIN 127 // from: 126.1 126.0 125.1
  SAY @241 /* ~Make up your mind, <CHARNAME>. I'll not be a slave to your whims.~ #96632 */
  IF ~~ THEN DO ~RestParty()
~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.2 125.2
  SAY @242 /* ~You've made a grave error, <CHARNAME>. And by the time you realize that, it will be too late.~ #96633 */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
RestParty()
~ EXIT
END

IF ~~ THEN BEGIN 129 // from: 118.1
  SAY @243 /* ~Yes... it will. ~ #96634 */
  IF ~~ THEN DO ~SetGlobal("OHD_dornsex","GLOBAL",1)
RestParty()
~ EXIT
END

IF ~~ THEN BEGIN 130 // from: 125.0 124.1 123.1 122.1 121.1
  SAY @244 /* ~This will be a night to remember... I assure you.~ #96635 */
  IF ~~ THEN DO ~SetGlobal("OHD_dornsex","GLOBAL",1)
RestParty()
~ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",10)
~ THEN BEGIN 131 // from:
  SAY @245 /* ~You intrigue me, <CHARNAME>. I've waited a long time to find one such as you.~ [OH96303] #96303 */
  IF ~~ THEN REPLY @246 /* ~Patience is rewarded.~ #96304 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 139
  IF ~~ THEN REPLY @247 /* ~And I've waited a long time for such as you.~ #96494 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 139
  IF ~  Gender(Player1,MALE)
~ THEN REPLY @248 /* ~I don't remind you of your father?~ #96495 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 133
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY @249 /* ~I don't remind you of your mother?~ #96305 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 132
  IF ~~ THEN REPLY @250 /* ~Wait longer, half-orc.~ #96306 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 134
END

IF ~~ THEN BEGIN 132 // from: 131.3
  SAY @251 /* ~My mother? She was a formidable woman.~ [OH96308] #96308 */
  IF ~~ THEN REPLY @252 /* ~You want to talk to me about your mother?~ #96309 */ GOTO 136
  IF ~~ THEN REPLY @78 /* ~What happened to you was regrettable, but it will not happen to me.~ #96410 */ GOTO 136
  IF ~~ THEN REPLY @79 /* ~I'm well aware of that. You're one of the ones who walk beside me, after all.~ #96411 */ GOTO 136
END

IF ~~ THEN BEGIN 133 // from: 131.2
  SAY @253 /* ~My father? He was a fearsome warrior. ~ #96496 */
  IF ~~ THEN REPLY @254 /* ~You want to talk to me about your father?~ #96500 */ GOTO 137
  IF ~~ THEN REPLY @255 /* ~You compare me to your father. That is... a little creepy.~ #96501 */ GOTO 137
  IF ~~ THEN REPLY @256 /* ~He'd have had to be, I think.~ #96503 */ GOTO 137
END

IF ~~ THEN BEGIN 134 // from: 145.1 141.2 140.3 140.2 139.3 131.4
  SAY @257 /* ~You reject me?~ [OH96312] #96312 */
  IF ~~ THEN REPLY @258 /* ~I can't give you what you want, Dorn. I'm sorry.~ #96313 */ GOTO 150
  IF ~~ THEN REPLY @259 /* ~We've more important things to attend to. What you suggest would do nothing but distract us from our goals.~ #96314 */ GOTO 146
  IF ~~ THEN REPLY @260 /* ~Yes. Best you know where you stand now than make a fool of yourself later.~ #96315 */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.2
  SAY @261 /* ~I'd not be a fool for you, or anyone.~ [OH96316] #96316 */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from: 132.2 132.1 132.0
  SAY @262 /* ~I don't want to discuss my mother!~ [OH96318] #96318 */
  IF ~~ THEN REPLY @263 /* ~Then what would you discuss?~ #96319 */ GOTO 141
  IF ~~ THEN REPLY @264 /* ~Hey, you're the one who compared me to her.~ #96320 */ GOTO 138
  IF ~~ THEN REPLY @265 /* ~You think I do?~ #96321 */ GOTO 140
END

IF ~~ THEN BEGIN 137 // from: 133.2 133.1 133.0
  SAY @266 /* ~I don't want to discuss my father!~ #96510 */
  IF ~~ THEN REPLY @263 /* ~Then what would you discuss?~ #96319 */ GOTO 138
  IF ~~ THEN REPLY @267 /* ~Hey, you're the one who compared me to him.~ #96505 */ GOTO 138
  IF ~~ THEN REPLY @265 /* ~You think I do?~ #96321 */ GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 137.1 136.1
  SAY @268 /* ~ 'Twas intended as a compliment.~ [OH96322] #96322 */
  IF ~~ THEN REPLY @269 /* ~I was joking, Dorn. If we're going to do this, you'll need to work on your sense of humor.~ #96323 */ GOTO 140
  IF ~~ THEN REPLY @270 /* ~Your flattery skills will need some work if we're to proceed down this path.~ #96324 */ GOTO 140
  IF ~~ THEN REPLY @271 /* ~Intentions are irrelevant. It's actions that count.~ #96325 */ GOTO 151
END

IF ~~ THEN BEGIN 139 // from: 141.1 138.1 131.1 131.0
  SAY @272 /* ~So you would proceed down this path?~ [OH96326] #96326 */
  IF ~~ THEN REPLY @273 /* ~For a time, at least.~ #96327 */ GOTO 159
  IF ~~ THEN REPLY @274 /* ~I've wanted to ever since I first laid eyes on you.~ #96508 */ GOTO 151
  IF ~~ THEN REPLY @275 /* ~You're a bloodthirsty half-orc whose heart and soul are shrouded in darkness. We're perfect for each other.~ #96328 */ DO ~SetGlobal("OHD_perfect","LOCALS",1)
~ GOTO 151
  IF ~~ THEN REPLY @276 /* ~I would, but not with you.~ #96329 */ GOTO 134
END

IF ~~ THEN BEGIN 140 // from: 139.2 138.0 137.2 136.2
  SAY @277 /* ~This is no laughing matter, <CHARNAME>.~ [OH96330] #96330 */
  IF ~~ THEN REPLY @278 /* ~Can you never see the lighter side of things?~ #96331 */ GOTO 142
  IF ~  Global("OHD_perfect","LOCALS",1)
~ THEN REPLY @279 /* ~I wasn't joking. We are perfect for one another.~ #96507 */ GOTO 139
  IF ~~ THEN REPLY @280 /* ~And that's why we can never be more than professional colleagues.~ #96332 */ GOTO 134
  IF ~~ THEN REPLY @281 /* ~Me and you, romantically involved? You're wrong, Dorn—that is hilarious.~ #96333 */ GOTO 134
END

IF ~~ THEN BEGIN 141 // from: 137.0 136.0
  SAY @282 /* ~What the future holds—for us.~ [OH96334] #96334 */
  IF ~~ THEN REPLY @283 /* ~Much the same as the past, I suspect. You would have more?~ #96335 */ GOTO 155
  IF ~~ THEN REPLY @284 /* ~Let's live in the present and see where that takes us, all right?~ #96336 */ GOTO 139
  IF ~~ THEN REPLY @285 /* ~We have no future, Dorn. Our fates seem to be entwined—but that is all that will be entwined.~ #96337 */ GOTO 134
END

IF ~~ THEN BEGIN 142 // from: 140.0
  SAY @286 /* ~Not of this.~ [OH96338] #96338 */
  IF ~~ THEN REPLY @287 /* ~A pity. If you were willing to bend just a little, we might have had something great.~ #96339 */ GOTO 143
  IF ~  !Global("OHD_perfect","LOCALS",1)
~ THEN REPLY @288 /* ~Fair enough. I can understand that.~ #96514 */ GOTO 143
  IF ~  Global("OHD_perfect","LOCALS",1)
~ THEN REPLY @288 /* ~Fair enough. I can understand that.~ #96514 */ GOTO 143
  IF ~~ THEN REPLY @289 /* ~We are very different people, Dorn.~ #96340 */ GOTO 156
  IF ~~ THEN REPLY @290 /* ~Then we've nothing more to discuss.~ #96341 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY @291 /* ~I don't bend, for you or anyone.~ [OH96342] #96342 */
  IF ~~ THEN REPLY @292 /* ~Those who don't bend will break.~ #96343 */ GOTO 144
  IF ~~ THEN REPLY @293 /* ~I would have bent for you.~ #96344 */ GOTO 145
  IF ~~ THEN REPLY @294 /* ~And that is why this can never happen.~ #96345 */ GOTO 149
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY @295 /* ~The weak break. The strong stand triumphant over all that would see them broken—or bent.~ [OH96346] #96346 */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 145 // from: 143.1
  SAY @296 /* ~Perhaps you will yet.~ [OH96347] #96347 */
  IF ~~ THEN REPLY @297 /* ~Perhaps.~ #96348 */ GOTO 139
  IF ~~ THEN REPLY @298 /* ~Oh, I'm certain I will—just not for you.~ #96349 */ GOTO 134
  IF ~~ THEN REPLY @299 /* ~You'll never know.~ #96350 */ EXIT
END

IF ~~ THEN BEGIN 146 // from: 134.1
  SAY @300 /* ~But a pleasurable distraction it would be.~ [OH96351] #96351 */
  IF ~~ THEN REPLY @301 /* ~It would be that. I'll consider the matter.~ #96352 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",1)
~ GOTO 158
  IF ~~ THEN REPLY @302 /* ~We're too different, Dorn. And I doubt either of us is prepared to compromise much.~ #96353 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 147
  IF ~~ THEN REPLY @303 /* ~Aye, it would—but you'll never know.~ #96354 */ GOTO 148
END

IF ~~ THEN BEGIN 147 // from: 156.0 146.1
  SAY @304 /* ~I don't bend, for you or anyone.~ [OH96355] #96355 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 148 // from: 146.2
  SAY @305 /* ~We shall see, <CHARNAME>. I enjoy a challenge.~ [OH96357] #96357 */
  IF ~~ THEN REPLY @306 /* ~We'll see how much you enjoy it in the end.~ #96358 */ EXIT
  IF ~~ THEN REPLY @307 /* ~I'll enjoy watching you take this one.~ #96359 */ EXIT
  IF ~~ THEN REPLY @308 /* ~A challenge implies the possibility of success. You have no chance, Dorn. Whatever delusion has taken hold of your deranged mind, give it up now.~ #96360 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 156.2 148.2 143.2
  SAY @309 /* ~You will look back on this and regret your words, <CHARNAME>. You can be sure of it.~ [OH96361] #96361 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 150 // from: 134.0
  SAY @310 /* ~Don't apologize, <CHARNAME>. It is a hallmark of the weak. You have made your feelings clear. I respect that.~ [OH96362] #96362 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 151 // from: 155.0 138.2
  SAY @311 /* ~I could not agree more.~ [OH96363] #96363 */
  IF ~~ THEN REPLY @312 /* ~I look forward to seeing what you do next.~ #96364 */ GOTO 152
  IF ~~ THEN REPLY @313 /* ~So what will you do now?~ #96365 */ GOTO 153
  IF ~~ THEN REPLY @314 /* ~Then let us speak no more about this.~ #96366 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 160.0 153.0 151.0
  SAY @315 /* ~You'll like it, I assure you.~ [OH96367] #96367 */
  IF ~~ THEN REPLY @316 /* ~I hope you're right, Dorn—for your sake.~ #96368 */ GOTO 154
  IF ~~ THEN REPLY @317 /* ~I'm sure I will.~ #96369 */ GOTO 157
  IF ~~ THEN REPLY @318 /* ~We'll see. I am not easily impressed.~ #96370 */ GOTO 154
END

IF ~~ THEN BEGIN 153 // from: 160.1 151.1
  SAY @319 /* ~I've not decided yet.~ [OH96371] #96371 */
  IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 154 // from: 152.2
  SAY @320 /* ~Good. I enjoy a challenge.~ [OH96372] #96372 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 155 // from: 141.0
  SAY @321 /* ~I would.~ [OH96373] #96373 */
  IF ~~ THEN REPLY @322 /* ~Show me. Actions speak louder than words.~ #96374 */ GOTO 151
  IF ~~ THEN REPLY @323 /* ~Then get ready for disappointment.~ #96375 */ EXIT
  IF ~~ THEN REPLY @324 /* ~I wish you luck. You'll need it.~ #96376 */ EXIT
END

IF ~~ THEN BEGIN 156 // from: 142.3
  SAY @325 /* ~Too different?~ [OH96377] #96377 */
  IF ~~ THEN REPLY @326 /* ~Unless we're both willing to compromise a bit, I fear so.~ #96378 */ GOTO 147
  IF ~~ THEN REPLY @327 /* ~Variety is the spice of life. And you are among the spiciest men I've ever met.~ #96379 */ GOTO 157
  IF ~~ THEN REPLY @328 /* ~For what we're discussing? Yes.~ #96380 */ GOTO 149
END

IF ~~ THEN BEGIN 157 // from: 156.1
  SAY @329 /* ~I'm just getting started.~ [OH96381] #96381 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 158 // from: 146.0
  SAY @330 /* ~See that you do.~ [OH96382] #96382 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from: 142.1 139.1 139.0
  SAY @331 /* ~I look forward to where this might lead.~ #96515 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 160 // from: 142.2 140.1
  SAY @332 /* ~Good. I look forward to where this might lead.~ #96516 */
  IF ~~ THEN REPLY @312 /* ~I look forward to seeing what you do next.~ #96517 */ GOTO 152
  IF ~~ THEN REPLY @313 /* ~So what will you do now?~ #96518 */ GOTO 153
  IF ~~ THEN REPLY @314 /* ~Then let us speak no more about this.~ #96519 */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",14)
~ THEN BEGIN 161 // from:
  SAY @333 /* ~Your constant supervision tires me, Bhaalspawn.~ #96645 */
  IF ~~ THEN REPLY @334 /* ~What are you talking about?~ #96646 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 162
  IF ~~ THEN REPLY @335 /* ~Can I help you, Dorn?~ #96647 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 162
  IF ~~ THEN REPLY @336 /* ~I don't "supervise." I lead.~ #96649 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.2 161.1 161.0
  SAY @337 /* ~Your leadership is laughable and your course folly. I refuse to bow down any longer!~ #96651 */
  IF ~~ THEN REPLY @338 /* ~As ever, you are free to do as you want. I wouldn't dream of trying to stop you.~ #96652 */ GOTO 163
  IF ~~ THEN REPLY @339 /* ~What is this about? ~ #96653 */ GOTO 164
  IF ~~ THEN REPLY @340 /* ~Are you looking for a fight? Because that's what you're going to get if you don't shut the hells up!~ #96654 */ GOTO 164
END

IF ~~ THEN BEGIN 163 // from: 162.0
  SAY @341 /* ~Do not lie to me, <CHARNAME>. ~ #96657 */
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164 // from: 163.0 162.2 162.1
  SAY @342 /* ~I demand blood! I demand death! You give me naught but skirmishes and petty arguments!~ #96658 */
  IF ~~ THEN REPLY @343 /* ~I feel your frustration. There *will* be bloodshed, Dorn, but now is not the time. ~ #96659 */ GOTO 165
  IF ~~ THEN REPLY @344 /* ~Well, we can't go around killing every damned Jack and Sally the world has ever known! ~ #96660 */ GOTO 166
  IF ~~ THEN REPLY @345 /* ~If blood is what you want, Dorn, I can show you your own!~ #96661 */ GOTO 167
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY @346 /* ~Then when? Tomorrow? Next week? No! Ur-Gothoz demands death, and he shall have it!~ #96662 */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 166 // from: 164.1
  SAY @347 /* ~And why not? We are a force to be reckoned with, a power matched by few. ~ #96663 */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 167 // from: 164.2
  SAY @348 /* ~Try it, Bhaalspawn! You'll rue the day you laid eyes on Dorn Il-Khan!~ #96664 */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 168 // from: 166.0 165.0
  SAY @349 /* ~From now on, we do things my way.~ #96665 */
  IF ~~ THEN REPLY @350 /* ~You think you can do a better job than I?~ #96666 */ GOTO 169
  IF ~~ THEN REPLY @351 /* ~You WILL do as I say, half-orc. Do you understand?~ #96667 */ GOTO 170
  IF ~~ THEN REPLY @352 /* ~Fine, then leave. I have no use for whining children.~ #96668 */ GOTO 172
END

IF ~~ THEN BEGIN 169 // from: 168.0
  SAY @353 /* ~A dumb, deaf halfwit could do a better job than you.~ #96669 */
  IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 170 // from: 168.1
  SAY @354 /* ~I will not! ~ #96670 */
  IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 171 // from: 170.0 169.0
  SAY @355 /* ~If I cannot have my freedom, I will at LEAST kill when I please!~ #96671 */
  IF ~  OR(2)
CheckStatGT(Player1,11,INT)
CheckStatGT(Player1,11,WIS)
~ THEN REPLY @356 /* ~Why do I get the feeling this isn't about me at all?~ #96672 */ GOTO 173
  IF ~~ THEN REPLY @357 /* ~You chose to join me of your own volition, Dorn. You are free to do as you please.~ #96673 */ GOTO 176
  IF ~~ THEN REPLY @358 /* ~You will do as I say or you will leave! Now!~ #96674 */ GOTO 177
  IF ~~ THEN REPLY @359 /* ~You want to fight? Fine! I'll give you a fight!~ #96675 */ DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 172 // from: 168.2
  SAY @360 /* ~I'll show you the whining child here!~ #96676 */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 173 // from: 171.0
  SAY @361 /* ~This is—~ #96677 */
  IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY @362 /* ~I know my own mind! ~ #96678 */
  IF ~~ THEN REPLY @363 /* ~I think you regret your oath to Ur-Gothoz. You tire of following *his* orders, not mine.~ #96679 */ GOTO 175
  IF ~~ THEN REPLY @364 /* ~Fine, then. If this is about me, why now? Why not a week ago? I'm no fool, and neither are you.~ #96680 */ GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.1 174.0
  SAY @365 /* ~No more words! I will have blood!~ #96681 */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 176 // from: 171.1
  SAY @366 /* ~Then I am free to do this! ~ #96682 */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 177 // from: 171.2
  SAY @367 /* ~You will die first!~ #96683 */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_lt6","GLOBAL",2)
~ THEN BEGIN 178 // from:
  SAY @368 /* ~ENOUGH! Enough. ~ #96684 */
  IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY @369 /* ~I will listen. For now. But if you do not afford me the respect I am due, <PRO_RACE>, I swear I WILL have your head.~ #96685 */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",3)
~ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",28)
~ THEN BEGIN 180 // from:
  SAY @370 /* ~Your father was the Lord of Murder, was he not?~ #96689 */
  IF ~~ THEN REPLY @371 /* ~Bhaal was the god of murder, yes.~ #96695 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 181
  IF ~~ THEN REPLY @372 /* ~Yes. Family reunions were bleak affairs.~ #96696 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 181
  IF ~~ THEN REPLY @373 /* ~What of it?~ #96697 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.2 180.1 180.0
  SAY @374 /* ~How do you intend to carry out his legacy? ~ #96690 */
  IF ~~ THEN REPLY @375 /* ~Carry out his— Are you insane? Why would I want to do that?~ #96698 */ GOTO 182
  IF ~~ THEN REPLY @376 /* ~By doing exactly what I'm doing.~ #96699 */ GOTO 183
  IF ~~ THEN REPLY @377 /* ~*I* am his legacy, and I will do what I please. ~ #96700 */ GOTO 182
END

IF ~~ THEN BEGIN 182 // from: 183.0 181.2 181.0
  SAY @378 /* ~Bhaal was a powerful god. You would be a fool not to embrace his power as your own.~ #96691 */
  IF ~~ THEN REPLY @379 /* ~Do not worry. I intend to do exactly that.~ #96701 */ GOTO 184
  IF ~~ THEN REPLY @380 /* ~And what if I'm content without the power of a deranged god?~ #96702 */ GOTO 185
  IF ~~ THEN REPLY @381 /* ~Power has a price. I don't know if I'm prepared to pay it.~ #96703 */ GOTO 186
END

IF ~~ THEN BEGIN 183 // from: 181.1
  SAY @382 /* ~I approve.~ #96692 */
  IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 184 // from: 185.0 182.0
  SAY @383 /* ~Many would kill for a taste of the power that is your birthright. Remember that.~ #96693 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 185 // from: 182.1
  SAY @384 /* ~Then you are a foolish <PRO_RACE>.~ #96694 */
  IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 186 // from: 182.2
  SAY @385 /* ~Whatever the price, it is worth paying.~ #96704 */
  IF ~~ THEN GOTO 184
END

IF WEIGHT #19 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",30)
~ THEN BEGIN 187 // from:
  SAY @386 /* ~"<CHARNAME>, Butcher of the Sword Coast." Word of your passage has reached Amn. Your reputation earns you my respect.~ #96705 */
  IF ~~ THEN REPLY @387 /* ~Are they really calling me that?~ #96718 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 188
  IF ~~ THEN REPLY @388 /* ~Oh, gods. That is not a title to pull out in mixed company.~ #96719 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 190
  IF ~~ THEN REPLY @389 /* ~Soon it will be more than just reputation to the idiots here in Amn.~ #96720 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 189
END

IF ~~ THEN BEGIN 188 // from: 187.0
  SAY @390 /* ~Do you not hear it as we walk the streets? Do you not see the looks given you by the peasantry and nobility alike?~ #96706 */
  IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 189 // from: 187.2
  SAY @391 /* ~Indeed.~ #96707 */
  IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0 188.0 187.1
  SAY @392 /* ~Your infamy may someday rival my own. ~ #96708 */
  IF ~~ THEN REPLY @393 /* ~Somehow, I doubt it.~ #96721 */ GOTO 191
  IF ~~ THEN REPLY @394 /* ~The idea fills my heart with joy. No, wait. Not joy. The opposite of that.~ #96722 */ GOTO 192
  IF ~~ THEN REPLY @395 /* ~Yes. Someday soon.~ #96723 */ GOTO 192
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY @396 /* ~As do I. But stranger things have happened.~ #96709 */
  IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192 // from: 191.0 190.2 190.1
  SAY @397 /* ~Tell me, Bhaalspawn. When you enter into the fray, stare your enemy in the eye, and attack, what is it you feel?~ #96710 */
  IF ~~ THEN REPLY @398 /* ~Fury. Heat. Bloodlust. ~ #96724 */ GOTO 193
  IF ~~ THEN REPLY @399 /* ~Relaxed. I just let it happen.~ #96725 */ GOTO 194
  IF ~~ THEN REPLY @400 /* ~Unreasoning panic, usually. I'm amazed I've made it this far.~ #96726 */ GOTO 195
END

IF ~~ THEN BEGIN 193 // from: 192.0
  SAY @401 /* ~A <PRO_MANWOMAN> after my own heart.~ #96711 */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 194 // from: 192.1
  SAY @402 /* ~A warrior born, without fear or hesitation. Interesting.~ #96712 */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 195 // from: 192.2
  SAY @403 /* ~I have seen the wide-eyed fear, but also the set of your jaw. You have determination, if nothing else.~ #96713 */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from: 195.0 194.0 193.0
  SAY @404 /* ~There is more to you than meets the eye. ~ #96714 */
  IF ~~ THEN REPLY @405 /* ~But a fair amount of me that meets the eye too, right?~ #96727 */ GOTO 197
  IF ~~ THEN REPLY @406 /* ~A <PRO_MANWOMAN> has to have <PRO_HISHER> secrets, Dorn.~ #96728 */ GOTO 198
  IF ~~ THEN REPLY @407 /* ~I'm sure you have hidden depths as well. Very hidden.~ #96729 */ GOTO 199
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY @408 /* ~There is. Some parts more pleasing than others.~ #96715 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 198 // from: 196.1
  SAY @409 /* ~Yes. I suppose you do. ~ #96716 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 199 // from: 196.2
  SAY @410 /* ~Careful, <CHARNAME>. I'd hate to disappoint you.~ #96717 */
  IF ~~ THEN EXIT
END

IF WEIGHT #20 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",18)
Global("OHD_LOST_CLASS","GLOBAL",1)
~ THEN BEGIN 200 // from:
  SAY @411 /* ~I have cast off my chains and am free to do as I will, thanks to you.~ #96730 */
  IF ~~ THEN REPLY @412 /* ~Please. You freed yourself. I'll take neither the credit nor the blame.~ #96778 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 202
  IF ~~ THEN REPLY @413 /* ~And what is it you will?~ #96779 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 201
  IF ~~ THEN REPLY @414 /* ~Now you must do something for me.~ #96780 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 203
END

IF ~~ THEN BEGIN 201 // from: 215.1 200.1
  SAY @415 /* ~For now, I will follow your lead. Doing so has served me well so far.~ #96731 */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 202 // from: 215.0 200.0
  SAY @416 /* ~As you wish. There is something I'd ask of you.~ #96732 */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 203 // from: 215.2 200.2
  SAY @417 /* ~Wait, I have something to say.~ #96733 */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 204 // from: 203.0 202.0 201.0
  SAY @418 /* ~You are a powerful <PRO_MANWOMAN>, <CHARNAME>. You hold your own in battle and strike fear into the hearts of your enemies and allies alike. ~ #96734 */
  IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY @419 /* ~I have never known another like you.~ #96735 */
  IF ~~ THEN GOTO 206
END

IF ~~ THEN BEGIN 206 // from: 205.0
  SAY @420 /* ~My blood boils to look at you, god-child, and I can wait no longer. ~ #96736 */
  IF ~~ THEN GOTO 207
  IF ~  Global("OHD_dornsex","GLOBAL",2)
~ THEN GOTO 214
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY @421 /* ~Will you share my bedroll tonight? I assure you... you will not regret it. ~ #96737 */
  IF ~~ THEN REPLY @422 /* ~And what of tomorrow? The nights are cold, Dorn. I would have a companion, not a distraction.~ #96781 */ GOTO 208
  IF ~~ THEN REPLY @423 /* ~You've got that right.~ #96782 */ GOTO 209
  IF ~~ THEN REPLY @424 /* ~I'm sorry, Dorn. I can't.~ #96783 */ GOTO 210
END

IF ~~ THEN BEGIN 208 // from: 214.0 207.0
  SAY @425 /* ~And tomorrow, and the nights after, if that is what you wish. ~ #96738 */
  IF ~~ THEN REPLY @426 /* ~It is, and has been for a long time now.~ #96784 */ GOTO 211
  IF ~~ THEN REPLY @427 /* ~I will have you, Dorn Il-Khan.~ #96785 */ GOTO 212
  IF ~~ THEN REPLY @428 /* ~That's just it. I don't think it is. I'm sorry.~ #96786 */ GOTO 210
END

IF ~~ THEN BEGIN 209 // from: 214.1 207.1
  SAY @429 /* ~I look forward to it. ~ #96739 */
  IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 210 // from: 214.2 208.2 207.2
  SAY @430 /* ~Bah! I was wrong about you. You are no better than all the rest.~ #96740 */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
RestParty()
~ EXIT
END

IF ~~ THEN BEGIN 211 // from: 208.0
  SAY @431 /* ~And I as well. ~ #96741 */
  IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 212 // from: 208.1
  SAY @432 /* ~And I you.~ #96742 */
  IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 213 // from: 212.0 211.0 209.0
  SAY @433 /* ~<CHARNAME> and Dorn... I like the sound of that.~ #96743 */
  IF ~~ THEN DO ~RestParty()
~ EXIT
END

IF ~~ THEN BEGIN 214 // from: 206.1
  SAY @434 /* ~Share my bedroll once more. You know you will not regret it.~ #96744 */
  IF ~~ THEN REPLY @422 /* ~And what of tomorrow? The nights are cold, Dorn. I would have a companion, not a distraction.~ #96787 */ GOTO 208
  IF ~~ THEN REPLY @435 /* ~You're right about that.~ #96788 */ GOTO 209
  IF ~~ THEN REPLY @424 /* ~I'm sorry, Dorn. I can't.~ #96789 */ GOTO 210
END

IF WEIGHT #21 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",18)
~ THEN BEGIN 215 // from:
  SAY @411 /* ~Power such as I have never known flows through my veins... and I have you to thank for it.~ #96745 */
  IF ~~ THEN REPLY @412 /* ~Please. You did this yourself. I'll take neither the credit nor the blame.~ #96790 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 202
  IF ~~ THEN REPLY @413 /* ~And what is it you will?~ #96791 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 201
  IF ~~ THEN REPLY @414 /* ~Now you must do something for me.~ #96792 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 203
END

IF WEIGHT #22 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",46)
~ THEN BEGIN 216 // from:
  SAY @438 /* ~How fare you, <CHARNAME>? ~ #96746 */
  IF ~~ THEN REPLY @439 /* ~As though you care.~ #96793 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 217
  IF ~~ THEN REPLY @440 /* ~I'm fine. Just... fine.~ #96794 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 218
  IF ~~ THEN REPLY @441 /* ~I've lost my soul. How do you think I fare?~ #96795 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 219
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY @442 /* ~You know me well enough to know that if I didn't care, I wouldn't ask.~ #96747 */
  IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 218 // from: 216.1
  SAY @443 /* ~Do not lie to me, Bhaalspawn. ~ #96748 */
  IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 219 // from: 216.2
  SAY @444 /* ~You look ready to fall where you stand.~ #96749 */
  IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 220 // from: 219.0 218.0 217.0
  SAY @445 /* ~Do you need to rest?~ #96750 */
  IF ~~ THEN REPLY @446 /* ~Don't worry about it. Just make sure I don't collapse.~ #96796 */ GOTO 221
  IF ~~ THEN REPLY @447 /* ~I'll rest soon enough. A body without a soul can't function for long. ~ #96797 */ GOTO 222
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY @448 /* ~Very well. ~ #96751 */
  IF ~~ THEN GOTO 222
END

IF ~~ THEN BEGIN 222 // from: 221.0 220.1
  SAY @449 /* ~Irenicus will pay for what he's done, <CHARNAME>.~ #96752 */
  IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY @450 /* ~We WILL retrieve your soul, and then he will burn.~ #96753 */
  IF ~~ THEN EXIT
END

IF WEIGHT #23 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",44)
~ THEN BEGIN 224 // from:
  SAY @451 /* ~You and I are similar in more ways than one, Bhaalspawn.~ #96754 */
  IF ~  Race(Player1,HALFORC)
~ THEN REPLY @452 /* ~What, apart from the fact we have fantastic tusks?~ #96798 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 225
  IF ~  Gender(Player1,MALE)
~ THEN REPLY @453 /* ~We do both have excellent taste in men.~ #96799 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 226
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY @454 /* ~We do both have excellent taste in partners.~ #96800 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 228
  IF ~~ THEN REPLY @455 /* ~Aside from our shared love of all things murderous?~ #96801 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 227
  IF ~~ THEN REPLY @456 /* ~What do you mean?~ #96802 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 229
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY @457 /* ~We share our orcish blood, certainly. But that is not all.~ #96755 */
  IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 226 // from: 224.1
  SAY @458 /* ~Apart from that.~ #96756 */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 227 // from: 224.3
  SAY @459 /* ~Yes, apart from even our shared bloodlust.~ #96757 */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 228 // from: 224.2
  SAY @458 /* ~Apart from that.~ #96758 */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 229 // from: 228.0 227.0 226.0 224.4
  SAY @460 /* ~We are both outcast. Labelled and cast aside by the world, the victims of our heritage.~ #96759 */
  IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 230 // from: 225.0
  SAY @461 /* ~We are both outcast. Labelled and cast aside by the world, victims of our parentage.~ #96760 */
  IF ~~ THEN REPLY @462 /* ~A grim outlook.~ #96803 */ GOTO 232
  IF ~  !Race(Player1,HALFORC)
~ THEN REPLY @463 /* ~Our heritage has caused us both problems, yes. In different ways, I'm sure, but life would certainly be easier were I not a Bhaalspawn.~ #96804 */ GOTO 234
  IF ~  Race(Player1,HALFORC)
~ THEN REPLY @464 /* ~Our heritage has caused us both problems, yes. Life would certainly be easier were I not a half-orc Bhaalspawn.~ #96805 */ GOTO 234
  IF ~~ THEN REPLY @465 /* ~I don't know about that. I haven't found my heritage all that troublesome.~ #96806 */ GOTO 233
END

IF ~~ THEN BEGIN 231 // from: 229.0
  SAY @466 /* ~Our upbringing was different, but at our core we are both strangers to the world around us. We make our way, but we are cast out and spat upon for our parentage.~ #96761 */
  IF ~~ THEN REPLY @462 /* ~A grim outlook.~ #96803 */ GOTO 232
  IF ~  !Race(Player1,HALFORC)
~ THEN REPLY @463 /* ~Our heritage has caused us both problems, yes. In different ways, I'm sure, but life would certainly be easier were I not a Bhaalspawn.~ #96804 */ GOTO 234
  IF ~  Race(Player1,HALFORC)
~ THEN REPLY @464 /* ~Our heritage has caused us both problems, yes. Life would certainly be easier were I not a half-orc Bhaalspawn.~ #96805 */ GOTO 234
  IF ~~ THEN REPLY @465 /* ~I don't know about that. I haven't found my heritage all that troublesome.~ #96806 */ GOTO 233
END

IF ~~ THEN BEGIN 232 // from: 231.0 230.0
  SAY @467 /* ~An accurate one.~ #96762 */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 233 // from: 231.3 230.3
  SAY @468 /* ~"Not all that troublesome." Hah! Those who know your true heritage recoil, in constant fear of their lives.~ #96763 */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.0 232.0 231.2 231.1 230.2 230.1
  SAY @469 /* ~We stand forever apart. Few know us, and fewer still understand us. ~ #96764 */
  IF ~~ THEN GOTO 1360
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY @470 /* ~Fate has brought us together for a reason. Our destiny is writ large in the stars. One day, all will cower before us.~ #96765 */
  IF ~~ THEN REPLY @471 /* ~And when that day comes, my love, what a celebration we shall have.~ #96807 */ GOTO 236
  IF ~~ THEN REPLY @472 /* ~You have a magnificent way with words.~ #96808 */ GOTO 237
  IF ~~ THEN REPLY @473 /* ~If you say so.~ #96809 */ GOTO 238
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY @474 /* ~I like the sound of that.~ #96766 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 237 // from: 235.1
  SAY @475 /* ~Yes. I do.~ #96767 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 238 // from: 235.2
  SAY @476 /* ~I swear to you, they will. You just wait.~ #96768 */
  IF ~~ THEN EXIT
END

IF WEIGHT #24 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",52)
~ THEN BEGIN 239 // from:
  SAY @477 /* ~The mage's plan was effective, it cannot be denied. Irenicus wields fear and panic like a seasoned warrior does sword and shield.~ #96769 */
  IF ~~ THEN REPLY @478 /* ~It is... impressive.~ #96810 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 240
  IF ~~ THEN REPLY @479 /* ~Hit them right and the most seasoned warrior will still fall.~ #96811 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 240
  IF ~~ THEN REPLY @480 /* ~Admire him some other time, Dorn. We've matters to attend to.~ #96812 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 241
END

IF ~~ THEN BEGIN 240 // from: 239.1 239.0
  SAY @481 /* ~He is not one to trifle with, but neither are we. ~ #96770 */
  IF ~~ THEN GOTO 242
END

IF ~~ THEN BEGIN 241 // from: 239.2
  SAY @482 /* ~Hold a moment.~ #96771 */
  IF ~~ THEN GOTO 242
END

IF ~~ THEN BEGIN 242 // from: 241.0 240.0
  SAY @483 /* ~This is a beautiful sight. Had we more time, <CHARNAME>... I would take you where we stand, in the midst of this chaos. ~ #96772 */
  IF ~~ THEN GOTO 243
END

IF ~~ THEN BEGIN 243 // from: 242.0
  SAY @484 /* ~Kiss me.~ #96773 */
  IF ~~ THEN REPLY @485 /* ~With pleasure.~ #96813 */ GOTO 245
  IF ~~ THEN REPLY @486 /* ~We are literally in the middle of a battle. No.~ #96814 */ GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 243.1
  SAY @487 /* ~Then perhaps we are too different after all.~ #96774 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 245 // from: 243.0
  SAY @488 /* ~You and I, <CHARNAME>... we will go far. ~ #96775 */
  IF ~~ THEN GOTO 246
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY @489 /* ~Now let us make this Irenicus suffer as his victims have suffered.~ #96776 */
  IF ~~ THEN GOTO 247
END

IF ~~ THEN BEGIN 247 // from: 246.0
  SAY @490 /* ~You are MINE... and he will pay for his transgressions!~ #96777 */
  IF ~~ THEN EXIT
END

IF WEIGHT #25 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_rasaadconflict","GLOBAL",2)
~ THEN BEGIN 248 // from:
  SAY @491 /* ~You and the monk. ~ #100062 */
  IF ~~ THEN REPLY @492 /* ~Me and Rasaad? What about us?~ #100069 */ DO ~SetGlobal("OHD_rasaadconflict","GLOBAL",3)
~ GOTO 249
  IF ~~ THEN REPLY @493 /* ~Are none of your business.~ #100070 */ DO ~SetGlobal("OHD_rasaadconflict","GLOBAL",3)
~ GOTO 249
  IF ~~ THEN REPLY @494 /* ~Definitely not.~ #100071 */ DO ~SetGlobal("OHD_rasaadconflict","GLOBAL",3)
SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ GOTO 250
END

IF ~~ THEN BEGIN 249 // from: 248.1 248.0
  SAY @495 /* ~If you would be mine, you must be mine alone.~ #100063 */
  IF ~~ THEN REPLY @496 /* ~I'm a person, Dorn. Not some object to be possessed.~ #100072 */ GOTO 251
  IF ~~ THEN REPLY @497 /* ~You know I am yours. You do know that, right?~ #100073 */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ GOTO 250
  IF ~~ THEN REPLY @498 /* ~Then we are through.~ #100074 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 253
END

IF ~~ THEN BEGIN 250 // from: 254.1 252.0 249.1 248.2
  SAY @499 /* ~Good. ~ #100064 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 251 // from: 249.0
  SAY @500 /* ~You are no object. But you do belong to me, as I do to you.~ #100065 */
  IF ~~ THEN REPLY @501 /* ~You really are quite the romantic, aren't you?~ #100075 */ GOTO 252
  IF ~~ THEN REPLY @502 /* ~We don't owe each other anything.~ #100076 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 253
  IF ~~ THEN REPLY @503 /* ~Wrong. Wrong, wrong, wrong.~ #100077 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 253
END

IF ~~ THEN BEGIN 252 // from: 251.0
  SAY @504 /* ~And the monk?~ #100066 */
  IF ~~ THEN REPLY @505 /* ~Means nothing to me.~ #100078 */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ GOTO 250
  IF ~~ THEN REPLY @506 /* ~He is... intriguing.~ #100079 */ GOTO 254
END

IF ~~ THEN BEGIN 253 // from: 254.0 251.2 251.1 249.2
  SAY @507 /* ~So be it. You will come to regret this, <CHARNAME>.~ #100067 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 254 // from: 252.1
  SAY @508 /* ~Decide whom you want, now. I'll not be anyone's second choice.~ #100068 */
  IF ~~ THEN REPLY @509 /* ~And I won't respond positively to ultimatums.~ #100080 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 253
  IF ~~ THEN REPLY @510 /* ~If I must choose, I would choose you, of course.~ #100081 */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ GOTO 250
END

IF WEIGHT #26 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_aerieconflict","GLOBAL",2)
~ THEN BEGIN 255 // from:
  SAY @511 /* ~You would challenge me, elf?~ #100082 */
  IF ~~ THEN DO ~SetGlobal("OHD_aerieconflict","GLOBAL",3)
~ EXTERN ~AERIEJ~ 228
END

IF ~~ THEN BEGIN 256 // from:
  SAY @512 /* ~<CHARNAME>. You desire him. But he will be mine.~ #100084 */
  IF ~~ THEN EXTERN ~AERIEJ~ 229
END

IF ~~ THEN BEGIN 257 // from:
  SAY @513 /* ~Hah! I may be a monster, but you are a gnat. Get in my way and I will squash you.~ #100086 */
  IF ~~ THEN EXTERN ~AERIEJ~ 230
END

IF ~~ THEN BEGIN 258 // from:
  SAY @514 /* ~You are no better than she. To Hells with you!~ #100089 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 259 // from:
  SAY @515 /* ~What you thought is of no consequence. If you value your life, you will leave him to me.~ #100091 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 260 // from:
  SAY @516 /* ~And good riddance.~ #100095 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 261 // from:
  SAY @517 /* ~Said the halfling to the giant.~ #100100 */
  IF ~~ THEN EXTERN ~ANOMENJ~ 327
END

IF ~~ THEN BEGIN 262 // from:
  SAY @518 /* ~You'll not best this one.~ #100102 */
  IF ~~ THEN REPLY @519 /* ~Would you two like some privacy...?~ #100109 */ EXTERN ~ANOMENJ~ 328
  IF ~~ THEN REPLY @520 /* ~Dorn, leave Anomen alone. He should get used to it from now on.~ #100110 */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
~ EXTERN ~ANOMENJ~ 329
  IF ~~ THEN REPLY @521 /* ~Anomen, you've no need to prove yourself to me. ~ #100111 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 264
END

IF ~~ THEN BEGIN 263 // from:
  SAY @522 /* ~You've made the right decision, <CHARNAME>. ~ #100105 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from: 262.2
  SAY @523 /* ~You'll regret this decision, <CHARNAME>. He'll disappoint you in ways I never would.~ #100106 */
  IF ~~ THEN EXTERN ~ANOMENJ~ 330
END

IF ~~ THEN BEGIN 265 // from:
  SAY @524 /* ~We will see.~ #100108 */
  IF ~~ THEN EXIT
END

IF WEIGHT #27 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_phaere","GLOBAL",1)
~ THEN BEGIN 266 // from:
  SAY @525 /* ~What treachery is this, <CHARNAME>?~ [OH95174] #95174 */
  IF ~~ THEN REPLY @526 /* ~Treachery?~ #95185 */ DO ~SetGlobal("OHD_phaere","GLOBAL",2)
~ GOTO 268
  IF ~~ THEN REPLY @527 /* ~What are you talking about, Dorn?~ #95186 */ DO ~SetGlobal("OHD_phaere","GLOBAL",2)
~ GOTO 268
  IF ~~ THEN REPLY @528 /* ~You accuse me of treachery? Watch your tongue, half-orc.~ #95187 */ DO ~SetGlobal("OHD_phaere","GLOBAL",2)
~ GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.2
  SAY @529 /* ~Watch my tongue? I should cut yours from your vile mouth!~ [OH95175] #95175 */
  IF ~~ THEN GOTO 268
END

IF ~~ THEN BEGIN 268 // from: 267.0 266.1 266.0
  SAY @530 /* ~I leave you alone for fifteen seconds and you take some drow she-dog into your bed?~ [OH95176] #95176 */
  IF ~~ THEN REPLY @531 /* ~A minor point, but it would be more accurate to say she took me into her bed.~ #95188 */ GOTO 269
  IF ~~ THEN REPLY @532 /* ~Ah. Yes. Not my finest hour. A decent eight minutes, though, if I do say so myself.~ #95189 */ GOTO 271
  IF ~  OR(2)
CheckStatLT(Player1,15,CHR)
CheckStatLT(Player1,15,STR)
~ THEN REPLY @533 /* ~I do as I will, half-orc. If you've a problem with that, it's yours and yours alone. Deal with it or begone.~ #95190 */ GOTO 273
  IF ~  CheckStatGT(Player1,14,CHR)
CheckStatGT(Player1,14,STR)
~ THEN REPLY @533 /* ~I do as I will, half-orc. If you've a problem with that, it's yours and yours alone. Deal with it or begone.~ #95190 */ GOTO 272
  IF ~~ THEN REPLY @534 /* ~I did no such thing.~ #100250 */ GOTO 272
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY @535 /* ~Damn accuracy and damn you! ~ [OH95177] #95177 */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 271.0 269.0
  SAY @536 /* ~This insult cannot stand!~ [OH95178] #95178 */
  IF ~~ THEN REPLY @537 /* ~I am sorry, Dorn. It was a rash decision, made in the heat of the moment, and I regret it.~ #95191 */ GOTO 276
  IF ~~ THEN REPLY @538 /* ~Shh. The insult's very sensitive about having no legs. It lost them in an incident during the second Dragonspear War. Ugly battle. It wakes at night screaming, its bed drenched in sweat, the memory of that horrible day scarred into its very soul.~ #95192 */ GOTO 275
  IF ~  OR(2)
CheckStatLT(Player1,15,CHR)
CheckStatLT(Player1,15,STR)
~ THEN REPLY @539 /* ~It can and it will, half-orc. You do not own me.~ #95193 */ GOTO 273
  IF ~  CheckStatGT(Player1,14,CHR)
CheckStatGT(Player1,14,STR)
~ THEN REPLY @539 /* ~It can and it will, half-orc. You do not own me.~ #95193 */ GOTO 272
END

IF ~~ THEN BEGIN 271 // from: 268.1
  SAY @540 /* ~Jokes? You make jokes?~ [OH95179] #95179 */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 272 // from: 276.0 275.1 273.1 270.3 268.4 268.3
  SAY @541 /* ~This one time, I'll permit you this... lapse of judgment. If you would see us fulfill our destiny, do not repeat it.~ [OH95180] #95180 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 273 // from: 275.0 270.2 268.2
  SAY @542 /* ~I should send you to the Abyss and let demons gnaw your soul for all eternity for this—push me one more time and I will, I swear it. Get out of my sight! You sicken me.~ [OH95181] #95181 */
  IF ~~ THEN REPLY @543 /* ~She meant nothing to me, Dorn. You are all that truly matters.~ #95194 */ GOTO 274
  IF ~~ THEN REPLY @544 /* ~I sicken you? Wow, I really did mess up, didn't I?~ #95195 */ GOTO 272
  IF ~~ THEN REPLY @545 /* ~Get over it, Dorn—and soon. I've no patience for your nonsense.~ #95196 */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0
  SAY @546 /* ~Prove it, <CHARNAME>—if you can. You have your work cut out for you. Fail and you'll have something more cut OUT of you.~ [OH95182] #95182 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 275 // from: 270.1
  SAY @547 /* ~Such mockery does naught but stoke my fury, <CHARNAME>.~ [OH95183] #95183 */
  IF ~~ THEN GOTO 273
  IF ~  CheckStatGT(Player1,14,CHR)
CheckStatGT(Player1,14,STR)
~ THEN GOTO 272
END

IF ~~ THEN BEGIN 276 // from: 270.0
  SAY @548 /* ~Regrets are for the weak, which is all you are. This pathetic episode proves it.~ [OH95184] #95184 */
  IF ~~ THEN GOTO 272
END

IF WEIGHT #28 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_WEDDING_IMPATIENT","LOCALS",1)
Global("OHD_WEDDING_START","GLOBAL",0)
~ THEN BEGIN 277 // from:
  SAY @549 /* ~<CHARNAME>, a word?~ [OH74649] #74649 */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_IMPATIENT","LOCALS",2)
SetGlobalTimer("OHD_CRASH_WEDDING_2","GLOBAL",FOURTEEN_DAYS)
~ GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY @550 /* ~I can't help but notice we haven't visited the Radiant Heart's temple recently, or that a certain cleric by the name of Firejaw continues to draw breath. When do you plan to rectify the situation?~ [OH74650] #74650 */
  IF ~~ THEN REPLY @551 /* ~In truth, Dorn, I find the notion disturbing. I'm not sure I'll be able to help you in this.~ #74651 */ GOTO 281
  IF ~~ THEN REPLY @552 /* ~Assassinating a priest of the Triad is no trivial matter. It'll take me a while to get comfortable with the idea.~ #74652 */ GOTO 280
  IF ~~ THEN REPLY @553 /* ~No time like the present.~ #74653 */ DO ~ActionOverride(Player1,LeaveAreaLUAPanic("OH5000","",[512.1546],NNE))
ActionOverride(Player1,LeaveAreaLUA("OH5000","",[512.1546],NNE))
ActionOverride(Player2,LeaveAreaLUA("OH5000","",[438.1527],NNE))
ActionOverride(Player3,LeaveAreaLUA("OH5000","",[552.1601],NNE))
ActionOverride(Player4,LeaveAreaLUA("OH5000","",[372.1491],NNE))
ActionOverride(Player5,LeaveAreaLUA("OH5000","",[567.1647],NNE))
ActionOverride(Player6,LeaveAreaLUA("OH5000","",[463.1573],NNE))
~ EXIT
  IF ~~ THEN REPLY @554 /* ~When I see fit, Dorn, and not a second sooner. If you've a problem with that, you're welcome to take your leave.~ #74654 */ GOTO 279
END

IF ~~ THEN BEGIN 279 // from: 278.3
  SAY @555 /* ~I may just do that if we don't act soon.~ [OH74655] #74655 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 280 // from: 278.1
  SAY @556 /* ~Get comfortable soon, <PRO_RACE>. My patron's patience is not without limit.~ [OH74656] #74656 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 281 // from: 278.0
  SAY @557 /* ~If that's how it is, I'll take my leave of you.~ [OH74657] #74657 */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
MoveGlobal("AR0900","Dorn",[2550.3394])
~ EXIT
END

IF ~~ THEN BEGIN 282 // from:
  SAY @558 /* ~Deal with my blade, foolish <PRO_RACE>!~ [OH74564] #74564 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 283 // from:
  SAY @559 /* ~So be it—the prospect of your soul has always excited my patron!~ [OH74549] #74549 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 284 // from:
  SAY @560 /* ~Then pay the price for your folly!~ [OH74555] #74555 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
Enemy()
~ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_WEDDING_IMPATIENT","LOCALS",3)
Global("OHD_WEDDING_START","GLOBAL",0)
~ THEN BEGIN 285 // from:
  SAY @561 /* ~My patience grows thin, <CHARNAME>. How much longer do you intend to ignore the temple of the Radiant Heart?~ [OH74658] #74658 */
  IF ~~ THEN REPLY @562 /* ~As long as possible, though I gather I'm running out of time.~ #74659 */ GOTO 286
  IF ~~ THEN REPLY @563 /* ~How much longer is there?~ #74660 */ GOTO 289
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @564 /* ~I shall ignore it as long as I choose. Is that a problem, half-orc?~ #74661 */ GOTO 287
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @564 /* ~I shall ignore it as long as I choose. Is that a problem, half-orc?~ #74661 */ GOTO 288
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY @565 /* ~Your help would be appreciated, but it's not required.~ [OH74662] #74662 */
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @566 /* ~I've given it a lot of thought, Dorn. I can't condone the assassination of a priest.~ #74663 */ GOTO 290
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @566 /* ~I've given it a lot of thought, Dorn. I can't condone the assassination of a priest.~ #74663 */ GOTO 288
  IF ~~ THEN REPLY @567 /* ~All right, Dorn. You've twisted my arm. Let's go visit a temple.~ #74664 */ DO ~ActionOverride(Player1,LeaveAreaLUAPanic("OH5000","",[512.1546],NNE))
ActionOverride(Player1,LeaveAreaLUA("OH5000","",[512.1546],NNE))
ActionOverride(Player2,LeaveAreaLUA("OH5000","",[438.1527],NNE))
ActionOverride(Player3,LeaveAreaLUA("OH5000","",[552.1601],NNE))
ActionOverride(Player4,LeaveAreaLUA("OH5000","",[372.1491],NNE))
ActionOverride(Player5,LeaveAreaLUA("OH5000","",[567.1647],NNE))
ActionOverride(Player6,LeaveAreaLUA("OH5000","",[463.1573],NNE))
~ EXIT
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @568 /* ~Your presence is no longer appreciated or required.~ #74665 */ GOTO 293
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @568 /* ~Your presence is no longer appreciated or required.~ #74665 */ GOTO 288
END

IF ~~ THEN BEGIN 287 // from: 285.2
  SAY @569 /* ~You'll have no problems with me, <PRO_RACE>.~ [OH74666] #74666 */
  IF ~~ THEN DO ~SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",THIRTY_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 288 // from: 286.4 286.1 285.3
  SAY @570 /* ~You would dismiss me, <CHARNAME>? Try dismissing my blade!~ [OH74667] #74667 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 289 // from: 285.1
  SAY @571 /* ~I know not, but would rather not find out the hard way.~ [OH74668] #74668 */
  IF ~~ THEN REPLY @572 /* ~There is nothing easy in the life you've chosen for yourself.~ #74669 */ GOTO 294
  IF ~~ THEN REPLY @573 /* ~Then we shall waste no more.~ #74670 */ DO ~ActionOverride(Player1,LeaveAreaLUAPanic("OH5000","",[512.1546],NNE))
ActionOverride(Player1,LeaveAreaLUA("OH5000","",[512.1546],NNE))
ActionOverride(Player2,LeaveAreaLUA("OH5000","",[438.1527],NNE))
ActionOverride(Player3,LeaveAreaLUA("OH5000","",[552.1601],NNE))
ActionOverride(Player4,LeaveAreaLUA("OH5000","",[372.1491],NNE))
ActionOverride(Player5,LeaveAreaLUA("OH5000","",[567.1647],NNE))
ActionOverride(Player6,LeaveAreaLUA("OH5000","",[463.1573],NNE))
~ EXIT
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @574 /* ~You tremble like a rabbit at the thought of your patron's wrath. Your weakness sickens me.~ #74671 */ GOTO 292
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @574 /* ~You tremble like a rabbit at the thought of your patron's wrath. Your weakness sickens me.~ #74671 */ GOTO 291
END

IF ~~ THEN BEGIN 290 // from: 286.0
  SAY @575 /* ~Your cowardice disgusts me, <PRO_RACE>. I'll be on my way.~ [OH74672] #74672 */
  IF ~~ THEN DO ~SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
~ EXIT
END

IF ~~ THEN BEGIN 291 // from: 289.3
  SAY @576 /* ~You call me weak? Defend yourself, <PRO_RACE>!~ [OH74673] #74673 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 292 // from: 289.2
  SAY @577 /* ~Only a fool would try Ur-Gothoz's patience. I'll not be a party to my own destruction.~ [OH74674] #74674 */
  IF ~~ THEN DO ~SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
~ EXIT
END

IF ~~ THEN BEGIN 293 // from: 286.3
  SAY @578 /* ~A pox upon you and the she-beast who spawned you, <PRO_RACE>. I'll not stand here and be insulted by the likes of you.~ [OH74675] #74675 */
  IF ~~ THEN DO ~SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
~ EXIT
END

IF ~~ THEN BEGIN 294 // from: 289.0
  SAY @579 /* ~The rewards are worth the effort. I can wait no longer. I must return to the temple of the Radiant Heart.~ [OH74676] #74676 */
  IF ~~ THEN DO ~SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
~ EXIT
END

IF ~~ THEN BEGIN 295 // from: 296.2
  SAY @580 /* ~Death to the Radiant Heart!~ [OH74682] #74682 */
  IF ~  Global("OH5000_START","GLOBAL",11)
~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
OpenDoor("DOOR07")
~ EXIT
  IF ~  !Global("OH5000_START","GLOBAL",11)
~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
OpenDoor("DOOR09")
~ EXIT
END

IF ~~ THEN BEGIN 296 // from:
  SAY @581 /* ~For you perhaps. For my master and I, it changes nothing.~ [OH74693] #74693 */
  IF ~~ THEN REPLY @582 /* ~Then I'm done with both you and your master.~ #74694 */ GOTO 297
  IF ~~ THEN REPLY @583 /* ~Let me attempt to change your mind.~ #74695 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
  IF ~~ THEN REPLY @584 /* ~Well, nothing important, anyway. Let's get down to work.~ #74696 */ GOTO 295
END

IF ~~ THEN BEGIN 297 // from: 296.0
  SAY @585 /* ~You don't want to cross Ur-Gothoz, and you certainly don't want to cross me.~ [OH74697] #74697 */
  IF ~~ THEN REPLY @586 /* ~You and that sword of yours make a persuasive argument. Very well. Let's go celebrate the couple's special day.~ #74698 */ EXIT
  IF ~~ THEN REPLY @587 /* ~I'm afraid what I want and what honor demands are very much at odds in this instance.~ #74699 */ GOTO 298
  IF ~~ THEN REPLY @588 /* ~You're not dealing with some shepherd wandering the Sword Coast now, Dorn. It'll take more than threats to steer me from my path.~ #74700 */ GOTO 299
END

IF ~~ THEN BEGIN 298 // from: 299.0 297.1
  SAY @589 /* ~I spit upon your honor, and I'll do the same to your corpse!~ [OH74701] #74701 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 299 // from: 297.2
  SAY @590 /* ~I wasn't threatening you, <CHARNAME>, merely stating the facts. Like me, only sharp steel may turn you from your course. If we're at odds, I'll give you nothing less.~ [OH74702] #74702 */
  IF ~~ THEN REPLY @591 /* ~Then show me your steel, for on my honor I'll not let you do as Ur-Gothoz commands.~ #74703 */ GOTO 298
  IF ~~ THEN REPLY @592 /* ~I'm glad we understand each other. Now I believe we've a wedding to attend?~ #74704 */ EXIT
END

IF ~~ THEN BEGIN 300 // from:
  SAY @593 /* ~You mean to leave?~ [OH74742] #74742 */
  IF ~~ THEN REPLY @594 /* ~You heard the man. We're not welcome here.~ #74743 */ DO ~ActionOverride("OHDBBRO",SetGlobal("OHD_leave","LOCALS",1))
SetGlobal("OHD_LEAVE_WEDDING","MYAREA",1)
~ EXIT
  IF ~~ THEN REPLY @595 /* ~I mean to leave this place covered in blood, starting with this whelp's.~ #74744 */ GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.1
  SAY @596 /* ~Cut him down!~ #94473 */
  IF ~~ THEN DO ~SetGlobal("OHD_frontroomfight","OH5000",1)
SetGlobal("OHD_WEDDING_HOSTILE","OH5000",1)
~ EXIT
END

IF ~~ THEN BEGIN 302 // from:
  SAY @597 /* ~Too much talking, not enough slaughter!~ [OH74784] #74784 */
  IF ~  IfValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 231
  IF ~  !IfValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~OHDFIREJ~ 1
END

IF ~~ THEN BEGIN 303 // from:
  SAY @6 /* ~Bollard Firejaw! Come and meet your doom!~ [OH74795] #74795 */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 5
END

IF ~~ THEN BEGIN 304 // from:
  SAY @7 /* ~Your feelings on the matter are of no consequence. All that matters is that you die in the name of my master, Ur-Gothoz!~ [OH74797] #74797 */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 6
END

IF ~~ THEN BEGIN 305 // from:
  SAY @598 /* ~The madness ends with your death, Firejaw! Not a second sooner.~ [OH91120] #91120 */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 12
END

IF ~~ THEN BEGIN 306 // from:
  SAY @599 /* ~Have it your way, <CHARNAME>. I've done what I came here to do.~ [OH74819] #74819 */
  IF ~~ THEN REPLY @600 /* ~Everyone out! But know that bloody vengeance will fall upon those who speak of what's occurred here this day.~ #74820 */ DO ~SetGlobal("OHD_WEDDING_MERCY","OH5000",1)
AddJournalEntry(91136,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 307 // from:
  SAY @601 /* ~You've no need to fear me, <CHARNAME>, at least for as long as you're of use.~ [OH74821] #74821 */
  IF ~~ THEN REPLY @602 /* ~Then I hope I continue to be of use well into the future. Let me prove myself now.~ #74822 */ DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
  IF ~~ THEN REPLY @603 /* ~Comforting words, coming from such as you.~ #74823 */ GOTO 308
  IF ~~ THEN REPLY @604 /* ~I feel exactly the same way about you.~ #74824 */ GOTO 309
END

IF ~~ THEN BEGIN 308 // from: 307.1
  SAY @605 /* ~They're as comforting as any you'll get from me, Bhaalspawn.~ [OH74825] #74825 */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 309 // from: 307.2
  SAY @606 /* ~We make a good pair, <CHARNAME>. These others are weak, but you understand the nature of power.~ [OH74826] #74826 */
  IF ~~ THEN REPLY @607 /* ~It thrills me as it does you.~ #74827 */ DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
  IF ~~ THEN REPLY @608 /* ~I understand the desire to possess it.~ #74828 */ DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
  IF ~  !IfValidForPartyDialogue("KORGAN")
~ THEN REPLY @609 /* ~These others are useful, in their own way. Your single-mindedness is understandable, but subtlety has its uses.~ #74829 */ GOTO 312
  IF ~  IfValidForPartyDialogue("KORGAN")
~ THEN REPLY @609 /* ~These others are useful, in their own way. Your single-mindedness is understandable, but subtlety has its uses.~ #74829 */ EXTERN ~KORGANJ~ 232
END

IF ~~ THEN BEGIN 310 // from:
  SAY @610 /* ~Are you mad, <CHARNAME>? Their tongues will wag like tickled dogs' tails the moment we leave. There's only one way to ensure their silence.~ [OH74831] #74831 */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY @611 /* ~Bollard Firejaw is dead. You've done your duty. Let's be away from here before word gets out of what's occurred.~ #74832 */ GOTO 317
  IF ~  !CheckStatGT(Player1,13,CHR)
~ THEN REPLY @611 /* ~Bollard Firejaw is dead. You've done your duty. Let's be away from here before word gets out of what's occurred.~ #74832 */ GOTO 311
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY @612 /* ~Let them talk. The legend of Dorn Il-Khan's power will grow. But for now, we should take our leave—it won't be long before someone raises the alarm.~ #74833 */ GOTO 316
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY @612 /* ~Let them talk. The legend of Dorn Il-Khan's power will grow. But for now, we should take our leave—it won't be long before someone raises the alarm.~ #74833 */ GOTO 311
  IF ~~ THEN REPLY @613 /* ~The truth. There's something I never expected to hear from the mouth of Dorn Il-Khan. You're right, of course. While they live, these people are a threat, and that, I cannot abide.~ #74834 */ GOTO 315
END

IF ~~ THEN BEGIN 311 // from: 310.3 310.1
  SAY @614 /* ~You're wrong, <CHARNAME>. Now let me do what must be done or better still, help me do it.~ [OH74835] #74835 */
  IF ~~ THEN REPLY @615 /* ~Go ahead. I've done my piece.~ #74836 */ GOTO 313
  IF ~~ THEN REPLY @616 /* ~Go ahead. I always enjoy watching you work.~ #74837 */ GOTO 314
  IF ~~ THEN REPLY @617 /* ~Very well. I can't let you have all the fun.~ #74838 */ GOTO 315
END

IF ~~ THEN BEGIN 312 // from: 309.2
  SAY @618 /* ~You keep your subtlety, <CHARNAME>. I'll put my faith in my sword.~ [OH74839] #74839 */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 313 // from: 311.0
  SAY @619 /* ~Rest your weary bones, <CHARNAME>. The strong and able-bodied will finish up here.~ [OH74840] #74840 */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 314 // from: 311.1
  SAY @620 /* ~Then you shall find the next few minutes enjoyable indeed!~ [OH74841] #74841 */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 315 // from: 311.2 310.4
  SAY @621 /* ~These wretches shall fall before us like wheat beneath a scythe!~ [OH74842] #74842 */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 316 // from: 310.2
  SAY @622 /* ~You tell it true, <CHARNAME>. Hear my words, you pathetic scum! I spare your lives that you may spread word of this day. When anyone asks you of it, you'll tell them fortune smiled upon you: You encountered Dorn Il-Khan and lived to tell the tale.~ [OH74843] #74843 */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_MERCY","OH5000",1)
AddJournalEntry(91136,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 317 // from: 310.0
  SAY @623 /* ~Perhaps you're right, <PRO_RACE>. My work is done. Let us take our leave.~ [OH74844] #74844 */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_MERCY","OH5000",1)
AddJournalEntry(91136,INFO)
~ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_AFTER_WEDDING","LOCALS",1)
~ THEN BEGIN 318 // from:
  SAY @624 /* ~What say you, <CHARNAME>? Satisfied with the day's rewards?~ [OH74849] #74849 */
  IF ~~ THEN REPLY @625 /* ~Chaos, bloodshed, and plunder. What's not to love?~ #74850 */ DO ~SetGlobal("OHD_AFTER_WEDDING","LOCALS",2)
~ GOTO 319
  IF ~~ THEN REPLY @626 /* ~Truth be told, I could be more satisfied. But I'll take what I can.~ #74851 */ DO ~SetGlobal("OHD_AFTER_WEDDING","LOCALS",2)
~ GOTO 319
  IF ~  !IfValidForPartyDialogue("NEERA")
~ THEN REPLY @627 /* ~My reward is the screams of the dying. Everything else is dessert.~ #74852 */ DO ~SetGlobal("OHD_AFTER_WEDDING","LOCALS",2)
~ GOTO 319
  IF ~  IfValidForPartyDialogue("NEERA")
~ THEN REPLY @627 /* ~My reward is the screams of the dying. Everything else is dessert.~ #74852 */ DO ~SetGlobal("OHD_AFTER_WEDDING","LOCALS",2)
~ EXTERN ~NEERAJ~ 12
END

IF ~~ THEN BEGIN 319 // from: 318.2 318.1 318.0
  SAY @628 /* ~Our bloody work is done. The city guards will doubtless hear of this soon. Let us make haste, lest we risk discovery.~ [OH74854] #74854 */
  IF ~~ THEN REPLY @629 /* ~I'm afraid this is where we part ways, Dorn Il-Khan. You've got some issues to work out, and frankly I'd rather not be around to watch you do so.~ #74855 */ DO ~SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @630 /* ~Now he wants to make haste. Oh well, better late than never. Come on, you big lug. Let's go find somewhere we can lurk menacingly in peace.~ #74856 */ GOTO 320
  IF ~  !IfValidForPartyDialogue("EDWIN")
~ THEN REPLY @631 /* ~Come with us. We could use someone with your talents.~ #74857 */ GOTO 320
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN REPLY @631 /* ~Come with us. We could use someone with your talents.~ #74857 */ EXTERN ~EDWINJ~ 201
END

IF ~~ THEN BEGIN 320 // from: 319.2 319.1
  SAY @632 /* ~Our combined skills would make us a force to be reckoned with...~ [OH74861] #74861 */
  IF ~~ THEN REPLY @633 /* ~Now you're talking. Let's hit the cobblestones before the guards arrive.~ #74862 */ EXIT
  IF ~~ THEN REPLY @634 /* ~United, there's no limit to what we may accomplish.~ #74863 */ GOTO 321
  IF ~~ THEN REPLY @635 /* ~Just remember, you're the one who serves Ur-Gothoz. If your master's desires cross mine, there'll be trouble.~ #74864 */ GOTO 322
END

IF ~~ THEN BEGIN 321 // from: 320.1
  SAY @636 /* ~<CHARNAME> and Dorn Il-Khan. We shall carve our names on the flesh of history.~ [OH74865] #74865 */
  IF ~~ THEN REPLY @637 /* ~That was disgusting.~ #74866 */ DO ~AddJournalEntry(91146,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 322 // from: 320.2
  SAY @638 /* ~I've no love for Ur-Gothoz—just the power he can supply.~ [OH74867] #74867 */
  IF ~~ THEN REPLY @639 /* ~So long as we understand one another. Now, let us go.~ #74868 */ DO ~AddJournalEntry(91143,INFO)
~ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  OR(2)
Global("OHD_terpfendlg","GLOBAL",2)
Global("OHD_terpfendlg","GLOBAL",4)
~ THEN BEGIN 323 // from:
  SAY @640 /* ~<CHARNAME>. I would have a word with you. ~ [OH74869] #74869 */
  IF ~~ THEN GOTO 324
END

IF ~~ THEN BEGIN 324 // from: 323.0
  SAY @641 /* ~In private.~ [OH74870] #74870 */
  IF ~~ THEN REPLY @642 /* ~Of course, Dorn. Always happy to talk with my favorite half-orc.~ #74871 */ GOTO 325
  IF ~~ THEN REPLY @643 /* ~If you must. What is it?~ #74872 */ GOTO 325
  IF ~  !Global("OHD_terpfendlg","GLOBAL",4)
~ THEN REPLY @644 /* ~Not right now, Dorn. I've other matters to attend to.~ #74873 */ DO ~SetGlobalTimer("OHD_terpfendlg_timer","LOCALS",THREE_DAYS)
SetGlobal("OHD_terpfendlg","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 325 // from: 324.1 324.0
  SAY @645 /* ~My patron, Ur-Gothoz, compels me to act once again.~ [OH74874] #74874 */
  IF ~  !Global("OHD_terpfendlg","GLOBAL",4)
~ THEN REPLY @646 /* ~I'm sorry to hear that, but I can't help you right now. Ask again later.~ #74875 */ DO ~SetGlobalTimer("OHD_terpfendlg_timer","LOCALS",THREE_DAYS)
SetGlobal("OHD_terpfendlg","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY @647 /* ~Again? Didn't we slaughter a priest just last week?~ #74876 */ DO ~SetGlobal("OHD_terpfendlg","GLOBAL",5)
SetGlobal("OHD_PLOT","GLOBAL",2)
~ GOTO 326
  IF ~~ THEN REPLY @648 /* ~What does he want of you this time?~ #74877 */ DO ~SetGlobal("OHD_terpfendlg","GLOBAL",5)
SetGlobal("OHD_PLOT","GLOBAL",2)
~ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.2 325.1
  SAY @649 /* ~He demands another death—a paladin of Helm, named Terpfen.~ [OH74878] #74878 */
  IF ~~ THEN REPLY @650 /* ~Sounds straightforward enough.~ #74879 */ GOTO 327
  IF ~~ THEN REPLY @651 /* ~I guess someone named Terpfen's about to have a bad day. Then again, with a name like that, I don't imagine they've had many good days.~ #74880 */ GOTO 327
  IF ~~ THEN REPLY @652 /* ~And you're telling me this because...?~ #74881 */ GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.2 326.1 326.0
  SAY @653 /* ~I've checked around, and this Terpfen isn't at the temple of Helm.~ [OH74882] #74882 */
  IF ~~ THEN REPLY @654 /* ~Ah. That does rather complicate matters, doesn't it? Do you know where he is?~ #74883 */ GOTO 328
END

IF ~~ THEN BEGIN 328 // from: 327.0
  SAY @655 /* ~I know who knows where he is.~ [OH74884] #74884 */
  IF ~~ THEN REPLY @656 /* ~Please tell me you know where that person is...~ #74885 */ GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY @657 /* ~His name's Guardian Telwyn, a paladin at the temple.~ [OH74886] #74886 */
  IF ~~ THEN REPLY @658 /* ~We should pay this Telwyn a visit.~ #74887 */ GOTO 330
  IF ~~ THEN REPLY @659 /* ~At least there's one paladin that knows his place. And as for Terpfen... we'll put him in his in due course.~ #74888 */ GOTO 330
  IF ~~ THEN REPLY @660 /* ~And you want my assistance in loosening this paladin's tongue.~ #74889 */ GOTO 330
END

IF ~~ THEN BEGIN 330 // from: 329.2
  SAY @661 /* ~I could do it myself, of course. But after Firejaw's assassination, it seemed like the kind of thing you might enjoy.~ [OH74890] #74890 */
  IF ~~ THEN REPLY @662 /* ~You presume too much, Dorn. Visiting a temple with you lost what little luster it had after what happened last time.~ #74891 */ GOTO 331
  IF ~~ THEN REPLY @663 /* ~Why Dorn, I didn't know you cared.~ #74892 */ GOTO 336
  IF ~~ THEN REPLY @664 /* ~Spilling a paladin's blood does sound like an enjoyable distraction. Let's go pay our respects to Helm.~ #74893 */ GOTO 335
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY @665 /* ~I thought you shared my taste for blood and glory.~ [OH74894] #74894 */
  IF ~~ THEN REPLY @666 /* ~What you call glory, I call infamy, and I've more of that than any reasonable <PRO_RACE> could want at this point.~ #74895 */ GOTO 339
  IF ~~ THEN REPLY @667 /* ~My taste is for life and luxury. Blood and glory are but tools for me, not ends in themselves.~ #74896 */ GOTO 332
  IF ~~ THEN REPLY @668 /* ~I do. And soon we'll gorge ourselves upon them. ~ #74897 */ GOTO 336
END

IF ~~ THEN BEGIN 332 // from: 331.1
  SAY @669 /* ~Power is the goal. But in this world, violence is the only way to attain and keep it. I embrace that reality—I revel in it. You should do the same.~ #91166 */
  IF ~~ THEN REPLY @670 /* ~I cannot.~ #91168 */ GOTO 333
  IF ~~ THEN REPLY @671 /* ~I'm afraid I don't share your taste for the beating hearts of my enemies.~ #91170 */ GOTO 333
  IF ~~ THEN REPLY @672 /* ~Watch me carefully, Dorn. You might learn a thing or two about reveling in bloodshed.~ #91172 */ GOTO 334
END

IF ~~ THEN BEGIN 333 // from: 332.1 332.0
  SAY @673 /* ~Then you're fortunate—and wise—to stand at my side. But let's put philosophy aside. We've business to attend to.~ #96108 */
  IF ~~ THEN GOTO 336
END

IF ~~ THEN BEGIN 334 // from: 332.2
  SAY @674 /* ~Hah! We'll see, <CHARNAME>, we'll see. But enough philosophy. We've business to attend to.~ [OH96109] #96109 */
  IF ~~ THEN GOTO 335
END

IF ~~ THEN BEGIN 335 // from: 337.0 334.0 333.0 330.2 329.1 329.0
  SAY @675 /* ~Telwyn stands sentry in Helm's temple every night. We could go tonight.~ [OH74898] #74898 */
  IF ~~ THEN REPLY @176 /* ~Very well.~ #74899 */ DO ~AddJournalEntry(91214,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 336 // from: 331.2 330.1
  SAY @676 /* ~You and I share the same passions. These dogs you surround yourself with are naught but pawns in the great game of life and death we play.~ [OH74900] #74900 */
  IF ~~ THEN REPLY @677 /* ~And what am I, then? The queen or the king? The servant or the <PRO_MASTERMISTRESS>?~ #74901 */ GOTO 337
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY @678 /* ~You are my equal. There is no higher rank one can attain.~ [OH74902] #74902 */
  IF ~~ THEN REPLY @679 /* ~You insult and flatter in a single breath. Very well, then. We face this Telwyn as equals. Where, and when?~ #74903 */ GOTO 335
  IF ~~ THEN REPLY @680 /* ~You keep telling yourself that, Dorn. I'm sure it helps you sleep at night.~ #74904 */ GOTO 338
END

IF ~~ THEN BEGIN 338 // from: 337.1
  SAY @681 /* ~You dare mock me, <PRO_RACE>? I'll cut out your tongue and use it to shine my boots!~ [OH74905] #74905 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
AddJournalEntry(91213,INFO)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 339 // from: 331.0
  SAY @682 /* ~Then you're of no use to me. Begone!~ [OH91176] #91176 */
  IF ~~ THEN REPLY @683 /* ~You're on a dark path, Dorn. I hope you see the light soon. Goodbye.~ #91178 */ DO ~SetGlobal("KICKEDOUT","LOCALS",1)
AddJournalEntry(91212,INFO)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @684 /* ~If that's how you're going to be, I'll be more like you. Let's go kill a paladin.~ #91180 */ GOTO 340
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @685 /* ~I go where I will, Dorn Il-Khan. You don't command me.~ #91182 */ GOTO 341
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @685 /* ~I go where I will, Dorn Il-Khan. You don't command me.~ #91182 */ GOTO 342
END

IF ~~ THEN BEGIN 340 // from: 339.1
  SAY @686 /* ~Now you're talking like someone worthy to stand at my side.~ [OH91202] #91202 */
  IF ~~ THEN DO ~AddJournalEntry(91214,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 341 // from: 339.2
  SAY @687 /* ~Then decide, <CHARNAME>. Are you with me or not?~ [OH91203] #91203 */
  IF ~~ THEN REPLY @688 /* ~I'm with you, for now. Don't make me regret it.~ #91204 */ GOTO 343
  IF ~~ THEN REPLY @689 /* ~I want no part of this perfidy.~ #91205 */ GOTO 344
  IF ~~ THEN REPLY @690 /* ~I cannot allow you to kill this paladin, Dorn.~ #91206 */ GOTO 342
END

IF ~~ THEN BEGIN 342 // from: 341.2 339.3
  SAY @691 /* ~You challenge me? So be it!~ [OH91207] #91207 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
AddJournalEntry(91213,INFO)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 343 // from: 341.0
  SAY @692 /* ~Regrets are for fools and weaklings. You don't strike me as either.~ [OH91208] #91208 */
  IF ~~ THEN DO ~AddJournalEntry(91214,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 344 // from: 341.1
  SAY @693 /* ~Then you are a weakling and a fool. I've no patience for either.~ [OH91209] #91209 */
  IF ~~ THEN DO ~SetGlobal("KICKEDOUT","LOCALS",1)
AddJournalEntry(91212,INFO)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_PLOT","GLOBAL",2)
Global("OHD_Telwyn_Spawn","AR0901",2)
~ THEN BEGIN 345 // from:
  SAY @694 /* ~That's Telwyn over there.~ [OH74908] #74908 */
  IF ~~ THEN REPLY @695 /* ~All right. Let me do the talking.~ #74909 */ GOTO 349
  IF ~~ THEN REPLY @696 /* ~Put the sword back in the sheathe, big boy.~ #74910 */ GOTO 346
  IF ~~ THEN REPLY @697 /* ~Let's go put the fear of us in this Everwatch Knight.~ #74911 */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",3)
StartCutSceneMode()
StartCutScene("OHDCUT02")
~ EXIT
END

IF ~~ THEN BEGIN 346 // from: 345.1
  SAY @698 /* ~My blade thirsts for Everwatch Knight blood!~ [OH74912] #74912 */
  IF ~  !IfValidForPartyDialogue("HEXXAT")
~ THEN REPLY @699 /* ~A dead knight won't tell us where Terpfen is.~ #74913 */ GOTO 347
  IF ~  IfValidForPartyDialogue("HEXXAT")
~ THEN REPLY @699 /* ~A dead knight won't tell us where Terpfen is.~ #74913 */ EXTERN ~HEXXATJ~ 1
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY @700 /* ~I wasn't going to kill him. Yet. Just scare him. Loosen his tongue. Perhaps you're rubbing off on me.~ [OH74915] #74915 */
  IF ~  !IfValidForPartyDialogue("KORGAN")
~ THEN REPLY @701 /* ~There are other ways to loosen a man's tongue. Ways that may not involve him summoning his fellow knights to defend his honor.~ #74916 */ GOTO 348
  IF ~  IfValidForPartyDialogue("KORGAN")
~ THEN REPLY @701 /* ~There are other ways to loosen a man's tongue. Ways that may not involve him summoning his fellow knights to defend his honor.~ #74916 */ EXTERN ~KORGANJ~ 233
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY @702 /* ~What do you suggest?~ [OH74919] #74919 */
  IF ~~ THEN REPLY @703 /* ~Something slightly more nuanced. I'm going to ask him if he knows where Terpfen can be found.~ #74920 */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",4)
StartCutSceneMode()
StartCutScene("OHDCUT02")
~ EXIT
  IF ~~ THEN REPLY @704 /* ~Something sneaky. If that doesn't work, well, Rancor's still there if we need her.~ #74921 */ GOTO 350
  IF ~  !IfValidForPartyDialogue("JAN")
~ THEN REPLY @705 /* ~I'm going to check this Telwyn out. See what makes him tick. Then... we'll see.~ #74922 */ GOTO 353
  IF ~  IfValidForPartyDialogue("JAN")
~ THEN REPLY @705 /* ~I'm going to check this Telwyn out. See what makes him tick. Then... we'll see.~ #74922 */ EXTERN ~JANJ~ 191
END

IF ~~ THEN BEGIN 349 // from: 350.0 345.0
  SAY @706 /* ~I prefer the direct approach.~ [OH74924] #74924 */
  IF ~~ THEN REPLY @707 /* ~I prefer the effective approach. Let's try it my way and see what happens.~ #74925 */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",4)
StartCutSceneMode()
StartCutScene("OHDCUT02")
~ EXIT
END

IF ~~ THEN BEGIN 350 // from: 348.1
  SAY @708 /* ~You know this as well as I.~ #74926 */
  IF ~~ THEN REPLY @709 /* ~You believe deceit is beneath beings of true power?~ #74927 */ GOTO 349
  IF ~~ THEN REPLY @710 /* ~As do I. But our preferences are secondary to our needs.~ #74928 */ GOTO 352
  IF ~~ THEN REPLY @711 /* ~I do. But beings of true power do not bow to distant masters.~ #74929 */ GOTO 351
END

IF ~~ THEN BEGIN 351 // from: 350.2
  SAY @712 /* ~You dare insult me?~ #74930 */
  IF ~~ THEN REPLY @713 /* ~I'm just giving you something to consider. You are not your own, Dorn Il-Khan. But stick with me, and that might change.~ #74931 */ GOTO 352
END

IF ~~ THEN BEGIN 352 // from: 351.0 350.1
  SAY @714 /* ~I see in you a kindred spirit.~ #74932 */
  IF ~~ THEN REPLY @715 /* ~Trust what you see.~ #74933 */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",4)
StartCutSceneMode()
StartCutScene("OHDCUT02")
~ EXIT
END

IF ~~ THEN BEGIN 353 // from: 348.2
  SAY @716 /* ~He's a man. Stab him and he bleeds. What more do you need to know?~ [OH74934] #74934 */
  IF ~~ THEN REPLY @717 /* ~Where to find Terpfen, for one. Hang back, and let me do the talking.~ #74935 */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",4)
StartCutSceneMode()
StartCutScene("OHDCUT02")
~ EXIT
END

IF ~~ THEN BEGIN 354 // from:
  SAY @718 /* ~Hrm.~ [OH74942] #74942 */
  IF ~  !CheckStatGT(Player1,13,CHR)
~ THEN EXTERN ~SCTELWYN~ 51
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN EXTERN ~SCTELWYN~ 45
END

IF ~~ THEN BEGIN 355 // from:
  SAY @719 /* ~Is this some jest, <CHARNAME>? You can't mean to leave this scuff-kneed wretch alive?~ [OH74959] #74959 */
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY @720 /* ~He's given us everything we need. Further bloodshed will only complicate matters.~ #74960 */ GOTO 357
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY @720 /* ~He's given us everything we need. Further bloodshed will only complicate matters.~ #74960 */ GOTO 356
  IF ~~ THEN REPLY @721 /* ~You're right. If there's one thing I cannot, it's loose ends. "Can knot." Get it? Oh, lighten up, Dorn. We've got what we came here for, and now you get to kill an Everwatch Knight in the bargain!~ #74961 */ GOTO 357
  IF ~~ THEN REPLY @722 /* ~Thanks a lot, Dorn. Now you've gone and spoiled my surprise.~ #74962 */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",99)
SetGlobal("TempleShout0901","GLOBAL",2)
ActionOverride("sctelwyn",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 356 // from: 355.1
  SAY @723 /* ~I don't mind such... complications. But we'll do as you wish, for now.~ [OH74963] #74963 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 357 // from: 355.2 355.0
  SAY @724 /* ~Make peace with your worthless god, Everwatch Knight, for soon you shall meet him face to face!~ [OH74964] #74964 */
  IF ~~ THEN DO ~ActionOverride("sctelwyn",Enemy())
SetGlobal("OHD_Telwyn_Spawn","AR0901",99)
SetGlobal("TempleShout0901","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 358 // from:
  SAY @725 /* ~You should.~ [OH74975] #74975 */
  IF ~~ THEN REPLY @726 /* ~He's right. You should. Now if you'd be so kind as to tell us where we may find Guardian Terpfen, we'll be on our way.~ #74976 */ EXTERN ~SCTELWYN~ 51
END

IF ~~ THEN BEGIN 359 // from:
  SAY @727 /* ~Stay your hand, <CHARNAME>. We need him alive. At least long enough to reveal Terpfen's location.~ [OH74988] #74988 */
  IF ~~ THEN REPLY @728 /* ~Right! Terpfen. I'd almost forgot. Start talking, knight.~ #74989 */ EXTERN ~SCTELWYN~ 50
  IF ~~ THEN REPLY @729 /* ~The blackguard tells me to stay my hand? Really?~ #74990 */ GOTO 360
END

IF ~~ THEN BEGIN 360 // from: 359.1
  SAY @730 /* ~We are here to get Terpfen's location. Once we have that, I'll gladly watch you slit this worm's throat—I'll even give you a blade with which to do the deed.~ [OH74991] #74991 */
  IF ~~ THEN REPLY @731 /* ~I don't think worms have throats, but I get your point. Start talking, Telwyn. Where can we find Terpfen?~ #74992 */ EXTERN ~SCTELWYN~ 50
  IF ~~ THEN REPLY @732 /* ~A pleasure delayed is a pleasure enhanced, and killing this insect will be a pleasure. —Insect! I believe you were telling us where we can find Terpfen.~ #74993 */ EXTERN ~SCTELWYN~ 65
  IF ~~ THEN REPLY @733 /* ~The Abyss take Terpfen! I want this knight's blood!~ #74994 */ GOTO 361
END

IF ~~ THEN BEGIN 361 // from: 360.2
  SAY @734 /* ~You think I don't? But Ur-Gothoz must be obeyed.~ [OH74995] #74995 */
  IF ~~ THEN REPLY @735 /* ~And you're happy with that arrangement?~ #74996 */ GOTO 362
  IF ~~ THEN REPLY @736 /* ~Your weakness disgusts me, Dorn. But we'll play it your way... for now. Telwyn! Where is Guardian Terpfen?~ #74997 */ EXTERN ~SCTELWYN~ 65
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY @737 /* ~Ur-Gothoz gives me what I need... for now. He will feel Rancor's kiss someday, this I swear. But for the moment, I must do as he commands.~ [OH74998] #74998 */
  IF ~~ THEN REPLY @738 /* ~I see a future where Dorn Il-Khan and <CHARNAME> do as they will, unfettered by the desires of others.~ #74999 */ GOTO 363
END

IF ~~ THEN BEGIN 363 // from: 362.0
  SAY @739 /* ~That day will come.~ [OH75000] #75000 */
  IF ~~ THEN REPLY @740 /* ~Pray to whatever god still hears your voice I don't lose patience before it does. Guardian Telwyn, I believe you were telling us where to find your colleague, Terpfen?~ #75001 */ EXTERN ~SCTELWYN~ 65
END

IF ~~ THEN BEGIN 364 // from:
  SAY @741 /* ~You are not.~ [OH75036] #75036 */
  IF ~  !CheckStatGT(Player1,13,CHR)
~ THEN REPLY @742 /* ~I am not. Now where can we find Terpfen?~ #75037 */ EXTERN ~SCTELWYN~ 71
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY @742 /* ~I am not. Now where can we find Terpfen?~ #75037 */ EXTERN ~SCTELWYN~ 65
END

IF ~~ THEN BEGIN 365 // from:
  SAY @743 /* ~I am Dorn Il-Khan! I seek the Everwatch dog Terpfen!~ [OH75061] #75061 */
  IF ~~ THEN REPLY @744 /* ~Forgive my friend. He's suffered many blows to the head and frequently mixes up words like "dog" and "knight."~ #75062 */ GOTO 366
  IF ~~ THEN REPLY @745 /* ~And then there's the direct approach.~ #75063 */ GOTO 367
END

IF ~~ THEN BEGIN 366 // from: 365.0
  SAY @746 /* ~There is only one approach here, and it is mine.~ [OH75064] #75064 */
  IF ~~ THEN EXTERN ~OHDHSEN~ 6
END

IF ~~ THEN BEGIN 367 // from: 365.1
  SAY @747 /* ~Send him to me now, and you may yet live to see another day!~ [OH75065] #75065 */
  IF ~~ THEN EXTERN ~OHDHSEN~ 6
END

IF ~~ THEN BEGIN 368 // from:
  SAY @748 /* ~In the name of my master, Ur-Gothoz, you will all die.~ [OH75082] #75082 */
  IF ~~ THEN REPLY @749 /* ~All of them? I thought we were here for Terpfen?~ #75083 */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY @750 /* ~All must perish. Ur-Gothoz has altered my mission, and if you stand in my way, you should pray he does not alter it further.~ [OH75084] #75084 */
  IF ~~ THEN REPLY @751 /* ~Ur-Gothoz's whims are distressingly capricious. Is the power he supplies truly worth the effort he demands?~ #75085 */ GOTO 370
  IF ~~ THEN REPLY @752 /* ~Oh well, if Ur-Gothoz commands it, we must obey Ur-Gothoz, mustn't we?~ #75086 */ GOTO 371
  IF ~  OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY @753 /* ~Don't lie to me, Dorn Il-Khan. Ur-Gothoz may demand their death, but you and I both enjoy a good slaughter.~ #75087 */ GOTO 372
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY @754 /* ~You tell me, <CHARNAME>.~ [OH75088] #75088 */
  IF ~~ THEN DO ~SetGlobal("OHD_Camp_hostile","OH5300",1)
SetGlobal("OHD_PostCamp","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 371 // from: 369.1
  SAY @755 /* ~You would mock my master, <CHARNAME>? We'll have words on this when the battle's done.~ [OH75089] #75089 */
  IF ~~ THEN DO ~SetGlobal("OHD_Camp_hostile","OH5300",1)
SetGlobal("OHD_PostCamp","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from: 369.2
  SAY @756 /* ~You know me well, <CHARNAME>, though I'd have you know me better still.~ [OH75090] #75090 */
  IF ~~ THEN DO ~SetGlobal("OHD_Camp_hostile","OH5300",1)
SetGlobal("OHD_PostCamp","LOCALS",3)
~ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_PostCamp","LOCALS",4)
~ THEN BEGIN 373 // from:
  SAY @757 /* ~<CHARNAME>. Before the battle, you asked if the power Ur-Gothoz grants me is worth all that he orders me to do.~ [OH75091] #75091 */
  IF ~~ THEN REPLY @758 /* ~I did.~ #75092 */ DO ~IncrementGlobal("OHD_PostCamp","LOCALS",3)
~ GOTO 374
END

IF ~~ THEN BEGIN 374 // from: 387.0 373.0
  SAY @759 /* ~I have no answer to that, at least none I find satisfactory.~ [OH75093] #75093 */
  IF ~~ THEN REPLY @760 /* ~And the unsatisfactory answer?~ #75094 */ GOTO 375
  IF ~~ THEN REPLY @761 /* ~You have much to consider, I think.~ #75095 */ GOTO 379
END

IF ~~ THEN BEGIN 375 // from: 393.0 374.0
  SAY @762 /* ~At first, service to Ur-Gothoz seemed worthwhile, at least some of the time. But recently...~ [OH75096] #75096 */
  IF ~~ THEN REPLY @763 /* ~Yes?~ #75097 */ GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY @764 /* ~Bollard Firejaw was not the first man I was sent to kill without explanation. Nor will Terpfen be the last, I suspect.~ [OH75098] #75098 */
  IF ~~ THEN REPLY @765 /* ~I can only imagine how it feels to be bound in servitude.~ #75099 */ GOTO 380
  IF ~~ THEN REPLY @766 /* ~Being bound in servitude must rankle.~ #75100 */ GOTO 380
  IF ~  OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY @767 /* ~You're becoming a tool rather than the champion you are meant to be.~ #75101 */ GOTO 377
END

IF ~~ THEN BEGIN 377 // from: 376.2
  SAY @768 /* ~You alone understand me.~ [OH75102] #75102 */
  IF ~~ THEN REPLY @769 /* ~Ur-Gothoz is just an obstacle, Dorn. Even he cannot stand against the two of us.~ #75103 */ GOTO 378
END

IF ~~ THEN BEGIN 378 // from: 377.0
  SAY @770 /* ~I hope you're right, <CHARNAME>. For both our sakes.~ [OH75104] #75104 */
  IF ~~ THEN DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 379 // from: 374.1
  SAY @771 /* ~Much to consider. More to overcome.~ [OH75105] #75105 */
  IF ~~ THEN DO ~AddJournalEntry(91268,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 380 // from: 376.1 376.0
  SAY @772 /* ~Don't patronize me, <CHARNAME>. You know nothing of my burden.~ [OH75106] #75106 */
  IF ~  OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY @773 /* ~Then share it with me.~ #75107 */ GOTO 383
  IF ~  OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY @774 /* ~That's your choice, Dorn. No one's making you carry the burden alone.~ #75108 */ GOTO 381
  IF ~~ THEN REPLY @775 /* ~And care nothing for it, either.~ #75109 */ EXIT
END

IF ~~ THEN BEGIN 381 // from: 380.1
  SAY @776 /* ~Pretty words, but hollow ones. I will deal with Ur-Gothoz. I and I alone.~ [OH75110] #75110 */
  IF ~~ THEN REPLY @777 /* ~If that is your wish, don't let me stand in your way.~ #75111 */ GOTO 382
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY @778 /* ~I am Dorn Il-Khan. No one stands in my way.~ [OH75112] #75112 */
  IF ~~ THEN REPLY @779 /* ~No one but yourself.~ #75113 */ DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 380.0
  SAY @780 /* ~No. The strong stand alone.~ [OH75114] #75114 */
  IF ~~ THEN REPLY @781 /* ~And the wise know two are stronger than one.~ #75115 */ DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_PostCamp","LOCALS",5)
~ THEN BEGIN 384 // from:
  SAY @782 /* ~We must talk, <CHARNAME>.~ [OH75116] #75116 */
  IF ~~ THEN REPLY @176 /* ~Very well.~ #74899 */ DO ~IncrementGlobal("OHD_PostCamp","LOCALS",3)
~ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY @783 /* ~Before the battle, you mocked Ur-Gothoz.~ [OH75117] #75117 */
  IF ~~ THEN REPLY @758 /* ~I did.~ #75092 */ GOTO 386
  IF ~~ THEN REPLY @784 /* ~Ah, you noticed that, did you? Well observed.~ #75118 */ GOTO 389
  IF ~~ THEN REPLY @785 /* ~Your service to that demon is your weakness, Dorn. It would rankle me to see you bound in service to anyone, never mind one as erratic as this Ur-Gothoz.~ #75119 */ GOTO 393
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY @786 /* ~You think me weak for serving him?~ [OH75120] #75120 */
  IF ~~ THEN REPLY @787 /* ~I do.~ #75121 */ GOTO 389
  IF ~~ THEN REPLY @788 /* ~I think you weakened, Dorn. Never weak.~ #75122 */ GOTO 393
  IF ~~ THEN REPLY @789 /* ~You think you aren't?~ #75123 */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.2
  SAY @790 /* ~Now you mock me?~ [OH75124] #75124 */
  IF ~~ THEN REPLY @791 /* ~Not at all. I merely asked a question.~ #75125 */ GOTO 374
  IF ~~ THEN REPLY @792 /* ~I mock the servant of Ur-Gothoz. Are you he?~ #75126 */ GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 398.0 387.1
  SAY @793 /* ~You know I am.~ [OH75127] #75127 */
  IF ~~ THEN REPLY @794 /* ~Then stop your incessant sulking and do something about it.~ #75128 */ GOTO 393
  IF ~~ THEN REPLY @795 /* ~When I look at you, I don't see a servant. I see Dorn Il-Khan. A warrior. Not some demon's errand boy.~ #75129 */ GOTO 393
  IF ~~ THEN REPLY @796 /* ~That's unfortunate. Once I thought you were so much more, but I see now that I was mistaken.~ #75130 */ DO ~AddJournalEntry(91268,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 389 // from: 386.0 385.1
  SAY @797 /* ~Watch your tongue, <PRO_RACE>. You don't want to cross me regardless of whom I serve.~ [OH75131] #75131 */
  IF ~~ THEN REPLY @798 /* ~Forgive me, Dorn. I intended no harm.~ #75132 */ GOTO 390
  IF ~~ THEN REPLY @799 /* ~No one tells me what I want, Il-Khan. Unlike you, I do as I will.~ #75133 */ GOTO 391
  IF ~~ THEN REPLY @800 /* ~You watch my tongue, Dorn. You'd be surprised what it can accomplish.~ #75134 */ GOTO 392
END

IF ~~ THEN BEGIN 390 // from: 389.0
  SAY @801 /* ~It'll take more than words to harm me, <CHARNAME>.~ [OH75135] #75135 */
  IF ~~ THEN DO ~AddJournalEntry(91268,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 391 // from: 397.2 389.1 388.0
  SAY @802 /* ~If anyone else said that to me, I'd cut them down where they stand. You're lucky I still have use for you.~ [OH75136] #75136 */
  IF ~~ THEN REPLY @803 /* ~Beshaba's favorite <PRO_SONDAUGHTER>, that's me.~ #75137 */ DO ~AddJournalEntry(91268,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 392 // from: 389.2
  SAY @804 /* ~I might at that.~ [OH75138] #75138 */
  IF ~~ THEN DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 393 // from: 388.1 386.1 385.2
  SAY @805 /* ~I cannot deny there's something to what you say.~ [OH75140] #75140 */
  IF ~~ THEN REPLY @806 /* ~Only a fool would try.~ #75141 */ GOTO 375
END

IF WEIGHT #35 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_PostCamp","LOCALS",6)
~ THEN BEGIN 394 // from:
  SAY @807 /* ~Hah! A good day's work. Ur-Gothoz will be pleased.~ [OH75142] #75142 */
  IF ~~ THEN REPLY @808 /* ~I'm happy for him.~ #75143 */ DO ~AddJournalEntry(91266,INFO)
IncrementGlobal("OHD_PostCamp","LOCALS",3)
~ EXIT
  IF ~~ THEN REPLY @809 /* ~And you, Dorn Il-Khan? Are you pleased?~ #75144 */ DO ~IncrementGlobal("OHD_PostCamp","LOCALS",3)
~ GOTO 395
  IF ~~ THEN REPLY @810 /* ~Ur-Gothoz means nothing to me. Would that you could say the same.~ #75145 */ DO ~IncrementGlobal("OHD_PostCamp","LOCALS",3)
~ GOTO 397
END

IF ~~ THEN BEGIN 395 // from: 394.1
  SAY @811 /* ~Of course! There's nothing more refreshing than bathing in the blood of your enemies.~ [OH75146] #75146 */
  IF ~~ THEN REPLY @812 /* ~Terpfen wasn't your enemy. Just your target.~ #75147 */ GOTO 396
  IF ~~ THEN REPLY @813 /* ~Terpfen was no enemy of yours—not until Ur-Gothoz got involved.~ #75148 */ GOTO 397
  IF ~~ THEN REPLY @814 /* ~I'm with you. There's nothing like a good massacre to brighten one's day.~ #75149 */ DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 396 // from: 395.0
  SAY @815 /* ~My target is my enemy, at least so long as he still breathes.~ [OH75150] #75150 */
  IF ~~ THEN REPLY @816 /* ~Would that I could be blasé about serving the whims of another.~ #75151 */ GOTO 397
  IF ~~ THEN REPLY @817 /* ~No one's going to accuse Terpfen of doing that any time soon.~ #75152 */ DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 397 // from: 396.0 395.1 394.2
  SAY @818 /* ~What are you suggesting?~ [OH75153] #75153 */
  IF ~~ THEN REPLY @819 /* ~What I'm suggesting, my dear Dorn, is that your service to Ur-Gothoz does a disservice to you.~ #75154 */ GOTO 399
  IF ~~ THEN REPLY @820 /* ~Me? Not a thing. Far be it from me to criticize the Great and Powerful Ur-Gothoz.~ #75155 */ GOTO 398
  IF ~~ THEN REPLY @821 /* ~If you don't know what I'm suggesting, you deserve your miserable fate.~ #75156 */ GOTO 391
END

IF ~~ THEN BEGIN 398 // from: 397.1
  SAY @822 /* ~You mock me?~ [OH75157] #75157 */
  IF ~~ THEN REPLY @792 /* ~I mock the servant of Ur-Gothoz. Are you he?~ #75158 */ GOTO 388
END

IF ~~ THEN BEGIN 399 // from: 397.0
  SAY @823 /* ~Who are you to pass judgment on me?~ [OH75159] #75159 */
  IF ~~ THEN REPLY @824 /* ~I'm not judging. Merely making an observation. One you'd do well to consider.~ #75160 */ DO ~AddJournalEntry(91268,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 400 // from:
  SAY @825 /* ~Hrmm... I appreciate the offer. Allow me to reciprocate!~ [OH75167] #75167 */
  IF ~~ THEN DO ~SetGlobal("OHD_AMBUSH","MYAREA",2)
~ EXIT
END

IF ~~ THEN BEGIN 401 // from:
  SAY @826 /* ~Hrmm. The most elite of Tyr's paladins. I see they brought some clerics with them as well. It would seem that I am quite popular with their god.~ [OH75177] #75177 */
  IF ~~ THEN REPLY @827 /* ~It's been nice knowing you, Dorn.~ #75178 */ GOTO 403
  IF ~~ THEN REPLY @828 /* ~Where's your precious Ur-Gothoz now, Dorn?~ #75179 */ GOTO 402
  IF ~~ THEN REPLY @829 /* ~*sigh* In for a chicken, in for a henhouse. Come and get the half-orc, Traggor—if you've got the stones!~ #75180 */ EXTERN ~OHDTRAGG~ 5
END

IF ~~ THEN BEGIN 402 // from: 401.1
  SAY @830 /* ~Nowhere he can help me against such fighters as these.~ [OH75181] #75181 */
  IF ~~ THEN GOTO 403
END

IF ~~ THEN BEGIN 403 // from: 402.0 401.0
  SAY @831 /* ~I should have expected something like this. These Hammers are but the beginning. Ur-Gothoz's missions have made a target out of me.~ [OH75184] #75184 */
  IF ~~ THEN REPLY @832 /* ~I knew that guy was bad news.~ #75185 */ EXTERN ~OHDTRAGG~ 6
  IF ~~ THEN REPLY @833 /* ~We're not dead yet.~ #75186 */ EXTERN ~OHDTRAGG~ 7
  IF ~~ THEN REPLY @834 /* ~The servant pays for the master's crimes. At last you see your folly.~ #75187 */ GOTO 404
END

IF ~~ THEN BEGIN 404 // from: 403.2
  SAY @835 /* ~I should have known better than to trust Ur-Gothoz after Simmeon's betrayal. A lesson learned too late.~ [OH75188] #75188 */
  IF ~~ THEN REPLY @836 /* ~Perhaps, perhaps not.~ #75189 */ EXTERN ~OHDTRAGG~ 7
  IF ~~ THEN REPLY @837 /* ~As Gorion used to say, "Any day you learn something new is a good day." Though I fear we're about to put that to the test...~ #75190 */ GOTO 407
  IF ~~ THEN REPLY @838 /* ~Just make sure you remember the lesson after we've festooned the trees with the Hammers' intestines.~ #75191 */ EXTERN ~OHDTRAGG~ 6
END

IF ~~ THEN BEGIN 405 // from:
  SAY @839 /* ~You presume too much, <PRO_RACE>. Dorn Il-Khan needs no protection.~ [OH75206] #75206 */
  IF ~~ THEN REPLY @840 /* ~So be it. If that's the way you feel, the Hammers can have you.~ #75207 */ EXTERN ~OHDTRAGG~ 11
  IF ~  CheckStatGT(Player1,9,INT)
~ THEN REPLY @841 /* ~I count one, two, three, four... five paladins who say otherwise.~ #75208 */ EXTERN ~OHDTRAGG~ 6
  IF ~  !CheckStatGT(Player1,9,INT)
~ THEN REPLY @842 /* ~I count one, two... seven... and... Well, the exact math doesn't matter. There's a pack of paladins here who say otherwise!~ #75209 */ EXTERN ~OHDTRAGG~ 6
  IF ~~ THEN REPLY @843 /* ~I would never presume to tell you what you need, Dorn. Nevertheless, you have my protection, and you may be glad of it before this is over.~ #75210 */ GOTO 406
END

IF ~~ THEN BEGIN 406 // from: 405.3
  SAY @844 /* ~I might at that.~ [OH75211] #75211 */
  IF ~~ THEN GOTO 407
END

IF ~~ THEN BEGIN 407 // from: 406.0 404.1
  SAY @845 /* ~Let's show these knights of Tyr the folly of their ways.~ [OH75212] #75212 */
  IF ~~ THEN DO ~SetGlobal("OHD_AMBUSH","MYAREA",2)
~ EXIT
END

IF ~~ THEN BEGIN 408 // from:
  SAY @846 /* ~I will deliver your worthless hide to Ur-Gothoz myself, <CHARNAME>!~ [OH75213] #75213 */
  IF ~~ THEN EXTERN ~OHDTRAGG~ 11
END

IF ~~ THEN BEGIN 409 // from:
  SAY @847 /* ~Ah! Curse Ur-Gothoz, curse the day I first heard his name, and curse me for not fleeing the moment it fouled my ears! I've followed his orders come hell, horror, and high water, and for what?~ [OH75223] #75223 */
  IF ~~ THEN DO ~SetGlobal("OHD_AMBUSH","MYAREA",21)
AddexperienceParty(24000)
~ EXIT
  IF ~  IfValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERAJ~ 14
END

IF ~~ THEN BEGIN 410 // from:
  SAY @848 /* ~You know my name?~ [OH75238] #75238 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 1
END

IF ~~ THEN BEGIN 411 // from:
  SAY @849 /* ~Stay your hand, <CHARNAME>. I would know who it is who demands my attention.~ [OH75246] #75246 */
  IF ~~ THEN REPLY @850 /* ~As you wish.~ #74521 */ EXTERN ~OHDAZOTH~ 4
END

IF ~~ THEN BEGIN 412 // from:
  SAY @851 /* ~Show some spine, <CHARNAME>.~ [OH75247] #75247 */
  IF ~~ THEN REPLY @852 /* ~And turn my back on someone like her? Strategy never was your strong suit, Dorn.~ #75248 */ GOTO 413
  IF ~~ THEN REPLY @853 /* ~I've got a feeling any spine I showed would quickly be torn from my body. Best to let the lady talk.~ #75249 */ EXTERN ~OHDAZOTH~ 4
  IF ~~ THEN REPLY @854 /* ~Strong words, coming from Ur-Gothoz's puppet.~ #75250 */ GOTO 414
END

IF ~~ THEN BEGIN 413 // from: 412.0
  SAY @855 /* ~I need no strategy to still your impudent tongue—~ [OH75251] #75251 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 3
END

IF ~~ THEN BEGIN 414 // from: 412.2
  SAY @856 /* ~I'll have your head for that—~ [OH75253] #75253 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 3
END

IF ~~ THEN BEGIN 415 // from:
  SAY @857 /* ~I swear, <CHARNAME>, if you don't cease your prattling, I'll sew your mouth shut.~ [OH75258] #75258 */
  IF ~~ THEN REPLY @858 /* ~Dorn, sewing! I'd like to see that. Fine, I'll pipe down.~ #75259 */ EXTERN ~OHDAZOTH~ 6
END

IF ~~ THEN BEGIN 416 // from:
  SAY @859 /* ~What could you have that would possibly be of interest to me?~ [OH75266] #75266 */
  IF ~~ THEN REPLY @860 /* ~Seriously? I mean... really?~ #75267 */ EXTERN ~OHDAZOTH~ 10
  IF ~~ THEN REPLY @861 /* ~Just a suggestion, Dorn, but maybe consider speaking to the scary woman in a slightly more civil tone?~ #75268 */ GOTO 417
  IF ~~ THEN REPLY @862 /* ~Power. Why else go to such extreme lengths to contact you?~ #75269 */ EXTERN ~OHDAZOTH~ 8
END

IF ~~ THEN BEGIN 417 // from: 416.1
  SAY @863 /* ~I'll speak my piece in whatever tone I choose, <PRO_RACE>.~ [OH75270] #75270 */
  IF ~~ THEN REPLY @864 /* ~I'll send flowers to your funeral.~ #75271 */ EXTERN ~OHDAZOTH~ 10
END

IF ~~ THEN BEGIN 418 // from:
  SAY @865 /* ~What could matter more than power?~ [OH75274] #75274 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 9
END

IF ~~ THEN BEGIN 419 // from:
  SAY @866 /* ~Sympathy? You waste your energy and my time. Give me something useful or begone.~ [OH75277] #75277 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 11
END

IF ~~ THEN BEGIN 420 // from:
  SAY @867 /* ~Tell me more.~ [OH75279] #75279 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 12
END

IF ~~ THEN BEGIN 421 // from:
  SAY @868 /* ~You have traveled further on less. I would know more of this circle.~ [OH75286] #75286 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 15
END

IF ~~ THEN BEGIN 422 // from:
  SAY @869 /* ~You can show me how to do this?~ [OH75288] #75288 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 16
END

IF ~~ THEN BEGIN 423 // from:
  SAY @870 /* ~Trust her? Never. But the chance of bending Ur-Gothoz to my will is a temptation too great to be resisted.~ [OH75293] #75293 */
  IF ~~ THEN REPLY @871 /* ~You're a fool, Dorn Il-Khan. A whiff of power and you let yourself be pulled around like a bull with a ring in its nose.~ #75294 */ GOTO 425
  IF ~~ THEN REPLY @872 /* ~The decision is yours. I hope you don't come to regret it.~ #75295 */ GOTO 424
  IF ~~ THEN REPLY @873 /* ~I'm with you. To see the demon suffer is worth the risk. ~ #75296 */ GOTO 426
END

IF ~~ THEN BEGIN 424 // from: 426.0 425.0 423.1
  SAY @874 /* ~Why would you offer this to me, woman?~ [OH75297] #75297 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 17
END

IF ~~ THEN BEGIN 425 // from: 423.0
  SAY @875 /* ~Keep talking, <CHARNAME>, and you'll get more than a whiff of the power I command.~ [OH75298] #75298 */
  IF ~~ THEN REPLY @876 /* ~You know my feelings on this, Dorn. Make your choice.~ #75299 */ GOTO 424
END

IF ~~ THEN BEGIN 426 // from: 423.2
  SAY @877 /* ~Of all the men and women I've encountered, <CHARNAME>, I believe only you have truly understood me.~ [OH75300] #75300 */
  IF ~~ THEN REPLY @878 /* ~That's because we seek the same things.~ #75301 */ GOTO 424
END

IF ~~ THEN BEGIN 427 // from: 428.0
  SAY @879 /* ~Revenge drives us together.~ [OH75306] #75306 */
  IF ~~ THEN GOTO 429
END

IF ~~ THEN BEGIN 428 // from:
  SAY @880 /* ~I see your point, <CHARNAME>, but you're right. My path is already chosen.~ [OH75309] #75309 */
  IF ~~ THEN GOTO 427
END

IF ~~ THEN BEGIN 429 // from: 427.0
  SAY @881 /* ~Very well, Azothet. I shall begin the trek to Resurrection Gorge directly. But be warned: At the first hint of betrayal, I'll—~ [OH75310] #75310 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 19
END

IF ~~ THEN BEGIN 430 // from:
  SAY @882 /* ~Hrmm. "Friend"? Dream on, witch.~ [OH75312] #75312 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",6)
AddJournalEntry(91271,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 431 // from:
  SAY @883 /* ~Explain what?~ [OH75316] #75316 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 1
END

IF ~~ THEN BEGIN 432 // from:
  SAY @884 /* ~Your wit is duller than a blind man's hammer, <CHARNAME>.~ [OH75320] #75320 */
  IF ~~ THEN REPLY @885 /* ~You love it.~ #75321 */ EXTERN ~OHDUGOTH~ 2
END

IF ~~ THEN BEGIN 433 // from:
  SAY @886 /* ~I assumed that it was your doing.~ [OH75328] #75328 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 4
END

IF ~~ THEN BEGIN 434 // from:
  SAY @887 /* ~He has a... temperament, to be sure.~ [OH75334] #75334 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 5
END

IF ~~ THEN BEGIN 435 // from:
  SAY @888 /* ~Damn you, <CHARNAME>, if you don't stop talking, the next thing you eat will be your own teeth.~ [OH75336] #75336 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 6
END

IF ~~ THEN BEGIN 436 // from:
  SAY @889 /* ~I am a loyal servant of Ur-Gothoz. Our bond shall never be severed.~ [OH75346] #75346 */
  IF ~~ THEN REPLY @890 /* ~Other than a minute ago, you mean.~ #75347 */ GOTO 439
  IF ~~ THEN REPLY @891 /* ~How lucky Ur-Gothoz is to have a dog as affectionate as you.~ #75348 */ GOTO 444
  IF ~~ THEN REPLY @892 /* ~Of course. Only a blind fool could doubt your loyalty.~ #75349 */ EXTERN ~OHDUGOTH~ 24
END

IF ~~ THEN BEGIN 437 // from:
  SAY @893 /* ~I'll have your head for this, you traitorous mongrel...~ [OH75364] #75364 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 13
END

IF ~~ THEN BEGIN 438 // from:
  SAY @894 /* ~You know I lack the power to accomplish such a thing. I cannot explain it. I tell you I am a loyal servant, and I've the blood on my hands to prove it. If that does not persuade you, nothing I can say will either.~ [OH75377] #75377 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 17
END

IF ~~ THEN BEGIN 439 // from: 436.0
  SAY @895 /* ~I cannot explain that. Ur-Gothoz knows I lack the power to sever our connection.~ [OH75379] #75379 */
  IF ~~ THEN GOTO 440
END

IF ~~ THEN BEGIN 440 // from: 439.0
  SAY @896 /* ~I tell you I am a loyal servant, and I've the blood on my hands to prove it. If you can't accept that, nothing I say will change your mind.~ [OH75380] #75380 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 17
END

IF ~~ THEN BEGIN 441 // from:
  SAY @897 /* ~Are you mad, <CHARNAME>? Prostrate yourself on the floor and beg Ur-Gothoz for mercy, or by the gods above and all the demons below, I'll stain the ground you stand on crimson with your blood!~ [OH75383] #75383 */
  IF ~~ THEN REPLY @898 /* ~You're the one who's slipped the bounds of sanity. Would you truly slay a friend—perhaps your only friend—at this demon's word?~ #75384 */ GOTO 445
END

IF ~~ THEN BEGIN 442 // from:
  SAY @899 /* ~I... didn't know.~ [OH75390] #75390 */
  IF ~~ THEN REPLY @900 /* ~Allow to explain, O great Ur-Gothoz. There are few that have earned Dorn's trust, fewer still he will confide in. I am fortunate to count myself among that number. So it was to me he came with his concern that the nature of your connection had changed recently. You have seemed... distant, to him. So much so that he feared he might lose you. I thought I might assist, using certain of my skills to strengthen your bond, but I miscalculated. Instead, I temporarily cut the tie that binds you together. I am lucky indeed that you appeared—had you not, I've no doubt I'd already be writhing on the end of Dorn's sword.~ #75391 */ EXTERN ~OHDUGOTH~ 25
END

IF ~~ THEN BEGIN 443 // from:
  SAY @901 /* ~It would be my honor, master.~ [OH75396] #75396 */
  IF ~~ THEN REPLY @902 /* ~Well, I'm glad we got that sorted out.~ #75397 */ DO ~AddJournalEntry(91274,INFO)
~ EXIT
  IF ~~ THEN REPLY @903 /* ~All's well that ends well. For everyone but Azothet, that is.~ #75398 */ DO ~AddJournalEntry(91274,INFO)
~ EXIT
  IF ~~ THEN REPLY @904 /* ~Does your knee ever get sore from bending all the time?~ #75399 */ GOTO 451
END

IF ~~ THEN BEGIN 444 // from: 436.1
  SAY @905 /* ~Curse you, <CHARNAME>! I do what I must to survive and thrive, and if that means your death, so be it!~ [OH75400] #75400 */
  IF ~~ THEN REPLY @906 /* ~So you would slay a friend—perhaps your only one—at the word of this foul glabrezu?~ #75401 */ GOTO 445
  IF ~~ THEN REPLY @907 /* ~I'm disappointed, Dorn. I thought better of you.~ #75402 */ GOTO 446
  IF ~~ THEN REPLY @908 /* ~You call serving this pathetic glabrezu thriving? You're even more stupid than you are ugly.~ #75403 */ GOTO 447
END

IF ~~ THEN BEGIN 445 // from: 449.0 444.0 441.0
  SAY @909 /* ~Yes.~ [OH75404] #75404 */
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY @910 /* ~Look at him, Ur-Gothoz. Look at the mighty Dorn Il-Khan, shaming himself for your benefit. How can you possibly doubt his loyalty?~ #75405 */ EXTERN ~OHDUGOTH~ 24
  IF ~  !CheckStatGT(Player1,11,CHR)
~ THEN REPLY @910 /* ~Look at him, Ur-Gothoz. Look at the mighty Dorn Il-Khan, shaming himself for your benefit. How can you possibly doubt his loyalty?~ #75405 */ EXTERN ~OHDUGOTH~ 23
  IF ~~ THEN REPLY @911 /* ~Your groveling disgusts me. Draw your weapon. I'll die before I endure another second of your wretched mewling before this pathetic lackwit of a demon.~ #75406 */ GOTO 449
END

IF ~~ THEN BEGIN 446 // from: 444.1
  SAY @912 /* ~Think again!~ [OH75407] #75407 */
  IF ~~ THEN DO ~AddJournalEntry(91275,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 447 // from: 454.2 444.2
  SAY @913 /* ~I hope you savored those words, <CHARNAME>, for they will be your last!~ [OH75408] #75408 */
  IF ~~ THEN DO ~AddJournalEntry(91275,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 448 // from:
  SAY @914 /* ~It is, my lord.~ [OH75412] #75412 */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN EXTERN ~OHDUGOTH~ 24
  IF ~  !CheckStatGT(Player1,13,CHR)
~ THEN EXTERN ~OHDUGOTH~ 26
END

IF ~~ THEN BEGIN 449 // from: 445.2
  SAY @915 /* ~A pox upon you, <CHARNAME>! I do as I must to survive and thrive.~ [OH75419] #75419 */
  IF ~~ THEN REPLY @916 /* ~And to do that, you must obey your master. Pathetic lickspittle. You disgust me.~ #75420 */ GOTO 445
  IF ~~ THEN REPLY @917 /* ~Better to die than live in servitude!~ #75421 */ GOTO 452
END

IF ~~ THEN BEGIN 450 // from:
  SAY @918 /* ~Your death was inevitable, <CHARNAME>. I hope your gods are merciful, for you know I am not.~ [OH75423] #75423 */
  IF ~~ THEN DO ~AddJournalEntry(91275,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 451 // from: 456.2 443.2
  SAY @919 /* ~You couldn't resist, could you, <PRO_RACE>? You had to slip the knife in!~ [OH75425] #75425 */
  IF ~~ THEN REPLY @920 /* ~Forgive me, my friend. Demons always bring out the worst in me.~ #75426 */ DO ~AddJournalEntry(91274,INFO)
~ EXIT
  IF ~~ THEN REPLY @921 /* ~Your groveling disgusts me. Draw your weapon. I'll die before I endure another second of your wretched mewling.~ #75427 */ GOTO 452
END

IF ~~ THEN BEGIN 452 // from: 451.1 449.1
  SAY @922 /* ~When I'm done with you, I'll wear your skin as a loincloth!~ [OH75428] #75428 */
  IF ~~ THEN DO ~AddJournalEntry(91275,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 453 // from:
  SAY @923 /* ~Are you mad, <CHARNAME>? Prostrate yourself on the floor and beg Ur-Gothoz for mercy, or by the gods above and all the demons below, I'll stain the ground you stand on crimson with your blood!~ [OH75429] #75429 */
  IF ~~ THEN REPLY @898 /* ~You're the one who's slipped the bounds of sanity. Would you truly slay a friend—perhaps your only friend—at this demon's word?~ #75430 */ GOTO 454
END

IF ~~ THEN BEGIN 454 // from: 453.0
  SAY @924 /* ~Yes.~ [OH75431] #75431 */
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY @910 /* ~Look at him, Ur-Gothoz. Look at the mighty Dorn Il-Khan, shaming himself for your benefit. How can you possibly doubt his loyalty?~ #75432 */ EXTERN ~OHDUGOTH~ 30
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY @910 /* ~Look at him, Ur-Gothoz. Look at the mighty Dorn Il-Khan, shaming himself for your benefit. How can you possibly doubt his loyalty?~ #75432 */ GOTO 455
  IF ~~ THEN REPLY @911 /* ~Your groveling disgusts me. Draw your weapon. I'll die before I endure another second of your wretched mewling before this pathetic lackwit of a demon.~ #75433 */ GOTO 447
END

IF ~~ THEN BEGIN 455 // from: 454.1
  SAY @925 /* ~You yourself invoked the name of Azothet.~ [OH75434] #75434 */
  IF ~~ THEN REPLY @926 /* ~Ah. I did do that, didn't I? ~ #75435 */ GOTO 9
END

IF ~~ THEN BEGIN 456 // from:
  SAY @927 /* ~It is my honor to serve you, Ur-Gothoz.~ [OH75440] #75440 */
  IF ~~ THEN REPLY @902 /* ~Well, I'm glad we got that sorted out.~ #75441 */ DO ~AddJournalEntry(91274,INFO)
~ EXIT
  IF ~~ THEN REPLY @903 /* ~All's well that ends well. For everyone but Azothet, that is.~ #75442 */ DO ~AddJournalEntry(91274,INFO)
~ EXIT
  IF ~~ THEN REPLY @904 /* ~Does your knee ever get sore from bending all the time?~ #75443 */ GOTO 451
END

IF WEIGHT #36 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_Dorn_Gorge","OH5100",1)
~ THEN BEGIN 457 // from:
  SAY @928 /* ~Resurrection Gorge. Just as Azothet described.~ [OH75444] #75444 */
  IF ~  InParty("valygar")
IfValidForPartyDialogue("valygar")
~ THEN REPLY @929 /* ~Great. Let's go somewhere else now.~ #75445 */ EXTERN ~VALYGARJ~ 127
  IF ~  OR(2)
!InParty("valygar")
!IfValidForPartyDialogue("valygar")
~ THEN REPLY @929 /* ~Great. Let's go somewhere else now.~ #75445 */ GOTO 458
  IF ~~ THEN REPLY @930 /* ~With a little effort, this could be a very welcoming place. Some yardwork, a little gardening, burning the entire place to the ground. It has potential.~ #75446 */ GOTO 461
  IF ~~ THEN REPLY @931 /* ~You won't be able to put off your decision much longer.~ #75447 */ GOTO 465
END

IF ~~ THEN BEGIN 458 // from: 457.1
  SAY @932 /* ~No. We've come too far to turn back.~ [OH75449] #75449 */
  IF ~~ THEN REPLY @934 /* ~Speak for yourself. I found the journey here very relaxing; I'm sure the return trip will be just as pleasant.~ #75450 */ DO ~EraseJournalEntry(@933)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
  IF ~~ THEN REPLY @935 /* ~You're right, of course. Lead on, Dorn Il-Khan. Our doom awaits.~ #75451 */ GOTO 459
  IF ~~ THEN REPLY @936 /* ~I suppose you're right. Azothet and Ur-Gothoz mustn't be kept waiting.~ #75452 */ GOTO 461
END

IF ~~ THEN BEGIN 459 // from: 458.1
  SAY @937 /* ~Doom awaits us, 'tis true. But not ours, <CHARNAME>. Not ours.~ [OH75453] #75453 */
  IF ~~ THEN REPLY @938 /* ~You've made your decision then?~ #75454 */ GOTO 460
END

IF ~~ THEN BEGIN 460 // from: 459.0
  SAY @939 /* ~Between Azothet and Ur-Gothoz? No, not yet.~ [OH75455] #75455 */
  IF ~~ THEN REPLY @940 /* ~Best make your mind up quickly. If Azothet spoke true, you haven't much time left.~ #75456 */ DO ~EraseJournalEntry(@933)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
END

IF ~~ THEN BEGIN 461 // from: 458.2 457.2
  SAY @941 /* ~Let your glib tongue rest a moment, <CHARNAME>. This place reeks of power.~ [OH75457] #75457 */
  IF ~~ THEN REPLY @942 /* ~It also reeks of death and madness.~ #75458 */ GOTO 462
END

IF ~~ THEN BEGIN 462 // from: 461.0
  SAY @943 /* ~Death and madness are common companions to such as us.~ [OH75459] #75459 */
  IF ~~ THEN REPLY @944 /* ~Us?~ #75460 */ GOTO 463
END

IF ~~ THEN BEGIN 463 // from: 462.0
  SAY @945 /* ~You know we seek the same things. Power. Glory. These are what drive us forward.~ [OH75461] #75461 */
  IF ~  OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY @946 /* ~I think you've mistaken me for someone else. Someone considerably more unstable than I.~ #75462 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 464
  IF ~  !Global("DornRomanceActive","GLOBAL",1)
!Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY @946 /* ~I think you've mistaken me for someone else. Someone considerably more unstable than I.~ #75462 */ GOTO 464
  IF ~~ THEN REPLY @947 /* ~You can have power and glory. I'd be satisfied with comfort and contentment.~ #75463 */ DO ~EraseJournalEntry(@933)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
  IF ~~ THEN REPLY @948 /* ~ 'Tis true. Alone, we are forces to be reckoned with. Together, we are unstoppable.~ #75464 */ DO ~EraseJournalEntry(@933)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
END

IF ~~ THEN BEGIN 464 // from: 463.1 463.0
  SAY @949 /* ~You disappoint me. I thought in you I'd found a kindred spirit. Together, we have done much. But we could do so much more.~ [OH75465] #75465 */
  IF ~~ THEN DO ~EraseJournalEntry(@933)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
END

IF ~~ THEN BEGIN 465 // from: 457.3
  SAY @950 /* ~My decision?~ [OH75466] #75466 */
  IF ~~ THEN REPLY @951 /* ~Whom do you serve? Ur-Gothoz? Azothet? Or yourself?~ #75467 */ GOTO 466
END

IF ~~ THEN BEGIN 466 // from: 465.0
  SAY @952 /* ~Be silent, <CHARNAME>. Ur-Gothoz's ears and eyes are ever upon me.~ [OH75468] #75468 */
  IF ~~ THEN REPLY @953 /* ~Therein lies the problem, I think.~ #75469 */ DO ~EraseJournalEntry(@933)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
END

IF ~~ THEN BEGIN 467 // from:
  SAY @954 /* ~There is strength in solitude.~ [OH75494] #75494 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 8
END

IF ~~ THEN BEGIN 468 // from:
  SAY @955 /* ~Joy is irrelevant. All that matters is power. Power to accomplish whatever you please!~ [OH75496] #75496 */
  IF ~~ THEN REPLY @956 /* ~We're not here to discuss philosophy. Who are you, woman?~ #75497 */ EXTERN ~OHDSUMM~ 9
END

IF ~~ THEN BEGIN 469 // from:
  SAY @957 /* ~Speak for yourself, <PRO_RACE>. I'll not feign weakness attempting to ingratiate myself to this... filth.~ [OH75500] #75500 */
  IF ~~ THEN REPLY @958 /* ~You'll have to forgive my friend. He was born in an alley in a particularly nasty part of town and raised in a barn that was only marginally more sanitary. I am <CHARNAME>. Whom do I have the honor of addressing?~ #75501 */ EXTERN ~OHDSUMM~ 13
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY @959 /* ~Then feign muteness, you lumbering imbecile. I'm trying to have a civilized conversation here.~ #75502 */ GOTO 472
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY @960 /* ~Then be silent and ingratiate yourself to me.~ #75503 */ GOTO 470
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY @959 /* ~Then feign muteness, you lumbering imbecile. I'm trying to have a civilized conversation here.~ #75502 */ GOTO 471
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY @960 /* ~Then be silent and ingratiate yourself to me.~ #75503 */ GOTO 471
END

IF ~~ THEN BEGIN 470 // from: 469.2
  SAY @961 /* ~...Very well.~ [OH75504] #75504 */
  IF ~~ THEN REPLY @962 /* ~Good! Now then. Allow me to introduce myself. I am <CHARNAME>. The rock in the armor there is Dorn. And you are...?~ #75505 */ EXTERN ~OHDSUMM~ 13
END

IF ~~ THEN BEGIN 471 // from: 469.4 469.3
  SAY @963 /* ~You go too far, <CHARNAME>! Die!~ [OH75506] #75506 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 472 // from: 469.1
  SAY @964 /* ~You go too far, <CHARNAME>. Any further and you'll have a brief but enlightening discussion with the edge of my sword.~ [OH75507] #75507 */
  IF ~~ THEN REPLY @965 /* ~I look forward to it. But for now, I'd like to talk with... I'm sorry, I didn't catch your name.~ #75508 */ EXTERN ~OHDSUMM~ 13
END

IF ~~ THEN BEGIN 473 // from:
  SAY @966 /* ~Watch yourself, <PRO_RACE>. Summerheigh. Tell us more of the creature that stalks the gorge. How did it come to be there?~ [OH75536] #75536 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 22
END

IF ~~ THEN BEGIN 474 // from:
  SAY @967 /* ~Die, wretch!~ [OH75541] #75541 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 21
END

IF ~~ THEN BEGIN 475 // from:
  SAY @968 /* ~Does it look like it worked?~ [OH75547] #75547 */
  IF ~~ THEN REPLY @969 /* ~Hey, I was just asking.~ #75548 */ EXTERN ~OHDSUMM~ 23
END

IF ~~ THEN BEGIN 476 // from:
  SAY @970 /* ~She made him weak with her coddling.~ [OH75554] #75554 */
  IF ~~ THEN REPLY @971 /* ~She loved him as a mother should a son. Ignore the half-orc, Summerheigh. Please, continue.~ #75555 */ EXTERN ~OHDSUMM~ 28
END

IF ~~ THEN BEGIN 477 // from:
  SAY @972 /* ~Hah! There's the <CHARNAME> I remember!~ [OH75560] #75560 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 26
END

IF ~~ THEN BEGIN 478 // from:
  SAY @973 /* ~Die, hag!~ [OH75565] #75565 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 21
END

IF ~~ THEN BEGIN 479 // from:
  SAY @974 /* ~Join your son in death, you wretched sow!~ [OH75572] #75572 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 21
END

IF ~~ THEN BEGIN 480 // from:
  SAY @975 /* ~The strong make their own luck, <CHARNAME>. ~ [OH75582] #75582 */
  IF ~~ THEN REPLY @976 /* ~The wise know better than to refuse gifts from the gods. Farewell, Summerheigh.~ #75583 */ EXIT
END

IF ~~ THEN BEGIN 481 // from:
  SAY @977 /* ~Some things die sooner than others—especially things that would bar my way.~ [OH75602] #75602 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 482 // from:
  SAY @978 /* ~She said the monster will corrupt—~ [OH75618] #75618 */
  IF ~~ THEN REPLY @979 /* ~I heard what she said, Dorn. I just hoped I heard it wrong.~ #75619 */ EXTERN ~OHDSUMM~ 42
END

IF ~~ THEN BEGIN 483 // from:
  SAY @980 /* ~You forget yourself, <CHARNAME>. Our reasons for coming here are not so abstract.~ [OH75620] #75620 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 43
END

IF ~~ THEN BEGIN 484 // from:
  SAY @981 /* ~Servant?~ [OH75626] #75626 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 45
END

IF ~~ THEN BEGIN 485 // from:
  SAY @982 /* ~I will not fail.~ [OH75636] #75636 */
  IF ~~ THEN REPLY @983 /* ~In which case, imaginable evil will be unleashed upon the world. I guess that's a slight improvement.~ #75637 */ EXTERN ~OHDSUMM~ 44
  IF ~~ THEN REPLY @984 /* ~You know what I love about you, Dorn? Yeah, me neither. Let's go.~ #75638 */ EXIT
  IF ~~ THEN REPLY @985 /* ~Failure is for the weak. Whatever lurks within the gorge will fall before us like wheat to a scythe.~ #75639 */ EXTERN ~OHDSUMM~ 48
END

IF ~~ THEN BEGIN 486 // from:
  SAY @986 /* ~You know full well why we're here, <CHARNAME>.~ [OH75647] #75647 */
  IF ~~ THEN REPLY @987 /* ~I do. I'm not convinced you can say the same.~ #75648 */ GOTO 488
  IF ~~ THEN REPLY @988 /* ~Of course. I was merely trying to spare good Summerheigh here a long and boring story. It's not like we've an abundance of time left to us, from the sounds of it.~ #75649 */ EXTERN ~OHDSUMM~ 54
  IF ~~ THEN REPLY @989 /* ~For pity's sake, Dorn, you could teach a lemon a thing or two about being sour.~ #75650 */ GOTO 488
END

IF ~~ THEN BEGIN 487 // from:
  SAY @990 /* ~And what if it is?~ [OH75654] #75654 */
  IF ~~ THEN REPLY @991 /* ~If you can't respect our motives, at least give us points for honesty.~ #75652 */ EXTERN ~OHDSUMM~ 44
END

IF ~~ THEN BEGIN 488 // from: 486.2 486.0
  SAY @992 /* ~We must make our way into the gorge. Nothing else matters.~ [OH75655] #75655 */
  IF ~~ THEN REPLY @993 /* ~There's a bigger picture, Dorn. ~ #75656 */ GOTO 489
  IF ~~ THEN REPLY @994 /* ~There are those who would disagree.~ #75657 */ GOTO 493
  IF ~~ THEN REPLY @995 /* ~The singularity of your vision is overwhelming. Would that I had your focus.~ #75658 */ EXTERN ~OHDSUMM~ 48
END

IF ~~ THEN BEGIN 489 // from: 488.0
  SAY @996 /* ~Perhaps for you, <CHARNAME>. Not for me.~ [OH75659] #75659 */
  IF ~~ THEN REPLY @997 /* ~Such a narrow view will cost you dearly—and may cost the world much more.~ #75660 */ GOTO 491
  IF ~~ THEN REPLY @998 /* ~Well said, Dorn. In this venture, what you seek is the only prize that matters.~ #75661 */ GOTO 490
END

IF ~~ THEN BEGIN 490 // from: 489.1
  SAY @999 /* ~Then let's tarry no longer with this withered husk. The circle awaits.~ [OH75662] #75662 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 48
END

IF ~~ THEN BEGIN 491 // from: 489.0
  SAY @1000 /* ~What care I for the world?~ [OH75663] #75663 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 48
END

IF ~~ THEN BEGIN 492 // from:
  SAY @1001 /* ~There is great power to be had here.~ [OH75666] #75666 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 55
END

IF ~~ THEN BEGIN 493 // from: 488.1
  SAY @1002 /* ~None who matter, <CHARNAME>. Let us waste no more breath on this shriveled prune. My destiny bids me move forward.~ [OH75672] #75672 */
  IF ~~ THEN DO ~AddJournalEntry(91284,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 494 // from:
  SAY @1003 /* ~You should learn from their wisdom, hag.~ [OH75679] #75679 */
  IF ~~ THEN EXTERN ~OHDSUMM~ 60
END

IF ~~ THEN BEGIN 495 // from:
  SAY @1004 /* ~Well said. Let's tarry no longer with this wizened hag. The tree awaits.~ [OH75681] #75681 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 496 // from:
  SAY @1005 /* ~We could simply take them.~ [OH75690] #75690 */
  IF ~~ THEN REPLY @1006 /* ~While we're at it, we could put a target on our backs for every faerie and woodland beast 'twixt us and the gorge.~ #75691 */ GOTO 497
  IF ~~ THEN REPLY @1007 /* ~Dorn, if you could see your way clear to not being quite so... Dorn-ish for a few minutes, it sure would make my life easier.~ #75692 */ GOTO 501
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1008 /* ~Indeed. Hand over the goods, druid.~ #75693 */ EXTERN ~OHDSUMM~ 65
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1008 /* ~Indeed. Hand over the goods, druid.~ #75693 */ EXTERN ~OHDSUMM~ 64
END

IF ~~ THEN BEGIN 497 // from: 496.0
  SAY @1009 /* ~I've faced worse in my time.~ [OH75694] #75694 */
  IF ~~ THEN REPLY @1010 /* ~I'm sure you have, but why face it at all if we don't have to?~ #75695 */ GOTO 499
  IF ~~ THEN REPLY @1011 /* ~You'll face worse than that in a couple seconds if you don't smarten up and treat this woman with the respect she deserves.~ #75696 */ GOTO 498
END

IF ~~ THEN BEGIN 498 // from: 497.1
  SAY @1012 /* ~You threaten me, Bhaalspawn?~ [OH75697] #75697 */
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1013 /* ~I tell you a simple truth you'd do well to take to heart.~ #75698 */ GOTO 499
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1013 /* ~I tell you a simple truth you'd do well to take to heart.~ #75698 */ GOTO 500
END

IF ~~ THEN BEGIN 499 // from: 498.0 497.0
  SAY @1014 /* ~Very well. Dither with the hag for the rest of the day, play crosses and noughts till the sun rises. I care not.~ [OH75699] #75699 */
  IF ~~ THEN DO ~AddJournalEntry(91283,INFO)
StartStore("ohdsumm",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 500 // from: 498.1
  SAY @1015 /* ~Take my blade to heart, <PRO_RACE>!~ [OH75700] #75700 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 501 // from: 496.1
  SAY @1016 /* ~I am what I am, <CHARNAME>. Take it or don't; Dorn Il-Khan changes for no <PRO_MANWOMAN>.~ [OH75701] #75701 */
  IF ~~ THEN REPLY @1017 /* ~I don't ask you to change, Dorn. I ask only for silence. That's usually something you're only too willing to provide. Now then, Summerheigh. What of these goods you spoke of?~ #75702 */ DO ~AddJournalEntry(91283,INFO)
StartStore("ohdsumm",LastTalkedToBy(Myself))
~ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_GORGE_NTRJEX","OH5300",1)
~ THEN BEGIN 502 // from:
  SAY @1018 /* ~When this is over, I'll cut this tree down or see it burned to ashes.~ [OH75735] #75735 */
  IF ~~ THEN REPLY @1019 /* ~You're not afraid of heights, are you Dorn?~ #75736 */ GOTO 503
END

IF ~~ THEN BEGIN 503 // from: 502.0
  SAY @1020 /* ~These boots were made for walking and occasionally kicking in the skull of a fallen enemy. Not scrambling through the boughs of some gods-forsaken oak.~ [OH75737] #75737 */
  IF ~~ THEN DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5300",2)
SetGlobal("OHD_GORGE_NTRJEX","OH5300",2)
~ EXIT
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 2
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 15
END

IF ~~ THEN BEGIN 504 // from:
  SAY @1021 /* ~I do.~ [OH75751] #75751 */
  IF ~~ THEN REPLY @1022 /* ~Well, we don't always get what we want. For instance, you don't get to keep whittling this halfling.~ #75752 */ GOTO 506
  IF ~~ THEN REPLY @1023 /* ~Ignore the half-orc. He wishes to harm everyone further; it's just his way.~ #75753 */ EXTERN ~OHDYARR~ 18
  IF ~~ THEN REPLY @1024 /* ~I do too, now that you mention it.~ #75754 */ GOTO 505
END

IF ~~ THEN BEGIN 505 // from: 504.2
  SAY @1025 /* ~I'll wear your intestines like garlands in my hair, you halfling nuisance!~ [OH75755] #75755 */
  IF ~~ THEN DO ~Attack("ohdtread")
ActionOverride("OHDYARR",Enemy())
ActionOverride("OHDYARR",Attack([PC]))
~ EXIT
END

IF ~~ THEN BEGIN 506 // from: 504.0
  SAY @1026 /* ~It's your lucky day, halfling. Take what's still attached to your body and go before I change my mind.~ [OH75756] #75756 */
  IF ~~ THEN EXTERN ~OHDYARR~ 1
END

IF ~~ THEN BEGIN 507 // from:
  SAY @1027 /* ~Count me glad you didn't!~ [OH75782] #75782 */
  IF ~~ THEN DO ~Attack("ohdtread")
~ EXIT
END

IF ~~ THEN BEGIN 508 // from:
  SAY @1028 /* ~Mind your tongue, <PRO_RACE>.~ [OH75804] #75804 */
  IF ~~ THEN REPLY @1029 /* ~What? I merely suggested—~ #75805 */ GOTO 509
  IF ~~ THEN REPLY @1030 /* ~Yes, sir. Minding my tongue, sir.~ #75806 */ EXTERN ~OHDYARR~ 18
  IF ~~ THEN REPLY @1031 /* ~Why, when you seem satisfied to watch it for me?~ #75807 */ GOTO 510
END

IF ~~ THEN BEGIN 509 // from: 508.0
  SAY @1032 /* ~I know what you were suggesting. I suggest you shut your mouth before I shut it permanently.~ [OH75808] #75808 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 510 // from: 508.2
  SAY @1033 /* ~I always keep an eye on my enemy's weapons.~ [OH75809] #75809 */
  IF ~~ THEN REPLY @1034 /* ~You wound me, Dorn. And not the way you usually wound people, either. This hurts.~ #75810 */ GOTO 513
  IF ~~ THEN REPLY @1035 /* ~So you think me an enemy?~ #75811 */ GOTO 511
  IF ~~ THEN REPLY @1036 /* ~You think my tongue is dangerous? Don't leave yourself open like that.~ #75812 */ GOTO 513
END

IF ~~ THEN BEGIN 511 // from: 510.1
  SAY @1037 /* ~I think you are wise enough to know when you no longer need me as a friend.~ [OH75813] #75813 */
  IF ~~ THEN REPLY @1038 /* ~I don't stand with you because of your tactical value, Dorn. I actually like you, though only the gods know why.~ #75814 */ GOTO 513
  IF ~~ THEN REPLY @1039 /* ~You think me a friend?~ #75815 */ GOTO 513
  IF ~~ THEN REPLY @1040 /* ~I never needed you as a friend, Dorn, and don't think yourself one now. I use you to my own benefit, as you do me.~ #75816 */ GOTO 512
END

IF ~~ THEN BEGIN 512 // from: 511.2
  SAY @1041 /* ~I'm glad we understand each other.~ [OH75817] #75817 */
  IF ~~ THEN EXTERN ~OHDYARR~ 18
END

IF ~~ THEN BEGIN 513 // from: 511.1 511.0 510.2 510.0
  SAY @1042 /* ~I think you're playing games with me now.~ [OH75818] #75818 */
  IF ~~ THEN REPLY @1043 /* ~Perhaps I am.~ #75819 */ GOTO 514
END

IF ~~ THEN BEGIN 514 // from: 513.0
  SAY @1044 /* ~You may come to regret that.~ [OH75820] #75820 */
  IF ~~ THEN REPLY @1045 /* ~Perhaps I will.~ #75821 */ EXTERN ~OHDYARR~ 18
END

IF ~~ THEN BEGIN 515 // from:
  SAY @1046 /* ~Die, tree-hag!~ [OH75839] #75839 */
  IF ~~ THEN EXTERN ~OHDYARR~ 23
END

IF ~~ THEN BEGIN 516 // from:
  SAY @1047 /* ~Death to all who stand between me and the circle!~ [OH75847] #75847 */
  IF ~~ THEN EXTERN ~OHDYARR~ 23
END

IF ~~ THEN BEGIN 517 // from:
  SAY @1048 /* ~Don't try to stand in our way, dryad.~ [OH75860] #75860 */
  IF ~~ THEN EXTERN ~OHDYARR~ 32
  IF ~  Range("OHDTREAD",30)
!StateCheck("OHDTREAD",CD_STATE_NOTVALID)
~ THEN EXTERN ~OHDTREAD~ 6
END

IF ~~ THEN BEGIN 518 // from:
  SAY @1049 /* ~I'll cut you into quarters, halfling!~ [OH75866] #75866 */
  IF ~~ THEN DO ~ActionOverride("ohdtread",Enemy())
ActionOverride("ohdyarr",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 519 // from:
  SAY @1050 /* ~What color is dryad's blood, I wonder?~ [OH75876] #75876 */
  IF ~~ THEN EXTERN ~OHDYARR~ 35
  IF ~  Range("OHDTREAD",30)
!StateCheck("OHDTREAD",CD_STATE_NOTVALID)
~ THEN EXTERN ~OHDTREAD~ 8
END

IF ~~ THEN BEGIN 520 // from:
  SAY @1051 /* ~What concern is it of yours?~ [OH75879] #75879 */
  IF ~~ THEN EXTERN ~OHDYARR~ 36
END

IF ~~ THEN BEGIN 521 // from:
  SAY @1052 /* ~Enough of your prattling, <CHARNAME>. Dryad! Who are you who thinks to stand between me and my goal?~ [OH75884] #75884 */
  IF ~~ THEN EXTERN ~OHDYARR~ 32
END

IF ~~ THEN BEGIN 522 // from:
  SAY @1053 /* ~You go too far, <PRO_RACE>.~ [OH75899] #75899 */
  IF ~~ THEN REPLY @1054 /* ~You make me sad, Dorn. All this time together and you still can't take a joke.~ #75900 */ GOTO 526
  IF ~~ THEN REPLY @1055 /* ~Really? That was too far? Tell the truth now, Dorn—you've moved the line, haven't you?~ #75901 */ GOTO 528
  IF ~~ THEN REPLY @1056 /* ~I go where I would, half-orc. Only a fool would try and stop me.~ #75902 */ GOTO 523
END

IF ~~ THEN BEGIN 523 // from: 522.2
  SAY @1057 /* ~You call me a fool?~ [OH75903] #75903 */
  IF ~~ THEN REPLY @1058 /* ~If you act the fool, I'll tell you so.~ #75904 */ GOTO 524
  IF ~~ THEN REPLY @1059 /* ~Hah! No. How foolish would that make me?~ #75905 */ GOTO 528
  IF ~~ THEN REPLY @1060 /* ~One who acts like a fool should expect no better.~ #75906 */ GOTO 525
END

IF ~~ THEN BEGIN 524 // from: 523.0
  SAY @1061 /* ~So, you are calling me a fool?~ [OH75907] #75907 */
  IF ~~ THEN REPLY @1062 /* ~I'm not calling you anything. Curb your paranoia, Dorn. I fear it will drive you to madness.~ #75908 */ GOTO 529
  IF ~~ THEN REPLY @1063 /* ~*sigh* No, Dorn, of course not. Only a fool would call you a fool. And I'm no fool.~ #75909 */ GOTO 528
  IF ~~ THEN REPLY @1064 /* ~Only because you're being one.~ #75910 */ GOTO 525
END

IF ~~ THEN BEGIN 525 // from: 524.2 523.2
  SAY @1065 /* ~I may not have your way with words, <CHARNAME>, but I know how to win an argument.~ [OH75911] #75911 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 526 // from: 522.0
  SAY @1066 /* ~I'll not stand here and be mocked by the likes of you!~ [OH75932] #75932 */
  IF ~~ THEN REPLY @1067 /* ~You're looking for an insult where none was intended, Dorn.~ #75933 */ GOTO 528
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1068 /* ~Perhaps you should sit, then.~ #75934 */ GOTO 528
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1068 /* ~Perhaps you should sit, then.~ #75934 */ GOTO 527
END

IF ~~ THEN BEGIN 527 // from: 526.2
  SAY @1069 /* ~I'll sit on your corpse!~ [OH75935] #75935 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 528 // from: 529.0 526.1 526.0 524.1 523.1 522.1
  SAY @1070 /* ~Your insolent tongue will be the death of you, <CHARNAME>.~ [OH75936] #75936 */
  IF ~~ THEN REPLY @1071 /* ~Perhaps you're right. But I'm not inclined to cut it out, so I'll just have to live with it as long as I'm able. Yarrow, pray continue your tale.~ #75937 */ EXTERN ~OHDYARR~ 52
END

IF ~~ THEN BEGIN 529 // from: 524.0
  SAY @1072 /* ~You would be wise to fear me, <CHARNAME>. Or at least to pretend you do.~ [OH75938] #75938 */
  IF ~~ THEN REPLY @1073 /* ~I should be able to manage that. I'm a pretty good actor.~ #75939 */ GOTO 528
  IF ~~ THEN REPLY @1074 /* ~I would be wise to flee you. But here I am.~ #75940 */ GOTO 531
  IF ~~ THEN REPLY @1075 /* ~Fear you? Surely you jest. I've more to fear from my shadow.~ #75941 */ GOTO 530
END

IF ~~ THEN BEGIN 530 // from: 529.2
  SAY @1076 /* ~I'll wager your shadow's sword doesn't cut like mine.~ [OH75942] #75942 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 531 // from: 529.1
  SAY @1077 /* ~You may not fear me, but you know my value.~ [OH75950] #75950 */
  IF ~~ THEN REPLY @1078 /* ~I do, but we can discuss that later. For now, I would know more about the beast that stalks Resurrection Gorge.~ #75951 */ EXTERN ~OHDYARR~ 52
END

IF ~~ THEN BEGIN 532 // from:
  SAY @1079 /* ~We'll see what lessons it can teach dancing on the end of my blade. Then perhaps you will be the one to learn something from the demon.~ [OH75958] #75958 */
  IF ~~ THEN EXTERN ~OHDYARR~ 55
END

IF ~~ THEN BEGIN 533 // from:
  SAY @1080 /* ~His corpse serves as a fitting monument to his failure.~ [OH75959] #75959 */
  IF ~~ THEN REPLY @1081 /* ~I agree. The state of the tree and a bloodthirsty tanar'ri stalking the gorge is really kind of redundant after that.~ #75960 */ GOTO 560
  IF ~~ THEN REPLY @1082 /* ~He'd probably have preferred some kind of plaque.~ #75961 */ GOTO 561
  IF ~~ THEN REPLY @1083 /* ~Indeed. The weak and foolish deserve no better.~ #75962 */ EXTERN ~OHDYARR~ 56
END

IF ~~ THEN BEGIN 534 // from:
  SAY @1084 /* ~Calling me a fool will cost you your life sooner than my supposed foolishness will cost me mine.~ [OH75968] #75968 */
  IF ~~ THEN GOTO 535
  IF ~  Range("OHDTREAD",30)
!StateCheck("OHDTREAD",CD_STATE_NOTVALID)
~ THEN EXTERN ~OHDTREAD~ 9
END

IF ~~ THEN BEGIN 535 // from: 534.0
  SAY @1085 /* ~Sap is a poor substitute for blood, but I'll shed it all the same.~ [OH75971] #75971 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 536 // from:
  SAY @1086 /* ~There is nothing mindless about it, <PRO_RACE>.~ [OH75972] #75972 */
  IF ~~ THEN REPLY @1087 /* ~Simmeon, Ur-Gothoz, now Azothet... They called the tune and you danced the dance, all for power. Was it worth it?~ #75973 */ GOTO 537
END

IF ~~ THEN BEGIN 537 // from: 536.0
  SAY @1088 /* ~Not all of us had the good fortune to be a child of Bhaal. When the opportunity for power presents itself, I have little choice but to take it.~ [OH75974] #75974 */
  IF ~~ THEN REPLY @1089 /* ~There's more to life than power, Dorn.~ #75975 */ GOTO 542
  IF ~~ THEN REPLY @1090 /* ~"Little choice"? You make excuses for your own base appetites.~ #75976 */ GOTO 538
  IF ~~ THEN REPLY @1091 /* ~Agreed. Power is all that matters.~ #75977 */ GOTO 541
END

IF ~~ THEN BEGIN 538 // from: 537.1
  SAY @1092 /* ~Desiring power requires no excuse. Power is both the end and the means. Everything else is but a distraction.~ [OH75978] #75978 */
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1093 /* ~Your pitifully limited view cripples your own ambitions.~ #75979 */ GOTO 540
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1093 /* ~Your pitifully limited view cripples your own ambitions.~ #75979 */ GOTO 539
END

IF ~~ THEN BEGIN 539 // from: 538.1
  SAY @1094 /* ~We'll see, <PRO_RACE>. We'll see. For now, we've more pressing concerns. Dryad. What more can you tell us of the tanar'ri who haunts the gorge?~ [OH75980] #75980 */
  IF ~~ THEN EXTERN ~OHDYARR~ 60
END

IF ~~ THEN BEGIN 540 // from: 538.0
  SAY @1095 /* ~Save your pity for yourself, <PRO_RACE>. It's more than your ambition I'll cripple.~ [OH75981] #75981 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 541 // from: 537.2
  SAY @1096 /* ~And there's power here, that much is obvious. Dryad! Tell us more of what awaits us in Resurrection Gorge.~ [OH75982] #75982 */
  IF ~~ THEN EXTERN ~OHDYARR~ 60
END

IF ~~ THEN BEGIN 542 // from: 537.0
  SAY @1097 /* ~A life without power is hardly worth living.~ [OH75983] #75983 */
  IF ~~ THEN REPLY @1098 /* ~A life without love is hardly worth living.~ #75984 */ GOTO 543
  IF ~~ THEN REPLY @1099 /* ~Yet there are hundreds of thousands—millions—of people who endure without power. And many of those are happy.~ #75985 */ GOTO 547
  IF ~~ THEN REPLY @1100 /* ~"Hardly" worth living? A life without power's not worth living at all. ~ #75986 */ GOTO 559
END

IF ~~ THEN BEGIN 543 // from: 542.0
  SAY @1101 /* ~Love? You jest.~ [OH75987] #75987 */
  IF ~~ THEN REPLY @1102 /* ~All the power in the realms will be meaningless if you are alone.~ #75988 */ GOTO 544
END

IF ~~ THEN BEGIN 544 // from: 543.0
  SAY @1103 /* ~Only a fool would willingly share such power.~ [OH75989] #75989 */
  IF ~~ THEN REPLY @1104 /* ~Love makes fools of us all.~ #75990 */ GOTO 548
  IF ~~ THEN REPLY @1105 /* ~Only a fool would ignore the power to be had in combining forces with a worthy mate.~ #75991 */ GOTO 545
END

IF ~~ THEN BEGIN 545 // from: 544.1
  SAY @1106 /* ~An alliance of equals is a different matter altogether.~ [OH75992] #75992 */
  IF ~~ THEN REPLY @1107 /* ~Is it? A love shared between unequal partners is built on a foundation of shifting sand. An alliance of equals focused on a mutual goal—the acquisition of power, say—is the sort of ground love needs to bloom.~ #75993 */ GOTO 546
END

IF ~~ THEN BEGIN 546 // from: 545.0
  SAY @1108 /* ~As long as the mutual goal is the acquisition of power...~ #75994 */
  IF ~~ THEN REPLY @1109 /* ~There is nothing else of worth, not in this world.~ #75995 */ GOTO 559
END

IF ~~ THEN BEGIN 547 // from: 542.1
  SAY @1110 /* ~Blind commoner fools, happy to be led by the strong.~ [OH75996] #75996 */
  IF ~~ THEN REPLY @1111 /* ~But happy nonetheless.~ #75997 */ GOTO 548
END

IF ~~ THEN BEGIN 548 // from: 547.0 544.0
  SAY @1112 /* ~You disappoint me, <CHARNAME>. I thought we were of a shared purpose. ~ [OH75998] #75998 */
  IF ~~ THEN REPLY @1113 /* ~You thought wrong. I aspire to noble deeds, while you are satisfied indulging your baser instincts.~ #75999 */ GOTO 549
  IF ~~ THEN REPLY @1114 /* ~Once, perhaps. But now I'm not so sure.~ #76000 */ GOTO 550
  IF ~~ THEN REPLY @1115 /* ~We do. For such as us, there can be no happiness without power.~ #76001 */ GOTO 559
END

IF ~~ THEN BEGIN 549 // from: 548.0
  SAY @1116 /* ~Such aspirations are no fitting goals for a child of Bhaal.~ [OH76002] #76002 */
  IF ~~ THEN REPLY @1117 /* ~Nevertheless, I strive to do good where I can. And it seems there are opportunities aplenty to do so here.~ #76003 */ EXTERN ~OHDYARR~ 58
END

IF ~~ THEN BEGIN 550 // from: 548.1
  SAY @1118 /* ~What could prompt such a change in heart?~ [OH76005] #76005 */
  IF ~~ THEN REPLY @1119 /* ~This place affects me in a way I'd never imagined possible. A balance has been upset here, and I must right it or die in the attempt.~ #76006 */ EXTERN ~OHDYARR~ 58
  IF ~~ THEN REPLY @1120 /* ~You have, Dorn Il-Khan. Seeing your potential wasted in service to Simmeon, Ur-Gothoz, now Azothet... At all times you seek power, yet your efforts result only in servitude to another. You've chosen your path, and I respect that. But I see now where it leads, and that is nowhere I want to go.~ #76007 */ GOTO 551
  IF ~~ THEN REPLY @1121 /* ~What can I say? I'm fickle. ~ #76008 */ EXTERN ~OHDYARR~ 59
END

IF ~~ THEN BEGIN 551 // from: 550.1
  SAY @1122 /* ~Curse your eyes, <CHARNAME>! You see my quandary but offer me no solutions.~ [OH76009] #76009 */
  IF ~~ THEN REPLY @1123 /* ~I have nothing to offer but my support. I have faith in you, Dorn. You'll find a way through this.~ #76010 */ GOTO 552
  IF ~~ THEN REPLY @1124 /* ~A time will come—soon, I think—when you'll need to choose between freedom and power. When that time comes, I pray you make the right decision.~ #76011 */ GOTO 553
  IF ~~ THEN REPLY @1125 /* ~Find your own solutions, Il-Khan. I've better things to do with my time than dwell on your problems.~ #76012 */ GOTO 555
END

IF ~~ THEN BEGIN 552 // from: 551.0
  SAY @1126 /* ~Your faith in others is a weakness; your faith in me crosses the line into foolhardiness. You know I tolerate you only so long as you are of use to me.~ [OH76015] #76015 */
  IF ~~ THEN REPLY @1127 /* ~Faith in others is no weakness. What is your tolerance of my whimsical nature if not a sign of your faith in my continued value?~ #76016 */ GOTO 556
  IF ~~ THEN REPLY @1128 /* ~Then I shall endeavor to continue to be of use to you.~ #76017 */ GOTO 557
  IF ~~ THEN REPLY @1129 /* ~Likewise.~ #76018 */ GOTO 555
END

IF ~~ THEN BEGIN 553 // from: 551.1
  SAY @1130 /* ~Freedom or power? That's no choice at all.~ [OH76019] #76019 */
  IF ~~ THEN REPLY @1131 /* ~That's the attitude that led you to Simmeon, to Ur-Gothoz...~ #76020 */ GOTO 554
END

IF ~~ THEN BEGIN 554 // from: 553.0
  SAY @1132 /* ~Enough, <PRO_RACE>. You've made your point.~ [OH76021] #76021 */
  IF ~~ THEN REPLY @1133 /* ~Then let's move on. Yarrow, I believe you were telling us about a tanar'ri?~ #76022 */ EXTERN ~OHDYARR~ 61
END

IF ~~ THEN BEGIN 555 // from: 552.2 551.2
  SAY @1134 /* ~Yet here you are at Resurrection Gorge. ~ [OH76023] #76023 */
  IF ~~ THEN REPLY @1135 /* ~I've my own reasons for that, half-orc. Do not presume that your presence here influences me in any way. Now, dryad. Continue with your tale.~ #76024 */ EXTERN ~OHDYARR~ 60
END

IF ~~ THEN BEGIN 556 // from: 552.0
  SAY @1136 /* ~A sign of madness, I sometimes think.~ [OH76026] #76026 */
  IF ~~ THEN REPLY @1137 /* ~A touch of madness may not be a bad thing where we're going. What more can you tell us of the gorge and this tanar'ri, Yarrow?~ #76027 */ EXTERN ~OHDYARR~ 61
END

IF ~~ THEN BEGIN 557 // from: 552.1
  SAY @1138 /* ~Your service is appreciated.~ [OH76028] #76028 */
  IF ~~ THEN REPLY @1139 /* ~It's nice to feel appreciated. Now, Yarrow, tell us more about this tanar'ri.~ #76029 */ EXTERN ~OHDYARR~ 61
  IF ~~ THEN REPLY @1140 /* ~Have a care, Dorn. I serve only myself, unlike some half-orcs I could mention.~ #76030 */ GOTO 558
  IF ~~ THEN REPLY @1141 /* ~Imply I'm your servant again and you won't appreciate what happens next.~ #76031 */ GOTO 559
END

IF ~~ THEN BEGIN 558 // from: 557.1
  SAY @1142 /* ~Watch yourself, Bhaalspawn.~ [OH76032] #76032 */
  IF ~~ THEN EXTERN ~OHDYARR~ 60
END

IF ~~ THEN BEGIN 559 // from: 557.2 548.2 546.0 542.2
  SAY @1143 /* ~Ha! There's the <CHARNAME> I know. I wondered where <PRO_HESHE> had gotten to. But enough banter. Dryad, what more can you tell us of the tanar'ri and the gorge?~ [OH76033] #76033 */
  IF ~~ THEN EXTERN ~OHDYARR~ 60
END

IF ~~ THEN BEGIN 560 // from: 533.0
  SAY @1144 /* ~My tree's state is no memorial to events passed.~ #76034 */
  IF ~~ THEN EXTERN ~OHDYARR~ 61
END

IF ~~ THEN BEGIN 561 // from: 533.1
  SAY @1145 /* ~If you're of a mind, you can leave one when we complete our task. For now, we should focus on what awaits us. The summoning circle, dryad. Where is it?~ [OH76035] #76035 */
  IF ~~ THEN EXTERN ~OHDYARR~ 65
END

IF ~~ THEN BEGIN 562 // from:
  SAY @1146 /* ~Your wit is duller than a dwarf's hammer. The summoning circle. Where is it?~ [OH76045] #76045 */
  IF ~~ THEN EXTERN ~OHDYARR~ 65
END

IF ~~ THEN BEGIN 563 // from:
  SAY @1147 /* ~Better to live and crawl than to die for no reason. There's no way to know what end awaits until it arrives.~ [OH76047] #76047 */
  IF ~~ THEN REPLY @1148 /* ~You surprise me, Dorn. I can't imagine you being satisfied dying in bed.~ #76048 */ GOTO 564
END

IF ~~ THEN BEGIN 564 // from: 563.0
  SAY @1149 /* ~Life is the ultimate battle. I may not ultimately prevail, but I'll fight it to my dying breath regardless of where I take it.~ [OH76049] #76049 */
  IF ~~ THEN GOTO 565
END

IF ~~ THEN BEGIN 565 // from: 564.0
  SAY @1150 /* ~But enough of this. We seek the circle of summoning. Where is it?~ [OH76050] #76050 */
  IF ~~ THEN EXTERN ~OHDYARR~ 65
END

IF ~~ THEN BEGIN 566 // from:
  SAY @1151 /* ~We're not here for a history lesson. We're here for the circle and the sword.~ [OH76055] #76055 */
  IF ~~ THEN REPLY @1152 /* ~Those things are unimportant compared to restoring the tree to its former glory and bringing balance back to the land.~ #76056 */ GOTO 567
  IF ~~ THEN REPLY @1153 /* ~I suspect finding them will be quicker and easier with Yarrow's help. Pray continue, Yarrow.~ #76057 */ EXTERN ~OHDYARR~ 69
  IF ~~ THEN REPLY @1154 /* ~You're right, Dorn. Let's not waste our time with this dryad.~ #76058 */ EXTERN ~OHDYARR~ 66
END

IF ~~ THEN BEGIN 567 // from: 566.0
  SAY @1155 /* ~Pfah! Your sudden nobility sickens me, <CHARNAME>.~ [OH76066] #76066 */
  IF ~~ THEN REPLY @1156 /* ~Suffer in silence, Dorn. Yarrow has much more to tell us, I'm sure.~ #76067 */ EXTERN ~OHDYARR~ 69
END

IF ~~ THEN BEGIN 568 // from:
  SAY @1157 /* ~Well said, <CHARNAME>. Nothing shall stand between us and the circle.~ [OH76068] #76068 */
  IF ~~ THEN EXTERN ~OHDYARR~ 68
END

IF ~~ THEN BEGIN 569 // from:
  SAY @1158 /* ~I don't doubt your strength, <PRO_RACE>. I cannot in truth say the same of your sanity or your wisdom.~ [OH76071] #76071 */
  IF ~~ THEN EXTERN ~OHDYARR~ 69
END

IF ~~ THEN BEGIN 570 // from:
  SAY @1159 /* ~You would have us fear bones? I'll grind them to powder with my teeth!~ [OH76073] #76073 */
  IF ~~ THEN REPLY @1160 /* ~Stop interrupting the woman, Dorn. I apologize for my friend's enthusiasm, Yarrow. Is there anything more you can tell us of the gorge?~ #76074 */ EXTERN ~OHDYARR~ 71
  IF ~~ THEN REPLY @1161 /* ~Ah! Suddenly I understand the sorry state of your breath.~ #76075 */ GOTO 571
  IF ~~ THEN REPLY @1162 /* ~Those who came before were too weak to survive the gorge. They failed in life; I'll not fear them in death.~ #76076 */ EXTERN ~OHDYARR~ 70
END

IF ~~ THEN BEGIN 571 // from: 570.1
  SAY @1163 /* ~Make another remark of that nature and you'll also understand the sorry state of your breathing.~ [OH76079] #76079 */
  IF ~~ THEN REPLY @1164 /* ~There's nothing wrong with my breathing—wait, I just got it. Never mind. Yarrow, continue.~ #76080 */ EXTERN ~OHDYARR~ 71
  IF ~~ THEN REPLY @1165 /* ~You would threaten me, half-orc?~ #76081 */ GOTO 572
END

IF ~~ THEN BEGIN 572 // from: 571.1
  SAY @1166 /* ~You would insult me, <PRO_RACE>?~ [OH76082] #76082 */
  IF ~~ THEN REPLY @1167 /* ~I did but make a joke.~ #76083 */ GOTO 573
  IF ~~ THEN REPLY @1168 /* ~I do as I will. You should know better than to challenge me.~ #76084 */ GOTO 574
END

IF ~~ THEN BEGIN 573 // from: 572.0
  SAY @1169 /* ~Those who joke at my expense will find they pay a steep price.~ [OH76085] #76085 */
  IF ~~ THEN REPLY @1170 /* ~I'm sorry, my friend. I meant no offense. Please continue, Yarrow.~ #76086 */ EXTERN ~OHDYARR~ 71
END

IF ~~ THEN BEGIN 574 // from: 572.1
  SAY @1171 /* ~And you should know better than to insult a blackguard.~ [OH76087] #76087 */
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1172 /* ~If you've a problem with my attitude... Well then, you've a problem. Deal with it on your own time; we've other matters to attend to right now.~ #76088 */ GOTO 576
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1172 /* ~If you've a problem with my attitude... Well then, you've a problem. Deal with it on your own time; we've other matters to attend to right now.~ #76088 */ GOTO 575
END

IF ~~ THEN BEGIN 575 // from: 574.1
  SAY @1173 /* ~When this is over, you and I will have words, <CHARNAME>.~ [OH76089] #76089 */
  IF ~~ THEN REPLY @1174 /* ~I look forward to it. But for now, Yarrow, please go on.~ #76090 */ EXTERN ~OHDYARR~ 71
END

IF ~~ THEN BEGIN 576 // from: 574.0
  SAY @1175 /* ~I'll deal with your flippant tongue now, you impertinent dog!~ [OH76091] #76091 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 577 // from:
  SAY @1176 /* ~That blade will be mine before this is done.~ [OH76096] #76096 */
  IF ~~ THEN EXTERN ~OHDYARR~ 75
END

IF ~~ THEN BEGIN 578 // from:
  SAY @1177 /* ~If you're quite finished with your prattling, can we get on with this? The ebon blade calls out to me; I can hear it.~ [OH76109] #76109 */
  IF ~~ THEN EXTERN ~OHDYARR~ 81
END

IF ~~ THEN BEGIN 579 // from:
  SAY @1178 /* ~Enough talk! Let's be on our way.~ [OH76112] #76112 */
  IF ~~ THEN EXTERN ~OHDYARR~ 81
END

IF ~~ THEN BEGIN 580 // from:
  SAY @1179 /* ~I may be selfish, but I'm no hypocrite. You allow us passage only because we might save your blighted lover. And you reward failure with certain death. You wrap your self-serving actions in noble words, but it all amounts to the same thing.~ [OH76120] #76120 */
  IF ~~ THEN EXTERN ~OHDYARR~ 32
  IF ~  Range("OHDTREAD",30)
!StateCheck("OHDTREAD",CD_STATE_NOTVALID)
~ THEN EXTERN ~OHDTREAD~ 11
END

IF ~~ THEN BEGIN 581 // from:
  SAY @1180 /* ~The tanar'ri can take you and your halfling toadie! Nothing shall stand between me and my destiny!~ [OH76131] #76131 */
  IF ~~ THEN DO ~ActionOverride("ohdtread",Enemy())
ActionOverride("ohdyarr",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 582 // from:
  SAY @1181 /* ~Speak for yourself, <CHARNAME>. I intend to walk out of the gorge alive—and with greater power than any I've wielded before.~ [OH76134] #76134 */
  IF ~~ THEN REPLY @1182 /* ~An intention is the most common victim of reality, but I'm with you. We can prevail in our quest if we work together.~ #76135 */ EXTERN ~OHDYARR~ 87
  IF ~~ THEN REPLY @1183 /* ~The best laid plans of gods and men often go awry. And frankly, our plan wasn't that well laid to begin with.~ #76136 */ GOTO 583
  IF ~~ THEN REPLY @1184 /* ~And I shall walk beside you. Yarrow, what is the way into the gorge?~ #76137 */ EXTERN ~OHDYARR~ 89
END

IF ~~ THEN BEGIN 583 // from: 582.1
  SAY @1185 /* ~We have a goal; if anything gets between us and it, we cut it to bloody ribbons. What more of a plan could we need?~ [OH76141] #76141 */
  IF ~~ THEN REPLY @1186 /* ~I favor a more nuanced approach.~ #76142 */ GOTO 584
  IF ~~ THEN REPLY @1187 /* ~I'd prefer one that includes an option for running, if possible.~ #76143 */ GOTO 586
  IF ~~ THEN REPLY @1188 /* ~Best to keep things simple. Yarrow, how do we enter the gorge?~ #76144 */ EXTERN ~OHDYARR~ 88
END

IF ~~ THEN BEGIN 584 // from: 583.0
  SAY @1189 /* ~Nuance is for those who lack the strength to face their problems in a forthright manner.~ [OH76145] #76145 */
  IF ~~ THEN REPLY @1190 /* ~There's more to life than obstacles and goals, Dorn. Sometimes you've got to stop and smell the roses.~ #76146 */ GOTO 585
  IF ~~ THEN REPLY @1191 /* ~Your "forthright manner" generally involves shedding someone's blood. There's some room in this life we've chosen for finesse, you know.~ #76147 */ GOTO 586
  IF ~~ THEN REPLY @1192 /* ~The gorge is no place for the weak.~ #76148 */ EXTERN ~OHDYARR~ 90
END

IF ~~ THEN BEGIN 585 // from: 584.0
  SAY @1193 /* ~Stop and smell the... Have you taken leave of your senses, <CHARNAME>? We stand on the edge of Resurrection Gorge! This is no time to stop and reflect on meaningless distractions!~ [OH76149] #76149 */
  IF ~~ THEN REPLY @1194 /* ~I fear this is the last time we shall have to reflect. ~ #76150 */ GOTO 589
  IF ~~ THEN REPLY @1195 /* ~Hah! I got you going, didn't I? You're right, of course. It's time we got this show on the road. Or in the gorge, as the case may be.~ #76151 */ EXTERN ~OHDYARR~ 81
  IF ~~ THEN REPLY @1196 /* ~You are right, of course.~ #76152 */ EXTERN ~OHDYARR~ 90
END

IF ~~ THEN BEGIN 586 // from: 584.1 583.1
  SAY @1197 /* ~Cowardice ill-becomes you, <CHARNAME>.~ [OH76157] #76157 */
  IF ~~ THEN REPLY @1198 /* ~Don't mistake wisdom for cowardice, Dorn.~ #76158 */ GOTO 590
  IF ~~ THEN REPLY @1199 /* ~It becomes me better than death, I think. I've heard enough about the gorge to know it's a place I'd rather not visit.~ #76159 */ EXIT
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1200 /* ~Keep talking and you'll see how death becomes you, Dorn.~ #76160 */ GOTO 588
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1200 /* ~Keep talking and you'll see how death becomes you, Dorn.~ #76160 */ GOTO 587
END

IF ~~ THEN BEGIN 587 // from: 586.3
  SAY @1201 /* ~I thought I'd face my death in the gorge, not just outside it.~ [OH76161] #76161 */
  IF ~~ THEN REPLY @1202 /* ~Let's hope we won't face it at all, at least not any time soon. Yarrow, we would enter the gorge.~ #76162 */ EXTERN ~OHDYARR~ 81
  IF ~~ THEN REPLY @1203 /* ~You won't face your death at all, today. We're leaving.~ #76163 */ EXIT
  IF ~~ THEN REPLY @1204 /* ~You face your death wherever and whenever you cross me, Dorn. Don't forget that.~ #76164 */ GOTO 589
END

IF ~~ THEN BEGIN 588 // from: 586.2
  SAY @1205 /* ~I'll let my blade do my talking!~ [OH76165] #76165 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 589 // from: 587.2 585.0
  SAY @1206 /* ~So what do we do now? Would you have us turn our backs on the gorge after coming all this way, or finish what we began?~ [OH76166] #76166 */
  IF ~~ THEN REPLY @1207 /* ~Let's finish this. Yarrow, we want to enter the Gorge. Will you help us?~ #76167 */ EXTERN ~OHDYARR~ 89
  IF ~~ THEN REPLY @1208 /* ~I've lost my appetite for this adventure. The gorge can wait for another day.~ #76168 */ EXIT
END

IF ~~ THEN BEGIN 590 // from: 586.0
  SAY @1209 /* ~The only mistake I've made is taking you for a person of strength, <CHARNAME>.~ [OH76169] #76169 */
  IF ~~ THEN REPLY @1210 /* ~Your inability to see my strength is your weakness.~ #76170 */ GOTO 593
  IF ~~ THEN REPLY @1211 /* ~Let's hope that's the worst mistake you make today.~ #76171 */ EXTERN ~OHDYARR~ 90
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1212 /* ~Would you like to feel my strength firsthand, Dorn?~ #76172 */ GOTO 592
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1212 /* ~Would you like to feel my strength firsthand, Dorn?~ #76172 */ GOTO 591
END

IF ~~ THEN BEGIN 591 // from: 590.3
  SAY @1213 /* ~I'd see your strength used to take the tanar'ri's sword.~ [OH76173] #76173 */
  IF ~~ THEN REPLY @1214 /* ~And you shall.~ #76174 */ EXTERN ~OHDYARR~ 90
END

IF ~~ THEN BEGIN 592 // from: 590.2
  SAY @1215 /* ~If that is your wish, I shall happily oblige!~ [OH76175] #76175 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 593 // from: 590.0
  SAY @1216 /* ~I see clearly, <CHARNAME>, which is more than can be said for you.~ [OH76176] #76176 */
  IF ~~ THEN REPLY @1217 /* ~This is an argument we can have another day. On this venture, time is not our ally.~ #76177 */ EXTERN ~OHDYARR~ 90
END

IF WEIGHT #38 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  AreaCheck("OH5120")
Global("OHD_oh5120_init","LOCALS",1)
~ THEN BEGIN 594 // from:
  SAY @1218 /* ~At last! The moment is at hand!~ [OH76185] #76185 */
  IF ~~ THEN GOTO 595
END

IF ~~ THEN BEGIN 595 // from: 594.0
  SAY @1219 /* ~Wait. Something's not right here... The circle isn't complete. It's not complete!~ [OH76186] #76186 */
  IF ~~ THEN REPLY @1220 /* ~What's missing?~ #76187 */ DO ~SetGlobal("OHD_oh5120_init","LOCALS",2)
~ GOTO 596
  IF ~~ THEN REPLY @1221 /* ~How is that possible?~ #76188 */ DO ~SetGlobal("OHD_oh5120_init","LOCALS",2)
~ GOTO 606
  IF ~~ THEN REPLY @1222 /* ~The hag Azothet has betrayed us!~ #76189 */ DO ~SetGlobal("OHD_oh5120_init","LOCALS",2)
~ GOTO 605
END

IF ~~ THEN BEGIN 596 // from: 595.0
  SAY @1223 /* ~The circle should contain more summoning stones.~ [OH76190] #76190 */
  IF ~~ THEN REPLY @1224 /* ~They can't have gone far. Yarrow's let nothing escape the gorge since the demon broke free.~ #76191 */ GOTO 606
  IF ~~ THEN REPLY @1225 /* ~Looks like it's missing one, two... three of them.~ #76192 */ GOTO 597
  IF ~~ THEN REPLY @1226 /* ~It appears Azothet has led you astray.~ #76193 */ GOTO 605
  IF ~  OR(3)
PartyHasItem("scrl63")
HaveSpellParty(CLERIC_RAISE_DEAD)
HaveSpellParty(CLERIC_RESURRECTION)
~ THEN REPLY @1227 /* ~Perhaps the corpse can tell us where to find them.~ #76194 */ EXIT
END

IF ~~ THEN BEGIN 597 // from: 596.1
  SAY @1228 /* ~Curse me for a fool! Azothet betrayed me!~ [OH76195] #76195 */
  IF ~~ THEN REPLY @1229 /* ~Calm yourself, Dorn. There are other possibilities.~ #76196 */ GOTO 598
  IF ~~ THEN REPLY @1230 /* ~Curse me for a fool. I followed you into this place.~ #76197 */ GOTO 600
  IF ~~ THEN REPLY @1231 /* ~It certainly looks that way.~ #76198 */ GOTO 603
END

IF ~~ THEN BEGIN 598 // from: 597.0
  SAY @1232 /* ~Such as?~ [OH76199] #76199 */
  IF ~~ THEN REPLY @1233 /* ~The gorge is far from empty. Any number of creatures could have purloined the stones.~ #76200 */ GOTO 599
END

IF ~~ THEN BEGIN 599 // from: 598.0
  SAY @1234 /* ~Hrmm. You may be right.~ [OH76201] #76201 */
  IF ~~ THEN REPLY @1235 /* ~And if I am? If one or more of the inhabitants of the gorge have the missing stones?~ #76202 */ GOTO 609
END

IF ~~ THEN BEGIN 600 // from: 597.1
  SAY @1236 /* ~You blame me for this?~ [OH76203] #76203 */
  IF ~~ THEN REPLY @1237 /* ~I blame no one but myself for the messes I get in.~ #76204 */ GOTO 603
  IF ~~ THEN REPLY @1238 /* ~I would if I didn't think doing so would earn me a sword through the gut.~ #76205 */ GOTO 604
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1239 /* ~Who else would I blame? Ur-Gothoz? Azothet? They didn't bid me join them on a fool's errand.~ #76206 */ GOTO 601
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1239 /* ~Who else would I blame? Ur-Gothoz? Azothet? They didn't bid me join them on a fool's errand.~ #76206 */ GOTO 602
END

IF ~~ THEN BEGIN 601 // from: 600.2
  SAY @1240 /* ~We'll get nowhere quarreling amongst ourselves. We must explore the gorge—find the missing stones.~ [OH76207] #76207 */
  IF ~~ THEN REPLY @1241 /* ~Agreed. It's not like leaving's an option at this point.~ #76208 */ EXIT
END

IF ~~ THEN BEGIN 602 // from: 600.3
  SAY @1242 /* ~Nor did they bid you die on one, but die you shall!~ [OH76209] #76209 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 603 // from: 600.0 597.2
  SAY @1243 /* ~It's possible Azothet didn't deliberately send us to our doom.~ [OH76210] #76210 */
  IF ~~ THEN REPLY @1244 /* ~Anything's possible.~ #76211 */ GOTO 606
END

IF ~~ THEN BEGIN 604 // from: 600.1
  SAY @1245 /* ~You choose a wise course.~ [OH76212] #76212 */
  IF ~~ THEN REPLY @1246 /* ~Better late than never.~ #76213 */ GOTO 606
END

IF ~~ THEN BEGIN 605 // from: 596.2 595.2
  SAY @1247 /* ~I never trusted the crone... But there are other possibilities.~ [OH76214] #76214 */
  IF ~~ THEN GOTO 606
END

IF ~~ THEN BEGIN 606 // from: 605.0 604.0 603.0 596.0 595.1
  SAY @1248 /* ~Perhaps the tanar'ri took the stones to prevent itself from being forced back into the Abyss.~ [OH76215] #76215 */
  IF ~~ THEN REPLY @1249 /* ~Other creatures make their home in this vile pit. Maybe they can help us?~ #76216 */ GOTO 608
  IF ~~ THEN REPLY @1250 /* ~Either that, or some of the other things down here got hold of them.~ #76217 */ GOTO 610
  IF ~~ THEN REPLY @1251 /* ~That's what I'd do.~ #76218 */ GOTO 607
END

IF ~~ THEN BEGIN 607 // from: 606.2
  SAY @1252 /* ~As would I.~ [OH76219] #76219 */
  IF ~~ THEN REPLY @1253 /* ~It appears we must find the tanar'ri.~ #76220 */ GOTO 611
END

IF ~~ THEN BEGIN 608 // from: 606.0
  SAY @1254 /* ~We'll make them help us.~ [OH76221] #76221 */
  IF ~~ THEN REPLY @1255 /* ~Let's try asking them first.~ #76222 */ GOTO 612
  IF ~~ THEN REPLY @1256 /* ~If they refuse us, they will die.~ #76223 */ GOTO 609
END

IF ~~ THEN BEGIN 609 // from: 608.1 599.0
  SAY @1257 /* ~Your understanding of the correct application of power is admirable.~ [OH76224] #76224 */
  IF ~~ THEN REPLY @1258 /* ~There's much to admire about me.~ #76225 */ GOTO 611
  IF ~~ THEN REPLY @1259 /* ~When you've got it, flaunt it over the heads of your enemies until they're lying in battered and bloody heaps.~ #76226 */ GOTO 614
  IF ~~ THEN REPLY @1260 /* ~As is yours. Let's introduce this pit to its new masters.~ #76227 */ GOTO 614
END

IF ~~ THEN BEGIN 610 // from: 606.1
  SAY @1261 /* ~The stones must still be here somewhere.~ [OH76228] #76228 */
  IF ~~ THEN REPLY @1262 /* ~Yarrow would never let them leave.~ #76229 */ GOTO 611
END

IF ~~ THEN BEGIN 611 // from: 610.0 609.0 607.0
  SAY @1263 /* ~Very well. We'll scour every inch of this gorge till we find the stones.~ [OH76230] #76230 */
  IF ~~ THEN REPLY @1264 /* ~We could just find the tanar'ri, kill it, and leave.~ #76231 */ GOTO 615
  IF ~~ THEN REPLY @1265 /* ~Sounds like fun.~ #76232 */ GOTO 613
  IF ~  OR(3)
PartyHasItem("scrl63")
HaveSpellParty(CLERIC_RAISE_DEAD)
HaveSpellParty(CLERIC_RESURRECTION)
~ THEN REPLY @1266 /* ~An impossible task. There must be an easier way.~ #76233 */ DO ~AddJournalEntry(90349,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 612 // from: 608.0
  SAY @1267 /* ~If you insist, we'll let them think they have a choice. But one way or another, I will have the answers I seek.~ [OH76234] #76234 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 613 // from: 611.1
  SAY @1268 /* ~It's not like we've any other option.~ [OH76235] #76235 */
  IF ~~ THEN REPLY @1269 /* ~What you say is true. And also terribly depressing. Well, let's get on with it, then.~ #76236 */ DO ~AddJournalEntry(90348,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 614 // from: 609.1
  SAY @1270 /* ~Hah! I admire your spirit, <CHARNAME>. You make good company for one such as me.~ [OH76237] #76237 */
  IF ~~ THEN REPLY @1271 /* ~The gorge awaits.~ #76238 */ EXIT
END

IF ~~ THEN BEGIN 615 // from: 611.0
  SAY @1272 /* ~And lose my chance to rid myself of Ur-Gothoz? No. We'll find the tanar'ri and take its stygian blade, to be sure. But only for use in the ritual.~ [OH76239] #76239 */
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1273 /* ~This fool's quest of yours will be both our ends.~ #76240 */ GOTO 617
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1273 /* ~This fool's quest of yours will be both our ends.~ #76240 */ GOTO 618
  IF ~~ THEN REPLY @1274 /* ~Well said. I knew you'd see it my way.~ #76241 */ GOTO 616
END

IF ~~ THEN BEGIN 616 // from: 615.2
  SAY @1275 /* ~I see it our way. Let's waste no more time in this place.~ [OH76242] #76242 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 617 // from: 615.0
  SAY @1276 /* ~You'll see how foolish my quest is when we've got the summoning stones and the abyssal blade.~ [OH76243] #76243 */
  IF ~~ THEN REPLY @1277 /* ~I can't wait. Let's go see what the gorge has to offer us.~ #76244 */ EXIT
END

IF ~~ THEN BEGIN 618 // from: 615.1
  SAY @1278 /* ~I may be on a fool's quest, but your fool's tongue has sealed your doom!~ [OH76245] #76245 */
  IF ~~ THEN DO ~AddJournalEntry(90350,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 619 // from: 622.1
  SAY @1279 /* ~Your circle is incomplete, druid. Where are the summoning stones?~ [OH76250] #76250 */
  IF ~~ THEN REPLY @1280 /* ~I seek your missing summoning stones.~ #76253 */ EXTERN ~OHDVERN~ 11
  IF ~~ THEN REPLY @1281 /* ~I'll get back to you on that.~ #76254 */ EXIT
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1282 /* ~If you wish to continue breathing, you'll tell me where to find the stones to complete your summoning circle.~ #76255 */ EXTERN ~OHDVERN~ 8
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1282 /* ~If you wish to continue breathing, you'll tell me where to find the stones to complete your summoning circle.~ #76255 */ EXTERN ~OHDVERN~ 6
END

IF ~~ THEN BEGIN 620 // from:
  SAY @1283 /* ~Then return to the Hell from whence you came!~ [OH76267] #76267 */
  IF ~~ THEN DO ~AddJournalEntry(76266,INFO)
ActionOverride("ohdvern",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 621 // from:
  SAY @1284 /* ~Don't play games with me, druid. Where are the stones of summoning?~ [OH76273] #76273 */
  IF ~~ THEN EXTERN ~OHDVERN~ 11
END

IF ~~ THEN BEGIN 622 // from:
  SAY @1285 /* ~You came here willingly, <CHARNAME>. No one put a sword to your throat.~ [OH76278] #76278 */
  IF ~~ THEN REPLY @1286 /* ~I came here willingly, and I'll leave the same way—the sooner, the better. Now, druid, where can we find the circle's stones?~ #76279 */ EXTERN ~OHDVERN~ 11
  IF ~~ THEN REPLY @1287 /* ~I sort of wish someone had. Then I'd have an excuse.~ #76280 */ GOTO 619
  IF ~~ THEN REPLY @1288 /* ~I came here seeking power and fortune. Thus far, I've been disappointed.~ #76281 */ GOTO 623
END

IF ~~ THEN BEGIN 623 // from: 622.2
  SAY @1289 /* ~I share your disappointment, but trust our current circumstances are but a fleeting setback. Now, druid—where are the summoning stones?~ [OH76284] #76284 */
  IF ~~ THEN EXTERN ~OHDVERN~ 11
END

IF ~~ THEN BEGIN 624 // from:
  SAY @1290 /* ~He died.~ [OH76301] #76301 */
  IF ~~ THEN REPLY @1291 /* ~Obviously. But he might have done something between opening the portal and dying.~ #76302 */ GOTO 625
END

IF ~~ THEN BEGIN 625 // from: 624.0
  SAY @1292 /* ~And what if he did? All that matters now is where we can find the stones.~ [OH76303] #76303 */
  IF ~~ THEN REPLY @1293 /* ~We'll find them faster if you let him finish his story. Go on, druid.~ #76304 */ EXTERN ~OHDVERN~ 16
END

IF ~~ THEN BEGIN 626 // from:
  SAY @1294 /* ~The Abyss take you both! Enough stories—tell us where we can find the stones!~ [OH76311] #76311 */
  IF ~~ THEN EXTERN ~OHDVERN~ 23
END

IF ~~ THEN BEGIN 627 // from:
  SAY @1295 /* ~Tell us where we can find the stones, druid, or I'll return you to the Hell from whence you came!~ [OH76330] #76330 */
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1296 /* ~Dorn here is clearly another matter.~ #76331 */ EXTERN ~OHDVERN~ 25
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1296 /* ~Dorn here is clearly another matter.~ #76331 */ EXTERN ~OHDVERN~ 6
END

IF ~~ THEN BEGIN 628 // from:
  SAY @1297 /* ~I weary of this druid. Come, <CHARNAME>. The sooner we collect the stones, the sooner we can be free of this place.~ [OH76365] #76365 */
  IF ~~ THEN DO ~AddJournalEntry(90346,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 629 // from:
  SAY @1298 /* ~The nereid's mind is broken. We've no time for this nonsense.~ [OH76378] #76378 */
  IF ~~ THEN REPLY @1299 /* ~She may yet be able to help us.~ #76379 */ EXTERN ~OHDWNTRB~ 7
  IF ~~ THEN REPLY @1300 /* ~You're right. Perhaps she'll be more forthcoming some other time.~ #76380 */ EXIT
END

IF ~~ THEN BEGIN 630 // from:
  SAY @1301 /* ~I'll gut you like a fish!~ [OH76386] #76386 */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 6
END

IF ~~ THEN BEGIN 631 // from:
  SAY @1302 /* ~Give us the stones, nereid.~ [OH76397] #76397 */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 10
END

IF ~~ THEN BEGIN 632 // from:
  SAY @1303 /* ~We've wasted enough time with this nereid's drivel. Where can we find the stones?~ [OH76398] #76398 */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 10
END

IF ~~ THEN BEGIN 633 // from:
  SAY @1304 /* ~Tell us where to find the stones, or I swear your stream will run warm and red with your blood!~ [OH76415] #76415 */
  IF ~~ THEN REPLY @1305 /* ~You'd better tell him, Winterbrook. You've suffered enough in this cursed place. I'd not see you endure more.~ #76416 */ EXTERN ~OHDWNTRB~ 26
  IF ~~ THEN REPLY @1306 /* ~Do nereids bleed red?~ #76417 */ GOTO 635
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,15,CHR)
~ THEN REPLY @1307 /* ~Listen to the half-orc, nereid. My patience is at an end.~ #76418 */ EXTERN ~OHDWNTRB~ 13
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1307 /* ~Listen to the half-orc, nereid. My patience is at an end.~ #76418 */ EXTERN ~OHDWNTRB~ 16
END

IF ~~ THEN BEGIN 634 // from:
  SAY @1308 /* ~You should have given us the stones, nereid. You've brought this on yourself!~ [OH76422] #76422 */
  IF ~~ THEN DO ~SetGlobal("OHD_WINTERB_HOSTILE","OH5200",1)
Attack("ohdwntrb")
ActionOverride("ohdwntrb",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 635 // from: 633.1
  SAY @1309 /* ~In a moment, you'll have an answer!~ [OH76423] #76423 */
  IF ~~ THEN DO ~SetGlobal("OHD_WINTERB_HOSTILE","OH5200",1)
Attack("ohdwntrb")
ActionOverride("ohdwntrb",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 636 // from:
  SAY @1310 /* ~She mocks us, <CHARNAME>. You cannot allow this insolence to go unpunished.~ [OH76425] #76425 */
  IF ~~ THEN REPLY @1311 /* ~Nor shall I.~ #76426 */ EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 637 // from: 645.2
  SAY @1312 /* ~Finally!~ [OH76432] #76432 */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 638 // from:
  SAY @1313 /* ~This discussion makes a mockery of our quest. Where is the stone, woman?~ [OH76441] #76441 */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 19
END

IF ~~ THEN BEGIN 639 // from:
  SAY @1314 /* ~What? I'm looking at her like I would anything else.~ [OH76462] #76462 */
  IF ~~ THEN REPLY @1315 /* ~Exactly. It's unnerving.~ #76463 */ GOTO 640
END

IF ~~ THEN BEGIN 640 // from: 639.0
  SAY @1316 /* ~Well, where would you have me look?~ [OH76464] #76464 */
  IF ~~ THEN REPLY @1317 /* ~Elsewhere. Just let me talk to Winterbrook for a moment or two.~ #76465 */ GOTO 641
END

IF ~~ THEN BEGIN 641 // from: 640.0
  SAY @1318 /* ~You'll have me closing my eyes next.~ [OH76466] #76466 */
  IF ~~ THEN REPLY @1319 /* ~Hopefully, it won't come to that. Winterbrook, you were telling us about the summoning stones?~ #76467 */ EXTERN ~OHDWNTRB~ 24
END

IF ~~ THEN BEGIN 642 // from:
  SAY @1320 /* ~Ice melts, blood dries, but steel is eternal!~ [OH76470] #76470 */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 643 // from:
  SAY @1321 /* ~Servant?~ [OH76478] #76478 */
  IF ~~ THEN REPLY @1322 /* ~Please, Winterbrook. Without the stone, Resurrection Gorge is doomed.~ #76479 */ EXTERN ~OHDWNTRB~ 30
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY @1323 /* ~I'll admit, any picture with Dorn in it will not be a portrait of the entirely trustworthy. But in this instance, I beseech you, for your and the sake of all who live in or near the gorge, please, give us the stone. ~ #76480 */ GOTO 644
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1323 /* ~I'll admit, any picture with Dorn in it will not be a portrait of the entirely trustworthy. But in this instance, I beseech you, for your and the sake of all who live in or near the gorge, please, give us the stone. ~ #76480 */ EXTERN ~OHDWNTRB~ 38
  IF ~  CheckStatLT(Player1,12,CHR)
!Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY @1324 /* ~What you believe is irrelevant. We need the stone. Give it to us or I'll let Dorn have his way with you.~ #76481 */ EXTERN ~OHDWNTRB~ 49
  IF ~  CheckStatLT(Player1,12,CHR)
Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY @1324 /* ~What you believe is irrelevant. We need the stone. Give it to us or I'll let Dorn have his way with you.~ #76481 */ EXTERN ~OHDWNTRB~ 63
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY @1324 /* ~What you believe is irrelevant. We need the stone. Give it to us or I'll let Dorn have his way with you.~ #76481 */ EXTERN ~OHDWNTRB~ 38
END

IF ~~ THEN BEGIN 644 // from: 643.1
  SAY @1325 /* ~Servant?!~ [OH88475] #88475 */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 36
END

IF ~~ THEN BEGIN 645 // from:
  SAY @1326 /* ~Have you lost your mind, <CHARNAME>? Are you truly going to argue with this madwoman over the preferences of an inanimate object?~ [OH76516] #76516 */
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY @1327 /* ~He's got a point, Winterbrook. We need the stone to save the gorge. Will you help us?~ #76517 */ EXTERN ~OHDWNTRB~ 49
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1327 /* ~He's got a point, Winterbrook. We need the stone to save the gorge. Will you help us?~ #76517 */ EXTERN ~OHDWNTRB~ 46
  IF ~~ THEN REPLY @1328 /* ~No. I'm done talking.~ #76518 */ GOTO 637
END

IF ~~ THEN BEGIN 646 // from:
  SAY @1329 /* ~My blade grows uneasy in its sheath, <CHARNAME>. How much longer are we going to indulge this madwoman's lunacy?~ [OH76541] #76541 */
  IF ~  CheckStatLT(Player1,15,CHR)
!Global("UHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY @1330 /* ~Please, Winterbrook. We need your help. Give us the stone.~ #76542 */ EXTERN ~OHDWNTRB~ 49
  IF ~  CheckStatLT(Player1,15,CHR)
Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY @1330 /* ~Please, Winterbrook. We need your help. Give us the stone.~ #76542 */ EXTERN ~OHDWNTRB~ 63
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1330 /* ~Please, Winterbrook. We need your help. Give us the stone.~ #76542 */ EXTERN ~OHDWNTRB~ 46
  IF ~~ THEN REPLY @1331 /* ~No longer. My patience with you is at an end, nereid.~ #76543 */ EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 647 // from:
  SAY @1332 /* ~Curse you, <CHARNAME>!~ [OH76549] #76549 */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 648 // from:
  SAY @1333 /* ~"Be reasonable"? You're pathetic, <CHARNAME>. ~ [OH76560] #76560 */
  IF ~~ THEN REPLY @1334 /* ~The nereid's suffered much, but I believe there's still a spark of her former self that might be willing to assist us.~ #76561 */ EXTERN ~OHDWNTRB~ 50
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY @1335 /* ~I've been called worse by better than you, Dorn.~ #76562 */ GOTO 660
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1335 /* ~I've been called worse by better than you, Dorn.~ #76562 */ GOTO 649
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY @1336 /* ~Say that again, Dorn. Say it again and see what reward it gets you.~ #76563 */ EXTERN ~OHDWNTRB~ 54
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1336 /* ~Say that again, Dorn. Say it again and see what reward it gets you.~ #76563 */ GOTO 651
END

IF ~~ THEN BEGIN 649 // from: 648.2
  SAY @1337 /* ~You seriously believe this wretched creature offers anything but frustration, obfuscation, and distraction?~ [OH76565] #76565 */
  IF ~~ THEN REPLY @787 /* ~I do.~ #75121 */ EXTERN ~OHDWNTRB~ 51
  IF ~~ THEN REPLY @1338 /* ~Not really, no.~ #76566 */ GOTO 650
  IF ~~ THEN REPLY @1339 /* ~I believe she'll offer us what we want, one way or the other. Additionally, I'd like to say that the vocabulary book you picked up has really been making a difference.~ #76567 */ GOTO 651
END

IF ~~ THEN BEGIN 650 // from: 649.1
  SAY @1340 /* ~Then why do you allow her to distract us from our goal?~ [OH76572] #76572 */
  IF ~~ THEN REPLY @1341 /* ~I had hoped she might aid us in reaching it.~ #76573 */ GOTO 652
  IF ~~ THEN REPLY @1342 /* ~Hope springs eternal in the <PRO_RACE> breast.~ #76574 */ GOTO 651
  IF ~~ THEN REPLY @1343 /* ~She'll distract us no longer.~ #76575 */ EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 651 // from: 650.1 649.2 648.4
  SAY @1344 /* ~You must know there can be no reasoning with this madwoman.~ [OH76576] #76576 */
  IF ~~ THEN REPLY @1345 /* ~That's no reason not to try.~ #76577 */ GOTO 652
  IF ~~ THEN REPLY @1346 /* ~You're right. Take your sword and talk some sense into her.~ #76578 */ EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 652 // from: 651.0 650.0
  SAY @1347 /* ~You're madder than she is if you think she'll willingly help us.~ [OH76579] #76579 */
  IF ~~ THEN REPLY @1348 /* ~I seek only to prevent unnecessary bloodshed—either hers or ours.~ #76580 */ GOTO 654
  IF ~~ THEN REPLY @1349 /* ~I am here in the shadows of Resurrection Gorge, so there's certainly an argument to be made that that's the case.~ #76581 */ GOTO 653
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY @1350 /* ~Willingly or not, she will help us. Won't you, Winterbrook?~ #76582 */ EXTERN ~OHDWNTRB~ 53
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1350 /* ~Willingly or not, she will help us. Won't you, Winterbrook?~ #76582 */ EXTERN ~OHDWNTRB~ 46
END

IF ~~ THEN BEGIN 653 // from: 659.0 652.1
  SAY @1351 /* ~Enough of this pointless nonsense! If she won't hand over the stone, I'll simply have to take it!~ [OH76583] #76583 */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 654 // from: 652.0
  SAY @1352 /* ~"Unnecessary bloodshed"? What happened to you, <CHARNAME>? I believed you a being of strength and power, a worthy ally. Instead you play dither with fools.~ [OH76584] #76584 */
  IF ~  CheckStatLT(Player1,14,STR)
~ THEN REPLY @1353 /* ~It was your infatuation with strength and power that brought us here, Dorn. I may share your fate, but I'll not repeat your mistakes.~ #76585 */ GOTO 656
  IF ~  CheckStatGT(Player1,13,STR)
~ THEN REPLY @1353 /* ~It was your infatuation with strength and power that brought us here, Dorn. I may share your fate, but I'll not repeat your mistakes.~ #76585 */ GOTO 655
  IF ~~ THEN REPLY @1354 /* ~You'll see your belief justified with blood, half-orc!~ #76586 */ GOTO 661
  IF ~~ THEN REPLY @1355 /* ~You're right, Dorn. But the dithering is done.~ #76587 */ EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 655 // from: 654.1
  SAY @1356 /* ~Keep talking, <PRO_RACE>, and you'll experience a wholly different fate, I promise you that.~ [OH76588] #76588 */
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY @1357 /* ~We'll deal with this another time. Winterbrook. The stone. We need it.~ #76589 */ EXTERN ~OHDWNTRB~ 57
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @1357 /* ~We'll deal with this another time. Winterbrook. The stone. We need it.~ #76589 */ EXTERN ~OHDWNTRB~ 46
END

IF ~~ THEN BEGIN 656 // from: 654.0
  SAY @1358 /* ~You'll not live to repeat the mistake you just made.~ [OH76590] #76590 */
  IF ~~ THEN GOTO 661
END

IF ~~ THEN BEGIN 657 // from:
  SAY @1359 /* ~You had your chance with <CHARNAME>, nereid. Now you'll see how Dorn Il-Khan deals with those who would stand 'twixt him and his goals.~ [OH76593] #76593 */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 658 // from:
  SAY @1360 /* ~Fortunately, I've no such misgivings.~ [OH76609] #76609 */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 659 // from:
  SAY @1361 /* ~A joke? You waste our time telling jokes to this pathetic witch?~ [OH76610] #76610 */
  IF ~~ THEN GOTO 653
END

IF ~~ THEN BEGIN 660 // from: 648.1
  SAY @1362 /* ~Better than me?~ [OH76615] #76615 */
  IF ~~ THEN GOTO 661
END

IF ~~ THEN BEGIN 661 // from: 660.0 656.0 654.2
  SAY @1363 /* ~I'll see your guts on the ground, <CHARNAME>.~ [OH76616] #76616 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 662 // from:
  SAY @1364 /* ~The stream can have my toes—I'll have your head!~ [OH76618] #76618 */
  IF ~~ THEN DO ~SetGlobal("OHD_WINTERB_HOSTILE","OH5200",1)
Attack("ohdwntrb")
ActionOverride("ohdwntrb",Enemy())
ActionOverride("ohdwntrb",Attack([PC]))
~ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_fil_dialog","OH5200",1)
~ THEN BEGIN 663 // from:
  SAY @1365 /* ~Faerie dragons. This will be aggravating.~ [OH76628] #76628 */
  IF ~~ THEN REPLY @1366 /* ~They're harmless.~ #76629 */ EXTERN ~OHDTMFIL~ 1
  IF ~~ THEN REPLY @1367 /* ~Come on, they're cute. That one has a puffy tail!~ #76630 */ EXTERN ~OHDTMFIL~ 1
  IF ~~ THEN REPLY @1368 /* ~You're right. Just looking at them gives me a headache.~ #76631 */ EXTERN ~OHDTMFIL~ 0
END

IF ~~ THEN BEGIN 664 // from:
  SAY @1369 /* ~Die, dragon!~ [OH76713] #76713 */
  IF ~~ THEN DO ~SetGlobal("OHD_fil_hostile","OH5200",2)
ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 665 // from:
  SAY @1370 /* ~I'll strip the scales from your body, you featherless cockatiel!~ [OH76767] #76767 */
  IF ~~ THEN DO ~SetGlobal("OHD_fil_hostile","OH5200",1)
ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 666 // from:
  SAY @1371 /* ~Cease your endless blathering, <CHARNAME>! We're not here to discuss creature comforts with a dragon! We need to find the summoning stones!~ [OH76787] #76787 */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 47
END

IF ~~ THEN BEGIN 667 // from:
  SAY @1372 /* ~We shall be rewarded for it.~ [OH76820] #76820 */
  IF ~~ THEN REPLY @1373 /* ~I hope you're right, Dorn. For both our sakes.~ #76821 */ GOTO 670
  IF ~~ THEN REPLY @1374 /* ~Your optimism is as impressive as it is inexplicable.~ #76822 */ GOTO 671
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY @1375 /* ~It better, Dorn. For your sake.~ #76823 */ GOTO 669
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1375 /* ~It better, Dorn. For your sake.~ #76823 */ GOTO 668
END

IF ~~ THEN BEGIN 668 // from: 667.3
  SAY @1376 /* ~Your threats ring hollow in this place, <CHARNAME>. Let us do what we came here to do. If either of us are dissatisfied with the result, we can take the matter up then.~ [OH76824] #76824 */
  IF ~~ THEN REPLY @1377 /* ~Agreed. Dragon, what do you know of the stones?~ #76825 */ EXTERN ~OHDTMFIL~ 43
END

IF ~~ THEN BEGIN 669 // from: 676.2 676.0 675.0 672.3 667.2
  SAY @1378 /* ~You go too far, <PRO_RACE>. Here is your reward!~ [OH76826] #76826 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 670 // from: 677.0 667.0
  SAY @1379 /* ~What can you tell us of the summoning stones, dragon?~ [OH76827] #76827 */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 52
END

IF ~~ THEN BEGIN 671 // from: 667.1
  SAY @1380 /* ~I will prevail against whatever this foul pit throws at us, of that I am certain. Can you not say the same, <CHARNAME>?~ [OH76828] #76828 */
  IF ~~ THEN REPLY @1381 /* ~The only certainty I have is that I shall do my best to conquer the challenges ahead.~ #76829 */ GOTO 672
  IF ~~ THEN REPLY @1382 /* ~I can say many things, Dorn, but for now I'd rather listen to Fil tell us about the stones.~ #76830 */ EXTERN ~OHDTMFIL~ 52
  IF ~~ THEN REPLY @1383 /* ~Your certainty is but a shadow of my own, Dorn. Nothing can thwart us, so long as we work together.~ #76831 */ GOTO 673
END

IF ~~ THEN BEGIN 672 // from: 671.0
  SAY @1384 /* ~"I'll do my best"? Only cowards and failures talk like that. Which are you, <CHARNAME>? ~ [OH76832] #76832 */
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY @1385 /* ~Neither, at least not yet. But only a fool ignores the possibility of failure.~ #76833 */ GOTO 675
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1385 /* ~Neither, at least not yet. But only a fool ignores the possibility of failure.~ #76833 */ GOTO 674
  IF ~~ THEN REPLY @1386 /* ~What you call cowardice and failure I call wisdom and survival, Dorn.~ #76834 */ GOTO 676
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,13,CHR)
~ THEN REPLY @1387 /* ~Draw your blade and find out, half-orc.~ #76835 */ GOTO 669
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY @1387 /* ~Draw your blade and find out, half-orc.~ #76835 */ GOTO 677
END

IF ~~ THEN BEGIN 673 // from: 671.2
  SAY @1388 /* ~Hah! That's who I was looking for—someone worthy to share my victories.~ [OH76836] #76836 */
  IF ~~ THEN REPLY @1389 /* ~Your greatest victory is yet to come, Dorn. Dragon, tell us what you know of the stones.~ #76837 */ EXTERN ~OHDTMFIL~ 52
END

IF ~~ THEN BEGIN 674 // from: 672.1
  SAY @1390 /* ~The greater fool dwells upon it.~ [OH76838] #76838 */
  IF ~~ THEN REPLY @1391 /* ~We're neither of us fools. Dragon, do you know anything of the stones we seek?~ #76839 */ EXTERN ~OHDTMFIL~ 52
END

IF ~~ THEN BEGIN 675 // from: 687.2 672.0
  SAY @1392 /* ~You call me a fool?~ [OH76840] #76840 */
  IF ~~ THEN GOTO 669
END

IF ~~ THEN BEGIN 676 // from: 672.2
  SAY @1393 /* ~Your faltering rationalizations sicken me, <PRO_RACE>.~ [OH76841] #76841 */
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,13,CHR)
~ THEN REPLY @1394 /* ~No more than your pigheaded obstinacy sickens me, half-orc.~ #76842 */ GOTO 669
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY @1394 /* ~No more than your pigheaded obstinacy sickens me, half-orc.~ #76842 */ GOTO 677
  IF ~~ THEN REPLY @1395 /* ~I have a cure for that particularly sickness. It's a bit radical, but you clearly have little use for your ears.~ #76843 */ GOTO 669
END

IF ~~ THEN BEGIN 677 // from: 676.1 672.4
  SAY @1396 /* ~Keep talking, Bhaalspawn, and your sickness may come to an abrupt and bloody end.~ [OH76844] #76844 */
  IF ~~ THEN REPLY @1397 /* ~I look forward to it, Dorn. But if you're not of a mind to play surgeon now, let us attend to the matter at hand.~ #76845 */ GOTO 670
END

IF ~~ THEN BEGIN 678 // from:
  SAY @1398 /* ~That's no business of this dragon's or anyone else.~ [OH76846] #76846 */
  IF ~~ THEN REPLY @1399 /* ~I'm sorry, Dorn, but I believe Fil here will respond best to forthrightness.~ #76847 */ EXTERN ~OHDTMFIL~ 63
END

IF ~~ THEN BEGIN 679 // from: 681.2
  SAY @1400 /* ~Your wings won't save you from my wrath, dragon!~ [OH76860] #76860 */
  IF ~~ THEN DO ~SetGlobal("OHD_fil_hostile","OH5200",1)
ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 680 // from:
  SAY @1401 /* ~My blade will open him nose-tip to tail!~ [OH76861] #76861 */
  IF ~~ THEN REPLY @1402 /* ~That's rather a bleak philosophy, don't you think?~ #86862 */ EXTERN ~OHDTMFIL~ 73
END

IF ~~ THEN BEGIN 681 // from:
  SAY @1403 /* ~You try to extort Dorn Il-Khan? I'll have your skin for boots!~ [OH76866] #76866 */
  IF ~~ THEN REPLY @1404 /* ~Calm yourself, Dorn. It's only fair that we offer something in exchange for the stones.~ #76867 */ DO ~SetGlobal("OHD_extort","LOCALS",1)
~ GOTO 682
  IF ~~ THEN REPLY @1405 /* ~Come, Dorn. There's barely enough skin there to cover even one of those massive hoofs you call feet.~ #76868 */ DO ~SetGlobal("OHD_extort","LOCALS",1)
~ GOTO 683
  IF ~~ THEN REPLY @1406 /* ~Take it. This dragon's of no use to us. But a warning: I've heard faerie dragon skin is often rife with ticks.~ #76869 */ DO ~SetGlobal("OHD_extort","LOCALS",1)
~ GOTO 679
END

IF ~~ THEN BEGIN 682 // from: 681.0
  SAY @1407 /* ~Fair? You would speak to me of fair while this dragon tries to steal what's rightfully ours?~ [OH76870] #76870 */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 69
END

IF ~~ THEN BEGIN 683 // from: 681.1
  SAY @1408 /* ~You call my feet big?~ [OH76874] #76874 */
  IF ~~ THEN REPLY @1409 /* ~All the better to kick people to death with, granny.~ #76875 */ EXTERN ~OHDTMFIL~ 71
  IF ~~ THEN REPLY @1410 /* ~I knew an old lady who lived in a shoe. That shoe couldn't contain your feet.~ #76876 */ EXTERN ~OHDTMFIL~ 72
  IF ~~ THEN REPLY @1411 /* ~They're large and mighty, just like the rest of you.~ #76877 */ EXTERN ~OHDTMFIL~ 71
END

IF ~~ THEN BEGIN 684 // from:
  SAY @1412 /* ~You'll find out how big when they stomp you into a crimson paste!~ [OH76881] #76881 */
  IF ~~ THEN REPLY @1413 /* ~I've seen it happen, Fil, and to bigger creatures than you. Where are the stones?~ #76882 */ EXTERN ~OHDTMFIL~ 52
END

IF ~~ THEN BEGIN 685 // from:
  SAY @1414 /* ~You'll make a fine meal, dragon.~ [OH76892] #76892 */
  IF ~~ THEN DO ~SetGlobal("OHD_fil_hostile","OH5200",1)
ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 686 // from: 688.0
  SAY @1415 /* ~If you attempt to cheat us, dragon, I promise you'll regret it.~ [OH76918] #76918 */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 87
END

IF ~~ THEN BEGIN 687 // from:
  SAY @1416 /* ~She said there would be some obstacles.~ [OH76921] #76921 */
  IF ~~ THEN REPLY @1417 /* ~If she hadn't promised you freedom from Ur-Gothoz, I'd say she was a mistress of understatement.~ #76922 */ GOTO 688
  IF ~~ THEN REPLY @1418 /* ~She got that right. I hope she got the bit about binding Ur-Gothoz right, too. Let's do this.~ #76923 */ EXTERN ~OHDTMFIL~ 86
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY @1419 /* ~A fallen tree is an obstacle. Bargaining with a dragonfae is foolishness. She has turned us into fools, Dorn!~ #76924 */ GOTO 675
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY @1419 /* ~A fallen tree is an obstacle. Bargaining with a dragonfae is foolishness. She has turned us into fools, Dorn!~ #76924 */ GOTO 688
END

IF ~~ THEN BEGIN 688 // from: 687.3 687.0
  SAY @1420 /* ~Let's find these crystals and get this over with.~ [OH76925] #76925 */
  IF ~~ THEN GOTO 686
END

IF ~~ THEN BEGIN 689 // from:
  SAY @1421 /* ~I'll tear your wings from your body, you reptilian vermin!~ [OH76946] #76946 */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 95
END

IF ~~ THEN BEGIN 690 // from:
  SAY @1422 /* ~Don't be a fool, <CHARNAME>. Give the dragon the crystals now and we'll never get the stone.~ [OH76963] #76963 */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 101
END

IF ~~ THEN BEGIN 691 // from: 692.2
  SAY @1423 /* ~I'll give you a Great and Magnificent death, you flapping rodent!~ [OH76992] #76992 */
  IF ~~ THEN DO ~ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 692 // from:
  SAY @1424 /* ~You'll let this rodent live?~ [OH77004] #77004 */
  IF ~~ THEN REPLY @1425 /* ~Indulge your bloodlust with some other creature, Dorn. There's plenty here more worthy of your blade.~ #77005 */ EXTERN ~OHDTMFIL~ 125
  IF ~~ THEN REPLY @1426 /* ~Oh, let the dragon go, Dorn. It's irritating, but it's harmless.~ #77006 */ EXTERN ~OHDTMFIL~ 116
  IF ~~ THEN REPLY @1427 /* ~Yeah, now that I think about it, it doesn't really inspire, does it? Kill the dragon; let's see if that feels better.~ #77007 */ GOTO 691
END

IF ~~ THEN BEGIN 693 // from:
  SAY @1428 /* ~I give you a swift death, you windy snake!~ [OH77016] #77016 */
  IF ~~ THEN DO ~ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 694 // from:
  SAY @1429 /* ~But my sword will go right in!~ [OH77025] #77025 */
  IF ~~ THEN DO ~ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 695 // from:
  SAY @1430 /* ~I'll see you dance at the end of my blade, demon!~ [OH77038] #77038 */
  IF ~~ THEN DO ~ActionOverride("ohdxach",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 696 // from:
  SAY @1430 /* ~I'll see you dance at the end of my blade, demon!~ [OH77038] #77038 */
  IF ~~ THEN EXTERN ~OHDXACH~ 1
END

IF ~~ THEN BEGIN 697 // from:
  SAY @1431 /* ~Then pay the price!~ [OH77045] #77045 */
  IF ~~ THEN EXTERN ~OHDXACH~ 5
END

IF ~~ THEN BEGIN 698 // from:
  SAY @1432 /* ~Back to the Abyss with you, tanar'ri!~ [OH77051] #77051 */
  IF ~~ THEN EXTERN ~OHDXACH~ 1
END

IF ~~ THEN BEGIN 699 // from: 707.2 707.0 701.3 701.1
  SAY @1433 /* ~If he has power to offer, why wouldn't I take it?~ [OH77057] #77057 */
  IF ~~ THEN REPLY @1434 /* ~Where do I begin?~ #77058 */ GOTO 700
  IF ~~ THEN REPLY @1435 /* ~Because you're not fool enough to take a demon at its word.~ #77059 */ GOTO 706
  IF ~~ THEN REPLY @1436 /* ~Do I really need to explain this to you? Are you truly that stupid?~ #77060 */ GOTO 704
END

IF ~~ THEN BEGIN 700 // from: 699.0
  SAY @1437 /* ~Do us all a favor, and don't.~ [OH77061] #77061 */
  IF ~~ THEN EXTERN ~OHDXACH~ 9
END

IF ~~ THEN BEGIN 701 // from:
  SAY @1438 /* ~What do you have to offer me?~ [OH77062] #77062 */
  IF ~~ THEN REPLY @1439 /* ~Dorn, no! You cannot trust a tanar'ri.~ #77063 */ GOTO 705
  IF ~~ THEN REPLY @1440 /* ~Seriously? You're ready to go through this all again?~ #77064 */ GOTO 699
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,13,CHR)
~ THEN REPLY @1441 /* ~Il-Khan, you weak-minded fool!~ #77065 */ GOTO 707
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY @1441 /* ~Il-Khan, you weak-minded fool!~ #77065 */ GOTO 699
END

IF ~~ THEN BEGIN 702 // from:
  SAY @1442 /* ~The abyssal blade! I need that sword if I'm to bind Ur-Gothoz to my will.~ [OH77067] #77067 */
  IF ~~ THEN REPLY @1443 /* ~You'll also need the missing summoning stones.~ #77068 */ EXTERN ~OHDXACH~ 10
END

IF ~~ THEN BEGIN 703 // from:
  SAY @1444 /* ~The tanar'ri tells it true. A demon's oath, once made, cannot be broken—not by the demon, at any rate.~ [OH77072] #77072 */
  IF ~~ THEN REPLY @1445 /* ~And you'll swear an oath? You'll give us the sword and all the summoning stones you possess?~ #77073 */ EXTERN ~OHDXACH~ 12
END

IF ~~ THEN BEGIN 704 // from: 699.2
  SAY @1446 /* ~You call me stupid, <CHARNAME>?~ [OH77075] #77075 */
  IF ~~ THEN GOTO 708
END

IF ~~ THEN BEGIN 705 // from: 701.0
  SAY @1447 /* ~I trust it not at all, but I would see what it has to offer.~ [OH77077] #77077 */
  IF ~~ THEN REPLY @1448 /* ~You bargained with another demon once, and look where it got you.~ #77078 */ GOTO 706
END

IF ~~ THEN BEGIN 706 // from: 705.0 699.1
  SAY @1449 /* ~It got me the power I needed to slay my foes and triumph over all who would oppose me.~ [OH77079] #77079 */
  IF ~~ THEN EXTERN ~OHDXACH~ 14
END

IF ~~ THEN BEGIN 707 // from: 701.2
  SAY @1450 /* ~You overstep your place, <PRO_RACE>.~ [OH77080] #77080 */
  IF ~~ THEN REPLY @1451 /* ~Only to bring you to your senses. You can't believe this demon means you anything but harm.~ #77081 */ GOTO 699
  IF ~  CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,15,CHR)
~ THEN REPLY @1452 /* ~You overstep sanity, half-orc.~ #77082 */ GOTO 708
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1452 /* ~You overstep sanity, half-orc.~ #77082 */ GOTO 699
  IF ~~ THEN REPLY @1453 /* ~You dare to tell me my place? I'll stuff your tongue down your miserable throat!~ #77083 */ GOTO 708
END

IF ~~ THEN BEGIN 708 // from: 707.3 707.1 704.0
  SAY @1454 /* ~You brought this on yourself!~ [OH77084] #77084 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 709 // from:
  SAY @1455 /* ~Wait, <CHARNAME>. I would hear what he has to say.~ [OH77096] #77096 */
  IF ~~ THEN EXTERN ~OHDXACH~ 18
END

IF ~~ THEN BEGIN 710 // from:
  SAY @1456 /* ~Compliments mean nothing to me, demon. You said you had wealth to offer.~ [OH77098] #77098 */
  IF ~~ THEN REPLY @1457 /* ~And you listened to him.~ #77099 */ EXTERN ~OHDXACH~ 24
END

IF ~~ THEN BEGIN 711 // from:
  SAY @1458 /* ~<CHARNAME>, a word?~ [OH77102] #77102 */
  IF ~~ THEN GOTO 712
END

IF ~~ THEN BEGIN 712 // from: 711.0
  SAY @1459 /* ~I'll need his sword to perform the ritual.~ [OH77103] #77103 */
  IF ~~ THEN REPLY @1460 /* ~Xachrimos! We'll also need your sword.~ #77104 */ EXTERN ~OHDXACH~ 21
END

IF ~~ THEN BEGIN 713 // from: 715.2
  SAY @1461 /* ~Die, tanar'ri! Die, that I may have your power!~ [OH77116] #77116 */
  IF ~~ THEN DO ~ActionOverride("ohdxach",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 714 // from:
  SAY @1462 /* ~How much gold?~ [OH77129] #77129 */
  IF ~~ THEN EXTERN ~OHDXACH~ 27
END

IF ~~ THEN BEGIN 715 // from:
  SAY @1463 /* ~I like the sound of that.~ [OH77131] #77131 */
  IF ~~ THEN REPLY @1464 /* ~Just remember whose mouth the sound is coming from.~ #77132 */ EXTERN ~OHDXACH~ 28
  IF ~~ THEN REPLY @1465 /* ~Use your head, Dorn. He plans to cheat us.~ #77133 */ EXTERN ~OHDXACH~ 29
  IF ~~ THEN REPLY @1466 /* ~I'd like the sound of this demon's screams more.~ #77134 */ GOTO 713
END

IF ~~ THEN BEGIN 716 // from:
  SAY @1467 /* ~What treachery is this?~ [OH77157] #77157 */
  IF ~~ THEN EXTERN ~OHDXACH~ 39
END

IF ~~ THEN BEGIN 717 // from:
  SAY @1468 /* ~No one makes a fool of Dorn Il-Khan and lives!~ [OH77167] #77167 */
  IF ~~ THEN DO ~ActionOverride("ohdxach",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 718 // from:
  SAY @1469 /* ~I'll bury your corpse under yon statue, you snake-tongued deceiver!~ [OH77168] #77168 */
  IF ~~ THEN DO ~ActionOverride("ohdxach",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 719 // from: 720.0
  SAY @1470 /* ~Feel your own blade's kiss!~ [OH77173] #77173 */
  IF ~~ THEN DO ~ActionOverride("ohdxach",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 720 // from:
  SAY @1471 /* ~The hell he does!~ [OH77175] #77175 */
  IF ~~ THEN GOTO 719
END

IF ~~ THEN BEGIN 721 // from:
  SAY @1472 /* ~We still have business in this hole, <CHARNAME>. Have you forgotten why we came here in the first place?~ [OH77188] #77188 */
  IF ~~ THEN REPLY @1473 /* ~Even if I did, I've got you here to remind me.~ #77189 */ GOTO 722
END

IF ~~ THEN BEGIN 722 // from: 721.0
  SAY @1474 /* ~Begone, dryad. When we're ready to leave, we'll summon you.~ [OH77190] #77190 */
  IF ~~ THEN EXTERN ~OHDYARR~ 93
END

IF ~~ THEN BEGIN 723 // from:
  SAY @1475 /* ~There's other rewards still to be found. Begone, dryad. Should we have need of you, we'll let you know.~ [OH77192] #77192 */
  IF ~~ THEN EXTERN ~OHDYARR~ 93
END

IF WEIGHT #40 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",2)
~ THEN BEGIN 724 // from:
  SAY @1476 /* ~<CHARNAME>, a word.~ [OH77219] #77219 */
  IF ~~ THEN REPLY @1477 /* ~What is it, Dorn?~ #77220 */ DO ~SetGlobal("OHD_ritual","OH5120",3)
~ GOTO 725
END

IF ~~ THEN BEGIN 725 // from: 724.0
  SAY @1478 /* ~The ritual requires the sacrifice of a sapient being.~ [OH77221] #77221 */
  IF ~~ THEN REPLY @1479 /* ~It's too much, Dorn. I cannot allow it.~ #77222 */ GOTO 726
  IF ~~ THEN REPLY @1480 /* ~Fortunately, we can scrounge up a few sapient beings to sacrifice.~ #77223 */ GOTO 739
  IF ~  Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY @1481 /* ~The druid who created the circle was revived. It is only fitting he die again, a victim of his own design.~ #77224 */ EXTERN ~OHDVERN~ 38
  IF ~  !Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY @1482 /* ~We could resurrect the druid who created the circle. It would be amusing to see him die twice as a victim of his own design.~ #77225 */ GOTO 751
END

IF ~~ THEN BEGIN 726 // from: 725.0
  SAY @1483 /* ~After all we've endured, you would deny me now?~ [OH77226] #77226 */
  IF ~~ THEN REPLY @1484 /* ~You want to sacrifice an innocent life! How can you not be concerned with that?~ #77227 */ GOTO 727
  IF ~~ THEN REPLY @1485 /* ~I would have denied you earlier, but there were scheduling conflicts. You know how it goes.~ #77228 */ GOTO 729
  IF ~~ THEN REPLY @1486 /* ~Only a fool would attempt to deny you anything, Dorn. And I am no fool.~ #77229 */ GOTO 739
END

IF ~~ THEN BEGIN 727 // from: 726.0
  SAY @1487 /* ~A sapient life, not an innocent one—though it makes no difference to me either way. Nothing must stand between me and my goal.~ [OH77230] #77230 */
  IF ~~ THEN REPLY @1488 /* ~Not even me?~ #77231 */ GOTO 728
  IF ~~ THEN REPLY @1489 /* ~You have a way with words, Dorn—hammers have a similar way with anvils.~ #77232 */ GOTO 737
  IF ~~ THEN REPLY @1490 /* ~And nothing shall.~ #77233 */ GOTO 739
END

IF ~~ THEN BEGIN 728 // from: 727.0
  SAY @1491 /* ~Help me on my quest or stand aside, <CHARNAME>, but do not test me on this.~ [OH77234] #77234 */
  IF ~~ THEN REPLY @1492 /* ~I'm afraid you leave me little choice.~ #77235 */ GOTO 730
END

IF ~~ THEN BEGIN 729 // from: 726.1
  SAY @1493 /* ~I know how it will go if you attempt to bar my path.~ [OH77236] #77236 */
  IF ~~ THEN REPLY @1494 /* ~You leave me little choice, Dorn. I'll not allow you to slay one of my friends.~ #77237 */ GOTO 732
  IF ~~ THEN REPLY @1495 /* ~Not well for one of us, I suspect.~ #77238 */ GOTO 735
  IF ~~ THEN REPLY @1496 /* ~I have walked alongside you this far. I'll not stop now.~ #77239 */ GOTO 739
END

IF ~~ THEN BEGIN 730 // from: 736.0 728.0
  SAY @1497 /* ~And you leave me with none.~ [OH77240] #77240 */
  IF ~~ THEN GOTO 731
END

IF ~~ THEN BEGIN 731 // from: 730.0
  SAY @1498 /* ~Die!~ [OH77241] #77241 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 732 // from: 798.2 781.2 729.0
  SAY @1499 /* ~Then die in their place!~ [OH77242] #77242 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 733 // from: 795.0 778.0 740.0 735.0
  SAY @1500 /* ~Then pay the price for your obstinacy!~ [OH77243] #77243 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 734 // from: 743.0
  SAY @1501 /* ~Then join all the others who stood in my way!~ [OH77244] #77244 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 735 // from: 740.1 729.1
  SAY @1502 /* ~Choose, <CHARNAME>. Will you stand with me or against me?~ [OH77245] #77245 */
  IF ~~ THEN REPLY @1503 /* ~I can't be with you, not in this.~ #77246 */ GOTO 733
  IF ~~ THEN REPLY @1504 /* ~Left to my own devices, I'd rather stand over there, out of arm's reach.~ #77247 */ GOTO 736
  IF ~~ THEN REPLY @1505 /* ~I'm with you, of course.~ #77248 */ GOTO 739
END

IF ~~ THEN BEGIN 736 // from: 735.1
  SAY @1506 /* ~With me or against me. There are no other options.~ [OH77249] #77249 */
  IF ~~ THEN REPLY @1507 /* ~Then I'm against you. You leave me with little choice.~ #77250 */ GOTO 730
  IF ~~ THEN REPLY @1508 /* ~When you put it that way, I guess I'm with you.~ #77251 */ GOTO 739
END

IF ~~ THEN BEGIN 737 // from: 727.1
  SAY @1509 /* ~I leave the pretty words to you, <PRO_RACE>. I've other things to consider.~ [OH77252] #77252 */
  IF ~~ THEN GOTO 739
END

IF ~~ THEN BEGIN 738 // from: 798.0 781.0
  SAY @1510 /* ~Let your friends bury you, <PRO_RACE>!~ [OH77253] #77253 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 739 // from: 758.0 740.2 737.0 736.1 735.2 729.2 727.2 726.2 725.1
  SAY @1511 /* ~Who would you see die that I might gain greater power?~ [OH77254] #77254 */
  IF ~~ THEN REPLY @1512 /* ~No one. This has gone far enough.~ #77255 */ GOTO 740
  IF ~  NumInPartyGT(2)
~ THEN REPLY @1513 /* ~What if it were one of us?~ #77256 */ GOTO 741
  IF ~  CheckStatGT(Player1,14,INT)
~ THEN REPLY @1514 /* ~If all that is required is a sapient creature... perhaps we could summon one and use it for our purposes.~ #77257 */ GOTO 747
  IF ~  Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY @1515 /* ~What about Vernus?~ #77258 */ EXTERN ~OHDVERN~ 38
  IF ~  !Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY @1516 /* ~That corpse could be handy.~ #77259 */ GOTO 751
END

IF ~~ THEN BEGIN 740 // from: 739.0
  SAY @1517 /* ~You would refuse me?~ [OH77278] #77278 */
  IF ~~ THEN REPLY @1518 /* ~I must.~ #77279 */ GOTO 733
  IF ~~ THEN REPLY @1519 /* ~I don't want to, but yeah.~ #77280 */ GOTO 735
  IF ~~ THEN REPLY @1520 /* ~Of course not. We've sacrificed much to get you here; we cannot turn back now.~ #77281 */ GOTO 739
END

IF ~~ THEN BEGIN 741 // from: 752.0 739.1
  SAY @1521 /* ~Yes... an excellent idea. Instruct one of them to enter the circle, but be sure not to reveal why. Then I need only write Ur-Gothoz's name in our sacrifice's blood, and his power shall be mine.~ [OH77282] #77282 */
  IF ~~ THEN REPLY @1522 /* ~Are you sure you want to write Ur-Gothoz's name?~ #77283 */ GOTO 744
  IF ~~ THEN REPLY @1523 /* ~There goes the neighborhood. If it were a better neighborhood, I may be a little worried.~ #77284 */ GOTO 743
  IF ~~ THEN REPLY @1524 /* ~With the glabrezu's power as your own, you'll be unstoppable.~ #77285 */ EXIT
END

IF ~~ THEN BEGIN 742 // from:
  SAY @1525 /* ~Now, I need only write Ur-Gothoz's name in the druid's blood and the demon's power shall be mine.~ [OH77286] #77286 */
  IF ~~ THEN REPLY @1526 /* ~But is Ur-Gothoz's name the one you truly want to write?~ #77287 */ GOTO 744
  IF ~~ THEN REPLY @1527 /* ~There goes the neighborhood. If the neighborhood weren't in such dire repair, I'd be concerned.~ #77288 */ GOTO 743
  IF ~~ THEN REPLY @1528 /* ~It is time for the servant to become the master.~ #77289 */ GOTO 752
END

IF ~~ THEN BEGIN 743 // from: 742.1 741.1
  SAY @1529 /* ~Still your tongue and help me perform the ritual.~ [OH77290] #77290 */
  IF ~~ THEN REPLY @1530 /* ~I cannot. I will not.~ #77291 */ GOTO 734
  IF ~~ THEN REPLY @1531 /* ~Still my tongue? Your loss...~ #77292 */ GOTO 752
  IF ~~ THEN REPLY @1532 /* ~As you wish. I'll place someone within the circle.~ #77293 */ EXIT
END

IF ~~ THEN BEGIN 744 // from: 742.0 741.0
  SAY @1533 /* ~If not his, then whose?~ [OH77294] #77294 */
  IF ~~ THEN REPLY @1534 /* ~Clearly Azothet has power to rival Ur-Gothoz's own. Perhaps greater. Why not bind her to the sword?~ #77295 */ GOTO 745
  IF ~~ THEN REPLY @1535 /* ~You are right. You have lived under Ur-Gothoz's thumb for too long. It's time he pay for his treatment of you.~ #77296 */ EXIT
END

IF ~~ THEN BEGIN 745 // from: 744.0
  SAY @1536 /* ~If I did such a thing, Ur-Gothoz would surely learn of it... and reward me.~ [OH77297] #77297 */
  IF ~~ THEN REPLY @1537 /* ~Sounds like a steal of a deal to me.~ #77298 */ GOTO 746
  IF ~~ THEN REPLY @1538 /* ~But you would still be bound as his servant.~ #77299 */ GOTO 746
END

IF ~~ THEN BEGIN 746 // from: 745.1 745.0
  SAY @1539 /* ~Hrmm. This has become a... complex matter. I shall think upon it while you position someone within the circle.~ [OH77300] #77300 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 747 // from: 752.1 739.2
  SAY @1540 /* ~We could simply sacrifice one of these others.~ [OH92463] #92463 */
  IF ~~ THEN REPLY @1541 /* ~I have uses for them. And we have the ability to find another sapient.~ #92468 */ GOTO 748
  IF ~~ THEN REPLY @1542 /* ~Could. But won't.~ #92469 */ GOTO 749
  IF ~~ THEN REPLY @1543 /* ~You defy me, half-orc?~ #92470 */ GOTO 750
END

IF ~~ THEN BEGIN 748 // from: 751.0 747.0
  SAY @1544 /* ~Very well. Let it be done.~ [OH92464] #92464 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 749 // from: 751.1 747.1
  SAY @1545 /* ~Such skittishness is beneath you, <CHARNAME>. But very well. We shall do as you suggest.~ [OH92465] #92465 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 750 // from: 751.2 747.2
  SAY @1546 /* ~I think you value these others more highly than they deserve. But if you would see them spared, so be it. We will do as you suggest.~ [OH92466] #92466 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 751 // from: 752.3 739.4 725.3
  SAY @1540 /* ~We could simply sacrifice one of these others.~ [OH92463] #92463 */
  IF ~~ THEN REPLY @1547 /* ~I have uses for them, and we have the ability to create another candidate.~ #92471 */ GOTO 748
  IF ~~ THEN REPLY @1542 /* ~Could. But won't.~ #92469 */ GOTO 749
  IF ~~ THEN REPLY @1543 /* ~You defy me, half-orc?~ #92470 */ GOTO 750
END

IF WEIGHT #41 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",3)
~ THEN BEGIN 752 // from: 743.1 742.2
  SAY @1548 /* ~We still need a sapient being within the circle before I can begin the ritual.~ [OH77301] #77301 */
  IF ~  NumInPartyGT(2)
~ THEN REPLY @1513 /* ~What if it were one of us?~ #77302 */ GOTO 741
  IF ~  CheckStatGT(Player1,14,INT)
~ THEN REPLY @1514 /* ~If all that is required is a sapient creature... perhaps we could summon one and use it for our purposes.~ #77303 */ GOTO 747
  IF ~  Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY @1515 /* ~What about Vernus?~ #77304 */ EXTERN ~OHDVERN~ 38
  IF ~  !Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY @1516 /* ~That corpse could be handy.~ #77305 */ GOTO 751
END

IF WEIGHT #42 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",4)
~ THEN BEGIN 753 // from:
  SAY @1549 /* ~Someone has entered the circle. Now let me draw the name upon the ground.~ [OH77306] #77306 */
  IF ~~ THEN REPLY @1550 /* ~Wait, let me think about this some more.~ #77307 */ GOTO 754
  IF ~  Global("OHD_ritual_target","OH5120",1)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(100203,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",2)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92477,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",3)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(102760,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",4)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92478,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",5)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92479,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",6)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92480,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",7)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92481,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",8)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92482,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",9)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92490,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",10)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92493,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",11)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92495,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",12)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92497,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",13)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92499,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",14)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92501,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",15)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92502,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",16)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(100205,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",17)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92505,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",18)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92504,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",19)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92475,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",20)
~ THEN REPLY @1552 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ #77308 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92476,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",1)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(100204,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",2)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96114,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",3)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(102762,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",4)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96116,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",5)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96117,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",6)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96118,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",7)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96119,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",8)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96120,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",9)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96121,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",10)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96122,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",11)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96123,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",12)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96124,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",13)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96125,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",14)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96126,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",15)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96127,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",16)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(100206,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",17)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96129,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",18)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96128,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",19)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92509,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",20)
~ THEN REPLY @1553 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ #77309 */ DO ~EraseJournalEntry(@1551)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92476,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
END

IF ~~ THEN BEGIN 754 // from: 753.0
  SAY @1554 /* ~Decide. Quickly.~ #102541 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 755 // from:
  SAY @1555 /* ~Whatever is necessary to gain the power I desire.~ [OH77409] #77409 */
  IF ~~ THEN REPLY @1556 /* ~Wait, Dorn. We can't sacrifice him.~ #77410 */ GOTO 756
  IF ~~ THEN REPLY @1557 /* ~That's the way the bough breaks sometimes. Sorry, druid.~ #77411 */ EXTERN ~OHDVERN~ 39
  IF ~~ THEN REPLY @1558 /* ~You've died once already, druid. Perhaps that will make this easier for you.~ #77412 */ EXTERN ~OHDVERN~ 40
END

IF ~~ THEN BEGIN 756 // from: 755.0
  SAY @1559 /* ~I say we can.~ [OH77413] #77413 */
  IF ~~ THEN REPLY @1560 /* ~There must be another way.~ #77414 */ GOTO 758
  IF ~~ THEN REPLY @1561 /* ~Look at that face. How can you even think of killing something as cute as that?~ #77415 */ GOTO 759
  IF ~~ THEN REPLY @1562 /* ~For the life of me, I can't recall. Though I suppose it would be more accurate to say for the life of him.~ #77416 */ EXTERN ~OHDVERN~ 39
END

IF ~~ THEN BEGIN 757 // from:
  SAY @1563 /* ~Silence, druid!~ [OH77418] #77418 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 758 // from: 756.0
  SAY @1564 /* ~There is, of course.~ [OH77420] #77420 */
  IF ~~ THEN GOTO 739
END

IF ~~ THEN BEGIN 759 // from: 756.1
  SAY @1565 /* ~With ease.~ [OH77421] #77421 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 760 // from:
  SAY @1566 /* ~Not the time, <CHARNAME>!~ #77320 */
  IF ~~ THEN DO ~ActionOverride("ohdugoth",Enemy())
AddJournalEntry(96130,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 761 // from:
  SAY @1567 /* ~No longer will I toil in service to your whims, Ur-Gothoz. All that you possess shall be mine!~ [OH77325] #77325 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 47
END

IF WEIGHT #43 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",9)
Global("OHD_ritual_urgothoz","OH5120",1)
~ THEN BEGIN 762 // from:
  SAY @1568 /* ~By all the gods in heaven and demons of the Abyss! The blade's power is...~ [OH77326] #77326 */
  IF ~~ THEN REPLY @1569 /* ~Magnificent?~ #77327 */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 763
  IF ~~ THEN REPLY @1570 /* ~More than a little disturbing.~ #77328 */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 763
  IF ~~ THEN REPLY @1571 /* ~Horrifying?~ #77329 */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 763
END

IF ~~ THEN BEGIN 763 // from: 762.2 762.1 762.0
  SAY @1572 /* ~Yes, but it's not just the blade—something is amiss. My patron has been neutered, but my blackguard powers remain...~ [OH77330] #77330 */
  IF ~~ THEN REPLY @1221 /* ~How is that possible?~ #77331 */ DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutScene("ohdcut9c")
~ EXIT
  IF ~~ THEN REPLY @1573 /* ~Uh oh.~ #77332 */ DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutScene("ohdcut9c")
~ EXIT
  IF ~~ THEN REPLY @1574 /* ~You say that like it's a bad thing.~ #77333 */ DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutScene("ohdcut9c")
~ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",10)
!Global("ohd_azothet_reveal","OH5120",2)
!GlobalGT("OHD_ritual_postazothet","OH5120",0)
~ THEN BEGIN 764 // from:
  SAY @1575 /* ~Azothet! What is the meaning of this?~ [OH77334] #77334 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 20
END

IF WEIGHT #45 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("ohd_azothet_reveal","OH5120",2)
~ THEN BEGIN 765 // from:
  SAY @1576 /* ~Ur-Gothoz's power is mine now, Azothet. What makes you think I'll bend my knee to you?~ [OH77341] #77341 */
  IF ~~ THEN DO ~SetGlobal("ohd_azothet_reveal","OH5120",3)
~ EXTERN ~OHDAZOTH~ 21
END

IF ~~ THEN BEGIN 766 // from:
  SAY @1577 /* ~Damn you, <CHARNAME>! Were you not here, this decision would be so easy.~ [OH77347] #77347 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 23
END

IF ~~ THEN BEGIN 767 // from:
  SAY @1578 /* ~You are right on that score, <CHARNAME>.~ [OH77352] #77352 */
  IF ~~ THEN GOTO 773
END

IF ~~ THEN BEGIN 768 // from: 771.0
  SAY @1579 /* ~No! Marilith or no, I'll not be cowed into submission!~ [OH77353] #77353 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 24
END

IF ~~ THEN BEGIN 769 // from:
  SAY @1580 /* ~What are you offering?~ [OH77360] #77360 */
  IF ~~ THEN REPLY @1581 /* ~Nothing she can offer is worth the freedom you'll lose.~ #77361 */ EXTERN ~OHDAZOTH~ 22
  IF ~~ THEN REPLY @1582 /* ~Seriously? SERIOUSLY?~ #77362 */ EXTERN ~OHDAZOTH~ 27
  IF ~~ THEN REPLY @1583 /* ~It better be a lot.~ #77363 */ EXTERN ~OHDAZOTH~ 27
END

IF ~~ THEN BEGIN 770 // from: 771.2
  SAY @1584 /* ~Back to the Abyss with you, marilith!~ [OH77364] #77364 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 24
END

IF ~~ THEN BEGIN 771 // from:
  SAY @1585 /* ~You are right on that score, <CHARNAME>.~ [OH77352] #77365 */
  IF ~  CheckStatLT(Player1,15,CHR)
~ THEN REPLY @1586 /* ~But it's not any other time. Do as your new mistress commands.~ #77366 */ GOTO 768
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1586 /* ~But it's not any other time. Do as your new mistress commands.~ #77366 */ GOTO 772
  IF ~~ THEN REPLY @1587 /* ~You curse the wrong person, Dorn. It's she who would enslave you that should feel your rage.~ #77367 */ GOTO 770
END

IF ~~ THEN BEGIN 772 // from: 771.1
  SAY @1588 /* ~I've served Ur-Gothoz. Doing the same for Azothet could hardly be worse.~ [OH77372] #77372 */
  IF ~~ THEN REPLY @1589 /* ~If that's your wish, I'll not stand in your way.~ #77373 */ GOTO 773
  IF ~~ THEN REPLY @1590 /* ~You've gained a sword and lost your senses, Dorn. You can't seriously bend your knee to the likes of this.~ #77374 */ EXTERN ~OHDAZOTH~ 28
END

IF ~~ THEN BEGIN 773 // from: 772.0 767.0
  SAY @1591 /* ~I am yours to command, Azothet.~ [OH77376] #77376 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 29
END

IF WEIGHT #46 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual_postazothet","OH5120",2)
~ THEN BEGIN 774 // from:
  SAY @1592 /* ~In my wildest dreams, I never imagined I would wield such power as this.~ [OH77378] #77378 */
  IF ~~ THEN REPLY @1593 /* ~And what use will you put it to, Dorn?~ #77379 */ DO ~SetGlobal("OHD_ritual_postazothet","OH5120",3)
~ GOTO 783
  IF ~~ THEN REPLY @1594 /* ~Really? You need a better quality of wildest dream, my friend.~ #77380 */ DO ~SetGlobal("OHD_ritual_postazothet","OH5120",3)
~ GOTO 784
  IF ~~ THEN REPLY @1595 /* ~Then you must use it.~ #77381 */ DO ~SetGlobal("OHD_ritual_postazothet","OH5120",3)
~ GOTO 784
END

IF ~~ THEN BEGIN 775 // from:
  SAY @1596 /* ~What do you mean?~ [OH77382] #77382 */
  IF ~~ THEN REPLY @1597 /* ~Ur-Gothoz no longer commands you. Your life is your own. My question is, what are you going to make of it?~ #77383 */ GOTO 783
  IF ~~ THEN REPLY @1598 /* ~Nothing. It just seemed like a suitably dramatic thing to say.~ #77384 */ EXIT
END

IF ~~ THEN BEGIN 776 // from:
  SAY @1599 /* ~You've proven your worth to me, <CHARNAME>. Would that I could say the same for these others.~ [OH77385] #77385 */
  IF ~~ THEN REPLY @1600 /* ~What are you saying?~ #77386 */ GOTO 777
END

IF ~~ THEN BEGIN 777 // from: 776.0
  SAY @1601 /* ~It is time, <CHARNAME>—past time, in fact—that we rid ourselves of these sycophants that cling to you like so many leeches.~ [OH77387] #77387 */
  IF ~~ THEN REPLY @1602 /* ~You call my friends leeches?~ #77388 */ GOTO 780
  IF ~~ THEN REPLY @1603 /* ~Well, this conversation's certainly taken an unpleasant turn.~ #77389 */ GOTO 782
  IF ~~ THEN REPLY @1604 /* ~They have their uses to me.~ #77390 */ GOTO 778
END

IF ~~ THEN BEGIN 778 // from: 782.0 777.2
  SAY @1605 /* ~To seal our unholy union, they must die.~ [OH77391] #77391 */
  IF ~~ THEN REPLY @1606 /* ~I won't allow that to happen.~ #77392 */ GOTO 733
  IF ~~ THEN REPLY @1607 /* ~What, all of them?~ #77393 */ GOTO 781
  IF ~~ THEN REPLY @1604 /* ~They have their uses to me.~ #77390 */ GOTO 779
END

IF ~~ THEN BEGIN 779 // from: 781.1 780.1 778.2
  SAY @1608 /* ~Very well then. Pick the one whose blood will bind us together for all time.~ [OH77395] #77395 */
  IF ~~ THEN REPLY @1609 /* ~Eternity beckons!~ #77396 */ EXIT
END

IF ~~ THEN BEGIN 780 // from: 777.0
  SAY @1610 /* ~I call them what they are: parasites all.~ [OH77398] #77398 */
  IF ~~ THEN REPLY @1611 /* ~You can't expect me to do nothing while you malign my friends and allies, Dorn. Your new sword will be put to use sooner than you expected.~ #77399 */ GOTO 785
  IF ~~ THEN REPLY @1612 /* ~Your newfound power has blinded you, Dorn. These people are not without their uses.~ #77400 */ GOTO 779
END

IF ~~ THEN BEGIN 781 // from: 778.1
  SAY @1613 /* ~Well—I suppose one would suffice.~ [OH77401] #77401 */
  IF ~~ THEN REPLY @1614 /* ~You've gained a sword and lost your mind, Dorn.~ #77402 */ GOTO 738
  IF ~~ THEN REPLY @1615 /* ~That's better. Much more reasonable.~ #77403 */ GOTO 779
  IF ~~ THEN REPLY @1616 /* ~You think I'd kill one of them for you? You overestimate your value to me, half-orc.~ #77404 */ GOTO 732
END

IF ~~ THEN BEGIN 782 // from: 777.1
  SAY @1617 /* ~These worms weaken you, <CHARNAME>. They cannot be tolerated.~ [OH77405] #77405 */
  IF ~~ THEN GOTO 778
END

IF ~~ THEN BEGIN 783 // from: 775.0 774.0
  SAY @1618 /* ~Whatever I choose. With this ebon blade in my hand, nothing is beyond my power.~ [OH77406] #77406 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 784 // from: 774.2 774.1
  SAY @1619 /* ~With this blade in my hand, my dreams shall become reality.~ [OH77407] #77407 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 785 // from: 780.0
  SAY @1510 /* ~Let your friends bury you, <PRO_RACE>!~ [OH77253] #77253 */
  IF ~~ THEN DO ~AddJournalEntry(96133,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 786 // from:
  SAY @1620 /* ~You thought to tempt me with Ur-Gothoz's power, witch. But taking yours suits me better.~ [OH77424] #77424 */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 31
END

IF ~~ THEN BEGIN 787 // from:
  SAY @1621 /* ~As my sword, you'll see a thousand thousand other deaths first!~ [OH77429] #77429 */
  IF ~~ THEN DO ~AddJournalEntry(92569,INFO)
ActionOverride("ohdazoth",Enemy())
~ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",9)
Global("OHD_ritual_azothet","OH5120",1)
~ THEN BEGIN 788 // from:
  SAY @1622 /* ~By all the gods in heaven and demons of the Abyss! I've never known such power! It's...~ [OH77437] #77437 */
  IF ~~ THEN REPLY @1569 /* ~Magnificent?~ #77438 */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 789
  IF ~~ THEN REPLY @1570 /* ~More than a little disturbing.~ #77439 */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 789
  IF ~~ THEN REPLY @1571 /* ~Horrifying?~ #77440 */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 792
END

IF ~~ THEN BEGIN 789 // from: 792.0 788.1 788.0
  SAY @1623 /* ~In my wildest dreams, I never imagined I would wield such power as this.~ [OH77441] #77441 */
  IF ~~ THEN REPLY @1593 /* ~And what use will you put it to, Dorn?~ #77442 */ GOTO 790
  IF ~~ THEN REPLY @1594 /* ~Really? You need a better quality of wildest dream, my friend.~ #77443 */ GOTO 800
  IF ~~ THEN REPLY @1595 /* ~Then you must use it.~ #77444 */ GOTO 790
END

IF ~~ THEN BEGIN 790 // from: 789.2 789.0
  SAY @1624 /* ~What do you mean?~ [OH77445] #77445 */
  IF ~~ THEN REPLY @1625 /* ~A blade that powerful is worthy of the epics. What are you going to do with that power?~ #77446 */ GOTO 801
  IF ~~ THEN REPLY @1598 /* ~Nothing. It just seemed like a suitably dramatic thing to say.~ #77447 */ DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutScene("ohdcut9d")
~ EXIT
  IF ~~ THEN REPLY @1626 /* ~Azothet's power flows fresh in the black metal. Use it now to strike Ur-Gothoz down!~ #77448 */ GOTO 791
END

IF ~~ THEN BEGIN 791 // from: 790.2
  SAY @1627 /* ~A brilliant scheme, <CHARNAME>. Help me write his name in the circle while it retains its summoning power.~ [OH77449] #77449 */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual","OH5120",14)
StartCutSceneMode()
StartCutScene("ohdcut10")
~ EXIT
END

IF ~~ THEN BEGIN 792 // from: 788.2
  SAY @1628 /* ~It is beyond anything I've ever known.~ [OH77450] #77450 */
  IF ~~ THEN GOTO 789
END

IF ~~ THEN BEGIN 793 // from:
  SAY @1629 /* ~You need not fear the horrors to come, <CHARNAME>. You've proven your worth. Would that I could say the same for these others.~ [OH77451] #77451 */
  IF ~~ THEN REPLY @1629 /* ~You need not fear the horrors to come, <CHARNAME>. You've proven your worth. Would that I could say the same for these others.~ [OH77451] #77451 */ GOTO 794
END

IF ~~ THEN BEGIN 794 // from: 793.0
  SAY @1630 /* ~It is time, <CHARNAME>—past time, in fact—that we rid ourselves of these sycophants that cling to you like so many leeches.~ [OH77453] #77453 */
  IF ~~ THEN REPLY @1602 /* ~You call my friends leeches?~ #77454 */ GOTO 797
  IF ~~ THEN REPLY @1631 /* ~You're drunk on power, Dorn. Get some sleep and we can discuss this in the morning when your head is clear.~ #77455 */ GOTO 802
  IF ~~ THEN REPLY @1604 /* ~They have their uses to me.~ #77456 */ GOTO 795
END

IF ~~ THEN BEGIN 795 // from: 802.0 794.2
  SAY @1632 /* ~To seal our unholy union, they must die.~ [OH77457] #77457 */
  IF ~~ THEN REPLY @1606 /* ~I won't allow that to happen.~ #77458 */ GOTO 733
  IF ~~ THEN REPLY @1607 /* ~What, all of them?~ #77459 */ GOTO 798
  IF ~~ THEN REPLY @1633 /* ~A pointless waste of valuable resources. One death should be sufficient to seal any unholy union.~ #77460 */ GOTO 796
END

IF ~~ THEN BEGIN 796 // from: 798.1 795.2
  SAY @1634 /* ~Very well then. Pick the one whose blood will bind us together for all time.~ [OH77461] #77461 */
  IF ~~ THEN REPLY @850 /* ~As you wish.~ #74521 */ EXIT
  IF ~~ THEN REPLY @1582 /* ~Seriously? SERIOUSLY?~ #77362 */ GOTO 810
END

IF ~~ THEN BEGIN 797 // from: 794.0
  SAY @1635 /* ~I call them what they are: parasites all.~ [OH77463] #77463 */
  IF ~~ THEN REPLY @1611 /* ~You can't expect me to do nothing while you malign my friends and allies, Dorn. Your new sword will be put to use sooner than you expected.~ #77464 */ GOTO 803
  IF ~~ THEN REPLY @1636 /* ~Your new found power has blinded you, Dorn. These people are not without their uses.~ #77465 */ GOTO 798
END

IF ~~ THEN BEGIN 798 // from: 797.1 795.1
  SAY @1637 /* ~Well—I suppose one would suffice.~ [OH77466] #77466 */
  IF ~~ THEN REPLY @1614 /* ~You've gained a sword and lost your mind, Dorn.~ #77467 */ GOTO 738
  IF ~~ THEN REPLY @1615 /* ~That's better. Much more reasonable.~ #77468 */ GOTO 796
  IF ~~ THEN REPLY @1616 /* ~You think I'd kill one of them for you? You overestimate your value to me, half-orc.~ #77469 */ GOTO 732
END

IF ~~ THEN BEGIN 799 // from:
  SAY @1638 /* ~Whatever purpose I see fit, of course.~ [OH77470] #77470 */
  IF ~~ THEN GOTO 800
END

IF ~~ THEN BEGIN 800 // from: 799.0 789.1
  SAY @1639 /* ~With this blade in my hand, my dreams shall become reality.~ [OH77471] #77471 */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutScene("ohdcut9d")
~ EXIT
END

IF ~~ THEN BEGIN 801 // from: 790.0
  SAY @1640 /* ~Whatever I choose. With this ebon blade in my hand, nothing is beyond my power.~ [OH77472] #77472 */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutScene("ohdcut9d")
~ EXIT
END

IF ~~ THEN BEGIN 802 // from: 794.1
  SAY @1641 /* ~You're wrong. It's only now, after all this time, that I finally see things clearly.~ [OH77473] #77473 */
  IF ~~ THEN GOTO 795
END

IF ~~ THEN BEGIN 803 // from: 797.0
  SAY @1510 /* ~Let your friends bury you, <PRO_RACE>!~ [OH77253] #77253 */
  IF ~~ THEN DO ~AddJournalEntry(92577,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 804 // from:
  SAY @1642 /* ~My new friend shall explain for me!~ [OH77476] #77476 */
  IF ~~ THEN DO ~AddJournalEntry(92583,INFO)
SetGlobal("OHD_ritual","OH5120",16)
ActionOverride("ohdugoth",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 805 // from:
  SAY @1643 /* ~It is true, Ur-Gothoz. Azothet's power is now mine.~ [OH77482] #77482 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 35
END

IF ~~ THEN BEGIN 806 // from:
  SAY @1644 /* ~I sought only to do as I believed you would wish.~ [OH77484] #77484 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 36
END

IF ~~ THEN BEGIN 807 // from:
  SAY @1645 /* ~Thank you, Ur-Gothoz.~ [OH77486] #77486 */
  IF ~~ THEN DO ~AddJournalEntry(92586,INFO)
StartCutScene("ohdcut9g")
~ EXIT
END

IF ~~ THEN BEGIN 808 // from:
  SAY @1646 /* ~Azothet is no more. She is bound in this sword; her power is now mine.~ [OH77488] #77488 */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 38
END

IF ~~ THEN BEGIN 809 // from:
  SAY @1647 /* ~Die in the name of Dorn Il-Khan!~ [OH90363] #90363 */
  IF ~~ THEN DO ~AddJournalEntry(92583,INFO)
SetGlobal("OHD_ritual","OH5120",16)
ActionOverride("ohdugoth",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 810 // from: 796.1
  SAY @1648 /* ~I offer you everything and you refuse? You've made a grave error, <CHARNAME>. Once, I might have let this insult pass, but no more. I'll take your Bhaalspawn power for myself, and we shall be together forever!~ [OH77490] #77490 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 811 // from:
  SAY @1649 /* ~I knew you were the one, <CHARNAME>—I knew it from the first moment I laid eyes upon you. Together we are as gods... The Abyss will tremble and the heavens fall before us!~ [OH77491] #77491 */
  IF ~~ THEN REPLY @1650 /* ~Shut up and kiss me, Dorn.~ #77492 */ EXIT
  IF ~~ THEN REPLY @1651 /* ~Is that it? And here I thought we'd be doing something impressive.~ #77493 */ EXIT
  IF ~~ THEN REPLY @1652 /* ~May the gods help those who stand against us. Nothing else will save them.~ #77494 */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",19)
~ THEN BEGIN 812 // from:
  SAY @1653 /* ~Freedom, at last... But the cost...~ [OH77495] #77495 */
  IF ~~ THEN REPLY @1654 /* ~One's freedom is a prize to be valued above all else.~ #77496 */ DO ~SetGlobal("OHD_ritual","OH5120",20)
~ GOTO 813
  IF ~~ THEN REPLY @1655 /* ~I'd tell you to look on the bright side, Dorn... if I seriously believed you had one.~ #77497 */ DO ~SetGlobal("OHD_ritual","OH5120",20)
~ GOTO 813
  IF ~~ THEN REPLY @1656 /* ~Count yourself lucky you didn't pay for it with your life.~ #77498 */ DO ~SetGlobal("OHD_ritual","OH5120",20)
~ GOTO 814
END

IF ~~ THEN BEGIN 813 // from: 812.0
  SAY @1657 /* ~Without a patron, my powers are diminished, but my options are greatly increased. And from now on, the blood I shed will be for my benefit and mine alone. ~ [OH77499] #77499 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 814 // from: 812.2
  SAY @1658 /* ~True enough... Though there's many who will pay for it with theirs.~ [OH77500] #77500 */
  IF ~~ THEN GOTO 813
END

IF ~~ THEN BEGIN 815 // from:
  SAY @1659 /* ~A wise one.~ #81446 */
  IF ~~ THEN EXTERN ~HEXXAT~ 65
  IF ~  IfValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 548
END

IF ~~ THEN BEGIN 816 // from:
  SAY @1660 /* ~Speak for yourself, <CHARNAME>.~ #82277 */
  IF ~~ THEN EXTERN ~OHHGM03~ 0
END

IF ~~ THEN BEGIN 817 // from:
  SAY @1661 /* ~Where's the challenge in that?~ #83352 */
  IF ~~ THEN EXTERN ~HEXXATJ~ 384
END

IF ~~ THEN BEGIN 818 // from:
  SAY @1662 /* ~It's only in being tested that we know our strength.~ #83354 */
  IF ~~ THEN EXTERN ~HEXXATJ~ 382
END

IF ~~ THEN BEGIN 819 // from:
  SAY @1663 /* ~We can kill him now, right?~ #84237 */
  IF ~~ THEN EXTERN ~OHHQAIS~ 24
END

IF WEIGHT #49 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHH_dornconflict","GLOBAL",2)
~ THEN BEGIN 820 // from:
  SAY @1664 /* ~Keep your eyes to yourself, vampire. ~ #100156 */
  IF ~~ THEN DO ~SetGlobal("OHH_dornconflict","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 256
END

IF ~~ THEN BEGIN 821 // from:
  SAY @1665 /* ~Do not play games with me. <CHARNAME> is mine.~ #100158 */
  IF ~~ THEN EXTERN ~HEXXATJ~ 257
END

IF ~~ THEN BEGIN 822 // from:
  SAY @1666 /* ~I think she is something you will never possess while I live.~ #100160 */
  IF ~~ THEN REPLY @1667 /* ~I'm sorry, Hexxat. Dorn and I share something special.~ #100168 */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 258
  IF ~~ THEN REPLY @1668 /* ~You presume too much, Dorn. ~ #100169 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 823
  IF ~~ THEN REPLY @1669 /* ~Come now. Surely the three of us can reach an accommodation...~ #100170 */ GOTO 825
END

IF ~~ THEN BEGIN 823 // from: 822.1
  SAY @1670 /* ~You would take this leech as a lover? So be it.~ #100162 */
  IF ~~ THEN GOTO 824
END

IF ~~ THEN BEGIN 824 // from: 826.0 823.0
  SAY @1671 /* ~I'll enjoy seeing her drain your lifeblood and toss you aside for her next victim.~ #100163 */
  IF ~~ THEN EXTERN ~HEXXATJ~ 259
END

IF ~~ THEN BEGIN 825 // from: 822.2
  SAY @1672 /* ~If you would be mine, <CHARNAME>, you must be mine alone.~ #100165 */
  IF ~~ THEN REPLY @1673 /* ~I am nobody's, Dorn. Certainly not yours.~ #100171 */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 826
  IF ~~ THEN REPLY @1674 /* ~Then I am yours.~ #100172 */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 260
END

IF ~~ THEN BEGIN 826 // from: 825.0
  SAY @1675 /* ~So you would rather the vampire? Pfah.~ #100166 */
  IF ~~ THEN GOTO 824
END

IF ~~ THEN BEGIN 827 // from:
  SAY @1676 /* ~You'll rue the day you try to exchange me for a bear, <CHARNAME>.~ #89489 */
  IF ~~ THEN EXIT
  IF ~  IfValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 209
END

IF ~~ THEN BEGIN 828 // from:
  SAY @1677 /* ~Indeed. Vengeance is a worthy goal—let it focus your thoughts, sharpen them to a point you may then plunge into the hearts of your foes.~ #93670 */
  IF ~~ THEN EXIT
  IF ~  IfValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~VALYGARJ~ 132
END

IF ~~ THEN BEGIN 829 // from:
  SAY @1678 /* ~Ha. Yes, <CHARNAME> is good with the obvious.~ #88214 */
  IF ~~ THEN EXTERN ~OHNREGI~ 2
END

IF ~~ THEN BEGIN 830 // from:
  SAY @1679 /* ~You are no brother of mine. Keep your distance.~ #88216 */
  IF ~~ THEN EXTERN ~OHNREGI~ 3
END

IF ~~ THEN BEGIN 831 // from:
  SAY @1680 /* ~<CHARNAME>'s restraint has saved your life. You are fortunate <PRO_HESHE> was here to stay my hand.~ #93667 */
  IF ~~ THEN DO ~SetGlobal("ohn_regi_plot","global",7)
~ EXIT
END

IF ~~ THEN BEGIN 832 // from:
  SAY @1681 /* ~Take the offer, <CHARNAME>. I like this woman's style.~ #102304 */
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1682 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ #21513 */ EXTERN ~BODHI~ 7
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1683 /* ~You know an awful lot about me. Where have you learned all of this?~ #21514 */ EXTERN ~BODHI~ 7
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1684 /* ~It sounds like you've been spying on me. Why should I trust you?~ #21515 */ EXTERN ~BODHI~ 8
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1685 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ #21812 */ EXTERN ~BODHI~ 9
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1686 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ #59400 */ EXTERN ~BODHI~ 133
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 595
END

IF ~~ THEN BEGIN 833 // from:
  SAY @1687 /* ~Some things are worth the risk, moonmaiden.~ #102303 */
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1682 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ #21513 */ EXTERN ~BODHI~ 7
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1683 /* ~You know an awful lot about me. Where have you learned all of this?~ #21514 */ EXTERN ~BODHI~ 7
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1684 /* ~It sounds like you've been spying on me. Why should I trust you?~ #21515 */ EXTERN ~BODHI~ 8
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1685 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ #21812 */ EXTERN ~BODHI~ 9
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1686 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ #59400 */ EXTERN ~BODHI~ 133
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 596
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN GOTO 834
END

IF ~~ THEN BEGIN 834 // from: 833.15
  SAY @1681 /* ~Take the offer, <CHARNAME>. I like this woman's style.~ #102304 */
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1682 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ #21513 */ EXTERN ~BODHI~ 7
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1683 /* ~You know an awful lot about me. Where have you learned all of this?~ #21514 */ EXTERN ~BODHI~ 7
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1684 /* ~It sounds like you've been spying on me. Why should I trust you?~ #21515 */ EXTERN ~BODHI~ 8
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1685 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ #21812 */ EXTERN ~BODHI~ 9
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1686 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ #59400 */ EXTERN ~BODHI~ 133
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 596
END

IF ~~ THEN BEGIN 835 // from:
  SAY @1687 /* ~Some things are worth the risk, moonmaiden.~ #102303 */
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1682 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ #21513 */ EXTERN ~BODHI~ 7
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1683 /* ~You know an awful lot about me. Where have you learned all of this?~ #21514 */ EXTERN ~BODHI~ 7
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1684 /* ~It sounds like you've been spying on me. Why should I trust you?~ #21515 */ EXTERN ~BODHI~ 8
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1685 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ #21812 */ EXTERN ~BODHI~ 9
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1686 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ #59400 */ EXTERN ~BODHI~ 133
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 597
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN GOTO 836
END

IF ~~ THEN BEGIN 836 // from: 835.15
  SAY @1681 /* ~Take the offer, <CHARNAME>. I like this woman's style.~ #102304 */
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1682 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ #21513 */ EXTERN ~BODHI~ 7
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1683 /* ~You know an awful lot about me. Where have you learned all of this?~ #21514 */ EXTERN ~BODHI~ 7
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1684 /* ~It sounds like you've been spying on me. Why should I trust you?~ #21515 */ EXTERN ~BODHI~ 8
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1685 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ #21812 */ EXTERN ~BODHI~ 9
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN REPLY @1686 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ #59400 */ EXTERN ~BODHI~ 133
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 597
END

IF ~~ THEN BEGIN 837 // from:
  SAY @1688 /* ~One of the greatest elven cities of the age, and it disappeared right in front of your eyes. Hah!~ #102324 */
  IF ~  !IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("CERND")
~ THEN EXTERN ~C6ELHAN2~ 29
  IF ~  IfValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 289
  IF ~  IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 185
  IF ~  IfValidForPartyDialogue("CERND")
!IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 122
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 607
  IF ~  IfValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 788
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 133
END

IF ~~ THEN BEGIN 838 // from:
  SAY @1689 /* ~Hah! Prepare for the slaughter, Bodhi!~ #102330 */
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IfValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IfValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IfValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ GOTO 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IfValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 269
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 609
END

IF ~~ THEN BEGIN 839 // from:
  SAY @1689 /* ~Hah! Prepare for the slaughter, Bodhi!~ #102330 */
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IfValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IfValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IfValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ GOTO 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IfValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 269
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 610
END

IF ~~ THEN BEGIN 840 // from:
  SAY @1689 /* ~Hah! Prepare for the slaughter, Bodhi!~ #102330 */
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IfValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("JAHEIRA")
!IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IfValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IfValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ GOTO 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IfValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 269
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 611
END

IF ~~ THEN BEGIN 841 // from:
  SAY @1690 /* ~ 'Twould amuse me to hear her screams, but she might have more than entertainment value. I leave the decision to you.~ #102337 */
  IF ~~ THEN EXIT
  IF ~  IfValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 791
END

IF ~~ THEN BEGIN 842 // from:
  SAY @1690 /* ~ 'Twould amuse me to hear her screams, but she might have more than entertainment value. I leave the decision to you.~ #102337 */
  IF ~~ THEN EXIT
  IF ~  IfValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 792
END

IF WEIGHT #0 ~  Global("OH_UnderdarkComments","GLOBAL",1)
~ THEN BEGIN 843 // from:
  SAY @1691 /* ~What is this place you have brought us to, <CHARNAME>?~ #102296 */
  IF ~~ THEN DO ~SetGlobal("OH_UnderdarkComments","GLOBAL",2)
~ EXIT
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 612
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 137
  IF ~  IfValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 793
END

IF WEIGHT #1 ~  Global("OH_tanner","AR0502",1)
~ THEN BEGIN 844 // from:
  SAY @1692 /* ~ 'Ware, <CHARNAME>! Something is amiss here.~ #102313 */
  IF ~~ THEN DO ~SetGlobal("OH_tanner","AR0502",2)
~ EXIT
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 614
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 139
  IF ~  IfValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 794
END

IF WEIGHT #2 ~  Global("OH_Adalon","AR2102",1)
~ THEN BEGIN 845 // from:
  SAY @1693 /* ~Haha! Now this is a battle I can get behind!~ #102335 */
  IF ~~ THEN DO ~SetGlobal("OH_Adalon","AR2102",2)
~ EXIT
  IF ~  InParty("rasaad")
~ THEN DO ~SetGlobal("OH_Adalon","AR2102",2)
ActionOverride("rasaad",ChangeAIScript("",DEFAULT))
ActionOverride("rasaad",Enemy())
ActionOverride("rasaad",LeaveParty())
~ EXIT
END

IF ~~ THEN BEGIN 846 // from:
  SAY @1694 /* ~Leave the brat behind. ~ #88459 */
  IF ~~ THEN EXTERN ~NEERA~ 22
  IF ~  IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 165
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 135
END

IF WEIGHT #50 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_dornsex","GLOBAL",1)
~ THEN BEGIN 868 // from:
  SAY @1725  /* ~You take risks by ovesleeping like that, <CHARNAME>. But, I'll admit you took some heavy pounding last night. I believe our exertions left us both very much satified?~ #96540 */
  IF ~~ THEN REPLY @1726 /* ~It wasn't too bad, although next time you might find the tables turned.~ #96541 */ GOTO 869
  IF ~~ THEN REPLY @1727 /* ~It's a small miracle I can still walk. You exhausted me!~ #96542 */ GOTO 870
  IF ~~ THEN REPLY @1728 /* ~Definitely. I believe I will require a repeated performance. Multiple times.~ #96543 */ GOTO 871
END

IF ~~ THEN BEGIN 870 // from: 108.1
  SAY @1729 /* ~Ha! You play coy but we both know you're no innocent. Or are that pangs of guilt speaking?~ #96544 */
  IF ~~ THEN GOTO 872
END


IF ~~ THEN BEGIN 871 // from: 108.2
  SAY @1730 /* ~Very good. I appreciate a <PRO_MANWOMAN> who knows where <PRO_HISHER> pleasure lies.~ #96545 */
  IF ~~ THEN GOTO 872
END


IF ~~ THEN BEGIN 869 // from: 107.1
  SAY @1731 /* ~Indeed? Somehow I doubt that, but you're welcome to try. ~ #96550 */
  IF ~~ THEN GOTO 872
END

IF ~~ THEN BEGIN 872 // from: 107.1
  SAY @1732 /* ~In any case, I look forward to our next night, <CHARNAME>.~ #96550 */
IF ~~ THEN DO ~SetGlobal("OHD_dornsex","GLOBAL",2)
~ EXIT
END

IF WEIGHT #51 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",12)
~ THEN BEGIN 857 // from:
  SAY @1711 /* ~Argh! All this fumbling is pointless! How long will we stumble around in circles, before you decide to manage some relevant business?  ~ #96478 */
  IF ~~ THEN REPLY @1712 /* ~Huh? What are you going on about?~ #96479 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 858
  IF ~~ THEN REPLY @1713 /* ~I see. Your patron does not approve, is that it? ~ #96480 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 858
  IF ~~ THEN REPLY @1714  /* ~Oh? Is whining a part of your being intrigued with me bussiness?~ #96481 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 858
END

IF ~~ THEN BEGIN 858 // from: 88.1 88.0
  SAY @1715 /* ~Stop feigning ignorance, you know very well what I mean! ~ #96482 */
  IF ~~ THEN REPLY @1716 /* ~No. I have no idea where this is coming from.~ #96483 */ GOTO 859
  IF ~~ THEN REPLY @1717 /* ~I'm not sure what your problem is or if I care, to be honest.~ #96484 */ GOTO 861
  IF ~~ THEN REPLY @1724 /* ~You need attention or what? I don't understand.~ #96485 */ GOTO 859
END

IF ~~ THEN BEGIN 859 // from: 88.2
  SAY @1719 /* ~It seems I should reconsider my choices, seeing you're unlikely to consider yours.~ #96486 */
  IF ~~ THEN REPLY @1720 /* ~I think my choices don't have anything to do with this tantrum.~ #96487 */ GOTO 860
  IF ~~ THEN REPLY @1721 /* ~I'm rapidly losing interest in this conversation. Speak clearly or leave me be.~ #96488 */ GOTO 860
  IF ~~ THEN REPLY @1718 /* ~I'm all out of divination spelll today, Dorn, so you're going to have to speak plainly.~ #96489 */ GOTO 860
END

IF ~~ THEN BEGIN 861 // from: 89.1
  SAY @1722 /* ~I have means to make you care.~ #96497 */
  IF ~~ THEN GOTO 859
END

IF ~~ THEN BEGIN 860 // from: 90.2 90.1 89.2
  SAY @1723 /* ~Just stay away from me.~ #96498 */
  IF ~~ THEN EXIT
END

IF WEIGHT #52 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",16)
~ THEN BEGIN 850 // from:
  SAY @1695 /* ~<CHARNAME>... I would have words with you.~ #96689 */
  IF ~~ THEN REPLY @1696 /* ~Will this end in another tantrum?~ #96695 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 851
  IF ~~ THEN REPLY @1697 /* ~Of course. After all, you've shown excellent self-control.~ #96696 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 851
  IF ~~ THEN REPLY @1698 /* ~What's this? An assasination attempt after a failed public brawl?~ #96697 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 851
END

IF ~~ THEN BEGIN 851 // from: 180.2 180.1 180.0
  SAY @1699  /* ~Calm yourself. I wished to assure you that will not happen again. I admit I... mijudged the situation. ~ #96690 */
  IF ~~ THEN REPLY @1700 /* ~Misjudged the situation? That's it?~ #96698 */ GOTO 852
  IF ~~ THEN REPLY @1701 /* ~Is this an apology? Good, I like this new humble you.~ #96699 */ GOTO 853
  IF ~~ THEN REPLY @1702 /* ~You're insane. You think you can get away with few poorly put together words after that stunt? ~ #96700 */ GOTO 853
END

IF ~~ THEN BEGIN 852 // from: 183.0 181.2 181.0
  SAY @1703 /* ~Fine. Take what I said as an apology then. But understand <CHARNAME>, only mutual respect ensures loyalty in the end. Take care you give it when necessary.~ #96691 */
  IF ~~ THEN REPLY @1704 /* ~I always respected you Dorn.~ #96701 */ GOTO 854
  IF ~~ THEN REPLY @1705 /* ~I wont be held accountable for your imaginary lack of respect.~ #96702 */ GOTO 855
  IF ~~ THEN REPLY @1706 /* ~Very well, but understand that respect necesitates trust. Do you trust me?~ #96703 */ GOTO 856
END

IF ~~ THEN BEGIN 853 // from: 181.1
  SAY @1707 /* ~You can be truly insufferable.~ #96692 */
  IF ~~ THEN GOTO 852
END

IF ~~ THEN BEGIN 854 // from: 185.0 182.0
  SAY @1708 /* ~You have my respect <CHARNAME>. You are powerful in your own right and this comes naturally. In time, even trust might follow.~ #96693 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 855 // from: 182.1
  SAY @1709 /* ~I suggest you take me seriously <PRO_RACE>.~ #96694 */
  IF ~~ THEN GOTO 854
END

IF ~~ THEN BEGIN 856 // from: 182.2
  SAY @1710 /* ~I... Trust is hard to earn and usually ends in demise of the fools who give it freely.~ #96704 */
  IF ~~ THEN GOTO 854
END

IF WEIGHT #53 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",20)
~ THEN BEGIN 873 // from:
  SAY @1733 /* ~Don't think I don't see you <CHARNAME>. Having second thoughts? Or is there something else on your mind?~ #96689 */
  IF ~~ THEN REPLY @1734 /* ~No, nothing like that. I was just wondering about you.~ #96695 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 874
  IF ~~ THEN REPLY @1735 /* ~Way too late for second thoughts now I'd reckon. But I was wondering about you...~ #96696 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 874
  IF ~~ THEN REPLY @1736 /* ~We are past second thoughts. It strikes  me I do not know that much about you, Dorn, and one should always be informed.~ #96697 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 874
END

IF ~~ THEN BEGIN 874 // from: 180.2 180.1 180.0
  SAY @1737 /* ~Wondering about me? Why? You know enough already, and what matters more are the things at stake now. What is the purpose of talking about past in time like these?~ #96690 */
  IF ~~ THEN REPLY @1738 /* ~Is it so harmful? Relax Dorn, I'm not trying anything sinister. For now.~ #96698 */ GOTO 875
  IF ~~ THEN REPLY @1739 /* ~We have became more intimate, more talking simply comes naturally.~ #96699 */ GOTO 875
  IF ~~ THEN REPLY @1740 /* ~Stop pretending, you know what I mean. Talk with me, Dorn. ~ #96700 */ GOTO 875
END

IF ~~ THEN BEGIN 875 // from: 181.1
  SAY @1745 /* ~I see. Sharing intimacy usually means showing vulnerabilities, and that might end badly in the long run, <CHARNAME>.~ #96692 */
  IF ~~ THEN GOTO 876
END

IF ~~ THEN BEGIN 876 // from: 183.0 181.2 181.0
  SAY @1741 /* ~It is a risky, and foolish move in the end.~ #96691 */
  IF ~~ THEN REPLY @1742 /* ~Perhaps. But if we are to be more than companions we should know each other better.~ #96701 */ GOTO 877
  IF ~~ THEN REPLY @1743 /* ~We've became more than companions, have we not? I'm willing to risk strengthening our bond.~ #96702 */ GOTO 877
  IF ~~ THEN REPLY @1744 /* ~So you intend to keep the distance forever in an intimate relationship? I'm just asking you to talk.~ #96703 */ GOTO 877
END

IF ~~ THEN BEGIN 877 // from: 185.0 182.0
  SAY @1746 /* ~I do not know if I appreciate your course of the actions.~ #96693 */
  IF ~~ GOTO 878
END

IF ~~ THEN BEGIN 878 // from: 182.1
  SAY @1747 /* ~On the other hand, we fought and bled together and I feel generous today.~ #96694 */
  IF ~~ THEN GOTO 879
END

IF ~~ THEN BEGIN 879 // from: 182.2
  SAY @1748 /* ~We will speak then, if that is your wish. Walk with me...~ #96704 */
  IF ~~ THEN EXIT
END

IF WEIGHT #54 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",22)
~ THEN BEGIN 880 // from:
  SAY @1749 /* ~Have I ever told you about my early days in the tribe?~ #96705 */
  IF ~~ THEN REPLY @1750 /* ~You never talked about your early days. I'm interested if you're willing to talk.~ #96718 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 881
  IF ~~ THEN REPLY @1751 /* ~No, you never did. It was some northern orc tribe, I presume?~ #96719 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 881
  IF ~~ THEN REPLY @1752 /* ~I don't have time for this now. Maybe later.~ #96720 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 882
END

IF ~~ THEN BEGIN 882 // from: 187.0
  SAY @1753 /* ~You asked for this, so you will listen. Now.~ #96706 */
  IF ~~ THEN GOTO 881
END

IF ~~ THEN BEGIN 881 // from: 187.0
  SAY @1754 /* ~I was born to a human mother and orc father, a leader of his tribe. In the company of orcs, mixed blood created many problems, especially for the weaker members. That said, I was not the only half-breed there.~ #96706 */
  IF ~~ THEN GOTO 1030
END

IF ~~ THEN BEGIN 1030 // from: 187.2
  SAY @1755 /* ~I had to compete twice as hard, and take twice as much punishment, to earn some recognition. Fortunately, the rigorous conditions were fertile ground for breeding strength and resolution. ~ #96707 */
  IF ~~ THEN GOTO 883
END


IF ~~ THEN BEGIN 883 // from: 187.2
  SAY @1756 /* ~My father never paid too much attention to me, at least not until I started to show some physical prowess, but I was usually beyond concern.~ #96707 */
  IF ~~ THEN GOTO 884
END

IF ~~ THEN BEGIN 884 // from: 187.2
  SAY @1757 /* ~Meanwhile my mother was weak, always ingratiating to stronger than her, never taking the initiative. She atempted to coddle me sometimes which ilicited a harsh response from the rest of the tribe.~ #96707 */
  IF ~~ THEN GOTO 885
END

IF ~~ THEN BEGIN 885 // from: 187.2
  SAY @1758 /* ~Life in nomadic tribe wasn't very varied, and the days mostly consisted of moving from place to place, trying to survive, and occasional raid, skirmish and trade.~ #96707 */
  IF ~~ THEN GOTO 886
END

IF ~~ THEN BEGIN 886 // from: 187.2
  SAY @1759 /* ~Conditions were far from easy, but I grew resilient, and determined. I think my father saw me as potential leader of the tribe in the future, seeing half-breeds are usually more intelligent than orc and stronger than human.~ #96707 */
  IF ~~ THEN GOTO 888
END

IF ~~ THEN BEGIN 888 // from: 187.2
  SAY @1761 /* ~It is of no consequence. The tribe was raided by ogres and my human mother and I escaped to Luskan. There I discovered the nature of "civilized" men.~ #96707 */
  IF ~~ THEN GOTO 889
END

IF ~~ THEN BEGIN 889 // from: 187.2
  SAY @1762 /* ~As you know, they are scarcely better than those they call savages. From there goes the story of my involvement with Simmeon and the gang.~ #96707 */
  IF ~~ THEN REPLY @1763 /* ~I see. Harsh environment made you stronger. What became of your mother? ~ #96721 */ GOTO 890
  IF ~~ THEN REPLY @1764 /* ~You learned how life works about very early I see. And you family now?~ #96722 */ GOTO 890
END

IF ~~ THEN BEGIN 890 // from: 187.2
  SAY @1765 /* ~Indeed. Last I saw of my mother, she was ingratiating herself to an officer in Luskan. I left her to attend her own matters. I do not care for my supposed family or some long dead tribe.~ #96707 */
  IF ~~ THEN GOTO 891
END

IF ~~ THEN BEGIN 891 // from: 187.2
  SAY @1766 /* ~In any case, we should turn our attention back to the road ahead.~ #96707 */
  IF ~~ THEN EXIT
END

IF WEIGHT #55 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",24)
~ THEN BEGIN 892 // from:
  SAY @1767 /* ~What is it, <CHARNAME>?~ #96705 */
  IF ~~ THEN REPLY @1768 /* ~I was just wondering about those peasants in the last tavern.~ #96718 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 893
  IF ~~ THEN REPLY @1769 /* ~Are you alright? Those idiots in last tavern I mean.~ #96719 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 894
  IF ~~ THEN REPLY @1770 /* ~People tend to have strong reactions around you, don't they?~ #96720 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 894
END

IF ~~ THEN BEGIN 893 // from: 187.0
  SAY @1771 /* ~Why would you even bother noticing a few cowardly peasant too afraid to do anything but murmur between themselves?~ #96706 */
  IF ~~ THEN GOTO 895
END

IF ~~ THEN BEGIN 894 // from: 187.2
  SAY @1772 /* ~So you've noticed.~ #96707 */
  IF ~~ THEN GOTO 895
END

IF ~~ THEN BEGIN 895 // from: 189.0 188.0 187.1
  SAY @1773 /* ~Is it really that surprising? Half-breeds usually have a hard time in any society consisting of pure-blooded race. Fortunately, I can take care of any halfwit daring to cross my path. ~ #96708 */
  IF ~~ THEN REPLY @1774 /* ~And how exactly do you take care of them?~ #96721 */ GOTO 896
  IF ~~ THEN REPLY @1775 /* ~What have you dealt with, besides occasional tavern brawl?~ #96722 */ GOTO 896
END

IF ~~ THEN BEGIN 896 // from: 190.0
  SAY @1776 /* ~Is that so hard to conclude?~ #96709 */
  IF ~~ THEN GOTO 897
END

IF ~~ THEN BEGIN 897 // from: 190.0
  SAY @1777 /* ~But to sate your curiosity, let's say people do not consider orcs the sharpest tool in the shed. They are correct. They usually apply the same criteria to half-orcs, although that is far less accurate.~ #96709 */
  IF ~~ THEN GOTO 898
END

IF ~~ THEN BEGIN 898 // from: 190.0
  SAY @1778 /* ~By the same token, many human, elves, dwarves and such, think they are above and beyond lowly half orc, trying to take advantage. Imagine their surprise when they found the tables turned, or even better, a blade between their ribs.~ #96709 */
  IF ~~ THEN GOTO 899
END

IF ~~ THEN BEGIN 899 // from: 190.0
  SAY @1779 /* ~When I first arrived in Luskan, I was used and cheated.~ #96709 */
  IF ~~ THEN GOTO 900
END

IF ~~ THEN BEGIN 900 // from: 191.0 190.2 190.1
  SAY @1780 /* ~After living with the tribe, it took time to play my heritage and intelligence to my advantage.~ #96710 */
  IF ~~ THEN REPLY @1781 /* ~What can you tell me about Luskan? ~ #96724 */ GOTO 901
END

IF ~~ THEN BEGIN 901 // from: 192.0
  SAY @1782 /* ~The city was built on ruins of Illusk, ancient orcish city. It is ruled by High Captains and Arcane Brotherhood, true power behind the throne.~ #96711 */
  IF ~~ THEN GOTO 902
END

IF ~~ THEN BEGIN 902 // from: 192.1
  SAY @1783 /* ~Aside from that, nothing you couldn't learn from observing any other major city anywhere.~ #96712 */
  IF ~~ THEN GOTO 903
END

IF ~~ THEN BEGIN 903 // from: 192.2
  SAY @1784 /* ~Rich and powerful vying for contol and stomping over those beneath them. Greed and lust hiding behind cowardice, hypocritical, mindless masses thirsting for blood, people trying to take advantage of each other at all costs.~ #96713 */
  IF ~~ THEN GOTO 904
END

IF ~~ THEN BEGIN 904 // from: 195.0 194.0 193.0
  SAY @1785 /* ~That is the civilization. You either learn to swim or you drown. ~ #96714 */
  IF ~~ THEN REPLY @1786 /* ~What about the Spine of the World?  It sounds intriguing.~ #96727 */ GOTO 905
  IF ~~ THEN REPLY @1787 /* ~If anything, I bet Spine of the World has plenty of sights and hidden riches.~ #96727 */ GOTO 905
END

IF ~~ THEN BEGIN 905 // from: 196.0
  SAY @1788 /* ~Ah, yes. Frozen wastes of Icewind Dale, vast and unfathomable, hold many mysteries. One can never be sure what ancient secret might be stumbled upon by chance.~ #96715 */
  IF ~~ THEN GOTO 906
END

IF ~~ THEN BEGIN 906 // from: 196.1
  SAY @1789 /* ~I've been able to plunder a few monasteries and ruins there as well as slaughter some impressive beasts. The climate and inhabitants are quite different and harsher than South, but the sights can be impressive. ~ #96716 */
  IF ~~ THEN GOTO 907
END

IF ~~ THEN BEGIN 907 // from: 196.1
  SAY @1790 /* ~Much of the land is covered in eternal snow, always shifting but unchanging. Amidst all the ice, even time seems to come to a still. It can test your potential to the very limits.~ #96716 */
  IF ~~ THEN GOTO 908
END

IF ~~ THEN BEGIN 908 // from: 196.1
  SAY @1791 /* ~There is savage beauty to be fond there. And it will not allow for any weakness.~ #96716 */
  IF ~~ THEN REPLY @1792 /* ~You make it sound truly impressive. Perhaps we could go there someday.~ #96727 */ GOTO 909
  IF ~~ THEN REPLY @1793 /* ~I didn't know you are such a poet, Dorn. It's almost... disconcerting.~ #96727 */ GOTO 910
END

IF ~~ THEN BEGIN 909 // from: 196.2
  SAY @1794 /* ~No need to rush. There are plenty of deadly places here, <CHARNAME>.~ #96717 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 910 // from: 196.2
  SAY @1795 /* ~Very amusing, <CHARNAME>. I simply give credit where credit is due.~ #96717 */
  IF ~~ THEN EXIT
END

IF WEIGHT #56 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",26)
~ THEN BEGIN 911 // from:
  SAY @1796 /* ~I shared much of my past. Now it is your turn. Tell me of that Gorion of yours. You don't menton him much.~ #96689 */
  IF ~~ THEN REPLY @1797 /* ~Gorion was a Harper and a meddler. I despised being under his constant supervision.~ #96695 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 913
  IF ~~ THEN REPLY @1798 /* ~Gorion. He was a family I suppose, much like Imoen. I never cared much for him.~ #96696 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 913
  IF ~~ THEN REPLY @1799 /* ~Gorion was a father where I had none. I sorely miss him.~ #96697 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 912
END

IF ~~ THEN BEGIN 912 // from: 181.1
  SAY @1800 /* ~I'm surprised to hear such sentiment from you <CHARNAME>. It looks like you still have some growing up to do.~ #96692 */
  IF ~~ THEN GOTO 913
END

IF ~~ THEN BEGIN 913 // from: 180.2 180.1 180.0
  SAY @1801 /* ~And your mother? I suppose you never met her?~ #96690 */
  IF ~~ THEN REPLY @1802 /* ~When giving birth to a child of Bhaal, mothers usually die.~ #96698 */ GOTO 914
  IF ~~ THEN REPLY @1803 /* ~I never met her. Apparently she was Gorion's lover, but I do not know much else.~ #96699 */ GOTO 915
  IF ~~ THEN REPLY @1804 /* ~She died giving birth to me. ~ #96700 */ GOTO 914
END

IF ~~ THEN BEGIN 914 // from: 183.0 181.2 181.0
  SAY @1805 /* ~So, you never had true parents raise you, only your foster father, a bunch of dried up monks and that insipid pink nuisance for a company. How does that make you feel? Do you have any regrets?~ #96691 */
  IF ~~ THEN REPLY @1806 /* ~How dare you speak of it so lightly? Does this amuse you? Get lost, Dorn! ~ #96701 */ GOTO 916
  IF ~~ THEN REPLY @1807 /* ~I don't miss what I never had, and loses made me stronger. At least I got education and some safety in the early years. ~ #96702 */ GOTO 917
  IF ~~ THEN REPLY @1808 /* ~I don't care in the slightest. The past is behind me and my destiny is my sole focus now.~ #96703 */ GOTO 917
END

IF ~~ THEN BEGIN 915 // from: 181.1
  SAY @1809 /* ~Gorion's lover somehow got pregnant with Bhaal? Curious.~ #96692 */
  IF ~~ THEN GOTO 914
END

IF ~~ THEN BEGIN 916 // from: 185.0 182.0
  SAY @1811 /* ~So I struk a nerve. I hope you sort out your weakness before it sorts itself for you.~ #96693 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 917 // from: 182.1
  SAY @1812 /* ~Very good attitude. The past is past, the future is what matters.~ #96694 */
  IF ~~ THEN GOTO 918
END

IF ~~ THEN BEGIN 918 // from: 183.0 181.2 181.0
  SAY @1813 /* ~Setting into the world you reached for more than you could have been had you lived your life closed behind the dusty library in Candlekeep. I suspect that would not be possible had Gorion still lived.~ #96691 */
  IF ~~ THEN REPLY @1814 /* ~I agree. No doubt he would try to hold me back with his teachings. ~ #96701 */ GOTO 919
  IF ~~ THEN REPLY @1815 /* ~I think he might be actively try to stop me. ~ #96702 */ GOTO 919
END

IF ~~ THEN BEGIN 919 // from: 182.1
  SAY @1816 /* ~That is the core of the matter. Many others will try to hold you back with their simplistic notions of morality, forcing their narrow views of right or wrong.~ #96694 */
  IF ~~ THEN GOTO 920
END

IF ~~ THEN BEGIN 920 // from: 182.1
  SAY @1817 /* ~What matters is attainig power and only those willing to make sacrifices attain it.~ #96694 */
  IF ~~ THEN GOTO 921
END

IF ~~ THEN BEGIN 921 // from: 182.1
  SAY @1818 /* ~It is good to see you have set your path and posess determination to follow it.~ #96694 */
  IF ~~ THEN EXIT
END

IF WEIGHT #57 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",32)
~ THEN BEGIN 922 // from:
  SAY @1819 /* ~There is something on my mind for a while now. I have a question for you <CHARNAME>.~ #96705 */
  IF ~~ THEN REPLY @1820 /* ~I've had it with your blathering about, Dorn. Your questions don't matter, so silence yourself.~ #96718 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 923
  IF ~~ THEN REPLY @1821 /* ~A question? You are getting quite talkative. I like it.~ #96719 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 924
  IF ~~ THEN REPLY @1822 /* ~Spit it out, you have my attention.~ #96720 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 925
END

IF ~~ THEN BEGIN 923 // from: 187.0
  SAY @1823 /* ~I will let this insult slide, since I am in the generous mood, fool, but you may consider your wish fulfilled.~ #96706 */
IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 924 // from: 187.2
  SAY @1824 /* ~I'm not doing it for your benefit.~ #96707 */
  IF ~~ THEN GOTO 925
END

IF ~~ THEN BEGIN 925 // from: 189.0 188.0 187.1
  SAY @1825 /* ~You are mostly aware of my opinion on how the matters should be dealt with. Yet you produce results doing things quite differently. ~ #96708 */
  IF ~~ THEN REPLY @1826 /* ~Strict grip on situation, long term planing and methodical thinking produce the greatest benefit in the end.~ #96721 */ GOTO 926
  IF ~~ THEN REPLY @1827 /* ~I may be a bit more erratic than you, but the passion is the key to strength and success.~ #96722 */ GOTO 927
  IF ~~ THEN REPLY @1828 /* ~Balance is a must. The goal is my primary concern but it should be adapted to, and exploited as much as possible.~ #96723 */ GOTO 928
END

IF ~~ THEN BEGIN 926 // from: 190.0
  SAY @1829 /* ~Yes, I've noticed your systhematic approach. It takes time and patience, but I find your subversions thrilling.~ #96709 */
  IF ~~ THEN GOTO 929
END

IF ~~ THEN BEGIN 927 // from: 190.0
  SAY @1830 /* ~Indeed. I understand the art of letting your urges take the control. Passion is vital to life.~ #96709 */
  IF ~~ THEN GOTO 930
END

IF ~~ THEN BEGIN 928 // from: 190.0
  SAY @1831 /* ~I understand. Your ability to adapt has managed to let you get the most out of any situation. It is admirable.~ #96709 */
  IF ~~ THEN GOTO 931
END

IF ~~ THEN BEGIN 929  // from: 191.0 190.2 190.1
  SAY @1832 /* ~So you believe in order? Is ruthlessness and ambition the way you operate?~ #96710 */
  IF ~~ THEN REPLY @1833 /* ~Yes. The capable can exploit the systems to their own ends and hidden blades work best. ~ #96724 */ GOTO 932
  IF ~~ THEN REPLY @1834 /* ~I do. Enemies should not see me coming, before it is way too late.~ #96725 */ GOTO 932
END

IF ~~ THEN BEGIN 930  // from: 191.0 190.2 190.1
  SAY @1835 /* ~So you do not think and analyze? You let the heat of the moment take you and let the chaos take it's course?~ #96710 */
  IF ~~ THEN REPLY @1836 /* ~Yes. Only chaos offers the truth. Entropy will swallow everything in it's path in the end. ~ #96724 */ GOTO 933
  IF ~~ THEN REPLY @1837 /* ~The thrills I can get and that I take make the meaning of the freedom for me, yes.~ #96725 */ GOTO 933
END

IF ~~ THEN BEGIN 931  // from: 191.0 190.2 190.1
  SAY @1838 /* ~So you do not concern yourself with freedom or rules? You simply do what needs to be done, never taking sides?~ #96710 */
  IF ~~ THEN REPLY @1839 /* ~Yes. The order or chaos do not matter to me. Only whatever suits my needs matters. ~ #96724 */ GOTO 934
  IF ~~ THEN REPLY @1840 /* ~I believe in active balance, and using whatever tools are required.~ #96725 */ GOTO 934
END

IF ~~ THEN BEGIN 932 // from: 190.0
  SAY @1841 /* ~Your actions are cunning, slick and charismatic. You hold back, control, manipulate and crush. I believe I understand the benefits of your approach.~ #96709 */
  IF ~~ THEN GOTO 935
END

IF ~~ THEN BEGIN 933 // from: 190.0
  SAY @1842 /* ~You are passionate, dangerous and unpredictable. It makes you a storm that no enemy can resist. You make a very compelling argument.~ #96709 */
  IF ~~ THEN GOTO 935
END

IF ~~ THEN BEGIN 934 // from: 190.0
  SAY @1843 /* ~You walk on the edge, free from the pull of the extremes and unburdened by their demands. It is subtle and blunt at the same time. It is interesting.~ #96709 */
  IF ~~ THEN GOTO 935
END

IF ~~ THEN BEGIN 935 // from: 192.0
  SAY @1844 /* ~Still, if anything, it simply proves that there are many roads to realizing one's potential.~ #96711 */
  IF ~~ THEN GOTO 936
END

IF ~~ THEN BEGIN 936  // from: 191.0 190.2 190.1
  SAY @1845 /* ~I know what worked for me so far, and I never concerned myself much with the variety of the tools used.~ #96710 */
  IF ~~ THEN REPLY @1846 /* ~And what exactly works for you, Dorn? ~ #96724 */ GOTO 937
  IF ~~ THEN REPLY @1847 /* ~Maybe it is time to reexamine your methods.~ #96725 */ GOTO 937
END

IF ~~ THEN BEGIN 937 // from: 192.2
  SAY @1848 /* ~Like any other force to be reckoned with, I do as I please...~ #96713 */
  IF ~~ THEN REPLY @1849 /* ~But...?~ #96725 */ GOTO 938
END

IF ~~ THEN BEGIN 938 // from: 192.0
  SAY @1850 /* ~I made mistakes. I led myself into a corner by impulsiveness and that should not stand. To fulfill my needs I should strengthen my resolve.~ #96711 */
  IF ~~ THEN REPLY @1851 /* ~It is good you can learn from your mistakes.~ #96724 */ GOTO 939
  IF ~~ THEN REPLY @1852 /* ~Resolve to do what? You need a goal.~ #96725 */ GOTO 939
END

IF ~~ THEN BEGIN 939 // from: 190.0
  SAY @1853 /* ~I want to satiate my lust, and I crave power and blood.~ #96709 */
  IF ~~ THEN GOTO 940
END

IF ~~ THEN BEGIN 940 // from: 190.0
  SAY @1854 /* ~That will not change. It is only the question of how it should be achieved.~ #96709 */
  IF ~~ THEN GOTO 941
END

IF ~~ THEN BEGIN 941 // from: 192.0
  SAY @1855 /* ~This matter requires careful consideration.~ #96711 */
  IF ~~ THEN REPLY @1856 /* ~There is also a matter of what power actually is.~ #96724 */ GOTO 942
  IF ~~ THEN REPLY @1857 /* ~Like I said, you should also consider what the power will be used for.~ #96725 */ GOTO 942
END

IF ~~ THEN BEGIN 942 // from: 192.0
  SAY @1858 /* ~What do you mean?~ #96711 */
  IF ~~ THEN REPLY @1859 /* ~Well, power is different for different people. You seem to know your mind. Just make sure you have a plan for the moment you achieve that power you crave.~ #96724 */ GOTO 943
END

IF ~~ THEN BEGIN 943 // from: 192.0
  SAY @1860 /* ~You provide an interesting insight. Your effectiveness gives you some measure of credibility, although you also have much to learn yet.~ #96711 */
  IF ~~ THEN REPLY @1861 /* ~Let me guess, you want to be the one who will teach me.~ #96724 */ GOTO 944
  IF ~~ THEN REPLY @1862 /* ~You propose an exchange of knowlegde?~ #96725 */ GOTO 944
END

IF ~~ THEN BEGIN 944 // from: 192.2
  SAY @1863 /* ~You should take an opportunity when it presents itself.~ #96713 */
  IF ~~ THEN GOTO 945
END

IF ~~ THEN BEGIN 945 // from: 195.0 194.0 193.0
  SAY @1864 /* ~And our relationship has been friutful so far, has it not? ~ #96714 */
  IF ~~ THEN REPLY @1865 /* ~I'm still undecided. You will need to convince me... harder.~ #96727 */ GOTO 946
  IF ~~ THEN REPLY @1866 /* ~Fruitful indeed. And soon ripe for the taking. If you catch my drift.~ #96728 */ GOTO 946
  IF ~~ THEN REPLY @1867 /* ~I'm willing to give you some credit. We shall see.~ #96729 */ GOTO 946
END

IF ~~ THEN BEGIN 946 // from: 196.0
  SAY @1868 /* ~You may tease, but you know I'm right. Let us press onward.~ #96715 */
  IF ~~ THEN EXIT
END

IF WEIGHT #58 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",34)
~ THEN BEGIN 947 // from:
  SAY @1869 /* ~Do you find me intimidating, <CHARNAME>?~ #96705 */
  IF ~~ THEN REPLY @1870 /* ~Yes. But only in a sense that sometimes even Wild magic gives more predictable results than a conversation with you.~ #96718 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 948
  IF ~~ THEN REPLY @1871 /* ~One undoubtedly needs to be careful around you, Dorn, at the very least.~ #96719 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 948
  IF ~~ THEN REPLY @1872 /* ~No. You will be dealt with if neccessary, although I'd rather not see this happen.~ #96720 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 949
  IF ~~ THEN REPLY @1873 /* ~I don't buy or appreciate your act, Dorn. You have many other qualities that I prefer.~ #96720 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 949
END

IF ~~ THEN BEGIN 948 // from: 187.2
  SAY @1874 /* ~Ha! Good point. It is only reasonable you should be on your toes a bit.~ #96707 */
  IF ~~ THEN GOTO 950
END

IF ~~ THEN BEGIN 949 // from: 187.2
  SAY @1875 /* ~Ha! They say there is a thin line between the foolish and the brave. Think about it.~ #96707 */
  IF ~~ THEN GOTO 950
END

IF ~~ THEN BEGIN 950 // from: 189.0 188.0 187.1
  SAY @1876 /* ~After all, I'm aware of the effect I have on others. My skills do merit such reactions, wouldn't you agree?~ #96708 */
  IF ~~ THEN REPLY @1877 /* ~Well, you are many thing but above all- dangerous.~ #96721 */ GOTO 1050
  IF ~~ THEN REPLY @1878 /* ~That much is true. Weak should cower before the strong.~ #96722 */ GOTO 951
  IF ~~ THEN REPLY @1879 /* ~Physical intimidation is for amateurs. I prefer your will and charisma.~ #96723 */ GOTO 952
END

IF ~~ THEN BEGIN 951 // from: 187.2
  SAY @1880 /* ~Yes. But will and personality complement the physical prowess.~ #96707 */
  IF ~~ THEN GOTO 1050
END

IF ~~ THEN BEGIN 952 // from: 187.2
  SAY @1881 /* ~That is understandable. But I'm not sure you can completely divorce physical from mental.~ #96707 */
  IF ~~ THEN GOTO 1050
END

IF ~~ THEN BEGIN 1050 // from: 189.0 188.0 187.1
  SAY @2037 /* ~Why did you seek to be with me in the end?~ #96708 */
  IF ~~ THEN REPLY @2038 /* ~You are very attractive in a rugged way. That, and your skills.~ #96721 */ GOTO 1051
  IF ~~ THEN REPLY @2039 /* ~I find you intriguing, physically and mentally, I guess.~ #96722 */ GOTO 1051
  IF ~~ THEN REPLY @2040 /* ~I believe you are an all-around worthy mate.~ #96723 */ GOTO 1051
END

IF ~~ THEN BEGIN 1051 // from: 187.2
  SAY @2041 /* ~You flatter, but your reasons are your own in the end.~ #96707 */
  IF ~~ THEN GOTO 953
END

IF ~~ THEN BEGIN 953 // from: 189.0 188.0 187.1
  SAY @1882 /* ~What I'm saying is that you might want to consider all of the elements composing the bigger picture. That includes everybody and everything you deal with. ~ #96708 */
  IF ~~ THEN REPLY @1883 /* ~Thanks for the advice. Now, why exactly are you telling me this?~ #96721 */ GOTO 954
  IF ~~ THEN REPLY @1884 /* ~Unexpected advice, coming from you.~ #96722 */ GOTO 954
END

IF ~~ THEN BEGIN 954 // from: 187.2
  SAY @1885 /* ~Your reaction only shows I was right when I said you have much to learn.~ #96707 */
  IF ~~ THEN GOTO 1031
END

IF ~~ THEN BEGIN 1031 // from: 187.2
  SAY @1886 /* ~I wanted to see what do you make of me after all this time. Whether we want it or not, we are coming closer, and that opens some questions.~ #96707 */
  IF ~~ THEN GOTO 956
END

IF ~~ THEN BEGIN 955 // from: 187.2
  SAY @1887 /* ~The most pressing being the issue of commitment to your, now our, cause. I am becoming a part of your path, you need to make sure you see me as a partner.~ #96707 */
  IF ~~ THEN GOTO 956
END

IF ~~ THEN BEGIN 956 // from: 189.0 188.0 187.1
  SAY @1888 /* ~You are aware by now I despise betrayal, <CHARNAME>. I'm simply asking that you give your word and keep it.~ #96708 */
  IF ~~ THEN REPLY @1889 /* ~Better late than never I guess. You have my word, Dorn, for what it's worth. You are more than a tool to me. ~ #96721 */ GOTO 958
  IF ~~ THEN REPLY @1890 /* ~Are you trying to manipulate your way into my good stead? Because this pathetic attempt is hilarious.~ #96722 */ GOTO 957
END

IF ~~ THEN BEGIN 957 // from: 187.0
  SAY @1891 /* ~I see. You're a greater fool than you'll ever know, but so be it. We are through.~ #96706 */
IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 958 // from: 187.2
  SAY @1892 /* ~And you have mine, this I promise.~ #96707 */
  IF ~~ THEN GOTO 959
END

IF ~~ THEN BEGIN 959 // from: 187.2
  SAY @1893 /* ~While only actions matter in the end, it pleases me that we confirmed our mutual understanding.~ #96707 */
  IF ~~ THEN EXIT
END

IF WEIGHT #59 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",36)
~ THEN BEGIN 960 // from:
  SAY @1894 /* ~I have been thinking back to our conversation about the methods and the goal.~ #96705 */
  IF ~~ THEN REPLY @1895 /* ~I remember. You were curious whether I lean toward subtlety or bluntness.~ #96718 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 963
  IF ~~ THEN REPLY @1896 /* ~I have no idea what you are talking about. Not wearing helmet into battle was a bad idea, I knew it.~ #96719 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 961
  IF ~~ THEN REPLY @1897 /* ~You mean order versus chaos, right? You know my answer already.~ #96720 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 963
  IF ~~ THEN REPLY @1898 /* ~This won't turn into another lecture I hope?~ #96720 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 962
END

IF ~~ THEN BEGIN 961 // from: 187.2
  SAY @1899 /* ~Shall we test if your dull wit is an adequate protection instead?~ #96707 */
  IF ~~ THEN GOTO 963
END

IF ~~ THEN BEGIN 962 // from: 187.2
  SAY @1900 /* ~Insolence. Not a referenshing perspective from you.~ #96707 */
  IF ~~ THEN GOTO 963
END

IF ~~ THEN BEGIN 963 // from: 189.0 188.0 187.1
  SAY @1901 /* ~Your answers required consideration, on the merit they brought us a long way.~ #96708 */
  IF ~~ THEN REPLY @1902 /* ~It almost sounds like you would listen to my advice.~ #96721 */ GOTO 964
  IF ~~ THEN REPLY @1903 /* ~Does that mean there is a conclusion?~ #96722 */ GOTO 964
  IF ~~ THEN REPLY @1904 /* ~I do. I'm glad to see you thought about it.~ #96723 */ GOTO 964
END

IF ~~ THEN BEGIN 964 // from: 189.0 188.0 187.1
  SAY @1905 /* ~Yes, almost. I concluded there might be gain in modifying my approach to problem solving. On the other hand it seems like a bother, when my present methods seem to be satisfying enough. It's a crossroad it seems.~ #96708 */
  IF ~~ THEN REPLY @1906 /* ~Truly? Didn't you already admit you make some, misjudgements, as you call them?~ #96721 */ GOTO 965
  IF ~~ THEN REPLY @1907 /* ~Do whatever pleases you. You should be capable of assessing the situation and make your own choice in the end.~ #96722 */ GOTO 965
END

IF ~~ THEN BEGIN 965 // from: 189.0 188.0 187.1
  SAY @1908 /* ~It is not a choice to be made lightly in any case.~ #96708 */
  IF ~~ THEN REPLY @1909 /* ~You know my opinion. Structure is important.~ #96721 */ GOTO 966
  IF ~~ THEN REPLY @1910 /* ~You know my opinion. Freedom is paramount.~ #96722 */ GOTO 967
  IF ~~ THEN REPLY @1911 /* ~You know my opinion. Balance is crucial.~ #96722 */ GOTO 968
END

IF ~~ THEN BEGIN 966 // from: 189.0 188.0 187.1
  SAY @1912 /* ~You may be right. I might benefit from using the constrain to my advantage and more subtle tools of power.~ #96708 */
  IF ~~ THEN REPLY @1913 /* ~Evolving is good. I trust it will lead you to greater heights.~ #96721 */ GOTO 969
END

IF ~~ THEN BEGIN 967 // from: 189.0 188.0 187.1
  SAY @1914 /* ~You may be right. I might benefit from letting my desires guide my path.~ #96708 */
  IF ~~ THEN REPLY @1913 /* ~Evolving is good. I trust it will lead you to greater heights.~ #96721 */ GOTO 970
END

IF ~~ THEN BEGIN 968 // from: 189.0 188.0 187.1
  SAY @1915 /* ~You may be right. I might benefit from adapting to a situation as is required. ~ #96708 */
  IF ~~ THEN REPLY @1913 /* ~Evolving is good. I trust it will lead you to greater heights.~ #96721 */ GOTO 971
END

IF ~~ THEN BEGIN 969 // from: 187.2
  SAY @1916 /* ~I believe it will. Relative stability will offer room for some intresting opportunities.~ #96707 */
IF ~~ DO ~ChangeAlignment("Dorn",LAWFUL_EVIL)
~ GOTO 972
END

IF ~~ THEN BEGIN 970 // from: 187.2
  SAY @1917/* ~I believe it will. I find passion and force to be excellent motivators.~ #96707 */
IF ~~ DO ~ChangeAlignment("Dorn",CHAOTIC_EVIL)
~ GOTO 972
END

IF ~~ THEN BEGIN 971 // from: 187.2
  SAY @1918 /* ~I believe it will. There should be much less room for setbacks and surprises now.~ #96707 */
  IF ~~ THEN GOTO 972
END

IF ~~ THEN BEGIN 972 // from: 189.0 188.0 187.1
  SAY @1919 /* ~It will probaly take time to fully adapt to new concepts but it seems I have chosen my course for now.~ #96708 */
  IF ~~ THEN REPLY @1920 /* ~That you did. ~ #96721 */ GOTO 973
  IF ~~ THEN REPLY @1921 /* ~Whatever you say. No skin off my back.~ #96722 */ GOTO 973
  IF ~~ THEN REPLY @1922 /* ~I like what I'm seeing. Even more than usual, I mean.~ #96722 */ GOTO 973
END

IF ~~ THEN BEGIN 973 // from: 189.0 188.0 187.1
  SAY @1923 /* ~I am pleased. Very pleased. There is excitement in this future potential alone. Do you feel it? I think I should reward you, perhaps mount you right here and now.~ #96708 */
  IF ~~ THEN REPLY @1924 /* ~Dorn! This is not the time or place for this! ~ #96721 */ GOTO 1032
  IF ~~ THEN REPLY @1925 /* ~I'm game if you are.~ #96722 */ GOTO 1032
  IF ~~ THEN REPLY @1926 /* ~Sounds like my kind of reward. But wait until later.~ #96722 */ GOTO 1032
END

IF ~~ THEN BEGIN 1032 // from: 189.0 188.0 187.1
  SAY @1927 /* ~Come here, <CHARNAME>. Do you feel this? It is for you. And I look forward to giving it to you.~ #96708 */
  IF ~~ THEN REPLY @1928 /* ~You are impossible! ~ #96721 */ GOTO 974
  IF ~~ THEN REPLY @1929 /* ~My, how interesting. We should explore it further.~ #96722 */ GOTO 974
  IF ~~ THEN REPLY @1930 /* ~Release me this instant!~ #96722 */ GOTO 974
END

IF ~~ THEN BEGIN 974 // from: 187.2
  SAY @1931 /* ~Ha! Look at you squirm! Don't worry, <CHARNAME>, everything in it's due course. At least now you have something to look forward to tonight.~ #96707 */
  IF ~~ THEN GOTO 975
END

IF ~~ THEN BEGIN 975 // from: 189.0 188.0 187.1
  SAY @1932 /* ~For now you should be at ease, knowing that with me by your side, success is imminent. We have an understanding and I tru...~ #96708 */
  IF ~~ THEN REPLY @1933 /* ~What were you about to say?~ #96722 */ GOTO 976
END

IF ~~ THEN BEGIN 976 // from: 187.2
  SAY @1934 /* ~I... No, it is nothing.~ #96707 */
  IF ~~ THEN REPLY @1936 /* ~Dorn?~ #96722 */ GOTO 977
END

IF ~~ THEN BEGIN 977 // from: 187.2
  SAY @1935 /* ~Let us just continue on. I have to think.~ #96707 */
  IF ~~ THEN EXIT
END

IF WEIGHT #60 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",38)
~ THEN BEGIN 978 // from:
  SAY @1937 /* ~I'm not in the mood to talk. Stop tempting my ire with your blundering attempts, <PRO_RACE>.~ #96754 */
    IF ~~ THEN REPLY @1938 /* ~Hearing threats from you is certainly refreshing.~ #96799 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 979
  IF ~~ THEN REPLY @1939 /* ~Sulking like a spoiled brat won't solve anything, Dorn.~ #96801 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 979
  IF ~~ THEN REPLY @1940 /* ~Your foul moods are of no concern to me, half-orc.~ #96802 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 979
END

IF ~~ THEN BEGIN 979 // from: 225.0
  SAY @1941 /* ~Are you deaf? I said to leave me alone.~ #96760 */
  IF ~~ THEN REPLY @1942 /* ~I'm waiting.~ #96803 */ GOTO 980
  IF ~~ THEN REPLY @1943 /* ~I won't go anywhere.~ #96804 */ GOTO 980
END

IF ~~ THEN BEGIN 980 // from: 224.0
  SAY @1944 /* ~What in the Abyss do you want from me, <CHARNAME>? I've nothing to say!~ #96755 */
  IF ~~ THEN REPLY @1945 /* ~Do I look stupid? You're bothered by something. Let's hear it.~ #96803 */ GOTO 981
  IF ~~ THEN REPLY @1946 /* ~Brooding won't solve anything. You claim we are partners. Speak.~ #96804 */ GOTO 981
  IF ~~ THEN REPLY @1947 /* ~I will not be treated like this. I will have answers.~ #96806 */ GOTO 981
END

IF ~~ THEN BEGIN 981 // from: 224.1
  SAY @1948 /* ~If I decide to speak, it shall be when I'm ready.~ #96756 */
  IF ~~ THEN GOTO 982
END

IF ~~ THEN BEGIN 982 // from: 224.3
  SAY @1949 /* ~Now leave, I need time to think.~ #96757 */
  IF ~~ THEN EXIT
END

IF WEIGHT #61 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",40)
~ THEN BEGIN 983 // from:
  SAY @1950 /* ~I'm ready to talk now, <CHARNAME>. Will you listen?~ #96705 */
  IF ~~ THEN REPLY @1951 /* ~So, you finally decided to speak. Say your peace then.~ #96718 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 984
  IF ~~ THEN REPLY @1952 /* ~I'm not sure whether I care anymore.~ #96719 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 984
  IF ~~ THEN REPLY @1953 /* ~Very well. This better be worth all that brooding about.~ #96720 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 984
END

IF ~~ THEN BEGIN 984 // from: 187.2
  SAY @1954 /* ~Be patient and listen, this is important.~ #96707 */
  IF ~~ THEN GOTO 985
END

IF ~~ THEN BEGIN 985 // from: 187.2
  SAY @1955 /* ~I thought much about our partnership and how we gave our word to see this through together.~ #96707 */
  IF ~~ THEN GOTO 986
END

IF ~~ THEN BEGIN 986 // from: 187.2
  SAY @1956 /* ~In that instant I realized your effect on me was greater than I thought, and it is worrisome. It is weak of me to let myself be influenced in such manner.~ #96707 */
  IF ~~ THEN GOTO 987
END

IF ~~ THEN BEGIN 987 // from: 189.0 188.0 187.1
  SAY @1957 /* ~I should be wary. I will not allow you to be my or our downfall in the end.~ #96708 */
  IF ~~ THEN REPLY @1958 /* ~You cannot be serious. You're basically accusing me of talking to you.~ #96721 */ GOTO 988
  IF ~~ THEN REPLY @1959 /* ~You're delusional. People influence each other all the time.~ #96722 */ GOTO 988
  IF ~~ THEN REPLY @1960 /* ~Why is that bad? You said yourself change felt good.~ #96723 */ GOTO 988
END

IF ~~ THEN BEGIN 988 // from: 187.2
  SAY @1961 /* ~I'm not talking only about our philosophical sparring. What bothers me most is something else.~ #96707 */
  IF ~~ THEN GOTO 989
END

IF ~~ THEN BEGIN 989 // from: 187.2
  SAY @1962 /* ~It is the fact that you slowly managed to make me tolerate things from you that would leave many other people permanently disabled or worse.~ #96707 */
  IF ~~ THEN GOTO 990
END

IF ~~ THEN BEGIN 990 // from: 187.2
  SAY @1963 /* ~Remember when I asked you if you find me intimidating? Your answer didn't truly matter, because you did not to be intimidated in the end.~ #96707 */
  IF ~~ THEN GOTO 991
END

IF ~~ THEN BEGIN 991 // from: 189.0 188.0 187.1
  SAY @1964 /* ~There must be boundaries and they should be clearly defined. This must not stand.~ #96708 */
  IF ~~ THEN REPLY @1965 /* ~Dorn, this goes both ways. I gave my word, remember?~ #96721 */ GOTO 992
  IF ~~ THEN REPLY @1966 /* ~I have also let myself be affected by cooperating with you, Dorn!~ #96722 */ GOTO 992
END

IF ~~ THEN BEGIN 992 // from: 189.0 188.0 187.1
  SAY @1967 /* ~You drove me to submit myself! Inexcusable!~ #96708 */
  IF ~~ THEN REPLY @1968 /* ~I did no such thing! You accepted my advice of your own volition!~ #96721 */ GOTO 993
  IF ~~ THEN REPLY @1969 /* ~Cooperation is not submission!~ #96722 */ GOTO 993
END

IF ~~ THEN BEGIN 993 // from: 187.2
  SAY @1970 /* ~As if you know what you're talking about!~ #96707 */
  IF ~~ THEN GOTO 994
END

IF ~~ THEN BEGIN 994 // from: 189.0 188.0 187.1
  SAY @1971 /* ~I have no doubt you have the answer, so what is the solution to this problem then? You are like any other fool with abundance of opinions.~ #96708 */
  IF ~~ THEN REPLY @1972 /* ~Calm down. What you describe are normal parts of any relationship.~ #96721 */ GOTO 995
  IF ~~ THEN REPLY @1973 /* ~I expected you to have stronger will than this. Learning is not defeat.~ #96722 */ GOTO 995
  IF ~~ THEN REPLY @1974 /* ~You are making the problem out of having a bond. It seems to me something else is the problem here. Again.~ #96721 */ GOTO 995
  IF ~~ THEN REPLY @1975 /* ~You truly expexted to be completely uninfluenced by forming an intimate relationship?~ #96722 */ GOTO 995
END

IF ~~ THEN BEGIN 995 // from: 187.2
  SAY @1976 /* ~Hah! An expected answer. I do not know why I even listen to you. ~ #96707 */
  IF ~~ THEN REPLY @1977 /* ~Because you know I'm right.~ #96722 */ GOTO 996
  IF ~~ THEN REPLY @1978 /* ~You expect to have close relation and be distant at the same time.~ #96721 */ GOTO 996
  IF ~~ THEN REPLY @1979 /* ~You will need to start thinking clearly and decide what you want.~ #96722 */ GOTO 996
END

IF ~~ THEN BEGIN 996 // from: 187.2
  SAY @1980 /* ~That is easy for you to say. ~ #96707 */
  IF ~~ THEN REPLY @1981 /* ~Dorn, I've proven my intentions and gave my word. You will need to decide.~ #96722 */ GOTO 997
  IF ~~ THEN REPLY @1982 /* ~I thought you appreciate simple solutions. My actions have made my point clear for me.~ #96721 */ GOTO 997
END

IF ~~ THEN BEGIN 997 // from: 187.2
  SAY @1983 /* ~...~ #96707 */
  IF ~~ THEN GOTO 998
END

IF ~~ THEN BEGIN 998 // from: 187.2
  SAY @1984 /* ~Very well.~ #96707 */
  IF ~~ THEN GOTO 999
END

IF ~~ THEN BEGIN 999 // from: 187.2
  SAY @1985 /* ~I will accept your reasoning. Again. But do not expect me to form a habit of seeking your coucil on regular basis.~ #96707 */
  IF ~~ THEN GOTO 1000
END

IF ~~ THEN BEGIN 1000 // from: 187.2
  SAY @1986 /* ~It seems we can put this matter to rest then. You better appreciate this concession I made for you. ~ #96707 */
  IF ~~ THEN REPLY @1987 /* ~I would ask for no more.~ #96722 */ GOTO 1001
  IF ~~ THEN REPLY @1988 /* ~That I do. I need you ready for the trials ahead.~ #96721 */ GOTO 1001
END

IF ~~ THEN BEGIN 1001 // from: 187.2
  SAY @1989 /* ~Yes, well. .~ #96707 */
  IF ~~ THEN EXIT
END

IF WEIGHT #62 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",42)
~ THEN BEGIN 1002 // from:
  SAY @1990 /* ~I hope you do not have any plans for tonight, <CHARNAME>.~ #96754 */
    IF ~~ THEN REPLY @1991 /* ~Oh? And what if I do?~ #96799 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 1003
  IF ~~ THEN REPLY @1992 /* ~What are you saying?~ #96801 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 1003
  IF ~~ THEN REPLY @1993 /* ~Is this what I think it is?~ #96802 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 1003
END

IF ~~ THEN BEGIN 1003 // from: 225.0
  SAY @1994 /* ~I have a few plans for us. And I trust you will like them.~ #96760 */
  IF ~~ THEN REPLY @1995 /* ~You have my attention, definitely.~ #96803 */ GOTO 1005
  IF ~~ THEN REPLY @1996 /* ~Hm, I'm not easy to please, as you know.~ #96804 */ GOTO 1005
END

IF ~~ THEN BEGIN 1005 // from: 225.0
  SAY @1997 /* ~I know. <CHARNAME>, I desire you, and I've missed your passion. I want to please you as well as you please me.~ #96760 */
  IF ~~ THEN REPLY @1998 /* ~I'm definitely not complainig.~ #96803 */ GOTO 1006
  IF ~~ THEN REPLY @1999 /* ~The question is whether you deserve this? You have been a litle difficult after all.~ #96804 */ GOTO 1006
END

IF ~~ THEN BEGIN 1006 // from: 224.1
  SAY @2000 /* ~Consider our little talks as an extra spice, that might result in some interesting benefits. Even in the matters of lust.~ #96756 */
  IF ~~ THEN REPLY @2001 /* ~Intriguing. But you had me at "plans tonight".~ #96803 */ GOTO 1007
  IF ~~ THEN REPLY @2002 /* ~Very well, we will see. I look forward to it.~ #96804 */ GOTO 1007
END

IF ~~ THEN BEGIN 1007 // from: 224.3
  SAY @2004 /* ~Good. As you will see, I may have prepared a bit more than just a bedroll.~ #96757 */
  IF ~~ THEN REPLY @2005 /* ~Right. Now I'm really curious.~ #96804 */ GOTO 1008
END

IF ~~ THEN BEGIN 1008 // from: 224.3
  SAY @2003 /* ~Patience. I believe we will enjoy exploring what new options lie before us.~ #96757 */
  IF ~~ THEN EXIT
END

IF WEIGHT #63 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",48)
~ THEN BEGIN 1300 // from:
  SAY @2042 /* ~You once said power means different things to different people. I agree.~ #96754 */
    IF ~~ THEN REPLY @2043 /* ~And it just took scouring almost all of Amn.~ #96799 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 1301
  IF ~~ THEN REPLY @2044 /* ~Good, it is only reasonable. I suppose I know your answer.~ #96801 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 1302
END

IF ~~ THEN BEGIN 1301 // from: 224.3
  SAY @2045 /* ~You aren't doing it justice. It took scouring Spine of the World and Baldur's gate also.~ #96757 */
  IF ~~ THEN GOTO 1302
END

IF ~~ THEN BEGIN 1302 // from: 225.0
  SAY @2046 /* ~You know me, <CHARNAME>. I love things I'm good at: battle, strength, sex. I have no doubt we will achieve our goals, and then...~ #96760 */
  IF ~~ THEN REPLY @2047 /* ~Yes?~ #96803 */ GOTO 1303
END

IF ~~ THEN BEGIN 1303 // from: 225.0
  SAY @2048 /* ~The sights will go higher. New enemies constantly arise and at one time or another, someone might stop me, or us. That will be a deserved rest, but until then I want to experience and conquer what I desire.~ #96760 */
  IF ~~ THEN REPLY @2049 /* ~True enough. What about the finer qualities of life? Like indulgence and luxury?~ #96803 */ GOTO 1304
  IF ~~ THEN REPLY @2050 /* ~Agreed.~ #96804 */ GOTO 1304
END

IF ~~ THEN BEGIN 1304 // from: 224.1
  SAY @2051 /* ~I'm not ignoring or dismissing other kind of satisfactions life provides. If anything, I refined my tastes under your influence.~ #96756 */
  IF ~~ THEN REPLY @2052 /* ~So what is the conclusion of this?~ #96803 */ GOTO 1305
END

IF ~~ THEN BEGIN 1305 // from: 224.3
  SAY @2053 /* ~That some thing should not be sacrificed. I may not have the most restraint, nor do I desire to. But I believe I learned some patience.~ #96757 */
  IF ~~ THEN REPLY @2054 /* ~Surprising. Next thing I know, you'll start to develop a sense of humor.~ #96804 */ GOTO 1306
END

IF ~~ THEN BEGIN 1306 // from: 224.3
  SAY @2055 /* ~Nonsense. Where would that leave us? Your tongue is unimaginable evil enough for the world.~ #96757 */
  IF ~~ THEN REPLY @2056 /* ~...~ #96804 */ GOTO 1307
END

IF ~~ THEN BEGIN 1307 // from: 224.3
  SAY @2057 /* ~Start moving <CHARNAME>, the day is not getting any younger.~ #96757 */
  IF ~~ THEN EXIT
END

IF WEIGHT #64 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",50)
~ THEN BEGIN 1009 // from:
  SAY @2013 /* ~We are far along our path, <CHARNAME>.~ #96754 */
    IF ~~ THEN REPLY @2014 /* ~Yes, I believe we are nearing our goal.~ #96799 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 1010
  IF ~~ THEN REPLY @2015 /* ~I suspect we still have some way ahead of us.~ #96801 */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",5400)
~ GOTO 1010
END

IF ~~ THEN BEGIN 1010 // from: 225.0
  SAY @2016 /* ~We are far enough for me to warrant saying a few words. Listen to me carefully.~ #96760 */
  IF ~~ THEN REPLY @2017 /* ~Are you brewing another conflict? Let's hear it.~ #96803 */ GOTO 1012
  IF ~~ THEN REPLY @2018 /* ~I think I see where this is heading. Speak, I'm listening.~ #96804 */ GOTO 1012
  IF ~~ THEN REPLY @2019 /* ~Enough. I've had it with your constant strife. Shut up and get lost.~ #96804 */ GOTO 1011
END

IF ~~ THEN BEGIN 1011 // from: 187.0
  SAY @2020 /* ~I see my efforts were wasted on your idiocy. <CHARNAME>, we are done!~ #96706 */
IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 1012 // from: 224.3
  SAY @2021 /* ~Once you asked me if I was willing to bend to make this between us work. I was not.~ #96757 */
  IF ~~ THEN GOTO 1013
END

IF ~~ THEN BEGIN 1013 // from: 225.0
  SAY @2022 /* ~In time though, you managed to influence me to a greater degree that I would ever thought possible. I'm not an impressionable peasant, but I relied on your advice, and you stood by me through many trials and difficult battles. For that, I am grateful.~ #96760 */
  IF ~~ THEN REPLY @2023 /* ~Good. You should be.~ #96803 */ GOTO 1014
  IF ~~ THEN REPLY @2024 /* ~Not everything was easy but we made it through.~ #96804 */ GOTO 1014
END

IF ~~ THEN BEGIN 1014 // from: 224.3
  SAY @2025 /* ~Of course, I did the same thing for you. Which brings me to my next point.~ #96757 */
  IF ~~ THEN GOTO 1015
END

IF ~~ THEN BEGIN 1015 // from: 224.3
  SAY @2026 /* ~We have proven time and time again, that our added skills are enhanced, not diminished. Together we are stronger, even if you are starting to surpass me, which I do not admit lightly. Through all of this I realized.~ #96757 */
  IF ~~ THEN GOTO 1016
END

IF ~~ THEN BEGIN 1016 // from: 224.3
  SAY @2027 /* ~I trust you. Even more, I want to, foolish as it is.~ #96757 */
  IF ~~ THEN GOTO 1017
END

IF ~~ THEN BEGIN 1017 // from: 224.3
  SAY @2028 /* ~From the first moment I laid eyes upon you I knew there was something different. At first I thought I simply lust after your power. Later I realized I lust after you.~ #96757 */
  IF ~~ THEN GOTO 1018
END

IF ~~ THEN BEGIN 1018 // from: 224.1
  SAY @2029 /* ~And it is not just lust. You are truly unique, I admire you and I... care for you.~ #96756 */
  IF ~~ THEN REPLY @2030 /* ~I don't know what to say, Dorn. Just that I care deeply for you too.~ #96803 */ GOTO 1019
  IF ~~ THEN REPLY @2031 /* ~I'm pleased to see you've come around. Know that I share your feelings, Dorn.~ #96804 */ GOTO 1019
  IF ~~ THEN REPLY @2032 /* ~Quite the confession. I never thought you had it in you.~ #96804 */ GOTO 1019
END

IF ~~ THEN BEGIN 1019 // from: 224.1
  SAY @2033 /* ~You always had my loyalty, <CHARNAME>, and now you have even more.~ #96756 */
  IF ~~ THEN REPLY @2034 /* ~That is good to know.~ #96803 */ GOTO 1020
  IF ~~ THEN REPLY @2035 /* ~I will take your word for it.~ #96804 */ GOTO 1020
END

IF ~~ THEN BEGIN 1020 // from: 224.3
  SAY @2036 /* ~Indeed. I will be at your side no matter what it takes. We have long exceeded bonds of a simple partnership~ #96757 */
  IF ~~ THEN GOTO 1021
END

IF ~~ THEN BEGIN 1021 // from: 234.0
  SAY @470 /* ~Fate has brought us together for a reason. Our destiny is writ large in the stars. One day, all will cower before us.~ #96765 */
  IF ~~ THEN REPLY @471 /* ~And when that day comes, my love, what a celebration we shall have.~ #96807 */ GOTO 1022
  IF ~~ THEN REPLY @472 /* ~You have a magnificent way with words.~ #96808 */ GOTO 1023
  IF ~~ THEN REPLY @473 /* ~If you say so.~ #96809 */ GOTO 1024
END

IF ~~ THEN BEGIN 1022 // from: 235.0
  SAY @474 /* ~I like the sound of that.~ #96766 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1023 // from: 235.1
  SAY @475 /* ~Yes. I do.~ #96767 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1024 // from: 235.2
  SAY @476 /* ~I swear to you, they will. You just wait.~ #96768 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 89 // from: 88.1 88.0
  SAY @148 /* ~How did you allow this to happen?~ #96482 */
  IF ~~ THEN REPLY @149 /* ~Some fights cannot be won.~ #96483 */ GOTO 91
  IF ~~ THEN REPLY @150 /* ~Well, you know my love of cages and chains...~ #96484 */ GOTO 92
  IF ~~ THEN REPLY @151 /* ~I don't want to talk about it.~ #96485 */ GOTO 93
END

IF ~~ THEN BEGIN 90 // from: 88.2
  SAY @152 /* ~No, please. Tell me of this mage who single-handedly overcame, captured, and tortured you.~ #96486 */
  IF ~~ THEN REPLY @153 /* ~He didn't do it single-handedly.~ #96487 */ GOTO 91
  IF ~~ THEN REPLY @154 /* ~What part of "I'd rather not speak of it" do you not understand?~ #96488 */ GOTO 93
  IF ~~ THEN REPLY @155 /* ~Shut your mouth lest you feel some of what I did firsthand.~ #96489 */ GOTO 93
END

IF ~~ THEN BEGIN 91 // from: 92.0 90.0 89.0
  SAY @156 /* ~So this wizard and his minions overcame you.~ #96490 */
  IF ~~ THEN REPLY @157 /* ~Yes they did. Kind of like your companions and Simmeon overcame you.~ #96491 */ GOTO 94
  IF ~~ THEN REPLY @158 /* ~As I recall you also have some experience in that area. Got any tips for future reference? ~ #96492 */ GOTO 94
  IF ~~ THEN REPLY @159 /* ~To remind you: like you, Dorn, I didn't go down without a fight.~ #96493 */ GOTO 94
END

IF ~~ THEN BEGIN 92 // from: 89.1
  SAY @160 /* ~Very amusing, <CHARNAME>.~ #96497 */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 93 // from: 90.2 90.1 89.2
  SAY @161 /* ~I would be embarrassed too.~ #96498 */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 94 // from: 91.1
  SAY @162 /* ~Sulking is how you deal with harsh words? If I recall correctly, I was betrayed, not ambushed, <PRO_RACE>. There is a difference. ~ #96499 */
  IF ~~ THEN REPLY @163 /* ~In any case, nobody is completely immune to surprises.~ #96502 */ GOTO 99
  IF ~~ THEN REPLY @164 /* ~Be that as it may, how do you feel now about this whole Simmeon bussiness?~ #96504 */ GOTO 99
  IF ~~ THEN REPLY @166 /* ~Enough. Let's just keep to the road.~ #96504 */ GOTO 95
END

IF ~~ THEN BEGIN 95 // from: 91.2
  SAY @165 /* ~Whatever stokes your ego,<PRO_RACE>.~ #96506 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.2
  SAY @166 /* ~Whenever you're ready to collect.~ #96509 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.1
  SAY @167 /* ~Gladly!~ #96511 */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.0
  SAY @168 /* ~I am at that, and am glad to do so. If this is how you deal with harsh words, I'd hate to count on you in actual battle.~ #96512 */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 91.0
  SAY @167 /* ~I had my vengeance and my former companions are dust in the wind, of no further concern to me.~ #96513 */
  IF ~~ THEN GOTO 863
END

IF ~~ THEN BEGIN 863 // from: 91.0
  SAY @168 /* ~All the same, <CHARNAME>, I learned form it. One has to be prepared, self-sufficient and exact proper vengeance for transgressions.~ #96513 */
  IF ~~ THEN GOTO 864
END

IF ~~ THEN BEGIN 864 // from: 91.0
  SAY @169 /* ~No doubt my skill will be of use in achieving this goal, but you must be prepared. The stakes grow ever higher and mistakes increasingly lethal.~ #96513 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1360 // from: 234.0
  SAY @2006 /* ~Fate .~ #96765 */
  IF ~~ THEN REPLY @2007 /* ~what ahave.~ #96807 */ GOTO 1361
  IF ~~ THEN REPLY @2008 /* ~You with words.~ #96808 */ GOTO 1362
  IF ~~ THEN REPLY @2009 /* ~If so.~ #96809 */ GOTO 1363
END

IF ~~ THEN BEGIN 1361 // from: 91.0
  SAY @2010 /* ~No doubt my .~ #96513 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1362 // from: 91.0
  SAY @2011 /* ~No doubt.~ #96513 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1363 // from: 91.0
  SAY @2012 /* ~No .~ #96513 */
  IF ~~ THEN EXIT
END