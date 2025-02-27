
GetAPItemTextPointer:: ; flag in de
	ld hl, AP_ItemText_Table
.loop
	ld a, [hli]
	cp -1
	jr z, .fallback
	cp e
	ld a, [hli]
	jr nz, .inc
	cp d
	jr nz, .inc
	jr .match
.inc
	inc hl
	inc hl
	inc hl
	jr .loop
.match
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hl]
	cp BANK(@)
	ret nz
.getitemtext
	call GetLocalItemText
	xor a
	ret
.fallback
	ld de, .FallbackString
	jr .getitemtext

.FallbackString:
	db "SOMEONE@"
	ds 9
	db "AP ITEM@"

GetLocalItemText:
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

AP_ItemText_Table::
	db -1