APSpecialNoPocket::
	push hl
	push de
	ld a, [wCurItem]
	ld de, 1
	ld hl, .APSpecial
	call IsInArray
	pop de
	pop hl
	ret
.APSpecial:
	db PHONE_TRAP
	db SLEEP_TRAP
	db PSN_TRAP
	db BRN_TRAP
	db FRZ_TRAP
	db PAR_TRAP
	db ZEPHYR_BADGE
	db HIVE_BADGE
	db PLAIN_BADGE
	db FOG_BADGE
	db MINERAL_BADGE
	db STORM_BADGE
	db GLACIER_BADGE
	db RISING_BADGE
	db BOULDER_BADGE
	db CASCADE_BADGE
	db THUNDER_BADGE
	db RAINBOW_BADGE
	db SOUL_BADGE
	db MARSH_BADGE
	db VOLCANO_BADGE
	db EARTH_BADGE
	db RADIO_CARD
	db EXPN_CARD
	db MAP_CARD
	db POKE_GEAR
	db POKE_DEX
	db -1

GetItemSound:: ;item in c
	push hl
	ld a, c
	ld de, 1
	ld hl, .StatusTraps
	call IsInArray
	jr nc, .notstatus
	ld de, SFX_BURN
	jr .done
.notstatus
	ld a, c
	ld hl, .KeyItems
	call IsInArray
	jr nc, .notkeyitem
	ld de, SFX_KEY_ITEM
	jr .done
.notkeyitem
	ld de, SFX_ITEM
.done
	pop hl
	ret

.StatusTraps:
	db SLEEP_TRAP
	db PSN_TRAP
	db BRN_TRAP
	db FRZ_TRAP
	db PAR_TRAP
	db -1

.KeyItems:
	db BICYCLE
	db ITEMFINDER
	db RED_SCALE
	db SECRETPOTION
	db S_S_TICKET
	db MYSTERY_EGG
	db CLEAR_BELL
	db CARD_KEY
	db MACHINE_PART
	db LOST_ITEM
	db BASEMENT_KEY
	db PASS
	db SQUIRTBOTTLE
	db ZEPHYR_BADGE
	db HIVE_BADGE
	db PLAIN_BADGE
	db FOG_BADGE
	db MINERAL_BADGE
	db STORM_BADGE
	db GLACIER_BADGE
	db RISING_BADGE
	db BOULDER_BADGE
	db CASCADE_BADGE
	db THUNDER_BADGE
	db RAINBOW_BADGE
	db SOUL_BADGE
	db MARSH_BADGE
	db VOLCANO_BADGE
	db EARTH_BADGE
	db RADIO_CARD
	db EXPN_CARD
	db POKE_GEAR
	db POKE_DEX
	db TM_ROCK_SMASH
	db HM_CUT
	db HM_FLY
	db HM_SURF
	db HM_STRENGTH
	db HM_FLASH
	db HM_WHIRLPOOL
	db HM_WATERFALL
	db -1