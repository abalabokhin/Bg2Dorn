
APPEND DornJ

// Underdark entrance interjection

IF ~Global("DornUnderdark","GLOBAL",2)~ bLS_hdintj4
SAY @700
= @701
++ @702 DO ~SetGlobal("DornUnderdark","GLOBAL",3)~ + bLS_hdintj4.monster
++ @703 DO ~SetGlobal("DornUnderdark","GLOBAL",3)~ + bLS_hdintj4.glad
++ @704 DO ~SetGlobal("DornUnderdark","GLOBAL",3)~ + bLS_hdintj4.cant
++ @705 DO ~SetGlobal("DornUnderdark","GLOBAL",3)~ + bLS_hdintj4.coddle
END

IF ~~ bLS_hdintj4.monster
SAY @707
= @708
= @709
IF ~~ EXIT
END

IF ~~ bLS_hdintj4.glad
SAY @710
= @709
IF ~~ EXIT
END

IF ~~ bLS_hdintj4.cant
SAY @711
= @712
= @709
IF ~~ EXIT
END

IF ~~ bLS_hdintj4.coddle
SAY @714
= @715
IF ~~ EXIT
END


// Ust Natha

IF ~Global("DornUnderdark2","GLOBAL",2)~ bLS_hdintj5
SAY @717
++ @718 DO ~SetGlobal("DornUnderdark2","GLOBAL",3)~ + bLS_hdintj5.advice2
++ @719 DO ~SetGlobal("DornUnderdark2","GLOBAL",3)~ + bLS_hdintj5.reassure
++ @720 DO ~SetGlobal("DornUnderdark2","GLOBAL",3)~ + bLS_hdintj5.excite
++ @721 DO ~SetGlobal("DornUnderdark2","GLOBAL",3)~ + bLS_hdintj5.shutup
END

IF ~~ bLS_hdintj5.advice2
SAY @722
IF ~~ + bLS_hdintj5.know
END

IF ~~ bLS_hdintj5.reassure
SAY @722
IF ~~ + bLS_hdintj5.know
END

IF ~~ bLS_hdintj5.excite
SAY @724
IF ~~ + bLS_hdintj5.know
END

IF ~~ bLS_hdintj5.shutup
SAY @725
IF ~~ EXIT
END

IF ~~ bLS_hdintj5.know
SAY @726
++ @727 + bLS_hdintj5.impatient
++ @728 + bLS_hdintj5.impatient
++ @729 + bLS_hdintj5.impatient
END

IF ~~ bLS_hdintj5.impatient
SAY @730
++ @731 + bLS_hdintj5.good
++ @732 + bLS_hdintj5.same
++ @733 + bLS_hdintj5.strain
END

IF ~~ bLS_hdintj5.good
SAY @734
IF ~~ EXIT
END

IF ~~ bLS_hdintj5.same
SAY @735
= @736
IF ~~ EXIT
END

IF ~~ bLS_hdintj5.strain
SAY @737
IF ~~ EXIT
END


// On the surface 

IF ~Global("DornAfterUnderdark","GLOBAL",2)~ bLS_hdintj6
SAY @738
++ @739 DO ~SetGlobal("DornAfterUnderdark","GLOBAL",3)~ + bLS_hdintj6.okay
++ @740 DO ~SetGlobal("DornAfterUnderdark","GLOBAL",3)~ + bLS_hdintj6.okay
++ @741 DO ~SetGlobal("DornAfterUnderdark","GLOBAL",3)~ + bLS_hdintj6.push
END

IF ~~ bLS_hdintj6.okay
SAY @742
++ @743 + bLS_hdintj6.bad
++ @744 + bLS_hdintj6.good
END

IF ~~ bLS_hdintj6.bad
SAY @745
IF ~~ + bLS_hdintj6.know
END

IF ~~ bLS_hdintj6.good
SAY @746
IF ~~ + bLS_hdintj6.know
END

IF ~~ bLS_hdintj6.know
SAY @747
= @748
++ @749 + bLS_hdintj6.push
++ @750 + bLS_hdintj6.push
END

IF ~~ bLS_hdintj6.push
SAY @751
IF ~~ + bLS_hdintj6.do
END

IF ~~ bLS_hdintj6.do
SAY @752
++ @753 + bLS_hdintj6.love
++ @754 + bLS_hdintj6.love
END

IF ~~ bLS_hdintj6.love
SAY @755
= @756
IF ~~ EXIT
END


END