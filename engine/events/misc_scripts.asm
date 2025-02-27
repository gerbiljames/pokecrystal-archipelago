Script_AbortBugContest:
	checkflag ENGINE_BUG_CONTEST_TIMER
	iffalse .finish
	setflag ENGINE_DAILY_BUG_CONTEST
	special ContestReturnMons
.finish
	end

FindItemInBallScript::
	callasm .IsNonAPItem
	iftrue .normal
	callasm .GetAPItemText
	disappear LAST_TALKED
	opentext
	writetext PlayerFoundAPItemText
	playsound SFX_ITEM
	pause 60
	closetext
	end
.normal
	callasm .TryReceiveItem
	iffalse .no_room
	disappear LAST_TALKED
	opentext
	writetext .FoundItemText
	playsound SFX_ITEM
	pause 60
	itemnotify
	closetext
	end

.no_room
	opentext
	writetext .FoundItemText
	waitbutton
	writetext .CantCarryItemText
	waitbutton
	closetext
	end

.FoundItemText:
	text_far _FoundItemText
	text_end

.CantCarryItemText:
	text_far _CantCarryItemText
	text_end

.IsNonAPItem
	ld a, [wItemBallItemID]
	sub AP_ITEM
	ld [wScriptVar], a
	ret

.TryReceiveItem:
	xor a
	ld [wScriptVar], a
	ld a, [wItemBallItemID]
	ld [wNamedObjectIndex], a
	call GetItemName
	ld hl, wStringBuffer3
	call CopyName2
	ld a, [wItemBallItemID]
	ld [wCurItem], a
	ld a, [wItemBallQuantity]
	ld [wItemQuantityChange], a
	ld hl, wNumItems
	call ReceiveItem
	ret nc
	ld a, $1
	ld [wScriptVar], a
	ret

.GetAPItemText:
	ld a, [wItemBallEventFlag]
	ld d, a
	ld a, [wItemBallEventFlag + 1]
	ld e, a
	call APTextLookup
	ret 