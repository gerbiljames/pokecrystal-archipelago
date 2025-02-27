; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 00
	const MASTER_BALL  ; 01
	const ULTRA_BALL   ; 02
	const BRIGHTPOWDER ; 03
	const GREAT_BALL   ; 04
	const POKE_BALL    ; 05
	const BICYCLE      ; 07
	const MOON_STONE   ; 08
	const ANTIDOTE     ; 09
	const BURN_HEAL    ; 0a
	const ICE_HEAL     ; 0b
	const AWAKENING    ; 0c
	const PARLYZ_HEAL  ; 0d
	const FULL_RESTORE ; 0e
	const MAX_POTION   ; 0f
	const HYPER_POTION ; 10
	const SUPER_POTION ; 11
	const POTION       ; 12
	const ESCAPE_ROPE  ; 13
	const REPEL        ; 14
	const MAX_ELIXER   ; 15
	const FIRE_STONE   ; 16
	const THUNDERSTONE ; 17
	const WATER_STONE  ; 18
	const HP_UP        ; 19
	const PROTEIN      ; 1a
	const IRON         ; 1b
	const CARBOS       ; 1c
	const LUCKY_PUNCH  ; 1d
	const CALCIUM      ; 1e
	const RARE_CANDY   ; 1f
	const X_ACCURACY   ; 20
	const LEAF_STONE   ; 21
	const METAL_POWDER ; 22
	const NUGGET       ; 23
	const POKE_DOLL    ; 24
	const FULL_HEAL    ; 25
	const REVIVE       ; 26
	const MAX_REVIVE   ; 27
	const GUARD_SPEC   ; 28
	const SUPER_REPEL  ; 29
	const MAX_REPEL    ; 2a
	const DIRE_HIT     ; 2b
	const FRESH_WATER  ; 2c
	const SODA_POP     ; 2d
	const LEMONADE     ; 2e
	const X_ATTACK     ; 2f
	const X_DEFEND     ; 30
	const X_SPEED      ; 31
	const X_SPECIAL    ; 32
	const COIN_CASE    ; 33
	const ITEMFINDER   ; 34
	const EXP_SHARE    ; 36
	const OLD_ROD      ; 37
	const GOOD_ROD     ; 38
	const SILVER_LEAF  ; 39
	const SUPER_ROD    ; 3a
	const PP_UP        ; 3b
	const ETHER        ; 3c
	const MAX_ETHER    ; 3d
	const ELIXER       ; 3e
	const RED_SCALE    ; 3f
	const SECRETPOTION ; 40
	const S_S_TICKET   ; 41
	const MYSTERY_EGG  ; 42
	const CLEAR_BELL   ; 43
	const SILVER_WING  ; 44
	const MOOMOO_MILK  ; 45
	const QUICK_CLAW   ; 46
	const PSNCUREBERRY ; 47
	const GOLD_LEAF    ; 48
	const SOFT_SAND    ; 49
	const SHARP_BEAK   ; 4a
	const PRZCUREBERRY ; 4b
	const BURNT_BERRY  ; 4c
	const ICE_BERRY    ; 4d
	const POISON_BARB  ; 4e
	const KINGS_ROCK   ; 4f
	const BITTER_BERRY ; 50
	const MINT_BERRY   ; 51
	const RED_APRICORN ; 52
	const TINYMUSHROOM ; 53
	const BIG_MUSHROOM ; 54
	const SILVERPOWDER ; 55
	const BLU_APRICORN ; 56
	const AMULET_COIN  ; 57
	const YLW_APRICORN ; 58
	const GRN_APRICORN ; 59
	const CLEANSE_TAG  ; 5a
	const MYSTIC_WATER ; 5b
	const TWISTEDSPOON ; 5c
	const WHT_APRICORN ; 5d
	const BLACKBELT_I  ; 5e
	const BLK_APRICORN ; 5f
	const PNK_APRICORN ; 60
	const BLACKGLASSES ; 61
	const SLOWPOKETAIL ; 62
	const PINK_BOW     ; 63
	const STICK        ; 64
	const SMOKE_BALL   ; 65
	const NEVERMELTICE ; 66
	const MAGNET       ; 67
	const MIRACLEBERRY ; 68
	const PEARL        ; 69
	const BIG_PEARL    ; 6a
	const EVERSTONE    ; 6b
	const SPELL_TAG    ; 6c
	const RAGECANDYBAR ; 6d
	const GS_BALL      ; 6e
	const BLUE_CARD    ; 6f
	const MIRACLE_SEED ; 70
	const THICK_CLUB   ; 71
	const FOCUS_BAND   ; 72
	const ENERGYPOWDER ; 73
	const ENERGY_ROOT  ; 74
	const HEAL_POWDER  ; 75
	const REVIVAL_HERB ; 76
	const HARD_STONE   ; 77
	const LUCKY_EGG    ; 78
	const CARD_KEY     ; 79
	const MACHINE_PART ; 7a
	const EGG_TICKET   ; 7b
	const LOST_ITEM    ; 7c
	const STARDUST     ; 7d
	const STAR_PIECE   ; 7e
	const BASEMENT_KEY ; 7f
	const PASS         ; 80
	const CHARCOAL     ; 81
	const BERRY_JUICE  ; 82
	const SCOPE_LENS   ; 83
	const METAL_COAT   ; 84
	const DRAGON_FANG  ; 85
	const LEFTOVERS    ; 86
	const MYSTERYBERRY ; 87
	const DRAGON_SCALE ; 88
	const BERSERK_GENE ; 89
	const SACRED_ASH   ; 8a
	const HEAVY_BALL   ; 8b
	const FLOWER_MAIL  ; 8c
	const LEVEL_BALL   ; 8d
	const LURE_BALL    ; 8e
	const FAST_BALL    ; 8f
	const LIGHT_BALL   ; 90
	const FRIEND_BALL  ; 91
	const MOON_BALL    ; 92
	const LOVE_BALL    ; 93
	const NORMAL_BOX   ; 94
	const GORGEOUS_BOX ; 95
	const SUN_STONE    ; 96
	const POLKADOT_BOW ; 97
	const UP_GRADE     ; 98
	const BERRY        ; 99
	const GOLD_BERRY   ; 9a
	const SQUIRTBOTTLE ; 9b
	const PARK_BALL    ; 9c
	const RAINBOW_WING ; 9d
	const BRICK_PIECE  ; 9e
	const SURF_MAIL    ; 9f
	const LITEBLUEMAIL ; a0
	const PORTRAITMAIL ; a1
	const LOVELY_MAIL  ; a2
	const EON_MAIL     ; a3
	const MORPH_MAIL   ; a4
	const BLUESKY_MAIL ; a5
	const MUSIC_MAIL   ; a6
	const MIRAGE_MAIL  ; a7
	const ZEPHYR_BADGE ; a8
	const HIVE_BADGE   ; a9
	const PLAIN_BADGE  ; aa 
	const FOG_BADGE    ; ab
	const MINERAL_BADGE ; ac
	const STORM_BADGE   ; ad
	const GLACIER_BADGE ; ae
	const RISING_BADGE  ; af
	const BOULDER_BADGE ; b0
	const CASCADE_BADGE ; b1
	const THUNDER_BADGE ; b2
	const RAINBOW_BADGE ; b3
	const SOUL_BADGE    ; b4
	const MARSH_BADGE   ; b5
	const VOLCANO_BADGE ; b6
	const EARTH_BADGE   ; b7
	const RADIO_CARD    ; ba
	const MAP_CARD      ; aa
	const PHONE_CARD    ; aa
	const EXPN_CARD     ; bb
	const POKE_GEAR     ; b9
	const POKE_DEX      ; b8
	const PHONE_TRAP    ; b8
	const SLEEP_TRAP    ; b8
	const PSN_TRAP      ; b8
	const BRN_TRAP      ; b8
	const FRZ_TRAP      ; b8
	const PAR_TRAP      ; b8
	const AP_ITEM      	; bc
DEF NUM_ITEMS EQU const_value - 1

DEF __tmhm_value__ = 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $bf
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE = \1
	add_tmnum \1
ENDM

; see data/moves/tmhm_moves.asm for moves
DEF TM01 EQU const_value
	add_tm DYNAMICPUNCH ; bd
	add_tm HEADBUTT     ; be
	add_tm CURSE        ; bf
	add_tm ROLLOUT      ; c0
	add_tm ROAR         ; c1
	add_tm TOXIC        ; c2
	add_tm ZAP_CANNON   ; c3
	add_tm ROCK_SMASH   ; 
	add_tm PSYCH_UP     ; 
	add_tm HIDDEN_POWER ; 
	add_tm SUNNY_DAY    ; 
	add_tm SWEET_SCENT  ; 
	add_tm SNORE        ; 
	add_tm BLIZZARD     ; 
	add_tm HYPER_BEAM   ; 
	add_tm ICY_WIND     ; 
	add_tm PROTECT      ; 
	add_tm RAIN_DANCE   ; d1
	add_tm GIGA_DRAIN   ; d2
	add_tm ENDURE       ; d3
	add_tm FRUSTRATION  ; d4
	add_tm SOLARBEAM    ; d5
	add_tm IRON_TAIL    ; d6
	add_tm DRAGONBREATH ; d7
	add_tm THUNDER      ; d8
	add_tm EARTHQUAKE   ; d9
	add_tm RETURN       ; da
	add_tm DIG          ; db
	add_tm PSYCHIC_M    ; dd
	add_tm SHADOW_BALL  ; de
	add_tm MUD_SLAP     ; df
	add_tm DOUBLE_TEAM  ; e0
	add_tm ICE_PUNCH    ; e1
	add_tm SWAGGER      ; e2
	add_tm SLEEP_TALK   ; e3
	add_tm SLUDGE_BOMB  ; e4
	add_tm SANDSTORM    ; e5
	add_tm FIRE_BLAST   ; e6
	add_tm SWIFT        ; e7
	add_tm DEFENSE_CURL ; e8
	add_tm THUNDERPUNCH ; e9
	add_tm DREAM_EATER  ; ea
	add_tm DETECT       ; eb
	add_tm REST         ; ec
	add_tm ATTRACT      ; ed
	add_tm THIEF        ; ee
	add_tm STEEL_WING   ; ef
	add_tm FIRE_PUNCH   ; f0
	add_tm FURY_CUTTER  ; f1
	add_tm NIGHTMARE    ; f2
DEF NUM_TMS EQU __tmhm_value__ - 1

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $f3
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT          ; f3
	add_hm FLY          ; f4
	add_hm SURF         ; f5
	add_hm STRENGTH     ; f6
	add_hm FLASH        ; f7
	add_hm WHIRLPOOL    ; f8
	add_hm WATERFALL    ; f9
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

MACRO add_mt
; Defines two constants:
; - \1_TMNUM: the learnable TM/HM flag, starting at 58
; - MT##_MOVE: alias for the move id, equal to the value of \1
	DEF MT_VALUE = __tmhm_value__ - NUM_TMS - NUM_HMS
	DEF MT{02d:MT_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF MT01 EQU const_value
	add_mt FLAMETHROWER
	add_mt THUNDERBOLT
	add_mt ICE_BEAM
DEF NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

DEF NUM_TM_HM_TUTOR EQU NUM_TMS + NUM_HMS + NUM_TUTORS

	const ITEM_FA       ; fa

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ff

; leftovers from red
DEF SAFARI_BALL    EQU $08 ; MOON_STONE
DEF MOON_STONE_RED EQU $0a ; BURN_HEAL
DEF FULL_HEAL_RED  EQU $34 ; X_SPEED
