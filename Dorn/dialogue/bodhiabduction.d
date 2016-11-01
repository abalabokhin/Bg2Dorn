// Kidnapping

EXTEND_BOTTOM BODHIAMB 5
  IF ~InParty("Dorn")
Global("DornRomanceActive","GLOBAL",2)~ THEN EXTERN BODHIAMB BODHIAMB_20
END

APPEND BODHIAMB

  IF ~~ THEN BEGIN BODHIAMB_20
  SAY @0 
  IF ~~ THEN EXTERN BODHIAMB BODHIAMB_21
END
END

APPEND BODHIAMB
  IF ~~ THEN BEGIN BODHIAMB_21
  SAY @1
  IF ~~ THEN EXTERN ~DORNJ~ KB23
END
END

APPEND DORNJ
IF ~~ THEN BEGIN KB23
  SAY @2
  IF ~~ THEN EXTERN ~BODHIAMB~ BODHIAMB_22
END
END

APPEND ~BODHIAMB~
  IF ~~ THEN BEGIN BODHIAMB_22
    SAY @3
      IF ~~ DO ~ClearAllActions()
            StartCutSceneMode()
            StartCutScene("DORNCUTV")~ UNSOLVED_JOURNAL @4 EXIT
  END
END

// The Final Battle

ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("DornVampire","GLOBAL",2)~ DO 0

INTERJECT C6BODHI 21 DornBodhiAbduction2 //BodhiAbduction#2.1
  == C6BODHI IF ~Global("DornVampire","GLOBAL",2)~ THEN @5
END
  ++ @6 EXTERN C6BODHI BodhiAbduction#2.2
  ++ @7 EXTERN C6BODHI BodhiAbduction#2.2
  ++ @8 EXTERN C6BODHI BodhiAbduction#2.2
  ++ @9 EXTERN C6BODHI BodhiAbduction#2.3

APPEND C6BODHI
  IF ~~ BEGIN BodhiAbduction#2.2 
    SAY @10
    IF ~~ THEN EXTERN VAMPDOR 0
  END
  END


APPEND C6BODHI
  IF ~~ BEGIN BodhiAbduction#2.3
    SAY @12
    IF ~~ GOTO BodhiAbduction#2.2
  END
  END

BEGIN VAMPDOR

IF ~~ THEN BEGIN 0
  SAY @13
  IF ~~ THEN EXTERN C6BODHI C6Bod
END

APPEND C6BODHI
  IF ~~ BEGIN C6Bod
    SAY @14
  IF ~~ THEN UNSOLVED_JOURNAL @11 + 28
END
END

// Finding a Cure

EXTEND_BOTTOM C6ELHAN2 69 70
  + ~PartyHasItem("DORBOD")~ + @15 GOTO 76
END

EXTEND_BOTTOM DOGHMA 0 #5
  + ~Global("RevealUmar","GLOBAL",1)
     PartyHasItem("DORBOD")~ + @16 GOTO 10
END

EXTEND_BOTTOM DOGHMA 3 7 9 #4
  + ~Global("RevealUmar","GLOBAL",1)
     PartyHasItem("DORBOD")~ + @16 GOTO 10
END

EXTEND_BOTTOM IMNBOOK1 0
  + ~Global("RevealUmar","GLOBAL",1)
     PartyHasItem("DORBOD")~ + @17 GOTO 4
END

ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("DORBOD")~ 1 2 3

APPEND OGHMONK1

  IF WEIGHT #-1 ~Global("RevealUmar","GLOBAL",1)
                 PartyHasItem("DORBOD")~ BEGIN OghmaMonk#1.1
    SAY @18
    ++ @19 GOTO 5
    ++ @16 GOTO 6
  END

END

EXTEND_BOTTOM SUDEMIN 2
  + ~PartyHasItem("DORBOD")~ + @20 GOTO 3

END

EXTEND_BOTTOM WARSAGE 0
  + ~!Dead("c6bodhi")
     Global("DornVampire","GLOBAL",2)~ + @21 GOTO 6
  + ~PartyHasItem("DORBOD")~ + @22 GOTO 5
END

// My Hero!

APPEND DORNP

   IF WEIGHT #-1 ~Global("DornVampire","GLOBAL",4)~ BEGIN DornUnvamped#1.1

    SAY @23 
    = @24
    ++ @25 DO ~
      EraseJournalEntry(32084)
      EraseJournalEntry(32085)
      EraseJournalEntry(16351)
      EraseJournalEntry(@4)
      EraseJournalEntry(15710)
      EraseJournalEntry(6589)
      EraseJournalEntry(@11)
      SetGlobal("DornVampire","GLOBAL",6)~ SOLVED_JOURNAL @26 GOTO DornUnvamped#1.2
    ++ @27 DO ~
      EraseJournalEntry(32084)
      EraseJournalEntry(32085)
      EraseJournalEntry(16351)
      EraseJournalEntry(@4)
      EraseJournalEntry(15710)
      EraseJournalEntry(6589)
      EraseJournalEntry(@11)
      SetGlobal("DornVampire","GLOBAL",6)~ SOLVED_JOURNAL @26 GOTO DornUnvamped#1.3
    ++ @28 DO ~
      EraseJournalEntry(32084)
      EraseJournalEntry(32085)
      EraseJournalEntry(16351)
      EraseJournalEntry(@4)
      EraseJournalEntry(15710)
      EraseJournalEntry(6589)
      EraseJournalEntry(@11)
      SetGlobal("DornVampire","GLOBAL",6)~ SOLVED_JOURNAL @26 GOTO DornUnvamped#1.4
  END

  IF ~~ BEGIN DornUnvamped#1.2 //From DornUnvamped#1.1.1
    SAY @29
    ++ @30 GOTO DornUnvamped#1.5
    ++ @43 GOTO DornUnvamped#1.5
    ++ @31 GOTO DornUnvamped#1.6
    ++ @44 GOTO DornUnvamped#1.6
  END

  IF ~~ BEGIN DornUnvamped#1.3 //From DornUnvamped#1.1.2
    SAY @32
    ++ @30 GOTO DornUnvamped#1.5
    ++ @43 GOTO DornUnvamped#1.5
    ++ @31 GOTO DornUnvamped#1.6
    ++ @44 GOTO DornUnvamped#1.6
  END
  
  IF ~~ BEGIN DornUnvamped#1.4 //From DornUnvamped#1.1.3
    SAY @33
    ++ @30 GOTO DornUnvamped#1.5
    ++ @43 GOTO DornUnvamped#1.5
    ++ @31 GOTO DornUnvamped#1.6
    ++ @44 GOTO DornUnvamped#1.6
  END
  
  IF ~~ BEGIN DornUnvamped#1.5 //From DornUnvamped#1.2.1
    SAY @40
  = @41
  = @34
  = @42
    IF ~~ DO ~JoinParty()~ EXIT
  END

  IF ~~ BEGIN DornUnvamped#1.6 //From DornUnvamped#1.2.2
    SAY @35
    ++ @36 GOTO DornUnvamped#1.7
    ++ @37 GOTO DornUnvamped#1.8
  END

  IF ~~ BEGIN DornUnvamped#1.7 //From DornUnvamped#1.2.1
    SAY @38
 = @41 
 = @34
 = @42
    IF ~~ DO ~JoinParty()~ EXIT
  END
  
  IF ~~ BEGIN DornUnvamped#1.8 //From DornUnvamped#1.2.2
    SAY @39
    IF ~~ DO ~
      SetGlobal("Dorn","GLOBAL",99)
      EscapeArea()~ EXIT
  END

END
