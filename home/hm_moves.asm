; HM moves can't be forgotten

IsHM::
	cp HM01
	jr c, .NotHM
	scf
	ret
.NotHM:
	and a
	ret

IsHMMove::
	ld hl, .HMMoves
	ld de, 1
	call IsInArray
	ret nc
	ld a, b
	add a, HM01
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	jr nc, .NotInBag
	and a
	ret
.NotInBag
	scf
	ret

.HMMoves:
	db CUT
	db FLY
	db SURF
	db STRENGTH
	db FLASH
	db WHIRLPOOL
	db WATERFALL
	db -1 ; end
