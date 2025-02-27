	db DITTO ; 132
AP_Stats_Base_DITTO:
	db  48,  48,  48,  48,  48,  48
	;   hp  atk  def  spd  sat  sdf
AP_Stats_Types_DITTO:
	db NORMAL, NORMAL ; type
	db 35 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ditto/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_DITTO, EGG_DITTO ; egg groups

	; tm/hm learnset
AP_Stats_TMHM_DITTO:
	tmhm
	; end
