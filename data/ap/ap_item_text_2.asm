AP_ItemText_Bank1_End:
GetBank2ItemText::
	; ld a, d
	; ld [wArchipelagoDebugRegisters], a
	; ld a, e
	; ld [wArchipelagoDebugRegisters + 1], a
	push de
	ld hl, wStringBuffer2
	call CopyName2
	pop de
	ld a, 17
	add e
	ld e, a
	jr nc, .next
	inc d
.next
	ld hl, wStringBuffer4
	call CopyName2
	ret

GiveItemScript2::
	opentext
	callasm DummyScript
	writetext .ScriptReceivedItemText
	iffalse .ScriptFull
	waitsfx
	specialsound
	closetext
	endall

.ScriptReceivedItemText:
	text_far _ReceivedItemText
	text_end

.ScriptFull:
	promptbutton
	pocketisfull
	end

GiveItemScriptAPTrainer::
	opentext
	callasm DummyScript
	writetext ReceivedAPItemText
	waitsfx
	specialsound
	closetext
	endall

GiveItemScriptAP::
	;opentext
	callasm DummyScript
	writetext ReceivedAPItemText
	waitsfx
	specialsound
	;closetext
	end

ReceivedAPItemText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer2
	text "'s"
	cont "@"
	text_ram wStringBuffer4
	text "!"
	done
	text_end
	
DummyScript:
	ret

AP_ItemText_Bank2::