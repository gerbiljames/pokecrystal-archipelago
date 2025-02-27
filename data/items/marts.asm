Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartAzalea
	dw MartCianwood
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F
	dw MartGoldenrod4F
	dw MartGoldenrod5F1
	dw MartGoldenrod5F2
	dw MartGoldenrod5F3
	dw MartGoldenrod5F4
	dw MartOlivine
	dw MartEcruteak
	dw MartMahogany1
	dw MartMahogany2
	dw MartBlackthorn
	dw MartViridian
	dw MartPewter
	dw MartCerulean
	dw MartLavender
	dw MartVermilion
	dw MartCeladon2F1
	dw MartCeladon2F2
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartFuchsia
	dw MartSaffron
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartUnderground
	dw MartStones
	assert_table_length NUM_MARTS

MartBetterMart:
	db 16 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db ESCAPE_ROPE
	db REVIVE
	db FULL_HEAL
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db -1 ; end

MartCherrygrove:
	db 5 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1


MartCherrygroveDex:
	db 5 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartViolet:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db X_DEFEND
	db X_ATTACK
	db X_SPEED
	db FLOWER_MAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartAzalea:
	db 9 ; # items
	db CHARCOAL
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db FLOWER_MAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartCianwood:
	db 5 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartGoldenrod2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartGoldenrod2F2:
	db 8 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ESCAPE_ROPE
	db REPEL
	db REVIVE
	db FULL_HEAL
	db POKE_DOLL
	db FLOWER_MAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartGoldenrod3F:
	db 7 ; # items
	db X_SPEED
	db X_SPECIAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db GUARD_SPEC
	db X_ACCURACY
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartGoldenrod4F:
	db 5 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db HP_UP
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartGoldenrod5F1:
	db 3 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartGoldenrod5F2:
	db 4 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartGoldenrod5F3:
	db 4 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_ROCK_SMASH
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartGoldenrod5F4:
	db 5 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db TM_ROCK_SMASH
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartOlivine:
	db 9 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db ICE_HEAL
	db SUPER_REPEL
	db SURF_MAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartEcruteak:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartMahogany1:
	db 4 ; # items
	db TINYMUSHROOM
	db SLOWPOKETAIL
	db POKE_BALL
	db POTION
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartMahogany2:
	db 9 ; # items
	db RAGECANDYBAR
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db SUPER_REPEL
	db REVIVE
	db FLOWER_MAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartBlackthorn:
	db 9 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db X_DEFEND
	db X_ATTACK
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartViridian:
	db 9 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db FLOWER_MAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartPewter:
	db 7 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db SUPER_REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartCerulean:
	db 9 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db SUPER_REPEL
	db FULL_HEAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db SURF_MAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartLavender:
	db 8 ; # items
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db MAX_REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartVermilion:
	db 8 ; # items
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db LITEBLUEMAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartCeladon2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartCeladon2F2:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db FULL_HEAL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartCeladon3F:
	db 5 ; # items
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db TM_PROTECT
	db TM_RAIN_DANCE
	db TM_SANDSTORM
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartCeladon4F:
	db 3 ; # items
	db POKE_DOLL
	db LOVELY_MAIL
	db SURF_MAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartCeladon5F1:
	db 5 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartCeladon5F2:
	db 7 ; # items
	db X_ACCURACY
	db GUARD_SPEC
	db DIRE_HIT
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartFuchsia:
	db 7 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db MAX_REPEL
	db FLOWER_MAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartSaffron:
	db 8 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db X_ATTACK
	db X_DEFEND
	db FLOWER_MAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartMtMoon:
	db 6 ; # items
	db POKE_DOLL
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db REPEL
	db PORTRAITMAIL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartIndigoPlateau:
	db 7 ; # items
	db ULTRA_BALL
	db MAX_REPEL
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db REVIVE
	db FULL_HEAL
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

MartStones:
	db 10
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db LEAF_STONE
	db MOON_STONE
	db SUN_STONE
	db KINGS_ROCK
	db METAL_COAT
	db DRAGON_SCALE
	db UP_GRADE
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1
	db -1

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
