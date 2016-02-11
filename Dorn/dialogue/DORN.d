// creator  : weidu (version 23800)
// argument : DORN.DLG
// game     : .
// source   : ./DATA/25DIALOG.BIF
// dialog   : .\lang\en_us/dialog.tlk
// dialogF  : (none)

BEGIN ~DORN~

IF ~  Global("OHD_PLOT","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hrmm. What are you looking at?~ [OH74508] #74508 */
  IF ~~ THEN REPLY @2 /* ~Me? I'm not looking at anything, sir.~ #74509 */ GOTO 2
  IF ~~ THEN REPLY @3 /* ~I'm looking at you, Dorn. It hasn't been so long; surely you remember me?~ #74510 */ DO ~SetGlobal("OHD_KNOWS_DORN","LOCALS",1)
~ GOTO 3
  IF ~  IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("NEERA")
~ THEN REPLY @4 /* ~I'm looking at one of the ugliest half-orcs I've ever had the misfortune to lay eyes upon.~ #74511 */ EXTERN ~MINSCJ~ 248
  IF ~  IfValidForPartyDialogue("NEERA")
~ THEN REPLY @4 /* ~I'm looking at one of the ugliest half-orcs I've ever had the misfortune to lay eyes upon.~ #74511 */ EXTERN ~NEERAJ~ 8
  IF ~  !IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("NEERA")
~ THEN REPLY @4 /* ~I'm looking at one of the ugliest half-orcs I've ever had the misfortune to lay eyes upon.~ #74511 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.4
  SAY @5 /* ~Who dares insult Dorn Il-Khan? Tell me your name, <PRO_RACE>. Whose blood will slake my blade's thirst?~ [OH74515] #74515 */
  IF ~~ THEN REPLY @6 /* ~You know my name, Dorn Il-Khan. It wasn't so long ago we traveled the Sword Coast together.~ #74517 */ DO ~SetGlobal("OHD_KNOWS_DORN","LOCALS",1)
~ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Calm yourself. I intended it as a compliment. What finds you here outside a temple? Forgive my bluntness, but you don't strike me as the pious type.~ #74518 */ GOTO 10
  IF ~~ THEN REPLY @8 /* ~I've been drunk before, but never from a sword. Farewell, Dorn-Il-Khan.~ #74519 */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @9 /* ~Then look elsewhere before I pluck the eyes from your skull. Begone!~ [OH74520] #74520 */
  IF ~  !IfValidForPartyDialogue("EDWIN")
~ THEN REPLY @10 /* ~As you wish.~ #74521 */ EXIT
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN REPLY @10 /* ~As you wish.~ #74521 */ EXTERN ~EDWINJ~ 194
  IF ~  !IfValidForPartyDialogue("NEERA")
~ THEN REPLY @11 /* ~I'll look where I please, and nothing would please me more than not looking at you.~ #74522 */ EXIT
  IF ~  IfValidForPartyDialogue("NEERA")
~ THEN REPLY @11 /* ~I'll look where I please, and nothing would please me more than not looking at you.~ #74522 */ EXTERN ~NEERAJ~ 9
  IF ~  !IfValidForPartyDialogue("ANOMEN")
~ THEN REPLY @12 /* ~And if my way is to that temple your eyes are so enamored with?~ #74523 */ GOTO 10
  IF ~  IfValidForPartyDialogue("ANOMEN")
~ THEN REPLY @12 /* ~And if my way is to that temple your eyes are so enamored with?~ #74523 */ EXTERN ~ANOMENJ~ 318
END

IF ~~ THEN BEGIN 3 // from: 10.1 1.0 0.1
  SAY @13 /* ~<CHARNAME>, of course. It's been a while. I am... pleased to see that you haven't been strangled to death with your own wit.~ [OH74530] #74530 */
  IF ~  !IfValidForPartyDialogue("KELDORN")
~ THEN REPLY @14 /* ~It has. What finds you skulking around here? You're not seeking redemption after a life of crime and violence, are you? Given your exploits, that ship has sailed.~ #74531 */ GOTO 5
  IF ~  IfValidForPartyDialogue("KELDORN")
~ THEN REPLY @14 /* ~It has. What finds you skulking around here? You're not seeking redemption after a life of crime and violence, are you? Given your exploits, that ship has sailed.~ #74531 */ EXTERN ~KELDORJ~ 259
  IF ~~ THEN REPLY @15 /* ~Not long enough for my tastes.~ #74532 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY @16 /* ~You'll taste steel in your gut if you don't still your wagging tongue!~ [OH74533] #74533 */
  IF ~~ THEN REPLY @17 /* ~Hey now, let's not turn this into something even less pleasant! What are you doing here?~ #74534 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 3.0
  SAY @18 /* ~What business is that of yours?~ [OH74537] #74537 */
  IF ~~ THEN REPLY @19 /* ~Call me crazy, but there's something about a lurking blackguard I find worrisome. I just want to make sure whatever bloodshed's about to occur doesn't stain my clothes.~ #74538 */ GOTO 6
  IF ~  Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY @20 /* ~None whatsoever, but I am curious.~ #74539 */ GOTO 13
  IF ~  !Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY @20 /* ~None whatsoever, but I am curious.~ #74539 */ GOTO 10
  IF ~~ THEN REPLY @21 /* ~Perhaps I sense an opportunity.~ #74540 */ GOTO 17
END

IF ~~ THEN BEGIN 6 // from: 12.0 5.0
  SAY @22 /* ~Then you'd be well advised to seek another house of worship.~ [OH74541] #74541 */
  IF ~  !IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("ANOMEN")
~ THEN REPLY @23 /* ~Seems like sound advice.~ #74542 */ EXIT
  IF ~  IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("KELDORN")
~ THEN REPLY @23 /* ~Seems like sound advice.~ #74542 */ EXTERN ~ANOMENJ~ 319
  IF ~  IfValidForPartyDialogue("KELDORN")
~ THEN REPLY @23 /* ~Seems like sound advice.~ #74542 */ EXTERN ~KELDORJ~ 260
  IF ~~ THEN REPLY @24 /* ~Now that sounds interesting. Tell me more.~ #74543 */ GOTO 18
  IF ~  !IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("ANOMEN")
~ THEN REPLY @25 /* ~We might have a problem here. It sounds like you're preparing to attack the same temple I am. Or perhaps what we actually have is an opportunity.~ #74544 */ GOTO 17
  IF ~  IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("KELDORN")
~ THEN REPLY @25 /* ~We might have a problem here. It sounds like you're preparing to attack the same temple I am. Or perhaps what we actually have is an opportunity.~ #74544 */ EXTERN ~ANOMENJ~ 319
  IF ~  IfValidForPartyDialogue("KELDORN")
~ THEN REPLY @25 /* ~We might have a problem here. It sounds like you're preparing to attack the same temple I am. Or perhaps what we actually have is an opportunity.~ #74544 */ EXTERN ~KELDORJ~ 262
END

IF ~~ THEN BEGIN 7 // from:
  SAY @26 /* ~So be it—the prospect of your soul has always excited my patron!~ [OH74549] #74549 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 23.0 16.1 14.2 13.1
  SAY @27 /* ~Then pay the price for your folly!~ [OH74555] #74555 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @28 /* ~Deal with my blade, foolish <PRO_RACE>!~ [OH74564] #74564 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 2.4 1.1
  SAY @29 /* ~Do I know you, <PRO_RACE>? You seem familiar... ~ [OH74565] #74565 */
  IF ~~ THEN REPLY @30 /* ~I don't think so. You've got the sort of face that's hard to forget.~ #74566 */ GOTO 11
  IF ~~ THEN REPLY @31 /* ~I fear you've been in one too many battles, with one helmet less than required. We know each other well, Dorn Il-Khan.~ #74567 */ DO ~SetGlobal("OHD_KNOWS_DORN","LOCALS",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @32 /* ~You'll find my face my most pleasing aspect if you don't mind your tongue.~ [OH74569] #74569 */
  IF ~~ THEN REPLY @33 /* ~My name is <CHARNAME>. And you still haven't answered my question.~ #74570 */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @34 /* ~Dorn Il-Khan. And you still haven't told me what business that is of yours.~ [OH74571] #74571 */
  IF ~~ THEN REPLY @35 /* ~I just want to avoid trouble.~ #74572 */ GOTO 6
  IF ~~ THEN REPLY @36 /* ~It isn't my business, but it doesn't have to be that way.~ #102540 */ GOTO 13
  IF ~~ THEN REPLY @37 /* ~Don't play coy, half-orc. I smell an opportunity here.~ #74573 */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 17.1 12.1 5.1
  SAY @38 /* ~Hrmm... 'Tis true we could make quicker work of this together than apart.~ [OH74578] #74578 */
  IF ~~ THEN REPLY @39 /* ~Great. Now that we've sorted that out, we can get down to business. Who are we killing today?~ #102532 */ GOTO 14
  IF ~~ THEN REPLY @40 /* ~I'd sooner die than foul myself helping the likes of you.~ #102533 */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @41 /* ~My patron demands the death of Bollard Firejaw of the Order of the Golden Lions.~ #102534 */
  IF ~~ THEN REPLY @42 /* ~Your patron?~ #102535 */ GOTO 15
  IF ~~ THEN REPLY @43 /* ~You have a patron. You. You have a patron. Really?~ #102536 */ GOTO 15
  IF ~~ THEN REPLY @44 /* ~Fiend! I'll not tolerate such perfidy!~ #102537 */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 14.1 14.0
  SAY @45 /* ~Ur-Gothoz.~ #102538 */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @46 /* ~I've put countless men to the blade in Ur-Gothoz's name—women and children too. It's one thing to slaughter the occasional village, but lately what he asks is more specific... and often more dangerous.~ #74596 */
  IF ~~ THEN REPLY @47 /* ~A tale of glory, written in the blood of the innocent. I would have some of that glory for my own.~ #102539 */ GOTO 29
  IF ~~ THEN REPLY @48 /* ~Be silent. A vile tale told by a monster—I'll endure it no longer. Your story ends here, Dorn Il-Khan.~ #74597 */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 12.2 6.4 5.3
  SAY @49 /* ~And what opportunity would that be?~ [OH74574] #74574 */
  IF ~~ THEN REPLY @50 /* ~The opportunity to help a powerful friend and ally—and to have that friend and ally in my debt.~ #74575 */ GOTO 18
  IF ~~ THEN REPLY @51 /* ~The chance to enrich myself and my friends. Whatever you plan, surely many hands will make easier work of it than just your own?~ #74576 */ GOTO 13
  IF ~~ THEN REPLY @52 /* ~The opportunity to spill the blood of the pious. Are you saying I'm wrong?~ #74577 */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 6.3
  SAY @38 /* ~Hrmm... 'Tis true we could make quicker work of this together than apart.~ [OH74578] #74578 */
  IF ~  Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY @53 /* ~What work needs doing this <DAYNIGHT>?~ #74579 */ GOTO 20
  IF ~  !Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY @53 /* ~What work needs doing this <DAYNIGHT>?~ #74579 */ GOTO 22
  IF ~  IfValidForPartyDialogue("Haerdalis")
~ THEN EXTERN ~HAERDAJ~ 160
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 537
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 126
  IF ~  IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 223
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY @54 /* ~You know me well.~ [OH74586] #74586 */
  IF ~  Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN GOTO 20
  IF ~  !Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN GOTO 22
  IF ~  IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 230
  IF ~  IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 52
  IF ~  IfValidForPartyDialogue("Neera")
~ THEN EXTERN ~NEERAJ~ 10
END

IF ~~ THEN BEGIN 20 // from: 19.0 18.0
  SAY @55 /* ~When we parted ways, I roamed the Sword Coast, seeking my fortune and occasionally doing as my patron bid me.~ [OH74592] #74592 */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 22.0 20.0
  SAY @56 /* ~I must admit, his "occasional" demands are becoming more frequent.~ [OH74593] #74593 */
  IF ~~ THEN REPLY @57 /* ~The inevitable consequence of a life of service.~ #74594 */ GOTO 23
  IF ~~ THEN REPLY @58 /* ~But the power he supplies is surely worth the effort.~ #74595 */ GOTO 25
END

IF ~~ THEN BEGIN 22 // from: 19.1 18.1
  SAY @59 /* ~I have roamed the Sword Coast, seeking my fortune and occasionally doing as my patron bid me.~ #102465 */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY @46 /* ~I've put countless men to the blade in Ur-Gothoz's name—women and children too. It's one thing to slaughter the occasional village, but lately what he asks is more specific... and often more dangerous.~ [OH74596] #74596 */
  IF ~~ THEN REPLY @48 /* ~Be silent. A vile tale told by a monster—I'll endure it no longer. Your story ends here, Dorn Il-Khan.~ #74597 */ GOTO 8
  IF ~~ THEN REPLY @60 /* ~A tale of glory, written in the blood of the innocent. Tell me more, Dorn.~ #74598 */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @61 /* ~Glory, yes...~ [OH74599] #74599 */
  IF ~~ THEN REPLY @62 /* ~You sound uncertain.~ #74600 */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 21.1
  SAY @63 /* ~At first, I enjoyed the work, drunk on the power Ur-Gothoz provides...~ [OH74601] #74601 */
  IF ~~ THEN REPLY @64 /* ~But now?~ #74602 */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @65 /* ~Now...? It matters not.~ [OH74603] #74603 */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 38.2 38.0 26.0
  SAY @66 /* ~My patron demands the death of Bollard Firejaw of the Order of the Golden Lions. He demands it happen here in the temple of the Radiant Heart, and he demands it happen soon.~ [OH74604] #74604 */
  IF ~~ THEN REPLY @67 /* ~I cannot allow such villainy to befall a house of worship.~ #74605 */ GOTO 28
  IF ~~ THEN REPLY @68 /* ~The assassination of a priest? I cannot be a part of this.~ #74606 */ GOTO 39
  IF ~~ THEN REPLY @69 /* ~I've never seen a Radiant Heart bleed before. When do we begin?~ #74607 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
  IF ~~ THEN REPLY @70 /* ~Your patron's a pretty demanding person, isn't he?~ #74608 */ GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @71 /* ~Only a fool would think he can stop it.~ [OH74609] #74609 */
  IF ~  !IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Minsc")
~ THEN REPLY @72 /* ~Draw your sword, Dorn Il-Khan. We'll see who the fool is here.~ #74610 */ GOTO 30
  IF ~~ THEN REPLY @73 /* ~I like a joke as much as the next <PRO_GIRLBOY>, but I'm no fool. Goodbye.~ #74611 */ EXIT
  IF ~~ THEN REPLY @74 /* ~I'd try and stop the tides before I stood against you, Dorn.~ #74612 */ GOTO 29
  IF ~  IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MAZZYJ~ 207
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 249
END

IF ~~ THEN BEGIN 29 // from: 28.2 16.0
  SAY @75 /* ~Join me, then. Together, we shall wade through the blood of all who would oppose us.~ [OH74613] #74613 */
  IF ~~ THEN REPLY @76 /* ~Wade? We'll need to swim!~ #74614 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY @77 /* ~In the name of Ur-Gothoz, die!~ [OH74618] #74618 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.3
  SAY @78 /* ~He is. I won't deny that it can be... frustrating. But the power he offers is irresistible.~ [OH74619] #74619 */
  IF ~~ THEN REPLY @79 /* ~I understand, but there must be other ways to acquire this power.~ #74620 */ GOTO 32
  IF ~~ THEN REPLY @80 /* ~I understand. Well, the church is right there. Shall we do what your patron demands?~ #74621 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
  IF ~~ THEN REPLY @81 /* ~The pursuit of power is a game I know well. Enough talking. Let's do as your patron demands.~ #74622 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @82 /* ~That's easy for you to say, Bhaalspawn. Not all of us had the good fortune to be born to power. For the rest of us, 'tis better to have power and seek more than have none and clutch at any.~ [OH74623] #74623 */
  IF ~~ THEN REPLY @83 /* ~Your cynicism saddens me, but I see there's nothing I can say to change your mind.~ #74624 */ GOTO 33
  IF ~~ THEN REPLY @84 /* ~If you're happy to live as a servant, who am I to argue?~ #74625 */ GOTO 34
  IF ~~ THEN REPLY @85 /* ~In this world, the wise seize what they can when they're able. But enough talk. I believe church awaits?~ #74626 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @86 /* ~Words are hollow. It's actions that define us.~ [OH74627] #74627 */
  IF ~~ THEN REPLY @87 /* ~I couldn't agree more. Which is why I'm getting the hell out of here.~ #74628 */ EXIT
  IF ~~ THEN REPLY @88 /* ~I couldn't agree more. Shall we define ourselves on yon house of worship?~ #74629 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY @89 /* ~Watch your tongue, <CHARNAME>. I can use you, but I don't need you.~ [OH74630] #74630 */
  IF ~~ THEN REPLY @90 /* ~Forgive me, Dorn. I know this must be a... delicate topic for you.~ #74631 */ GOTO 35
  IF ~~ THEN REPLY @91 /* ~What? I just said I wished you were happy.~ #74632 */ GOTO 36
  IF ~~ THEN REPLY @92 /* ~The feeling is mutual, half-orc. Now shall we continue to tarry here glaring at the temple and drawing attention to ourselves, or would you rather do as your master commands?~ #74633 */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY @93 /* ~Hrmmm.~ [OH74634] #74634 */
  IF ~~ THEN REPLY @94 /* ~Shall we be about our bloody business, then?~ #74635 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
  IF ~~ THEN REPLY @95 /* ~There there. I'm sure things will look brighter tomorrow, with Bollard Firejaw's blood upon your sword. Shall we?~ #74636 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
  IF ~~ THEN REPLY @96 /* ~Enough talk. The church and Bollard Firejaw await!~ #74637 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY @93 /* ~Hrmmm.~ [OH74634] #74634 */
  IF ~~ THEN REPLY @97 /* ~Well, I tried. Perhaps a trip to the church of the Radiant Heart will cheer you up.~ #74638 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
  IF ~~ THEN REPLY @98 /* ~There's the cheerful, upbeat half-orc I remember so well! Ready to go to church?~ #74639 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
  IF ~~ THEN REPLY @99 /* ~Couldn't have put it better myself. But enough talk. I've a thirst that can only be quenched by the spilling of blood, and a Radiant Heart beats before us.~ #74640 */ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.2
  SAY @93 /* ~Hrmmm.~ [OH74634] #74634 */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY @100 /* ~I've heard of you, <CHARNAME>. Your reputation is... impressive.~ [OH74641] #74641 */
  IF ~  !InParty("KELDORN")
~ THEN REPLY @101 /* ~As is yours. What finds you here, skulking outside a temple of the Radiant Heart?~ #74642 */ GOTO 27
  IF ~  InParty("KELDORN")
~ THEN REPLY @101 /* ~As is yours. What finds you here, skulking outside a temple of the Radiant Heart?~ #74642 */ EXTERN ~KELDORJ~ 259
  IF ~  !InParty("KELDORN")
~ THEN REPLY @102 /* ~You don't look like the kind of man I usually picture hanging around a temple of the Radiant Heart.~ #74643 */ GOTO 27
  IF ~  InParty("KELDORN")
~ THEN REPLY @102 /* ~You don't look like the kind of man I usually picture hanging around a temple of the Radiant Heart.~ #74643 */ EXTERN ~KELDORJ~ 259
  IF ~~ THEN REPLY @103 /* ~Yours, too. Which is reason enough for me to take my leave of you.~ #74644 */ EXIT
  IF ~~ THEN REPLY @104 /* ~Not long enough, for my tastes.~ #74645 */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 27.1
  SAY @105 /* ~No one asked you to. Just let me do my job, and we'll have no problems.~ [OH74646] #74646 */
  IF ~~ THEN REPLY @106 /* ~Then I'm afraid we have some problems.~ #74647 */ DO ~SetGlobal("ohd_plot","GLOBAL",-1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY @107 /* ~The last thing I want is problems with you. Farewell.~ #74648 */ EXIT
END
