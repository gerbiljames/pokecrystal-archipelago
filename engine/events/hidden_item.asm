HiddenItemScript::
	opentext
	callasm IsNonAPItem
	iftrue .NormalItem
	callasm GetAPItemText
	writetext PlayerFoundAPItemText
	callasm SetMemEvent
	specialsound
	sjump .finish
.NormalItem
	readmem wHiddenItemID
	getitemname STRING_BUFFER_3, USE_SCRIPT_VAR
	writetext .PlayerFoundItemText
	giveitem ITEM_FROM_MEM
	iffalse .bag_full
	callasm SetMemEvent
	specialsound
	itemnotify
	sjump .finish

.bag_full
	promptbutton
	writetext .ButNoSpaceText
	waitbutton

.finish
	closetext
	end

.PlayerFoundItemText:
	text_far _PlayerFoundItemText
	text_end

.ButNoSpaceText:
	text_far _ButNoSpaceText
	text_end

PlayerFoundAPItemText:
	text_far _PlayerFoundAPItemText
	text_end

IsNonAPItem:
	ld a, [wHiddenItemID]
	sub AP_ITEM
	ld [wScriptVar], a
	ret 

GetAPItemText:
	ld a, [wHiddenItemEvent]
	ld d, a
	ld a, [wHiddenItemEvent + 1]
	ld e, a
	jr APTextLookup

APTextLookup:
	farcall GetAPItemTextPointer
	ret z
	farcall GetBank2ItemText
	ret

SetMemEvent:
	ld hl, wHiddenItemEvent
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld b, SET_FLAG
	call EventFlagAction
	ret
