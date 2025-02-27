	db STANTLER ; 234
AP_Stats_Base_STANTLER:
	db  73,  95,  62,  85,  85,  65
	;   hp  atk  def  spd  sat  sdf
AP_Stats_Types_STANTLER:
	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/stantler/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
AP_Stats_TMHM_STANTLER:
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, PSYCHIC_M, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, DETECT, REST, ATTRACT, THIEF, NIGHTMARE, FLASH
	; end
